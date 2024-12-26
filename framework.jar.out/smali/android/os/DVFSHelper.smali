.class public Landroid/os/DVFSHelper;
.super Ljava/lang/Object;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/DVFSHelper$1;,
        Landroid/os/DVFSHelper$ModelMT6737T;,
        Landroid/os/DVFSHelper$ModelVIVALTO3MVE;,
        Landroid/os/DVFSHelper$ModelCORE33G;,
        Landroid/os/DVFSHelper$ModelMSM8917;,
        Landroid/os/DVFSHelper$ModelMSM8953;,
        Landroid/os/DVFSHelper$ModelMSM8952;,
        Landroid/os/DVFSHelper$ModelMSM8976PRO;,
        Landroid/os/DVFSHelper$ModelMSM8976;,
        Landroid/os/DVFSHelper$ModelSC9830I;,
        Landroid/os/DVFSHelper$ModelMSM8929;,
        Landroid/os/DVFSHelper$ModelMSM8939;,
        Landroid/os/DVFSHelper$ModelMSM8916;,
        Landroid/os/DVFSHelper$ModelMSM8916_A3;,
        Landroid/os/DVFSHelper$ModelDegasLTE;,
        Landroid/os/DVFSHelper$ModelKMINI;,
        Landroid/os/DVFSHelper$ModelPXA1936;,
        Landroid/os/DVFSHelper$ModelPXA1908;,
        Landroid/os/DVFSHelper$ModelPXA1088;,
        Landroid/os/DVFSHelper$ModelMSM8x26;,
        Landroid/os/DVFSHelper$ModelHawaii;,
        Landroid/os/DVFSHelper$ModelD2;,
        Landroid/os/DVFSHelper$ModelM0;,
        Landroid/os/DVFSHelper$ModelExynos4;,
        Landroid/os/DVFSHelper$ModelJOSHUA;,
        Landroid/os/DVFSHelper$ModelISLAQUAD;,
        Landroid/os/DVFSHelper$ModelCARMEN2;,
        Landroid/os/DVFSHelper$ModelISLA;,
        Landroid/os/DVFSHelper$ModelON5;,
        Landroid/os/DVFSHelper$ModelNOVEL;,
        Landroid/os/DVFSHelper$ModelJOON;,
        Landroid/os/DVFSHelper$ModelJAVA;,
        Landroid/os/DVFSHelper$ModelISLAND;,
        Landroid/os/DVFSHelper$ModelKAM;,
        Landroid/os/DVFSHelper$ModelPicasso3GWIFI;,
        Landroid/os/DVFSHelper$ModelV23GWIFI;,
        Landroid/os/DVFSHelper$ModelV13GWIFI;,
        Landroid/os/DVFSHelper$ModelPP;,
        Landroid/os/DVFSHelper$ModelA8E;,
        Landroid/os/DVFSHelper$ModelSA;,
        Landroid/os/DVFSHelper$ModelSF;,
        Landroid/os/DVFSHelper$ModelMSM8992;,
        Landroid/os/DVFSHelper$ModelGRLForHD;,
        Landroid/os/DVFSHelper$ModelGRLForFHD;,
        Landroid/os/DVFSHelper$ModelGRL;,
        Landroid/os/DVFSHelper$ModelHRL;,
        Landroid/os/DVFSHelper$ModelGRQForHD;,
        Landroid/os/DVFSHelper$ModelGRQForFHD;,
        Landroid/os/DVFSHelper$ModelGRQ;,
        Landroid/os/DVFSHelper$ModelHRQ;,
        Landroid/os/DVFSHelper$ModelZL;,
        Landroid/os/DVFSHelper$ModelTR3CA;,
        Landroid/os/DVFSHelper$ModelTA;,
        Landroid/os/DVFSHelper$ModelTFJpn;,
        Landroid/os/DVFSHelper$ModelTF;,
        Landroid/os/DVFSHelper$ModelKQ;,
        Landroid/os/DVFSHelper$ModelKA;,
        Landroid/os/DVFSHelper$ModelKF;,
        Landroid/os/DVFSHelper$ModelHA;,
        Landroid/os/DVFSHelper$ModelHF;,
        Landroid/os/DVFSHelper$ModelSantos10;,
        Landroid/os/DVFSHelper$ModelJF;,
        Landroid/os/DVFSHelper$Model8930AB;,
        Landroid/os/DVFSHelper$ModelJAKOR;,
        Landroid/os/DVFSHelper$ModelJA;,
        Landroid/os/DVFSHelper$ModelJBP;,
        Landroid/os/DVFSHelper$Model;
    }
.end annotation


# static fields
.field public static final ACTION_AMS_RESUME:Ljava/lang/String; = "ActivityManager_resume"

.field public static final ACTION_APP_LAUNCH:Ljava/lang/String; = "Application_launch"

.field public static final ACTION_BROWSER_FLING:Ljava/lang/String; = "Browser_fling"

.field public static final ACTION_BROWSER_TOUCH:Ljava/lang/String; = "Browser_touch"

.field public static final ACTION_CONTACT_SCROLL:Ljava/lang/String; = "Contact_scroll"

.field private static final ACTION_DEVICE_WAKEUP:Ljava/lang/String; = "Device_wakeup"

.field public static final ACTION_GALLERY_TOUCH:Ljava/lang/String; = "Gallery_touch"

.field public static final ACTION_GALLERY_TOUCH_TAIL:Ljava/lang/String; = "Gallery_touch_tail"

.field public static final ACTION_LAUNCHER_HOMEMENU:Ljava/lang/String; = "Launcher_homemenu"

.field public static final ACTION_LAUNCHER_TOUCH:Ljava/lang/String; = "Launcher_touch"

.field public static final ACTION_LISTVIEW_SCROLL:Ljava/lang/String; = "ListView_scroll"

.field public static final ACTION_PWM_ROTATION:Ljava/lang/String; = "PhoneWindowManager_rotation"

.field public static final ACTION_SHAREMUSIC_GROUPPLAY:Ljava/lang/String; = "ShareMusic_groupPlay"

.field public static final AMS_RESUME_BOOST_TYPE_ACQUIRE:I = 0x1

.field public static final AMS_RESUME_BOOST_TYPE_RELEASE:I = 0x2

.field public static final AMS_RESUME_BOOST_TYPE_TAIL:I = 0x3

.field public static volatile AMS_RESUME_TAIL_BOOST_TIMEOUT:I = 0x0

.field private static final BASE_MODEL:Ljava/lang/String; = ""

.field private static final BOARD_PLATFORM:Ljava/lang/String;

.field public static final BOOST_TYPE_LCD_FRAME_RATE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BOOST_TYPE_TOUCH:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BO_BUS_MAX:J = 0x8L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BO_CPU_MAX:J = 0x2L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BO_CUSTOM_VALUE:J = 0x20L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final CHIP_NAME:Ljava/lang/String;

.field private static final DEVICE_TYPE:Ljava/lang/String;

.field private static final HARDWARE_NAME:Ljava/lang/String;

.field public static volatile LIST_SCROLL_BOOSTER_CORE_NUM:I = 0x0

.field private static final LOG_LEVEL_PROP:Ljava/lang/String; = "ro.debug_level"

.field private static final LOG_LEVEL_PROP_HIGH:Ljava/lang/String; = "0x4948"

.field private static final LOG_LEVEL_PROP_LOW:Ljava/lang/String; = "0x4f4c"

.field private static final LOG_LEVEL_PROP_MID:Ljava/lang/String; = "0x494d"

.field private static final LOG_TAG:Ljava/lang/String; = "DVFSHelper"

.field public static volatile PWM_ROTATION_BOOST_TIMEOUT:I = 0x0

.field private static final SIOP_MODEL:Ljava/lang/String; = "ssrm_grandprimeplus_xx"

.field public static final TYPE_BUS_MAX:I = 0x14

.field public static final TYPE_BUS_MIN:I = 0x13

.field public static final TYPE_CPUCTL:I = 0x1b

.field public static final TYPE_CPUSET:I = 0x1a

.field public static final TYPE_CPU_CORE_NUM_MAX:I = 0xf

.field public static final TYPE_CPU_CORE_NUM_MIN:I = 0xe

.field public static final TYPE_CPU_DISABLE_CSTATE:I = 0x16

.field public static final TYPE_CPU_HOTPLUG_DISABLE:I = 0x18

.field public static final TYPE_CPU_LEGACY_SCHED:I = 0x17

.field public static final TYPE_CPU_MAX:I = 0xd

.field public static final TYPE_CPU_MIN:I = 0xc

.field public static final TYPE_EMMC_BURST_MODE:I = 0x12

.field public static final TYPE_FPS_MAX:I = 0x15

.field public static final TYPE_GPU_MAX:I = 0x11

.field public static final TYPE_GPU_MIN:I = 0x10

.field public static final TYPE_MAX:I = 0x1c

.field public static final TYPE_NONE:I = 0xb

.field public static final TYPE_PCIE_PSM_DISABLE:I = 0x19

.field public static volatile WAKEUP_BOOSTER_CORE_NUM:I

.field private static final isEngBinary:Z

.field private static volatile mAMSCState:Landroid/os/DVFSHelper;

.field private static volatile mAMSCStateTail:Landroid/os/DVFSHelper;

.field private static mToken:I

.field static volatile sCfmsService:Landroid/os/ICustomFrequencyManager;

.field private static sIsDebugLevelHigh:Z


# instance fields
.field final APP_LAUNCH_BOOSTING_TIMEOUT_L:I

.field final APP_LAUNCH_BOOSTING_TIMEOUT_LL:I

.field final APP_LAUNCH_BOOSTING_TIMEOUT_M:I

.field final APP_LAUNCH_BOOSTING_TIMEOUT_ML:I

.field final APP_LAUNCH_BOOSTING_TIMEOUT_S:I

.field private DISPLAY_FHD:Z

.field private DISPLAY_HD:Z

.field private DISPLAY_WQXGA:Z

.field private final REGION_JPN:Z

.field final ROTATION_BOOSTING_TIMEOUT:I

.field final ROTATION_GPU_BOOSTING_TIMEOUT:I

.field busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field cpuHotplugDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field cpuLegacySchedulerRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field cpuctlRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field cpusetRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

.field mAppLaunchBoostTime:I

.field mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

.field mAppLaunchCPUCoreNumBooster:Landroid/os/DVFSHelper;

.field mAppLaunchCState:Landroid/os/DVFSHelper;

.field mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

.field private mAppLaunchPackages:[Ljava/lang/String;

.field mBUSFrequencyTable:[I

.field mCPUCoreTable:[I

.field mCPUFrequencyTable:[I

.field private mContext:Landroid/content/Context;

.field private mCustomFreqManager:Landroid/os/CustomFrequencyManager;

.field mGPUFrequencyTable:[I

.field private mHintList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/DVFSHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mHintTimeout:I

.field private mIntentExtra:Landroid/content/Intent;

.field private volatile mIsAcquired:Z

.field private mIsHintNotifier:Z

.field private mIsHintValid:Z

.field private mModel:Landroid/os/DVFSHelper$Model;

.field private mPkgName:Ljava/lang/String;

.field private mPlusFreqBoost:Landroid/os/PlusFreqBoost;

.field mRotationBUSBooster:Landroid/os/DVFSHelper;

.field mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

.field mRotationGPUBooster:Landroid/os/DVFSHelper;

.field private mSupportedBUSFrequency:[I

.field mSupportedCPUCoreNum:[I

.field private mSupportedCPUCoreNumForSSRM:[I

.field private mSupportedCPUFrequency:[I

.field mSupportedCPUFrequencyForSSRM:[I

.field private mSupportedGPUFrequency:[I

.field private mSupportedGPUFrequencyForSSRM:[I

.field private mType:I

.field mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field pciePsmDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field private wm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 37
    const-string v0, "0x4948"

    const-string/jumbo v1, "ro.debug_level"

    const-string v2, "0x4f4c"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/DVFSHelper;->sIsDebugLevelHigh:Z

    .line 193
    sput v3, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    .line 196
    sput v3, Landroid/os/DVFSHelper;->WAKEUP_BOOSTER_CORE_NUM:I

    .line 198
    sput v3, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    .line 200
    sput v3, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    .line 206
    const-string/jumbo v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    .line 208
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/DVFSHelper;->DEVICE_TYPE:Ljava/lang/String;

    .line 210
    const-string/jumbo v0, "ro.chipname"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    .line 212
    const-string/jumbo v0, "ro.hardware"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/DVFSHelper;->HARDWARE_NAME:Ljava/lang/String;

    .line 262
    sput v3, Landroid/os/DVFSHelper;->mToken:I

    .line 1532
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/DVFSHelper;->isEngBinary:Z

    .line 1900
    sput-object v4, Landroid/os/DVFSHelper;->mAMSCState:Landroid/os/DVFSHelper;

    .line 1902
    sput-object v4, Landroid/os/DVFSHelper;->mAMSCStateTail:Landroid/os/DVFSHelper;

    .line 3060
    sput-object v4, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    const/16 v7, 0x1c

    const/4 v2, 0x1

    const/16 v6, 0x13

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 3270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object v5, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 216
    iput-object v5, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    .line 218
    iput-object v5, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 220
    const/16 v0, 0xb

    iput v0, p0, Landroid/os/DVFSHelper;->mType:I

    .line 222
    iput-object v5, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 224
    iput-object v5, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    .line 226
    iput-object v5, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    .line 228
    iput-object v5, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    .line 230
    iput-object v5, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNumForSSRM:[I

    .line 232
    iput-object v5, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    .line 234
    iput-object v5, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequencyForSSRM:[I

    .line 236
    iput-object v5, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    .line 238
    iput-object v5, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 240
    iput-object v5, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 242
    iput-object v5, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 244
    iput-object v5, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 246
    iput-object v5, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 248
    iput-object v5, p0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 250
    iput-object v5, p0, Landroid/os/DVFSHelper;->cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 252
    iput-object v5, p0, Landroid/os/DVFSHelper;->cpuLegacySchedulerRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 254
    iput-object v5, p0, Landroid/os/DVFSHelper;->cpuHotplugDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 256
    iput-object v5, p0, Landroid/os/DVFSHelper;->pciePsmDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 258
    iput-object v5, p0, Landroid/os/DVFSHelper;->cpusetRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 260
    iput-object v5, p0, Landroid/os/DVFSHelper;->cpuctlRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 264
    iput-boolean v1, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    .line 268
    iput-object v5, p0, Landroid/os/DVFSHelper;->mPlusFreqBoost:Landroid/os/PlusFreqBoost;

    .line 269
    iput-boolean v1, p0, Landroid/os/DVFSHelper;->DISPLAY_WQXGA:Z

    .line 271
    iput-boolean v1, p0, Landroid/os/DVFSHelper;->DISPLAY_FHD:Z

    .line 273
    iput-boolean v1, p0, Landroid/os/DVFSHelper;->DISPLAY_HD:Z

    .line 275
    iput-object v5, p0, Landroid/os/DVFSHelper;->wm:Landroid/view/WindowManager;

    .line 277
    const-string/jumbo v0, "ssrm_grandprimeplus_xx"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ssrm_grandprimeplus_xx"

    const-string/jumbo v3, "jpn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "DCM"

    const-string/jumbo v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "KDI"

    const-string/jumbo v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/os/DVFSHelper;->REGION_JPN:Z

    .line 1577
    iput-object v5, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

    .line 1579
    iput-object v5, p0, Landroid/os/DVFSHelper;->mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

    .line 1581
    iput-object v5, p0, Landroid/os/DVFSHelper;->mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

    .line 1583
    iput-object v5, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 1585
    iput-object v5, p0, Landroid/os/DVFSHelper;->mAppLaunchCState:Landroid/os/DVFSHelper;

    .line 1587
    iput-object v5, p0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    .line 1589
    iput-object v5, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    .line 1591
    iput-object v5, p0, Landroid/os/DVFSHelper;->mGPUFrequencyTable:[I

    .line 1593
    iput-object v5, p0, Landroid/os/DVFSHelper;->mBUSFrequencyTable:[I

    .line 1595
    const/16 v0, 0xfa0

    iput v0, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_LL:I

    .line 1597
    const/16 v0, 0x7d0

    iput v0, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_L:I

    .line 1599
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_S:I

    .line 1601
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_M:I

    .line 1603
    const/16 v0, 0x5dc

    iput v0, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_ML:I

    .line 1605
    const/16 v0, 0x7d0

    iput v0, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    .line 1607
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    new-array v3, v7, [I

    fill-array-data v3, :array_0

    invoke-direct {p0, v3}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v3, 0x1e

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    invoke-direct {p0, v3}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v3, 0x2

    new-array v4, v6, [I

    fill-array-data v4, :array_2

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const/16 v4, 0x12

    new-array v4, v4, [I

    fill-array-data v4, :array_3

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const/16 v4, 0x14

    new-array v4, v4, [I

    fill-array-data v4, :array_4

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const/16 v4, 0x15

    new-array v4, v4, [I

    fill-array-data v4, :array_5

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x6

    new-array v4, v7, [I

    fill-array-data v4, :array_6

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x7

    new-array v4, v6, [I

    fill-array-data v4, :array_7

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x8

    new-array v4, v6, [I

    fill-array-data v4, :array_8

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x9

    new-array v4, v7, [I

    fill-array-data v4, :array_9

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const/16 v4, 0x19

    new-array v4, v4, [I

    fill-array-data v4, :array_a

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const/16 v4, 0x19

    new-array v4, v4, [I

    fill-array-data v4, :array_b

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const/16 v4, 0x17

    new-array v4, v4, [I

    fill-array-data v4, :array_c

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xd

    new-array v4, v6, [I

    fill-array-data v4, :array_d

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xe

    const/16 v4, 0xe

    new-array v4, v4, [I

    fill-array-data v4, :array_e

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xf

    const/16 v4, 0x12

    new-array v4, v4, [I

    fill-array-data v4, :array_f

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x10

    new-array v4, v6, [I

    fill-array-data v4, :array_10

    invoke-direct {p0, v4}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    iput-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchPackages:[Ljava/lang/String;

    .line 1824
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/os/DVFSHelper;->ROTATION_BOOSTING_TIMEOUT:I

    .line 1826
    const/16 v0, 0x7d0

    iput v0, p0, Landroid/os/DVFSHelper;->ROTATION_GPU_BOOSTING_TIMEOUT:I

    .line 1828
    iput-object v5, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 1830
    iput-object v5, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    .line 1832
    iput-object v5, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    .line 3262
    iput-object v5, p0, Landroid/os/DVFSHelper;->mHintList:Ljava/util/ArrayList;

    .line 3264
    iput-boolean v1, p0, Landroid/os/DVFSHelper;->mIsHintNotifier:Z

    .line 3266
    iput-boolean v1, p0, Landroid/os/DVFSHelper;->mIsHintValid:Z

    .line 3268
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/DVFSHelper;->mHintTimeout:I

    .line 3271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mHintList:Ljava/util/ArrayList;

    .line 3272
    iput-boolean v2, p0, Landroid/os/DVFSHelper;->mIsHintNotifier:Z

    .line 3273
    return-void

    :cond_2
    move v0, v1

    .line 277
    goto/16 :goto_0

    .line 1607
    nop

    :array_0
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x54
        0x9
        0x18
        0x8
        0x15
        0xd
        0x9
        0x1f
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x9
        0x54
        0x19
        0x12
        0x8
        0x15
        0x17
        0x1f
    .end array-data

    :array_2
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x18
        0x8
        0x15
        0xd
        0x9
        0x1f
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1e
        0x13
        0x1b
        0x16
        0x1f
        0x8
    .end array-data

    :array_4
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x19
        0x15
        0x14
        0xe
        0x1b
        0x19
        0xe
        0x9
    .end array-data

    :array_5
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0x17
    .end array-data

    :array_6
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1f
        0x17
        0x1b
        0x13
        0x16
        0x54
        0xf
        0x13
    .end array-data

    :array_7
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1c
        0x1b
        0x19
        0x1f
        0x18
        0x15
        0x15
        0x11
        0x54
        0x11
        0x1b
        0xe
        0x1b
        0x14
        0x1b
    .end array-data

    :array_8
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0xc
        0x1f
        0x14
        0x1e
        0x13
        0x14
        0x1d
    .end array-data

    :array_9
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1f
        0xc
        0x1f
        0x8
        0x1d
        0x16
        0x1b
        0x1e
        0x1f
        0x9
        0x54
        0xc
        0x13
        0x1e
        0x1f
        0x15
    .end array-data

    :array_a
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0xc
        0x13
        0x1e
        0x1f
        0x15
    .end array-data

    :array_b
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0x1b
        0x16
        0x16
        0x1f
        0x8
        0x3
        0x49
        0x1e
    .end array-data

    :array_c
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x17
        0x1b
        0xa
        0x9
    .end array-data

    :array_d
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x18
        0x1b
        0x13
        0x1e
        0xf
        0x54
        0x1b
        0xa
        0xa
        0x9
        0x1f
        0x1b
        0x8
        0x19
        0x12
    .end array-data

    :array_e
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x13
        0x14
        0x1b
        0x54
        0xd
        0x1f
        0x13
        0x18
        0x15
    .end array-data

    :array_f
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x18
        0x1b
        0x13
        0x1e
        0xf
        0x54
        0x38
        0x1b
        0x13
        0x1e
        0xf
        0x37
        0x1b
        0xa
    .end array-data

    :array_10
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xe
        0xd
        0x13
        0xe
        0xe
        0x1f
        0x8
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 290
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 291
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "option"    # J

    .prologue
    .line 303
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 304
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "option"    # J

    .prologue
    const/16 v9, 0x1c

    const/16 v8, 0x13

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object v7, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 216
    iput-object v7, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    .line 218
    iput-object v7, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 220
    const/16 v2, 0xb

    iput v2, p0, Landroid/os/DVFSHelper;->mType:I

    .line 222
    iput-object v7, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 224
    iput-object v7, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    .line 226
    iput-object v7, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    .line 228
    iput-object v7, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    .line 230
    iput-object v7, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNumForSSRM:[I

    .line 232
    iput-object v7, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    .line 234
    iput-object v7, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequencyForSSRM:[I

    .line 236
    iput-object v7, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    .line 238
    iput-object v7, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 240
    iput-object v7, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 242
    iput-object v7, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 244
    iput-object v7, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 246
    iput-object v7, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 248
    iput-object v7, p0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 250
    iput-object v7, p0, Landroid/os/DVFSHelper;->cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 252
    iput-object v7, p0, Landroid/os/DVFSHelper;->cpuLegacySchedulerRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 254
    iput-object v7, p0, Landroid/os/DVFSHelper;->cpuHotplugDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 256
    iput-object v7, p0, Landroid/os/DVFSHelper;->pciePsmDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 258
    iput-object v7, p0, Landroid/os/DVFSHelper;->cpusetRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 260
    iput-object v7, p0, Landroid/os/DVFSHelper;->cpuctlRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 264
    iput-boolean v3, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    .line 268
    iput-object v7, p0, Landroid/os/DVFSHelper;->mPlusFreqBoost:Landroid/os/PlusFreqBoost;

    .line 269
    iput-boolean v3, p0, Landroid/os/DVFSHelper;->DISPLAY_WQXGA:Z

    .line 271
    iput-boolean v3, p0, Landroid/os/DVFSHelper;->DISPLAY_FHD:Z

    .line 273
    iput-boolean v3, p0, Landroid/os/DVFSHelper;->DISPLAY_HD:Z

    .line 275
    iput-object v7, p0, Landroid/os/DVFSHelper;->wm:Landroid/view/WindowManager;

    .line 277
    const-string/jumbo v2, "ssrm_grandprimeplus_xx"

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ssrm_grandprimeplus_xx"

    const-string/jumbo v5, "jpn"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "DCM"

    const-string/jumbo v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "KDI"

    const-string/jumbo v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Landroid/os/DVFSHelper;->REGION_JPN:Z

    .line 1577
    iput-object v7, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

    .line 1579
    iput-object v7, p0, Landroid/os/DVFSHelper;->mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

    .line 1581
    iput-object v7, p0, Landroid/os/DVFSHelper;->mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

    .line 1583
    iput-object v7, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 1585
    iput-object v7, p0, Landroid/os/DVFSHelper;->mAppLaunchCState:Landroid/os/DVFSHelper;

    .line 1587
    iput-object v7, p0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    .line 1589
    iput-object v7, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    .line 1591
    iput-object v7, p0, Landroid/os/DVFSHelper;->mGPUFrequencyTable:[I

    .line 1593
    iput-object v7, p0, Landroid/os/DVFSHelper;->mBUSFrequencyTable:[I

    .line 1595
    const/16 v2, 0xfa0

    iput v2, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_LL:I

    .line 1597
    const/16 v2, 0x7d0

    iput v2, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_L:I

    .line 1599
    const/16 v2, 0x1f4

    iput v2, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_S:I

    .line 1601
    const/16 v2, 0x3e8

    iput v2, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_M:I

    .line 1603
    const/16 v2, 0x5dc

    iput v2, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_ML:I

    .line 1605
    const/16 v2, 0x7d0

    iput v2, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    .line 1607
    const/16 v2, 0x11

    new-array v2, v2, [Ljava/lang/String;

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    invoke-direct {p0, v5}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/16 v5, 0x1e

    new-array v5, v5, [I

    fill-array-data v5, :array_1

    invoke-direct {p0, v5}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v5, 0x2

    new-array v6, v8, [I

    fill-array-data v6, :array_2

    invoke-direct {p0, v6}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x3

    const/16 v6, 0x12

    new-array v6, v6, [I

    fill-array-data v6, :array_3

    invoke-direct {p0, v6}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x4

    const/16 v6, 0x14

    new-array v6, v6, [I

    fill-array-data v6, :array_4

    invoke-direct {p0, v6}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x5

    const/16 v6, 0x15

    new-array v6, v6, [I

    fill-array-data v6, :array_5

    invoke-direct {p0, v6}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x6

    new-array v6, v9, [I

    fill-array-data v6, :array_6

    invoke-direct {p0, v6}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x7

    new-array v6, v8, [I

    fill-array-data v6, :array_7

    invoke-direct {p0, v6}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/16 v5, 0x8

    new-array v6, v8, [I

    fill-array-data v6, :array_8

    invoke-direct {p0, v6}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/16 v5, 0x9

    new-array v6, v9, [I

    fill-array-data v6, :array_9

    invoke-direct {p0, v6}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/16 v5, 0xa

    const/16 v6, 0x19

    new-array v6, v6, [I

    fill-array-data v6, :array_a

    invoke-direct {p0, v6}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/16 v5, 0xb

    const/16 v6, 0x19

    new-array v6, v6, [I

    fill-array-data v6, :array_b

    invoke-direct {p0, v6}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/16 v5, 0xc

    const/16 v6, 0x17

    new-array v6, v6, [I

    fill-array-data v6, :array_c

    invoke-direct {p0, v6}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/16 v5, 0xd

    new-array v6, v8, [I

    fill-array-data v6, :array_d

    invoke-direct {p0, v6}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/16 v5, 0xe

    const/16 v6, 0xe

    new-array v6, v6, [I

    fill-array-data v6, :array_e

    invoke-direct {p0, v6}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/16 v5, 0xf

    const/16 v6, 0x12

    new-array v6, v6, [I

    fill-array-data v6, :array_f

    invoke-direct {p0, v6}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/16 v5, 0x10

    new-array v6, v8, [I

    fill-array-data v6, :array_10

    invoke-direct {p0, v6}, Landroid/os/DVFSHelper;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    iput-object v2, p0, Landroid/os/DVFSHelper;->mAppLaunchPackages:[Ljava/lang/String;

    .line 1824
    const/16 v2, 0x1f4

    iput v2, p0, Landroid/os/DVFSHelper;->ROTATION_BOOSTING_TIMEOUT:I

    .line 1826
    const/16 v2, 0x7d0

    iput v2, p0, Landroid/os/DVFSHelper;->ROTATION_GPU_BOOSTING_TIMEOUT:I

    .line 1828
    iput-object v7, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 1830
    iput-object v7, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    .line 1832
    iput-object v7, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    .line 3262
    iput-object v7, p0, Landroid/os/DVFSHelper;->mHintList:Ljava/util/ArrayList;

    .line 3264
    iput-boolean v3, p0, Landroid/os/DVFSHelper;->mIsHintNotifier:Z

    .line 3266
    iput-boolean v3, p0, Landroid/os/DVFSHelper;->mIsHintValid:Z

    .line 3268
    const/4 v2, -0x1

    iput v2, p0, Landroid/os/DVFSHelper;->mHintTimeout:I

    .line 318
    if-nez p1, :cond_3

    .line 368
    :goto_1
    return-void

    :cond_2
    move v2, v3

    .line 277
    goto/16 :goto_0

    .line 321
    :cond_3
    iput-object p1, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 323
    iget-object v2, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Landroid/os/DVFSHelper;->wm:Landroid/view/WindowManager;

    .line 324
    iget-object v2, p0, Landroid/os/DVFSHelper;->wm:Landroid/view/WindowManager;

    if-eqz v2, :cond_6

    .line 325
    iget-object v2, p0, Landroid/os/DVFSHelper;->wm:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 326
    .local v0, "d":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 327
    .local v1, "p":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 328
    iget v2, v1, Landroid/graphics/Point;->x:I

    const/16 v3, 0xa00

    if-ge v2, v3, :cond_5

    iget v2, v1, Landroid/graphics/Point;->y:I

    const/16 v3, 0xa00

    if-ge v2, v3, :cond_5

    iget v2, v1, Landroid/graphics/Point;->x:I

    const/16 v3, 0x800

    if-ne v2, v3, :cond_4

    iget v2, v1, Landroid/graphics/Point;->y:I

    const/16 v3, 0x600

    if-eq v2, v3, :cond_5

    :cond_4
    iget v2, v1, Landroid/graphics/Point;->y:I

    const/16 v3, 0x800

    if-ne v2, v3, :cond_7

    iget v2, v1, Landroid/graphics/Point;->x:I

    const/16 v3, 0x600

    if-lt v2, v3, :cond_7

    .line 330
    :cond_5
    iput-boolean v4, p0, Landroid/os/DVFSHelper;->DISPLAY_WQXGA:Z

    .line 337
    .end local v0    # "d":Landroid/view/Display;
    .end local v1    # "p":Landroid/graphics/Point;
    :cond_6
    :goto_2
    invoke-direct {p0}, Landroid/os/DVFSHelper;->createModel()Landroid/os/DVFSHelper$Model;

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    .line 339
    iget-object v2, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    const-string v3, "CustomFrequencyManagerService"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/CustomFrequencyManager;

    iput-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 341
    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v2, :cond_d

    .line 342
    const-string v2, "DVFSHelper"

    const-string v3, "DVFSHelper:: failed to load CFMS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 331
    .restart local v0    # "d":Landroid/view/Display;
    .restart local v1    # "p":Landroid/graphics/Point;
    :cond_7
    iget v2, v1, Landroid/graphics/Point;->x:I

    const/16 v3, 0x780

    if-ne v2, v3, :cond_8

    iget v2, v1, Landroid/graphics/Point;->y:I

    const/16 v3, 0x438

    if-eq v2, v3, :cond_9

    :cond_8
    iget v2, v1, Landroid/graphics/Point;->x:I

    const/16 v3, 0x438

    if-ne v2, v3, :cond_a

    iget v2, v1, Landroid/graphics/Point;->y:I

    const/16 v3, 0x780

    if-ne v2, v3, :cond_a

    .line 332
    :cond_9
    iput-boolean v4, p0, Landroid/os/DVFSHelper;->DISPLAY_FHD:Z

    goto :goto_2

    .line 333
    :cond_a
    iget v2, v1, Landroid/graphics/Point;->x:I

    const/16 v3, 0x500

    if-ne v2, v3, :cond_b

    iget v2, v1, Landroid/graphics/Point;->y:I

    const/16 v3, 0x2d0

    if-eq v2, v3, :cond_c

    :cond_b
    iget v2, v1, Landroid/graphics/Point;->x:I

    const/16 v3, 0x2d0

    if-ne v2, v3, :cond_6

    iget v2, v1, Landroid/graphics/Point;->y:I

    const/16 v3, 0x500

    if-ne v2, v3, :cond_6

    .line 334
    :cond_c
    iput-boolean v4, p0, Landroid/os/DVFSHelper;->DISPLAY_HD:Z

    goto :goto_2

    .line 346
    .end local v0    # "d":Landroid/view/Display;
    .end local v1    # "p":Landroid/graphics/Point;
    :cond_d
    const-string v2, "DVFSHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DVFSHelper:: New instance is created for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager;->getSupportedCPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    .line 349
    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager;->getSupportedCPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    .line 350
    invoke-direct {p0}, Landroid/os/DVFSHelper;->adjustCPUFreqTable()V

    .line 351
    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager;->getSupportedCPUCoreNum()[I

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    .line 352
    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager;->getSupportedCPUCoreNum()[I

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNumForSSRM:[I

    .line 353
    invoke-direct {p0}, Landroid/os/DVFSHelper;->adjustCPUCoreTable()V

    .line 354
    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager;->getSupportedGPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    .line 355
    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager;->getSupportedGPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequencyForSSRM:[I

    .line 356
    invoke-direct {p0}, Landroid/os/DVFSHelper;->adjustGPUFreqTable()V

    .line 357
    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager;->getSupportedSysBusFrequency()[I

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    .line 358
    new-instance v2, Landroid/os/PlusFreqBoost;

    iget-object v3, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/os/PlusFreqBoost;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/os/DVFSHelper;->mPlusFreqBoost:Landroid/os/PlusFreqBoost;

    .line 360
    sget v2, Landroid/os/DVFSHelper;->mToken:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Landroid/os/DVFSHelper;->mToken:I

    .line 361
    if-eqz p2, :cond_e

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/DVFSHelper;->mToken:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    .line 367
    :goto_3
    iput p3, p0, Landroid/os/DVFSHelper;->mType:I

    goto/16 :goto_1

    .line 364
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/DVFSHelper;->mToken:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    goto :goto_3

    .line 1607
    :array_0
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x54
        0x9
        0x18
        0x8
        0x15
        0xd
        0x9
        0x1f
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x9
        0x54
        0x19
        0x12
        0x8
        0x15
        0x17
        0x1f
    .end array-data

    :array_2
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x18
        0x8
        0x15
        0xd
        0x9
        0x1f
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1e
        0x13
        0x1b
        0x16
        0x1f
        0x8
    .end array-data

    :array_4
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x19
        0x15
        0x14
        0xe
        0x1b
        0x19
        0xe
        0x9
    .end array-data

    :array_5
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0x17
    .end array-data

    :array_6
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1f
        0x17
        0x1b
        0x13
        0x16
        0x54
        0xf
        0x13
    .end array-data

    :array_7
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1c
        0x1b
        0x19
        0x1f
        0x18
        0x15
        0x15
        0x11
        0x54
        0x11
        0x1b
        0xe
        0x1b
        0x14
        0x1b
    .end array-data

    :array_8
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0xc
        0x1f
        0x14
        0x1e
        0x13
        0x14
        0x1d
    .end array-data

    :array_9
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1f
        0xc
        0x1f
        0x8
        0x1d
        0x16
        0x1b
        0x1e
        0x1f
        0x9
        0x54
        0xc
        0x13
        0x1e
        0x1f
        0x15
    .end array-data

    :array_a
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0xc
        0x13
        0x1e
        0x1f
        0x15
    .end array-data

    :array_b
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0x1b
        0x16
        0x16
        0x1f
        0x8
        0x3
        0x49
        0x1e
    .end array-data

    :array_c
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x17
        0x1b
        0xa
        0x9
    .end array-data

    :array_d
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x18
        0x1b
        0x13
        0x1e
        0xf
        0x54
        0x1b
        0xa
        0xa
        0x9
        0x1f
        0x1b
        0x8
        0x19
        0x12
    .end array-data

    :array_e
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x13
        0x14
        0x1b
        0x54
        0xd
        0x1f
        0x13
        0x18
        0x15
    .end array-data

    :array_f
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x18
        0x1b
        0x13
        0x1e
        0xf
        0x54
        0x38
        0x1b
        0x13
        0x1e
        0xf
        0x37
        0x1b
        0xa
    .end array-data

    :array_10
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xe
        0xd
        0x13
        0xe
        0xe
        0x1f
        0x8
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
    .end array-data
.end method

.method static synthetic access$000(Landroid/os/DVFSHelper;)[I
    .locals 1
    .param p0, "x0"    # Landroid/os/DVFSHelper;

    .prologue
    .line 25
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNumForSSRM:[I

    return-object v0
.end method

.method static synthetic access$100(Landroid/os/DVFSHelper;)Z
    .locals 1
    .param p0, "x0"    # Landroid/os/DVFSHelper;

    .prologue
    .line 25
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->REGION_JPN:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/os/DVFSHelper;)[I
    .locals 1
    .param p0, "x0"    # Landroid/os/DVFSHelper;

    .prologue
    .line 25
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    return-object v0
.end method

.method private acquireImpl(I)V
    .locals 40
    .param p1, "timeout"    # I

    .prologue
    .line 862
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v3, :cond_0

    .line 1228
    :goto_0
    return-void

    .line 866
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v37

    .line 868
    .local v37, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    const-string v3, "DVFSHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "acquire:: timeout = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", mIsAcquired = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    if-eqz v3, :cond_1

    .line 871
    const-string v3, "DVFSHelper"

    const-string v4, "acquire:: DVFS lock is already acquired. Previous lock will be released first."

    invoke-static {v3, v4}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    invoke-virtual/range {p0 .. p0}, Landroid/os/DVFSHelper;->release()V

    .line 877
    :cond_1
    const/4 v2, 0x0

    .line 878
    .local v2, "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    if-eqz v3, :cond_2

    .line 879
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 882
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/os/DVFSHelper;->mType:I

    packed-switch v3, :pswitch_data_0

    .line 1186
    const-string v3, "DVFSHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "acquire:: the request type doesn\'t implemented yet. mType = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Landroid/os/DVFSHelper;->mType:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_4

    .line 1192
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 1194
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_5

    .line 1195
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 1197
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_6

    .line 1198
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 1200
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_7

    .line 1201
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 1203
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_8

    .line 1204
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 1206
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_9

    .line 1207
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 1209
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuLegacySchedulerRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_a

    .line 1210
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuLegacySchedulerRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 1212
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuHotplugDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_b

    .line 1213
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuHotplugDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 1215
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->pciePsmDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_c

    .line 1216
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->pciePsmDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 1218
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpusetRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_d

    .line 1219
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpusetRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 1221
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuctlRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_e

    .line 1222
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuctlRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 1224
    :cond_e
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/os/DVFSHelper;->mIsAcquired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1226
    invoke-static/range {v37 .. v37}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/16 :goto_0

    .line 884
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    .line 885
    const/4 v5, 0x0

    .line 886
    .local v5, "coreNum":I
    const/16 v39, 0x0

    .line 889
    .local v39, "stringCoreNum":Ljava/lang/String;
    if-eqz v2, :cond_f

    .line 890
    :try_start_2
    const-string v3, "CORE_NUM"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v39

    .line 895
    :cond_f
    :goto_2
    if-eqz v39, :cond_10

    .line 896
    :try_start_3
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 899
    :cond_10
    if-lez v5, :cond_3

    .line 900
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v4, 0x4

    move/from16 v0, p1

    int-to-long v6, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v3 .. v9}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 1226
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v5    # "coreNum":I
    .end local v39    # "stringCoreNum":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-static/range {v37 .. v37}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v3

    .line 892
    .restart local v2    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "coreNum":I
    .restart local v39    # "stringCoreNum":Ljava/lang/String;
    :catch_0
    move-exception v33

    .line 893
    .local v33, "e1":Ljava/lang/NullPointerException;
    :try_start_4
    invoke-virtual/range {v33 .. v33}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    .line 907
    .end local v5    # "coreNum":I
    .end local v33    # "e1":Ljava/lang/NullPointerException;
    .end local v39    # "stringCoreNum":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_3

    .line 908
    const/4 v5, 0x0

    .line 909
    .restart local v5    # "coreNum":I
    const/16 v39, 0x0

    .line 911
    .restart local v39    # "stringCoreNum":Ljava/lang/String;
    if-eqz v2, :cond_11

    .line 912
    :try_start_5
    const-string v3, "CORE_NUM"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v39

    .line 917
    :cond_11
    :goto_3
    if-eqz v39, :cond_12

    .line 918
    :try_start_6
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 921
    :cond_12
    if-gtz v5, :cond_13

    const-string/jumbo v3, "msm8992"

    sget-object v4, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string/jumbo v3, "msm8952"

    sget-object v4, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 922
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v4, 0x5

    move/from16 v0, p1

    int-to-long v6, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v3 .. v9}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 914
    :catch_1
    move-exception v34

    .line 915
    .local v34, "e2":Ljava/lang/NullPointerException;
    invoke-virtual/range {v34 .. v34}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    .line 929
    .end local v5    # "coreNum":I
    .end local v34    # "e2":Ljava/lang/NullPointerException;
    .end local v39    # "stringCoreNum":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-eqz v3, :cond_3

    .line 930
    const/4 v9, -0x1

    .line 932
    .local v9, "freq":I
    if-eqz v2, :cond_14

    .line 933
    const-string v3, "CPU"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 934
    .local v31, "cpuOption":Ljava/lang/String;
    if-eqz v31, :cond_14

    .line 935
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 939
    .end local v31    # "cpuOption":Ljava/lang/String;
    :cond_14
    const-string/jumbo v3, "ja"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const v3, 0x186a00

    if-le v9, v3, :cond_16

    .line 940
    const v3, 0x186a00

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v9

    .line 1037
    :cond_15
    :goto_4
    const/4 v3, -0x1

    if-eq v9, v3, :cond_3

    .line 1038
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v8, 0x6

    move/from16 v0, p1

    int-to-long v10, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v7 .. v13}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 941
    :cond_16
    const-string/jumbo v3, "hrl"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 942
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "ACTIVITY_RESUME_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "LIST_SCROLL_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "SMOOTH_SCROLL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "GESTURE_DETECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 944
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->wm:Landroid/view/WindowManager;

    if-eqz v3, :cond_15

    .line 945
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->wm:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v32

    .line 946
    .local v32, "d":Landroid/view/Display;
    new-instance v38, Landroid/graphics/Point;

    invoke-direct/range {v38 .. v38}, Landroid/graphics/Point;-><init>()V

    .line 947
    .local v38, "p":Landroid/graphics/Point;
    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 948
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0xa00

    if-ge v3, v4, :cond_19

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0xa00

    if-ge v3, v4, :cond_19

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x800

    if-ne v3, v4, :cond_18

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x600

    if-eq v3, v4, :cond_19

    :cond_18
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x800

    if-ne v3, v4, :cond_1d

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x600

    if-lt v3, v4, :cond_1d

    .line 950
    :cond_19
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/os/DVFSHelper;->DISPLAY_WQXGA:Z

    .line 951
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "ACTIVITY_RESUME_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 952
    const v9, 0x1afa40

    goto/16 :goto_4

    .line 953
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "LIST_SCROLL_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 954
    const v9, 0xb1bc0

    goto/16 :goto_4

    .line 955
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "SMOOTH_SCROLL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 956
    const v9, 0x1174c0

    goto/16 :goto_4

    .line 957
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "GESTURE_DETECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 958
    const v9, 0xb1bc0

    goto/16 :goto_4

    .line 960
    :cond_1d
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x780

    if-ne v3, v4, :cond_1e

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x438

    if-eq v3, v4, :cond_1f

    :cond_1e
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x438

    if-ne v3, v4, :cond_23

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x780

    if-ne v3, v4, :cond_23

    .line 961
    :cond_1f
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/os/DVFSHelper;->DISPLAY_FHD:Z

    .line 962
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "ACTIVITY_RESUME_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 963
    const v9, 0x17cdc0

    goto/16 :goto_4

    .line 964
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "LIST_SCROLL_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 965
    const v9, 0xb1bc0

    goto/16 :goto_4

    .line 966
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "SMOOTH_SCROLL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 967
    const v9, 0x1174c0

    goto/16 :goto_4

    .line 968
    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "GESTURE_DETECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 969
    const v9, 0xb1bc0

    goto/16 :goto_4

    .line 971
    :cond_23
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x500

    if-ne v3, v4, :cond_24

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x2d0

    if-eq v3, v4, :cond_25

    :cond_24
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x2d0

    if-ne v3, v4, :cond_15

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x500

    if-ne v3, v4, :cond_15

    .line 972
    :cond_25
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/os/DVFSHelper;->DISPLAY_HD:Z

    .line 973
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "ACTIVITY_RESUME_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 974
    const v9, 0x17cdc0

    goto/16 :goto_4

    .line 975
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "LIST_SCROLL_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 976
    const v9, 0x541b4

    goto/16 :goto_4

    .line 977
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "SMOOTH_SCROLL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 978
    const v9, 0x541b4

    goto/16 :goto_4

    .line 979
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "GESTURE_DETECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 980
    const v9, 0x541b4

    goto/16 :goto_4

    .line 985
    .end local v32    # "d":Landroid/view/Display;
    .end local v38    # "p":Landroid/graphics/Point;
    :cond_29
    const-string/jumbo v3, "hrq"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 986
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "ACTIVITY_RESUME_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "LIST_SCROLL_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "SMOOTH_SCROLL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "GESTURE_DETECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "WAKEUP_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 988
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->wm:Landroid/view/WindowManager;

    if-eqz v3, :cond_15

    .line 989
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->wm:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v32

    .line 990
    .restart local v32    # "d":Landroid/view/Display;
    new-instance v38, Landroid/graphics/Point;

    invoke-direct/range {v38 .. v38}, Landroid/graphics/Point;-><init>()V

    .line 991
    .restart local v38    # "p":Landroid/graphics/Point;
    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 992
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0xa00

    if-ge v3, v4, :cond_2c

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0xa00

    if-ge v3, v4, :cond_2c

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x800

    if-ne v3, v4, :cond_2b

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x600

    if-eq v3, v4, :cond_2c

    :cond_2b
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x800

    if-ne v3, v4, :cond_31

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x600

    if-lt v3, v4, :cond_31

    .line 994
    :cond_2c
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/os/DVFSHelper;->DISPLAY_WQXGA:Z

    .line 995
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "ACTIVITY_RESUME_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 996
    const v9, 0x17bb00

    goto/16 :goto_4

    .line 997
    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "LIST_SCROLL_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 998
    const v9, 0xc4e00

    goto/16 :goto_4

    .line 999
    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "SMOOTH_SCROLL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1000
    const v9, 0x122a00

    goto/16 :goto_4

    .line 1001
    :cond_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "GESTURE_DETECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1002
    const v9, 0xc4e00

    goto/16 :goto_4

    .line 1003
    :cond_30
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "WAKEUP_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1004
    const v9, 0x17bb00

    goto/16 :goto_4

    .line 1006
    :cond_31
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x780

    if-ne v3, v4, :cond_32

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x438

    if-eq v3, v4, :cond_33

    :cond_32
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x438

    if-ne v3, v4, :cond_38

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x780

    if-ne v3, v4, :cond_38

    .line 1007
    :cond_33
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/os/DVFSHelper;->DISPLAY_FHD:Z

    .line 1008
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "ACTIVITY_RESUME_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1009
    const v9, 0x143700

    goto/16 :goto_4

    .line 1010
    :cond_34
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "LIST_SCROLL_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1011
    const v9, 0xb2200

    goto/16 :goto_4

    .line 1012
    :cond_35
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "SMOOTH_SCROLL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1013
    const v9, 0xfd200

    goto/16 :goto_4

    .line 1014
    :cond_36
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "GESTURE_DETECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1015
    const v9, 0xb2200

    goto/16 :goto_4

    .line 1016
    :cond_37
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "WAKEUP_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1017
    const v9, 0x122a00

    goto/16 :goto_4

    .line 1019
    :cond_38
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x500

    if-ne v3, v4, :cond_39

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x2d0

    if-eq v3, v4, :cond_3a

    :cond_39
    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x2d0

    if-ne v3, v4, :cond_15

    move-object/from16 v0, v38

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x500

    if-ne v3, v4, :cond_15

    .line 1020
    :cond_3a
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/os/DVFSHelper;->DISPLAY_HD:Z

    .line 1021
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "ACTIVITY_RESUME_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 1022
    const v9, 0x143700

    goto/16 :goto_4

    .line 1023
    :cond_3b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "LIST_SCROLL_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 1024
    const v9, 0x87f00

    goto/16 :goto_4

    .line 1025
    :cond_3c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "SMOOTH_SCROLL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 1026
    const v9, 0xc4e00

    goto/16 :goto_4

    .line 1027
    :cond_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "GESTURE_DETECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 1028
    const v9, 0x87f00

    goto/16 :goto_4

    .line 1029
    :cond_3e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    const-string v4, "WAKEUP_BOOSTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1030
    const v9, 0x122a00

    goto/16 :goto_4

    .line 1045
    .end local v9    # "freq":I
    .end local v32    # "d":Landroid/view/Display;
    .end local v38    # "p":Landroid/graphics/Point;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-eqz v3, :cond_3

    .line 1046
    const/4 v9, -0x1

    .line 1047
    .restart local v9    # "freq":I
    if-eqz v2, :cond_3f

    .line 1048
    const-string v3, "CPU"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1049
    .restart local v31    # "cpuOption":Ljava/lang/String;
    if-eqz v31, :cond_3f

    .line 1050
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1054
    .end local v31    # "cpuOption":Ljava/lang/String;
    :cond_3f
    const/4 v3, -0x1

    if-eq v9, v3, :cond_3

    .line 1055
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v8, 0x7

    move/from16 v0, p1

    int-to-long v10, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v7 .. v13}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 1062
    .end local v9    # "freq":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-eqz v3, :cond_3

    .line 1063
    const/4 v9, -0x1

    .line 1064
    .restart local v9    # "freq":I
    if-eqz v2, :cond_40

    .line 1065
    const-string v3, "GPU"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1066
    .local v36, "gpuOption":Ljava/lang/String;
    if-eqz v36, :cond_40

    .line 1067
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1071
    .end local v36    # "gpuOption":Ljava/lang/String;
    :cond_40
    const/4 v3, -0x1

    if-eq v9, v3, :cond_3

    .line 1072
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v8, 0x1

    move/from16 v0, p1

    int-to-long v10, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v7 .. v13}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 1079
    .end local v9    # "freq":I
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-eqz v3, :cond_3

    .line 1080
    const/4 v9, -0x1

    .line 1081
    .restart local v9    # "freq":I
    if-eqz v2, :cond_41

    .line 1082
    const-string v3, "GPU"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1083
    .restart local v36    # "gpuOption":Ljava/lang/String;
    if-eqz v36, :cond_41

    .line 1084
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1088
    .end local v36    # "gpuOption":Ljava/lang/String;
    :cond_41
    const/4 v3, -0x1

    if-eq v9, v3, :cond_3

    .line 1089
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v8, 0x9

    move/from16 v0, p1

    int-to-long v10, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v7 .. v13}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 1096
    .end local v9    # "freq":I
    :pswitch_6
    const/4 v9, -0x1

    .line 1098
    .restart local v9    # "freq":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_42

    .line 1099
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 1100
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 1103
    :cond_42
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v8, 0x8

    move/from16 v0, p1

    int-to-long v10, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v7 .. v13}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 1108
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_3

    .line 1109
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    goto/16 :goto_1

    .line 1113
    .end local v9    # "freq":I
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    if-eqz v3, :cond_3

    .line 1114
    const/4 v13, -0x1

    .line 1116
    .local v13, "busMinfreq":I
    if-eqz v2, :cond_43

    .line 1117
    const-string v3, "BUS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1118
    .local v30, "busOption":Ljava/lang/String;
    if-eqz v30, :cond_43

    .line 1119
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1123
    .end local v30    # "busOption":Ljava/lang/String;
    :cond_43
    const/4 v3, -0x1

    if-eq v13, v3, :cond_3

    .line 1124
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v12, 0xa

    move/from16 v0, p1

    int-to-long v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v11 .. v17}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 1131
    .end local v13    # "busMinfreq":I
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    if-eqz v3, :cond_3

    .line 1132
    const/16 v17, -0x1

    .line 1133
    .local v17, "busMaxfreq":I
    if-eqz v2, :cond_44

    .line 1134
    const-string v3, "BUS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1135
    .restart local v30    # "busOption":Ljava/lang/String;
    if-eqz v30, :cond_44

    .line 1136
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 1139
    .end local v30    # "busOption":Ljava/lang/String;
    :cond_44
    const/4 v3, -0x1

    move/from16 v0, v17

    if-eq v0, v3, :cond_3

    .line 1140
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v16, 0xb

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v15 .. v21}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 1147
    .end local v17    # "busMaxfreq":I
    :pswitch_9
    const/16 v21, 0x63

    .line 1148
    .local v21, "fpsMax":I
    if-eqz v2, :cond_45

    .line 1149
    const-string v3, "FPS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1150
    .local v35, "fpsOption":Ljava/lang/String;
    if-eqz v35, :cond_45

    .line 1151
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 1154
    .end local v35    # "fpsOption":Ljava/lang/String;
    :cond_45
    if-ltz v21, :cond_3

    const/16 v3, 0x63

    move/from16 v0, v21

    if-ge v0, v3, :cond_3

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v19 .. v25}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 1161
    .end local v21    # "fpsMax":I
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    move-object/from16 v23, v0

    const/16 v24, 0xc

    const/16 v25, 0x0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v23 .. v29}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 1165
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    move-object/from16 v23, v0

    const/16 v24, 0xd

    const/16 v25, 0x0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v23 .. v29}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->cpuLegacySchedulerRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 1170
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    move-object/from16 v23, v0

    const/16 v24, 0xe

    const/16 v25, 0x0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v23 .. v29}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->cpuHotplugDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 1174
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    move-object/from16 v23, v0

    const/16 v24, 0xf

    const/16 v25, 0x0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v23 .. v29}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->pciePsmDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 1178
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    move-object/from16 v23, v0

    const/16 v24, 0x10

    const/16 v25, 0x0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v23 .. v29}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->cpusetRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 1182
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    move-object/from16 v23, v0

    const/16 v24, 0x11

    const/16 v25, 0x0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v23 .. v29}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->cpuctlRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 882
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private addHelper(Landroid/os/DVFSHelper;)V
    .locals 1
    .param p1, "helper"    # Landroid/os/DVFSHelper;

    .prologue
    .line 3276
    iget-object v0, p0, Landroid/os/DVFSHelper;->mHintList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3277
    return-void
.end method

.method private adjustCPUCoreTable()V
    .locals 5

    .prologue
    .line 446
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    if-nez v3, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    const/4 v0, 0x0

    .line 451
    .local v0, "SHIFT_STEPS":I
    const-string/jumbo v3, "isla"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "carmen2"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 452
    :cond_2
    const/4 v0, 0x1

    .line 455
    :cond_3
    if-lez v0, :cond_0

    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    array-length v3, v3

    if-le v3, v0, :cond_0

    .line 456
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    new-array v2, v3, [I

    .line 457
    .local v2, "newCPUCoreTable":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    if-ge v1, v3, :cond_4

    .line 458
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    add-int v4, v1, v0

    aget v3, v3, v4

    aput v3, v2, v1

    .line 457
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 460
    :cond_4
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    goto :goto_0
.end method

.method private adjustCPUFreqTable()V
    .locals 5

    .prologue
    .line 405
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-nez v3, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    const/4 v0, 0x0

    .line 410
    .local v0, "SHIFT_STEPS":I
    const-string/jumbo v3, "hf"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 411
    const/4 v0, 0x1

    .line 428
    :cond_2
    :goto_1
    const-string/jumbo v3, "ssrm_grandprimeplus_xx"

    const-string/jumbo v4, "lentis"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "ssrm_grandprimeplus_xx"

    const-string/jumbo v4, "kcat6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "ta"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 430
    :cond_3
    const/4 v0, 0x2

    .line 435
    :cond_4
    :goto_2
    if-lez v0, :cond_0

    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v3, v3

    if-le v3, v0, :cond_0

    .line 436
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    new-array v2, v3, [I

    .line 437
    .local v2, "newCPUFreqTable":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    if-ge v1, v3, :cond_c

    .line 438
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    add-int v4, v1, v0

    aget v3, v3, v4

    aput v3, v2, v1

    .line 437
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 412
    .end local v1    # "i":I
    .end local v2    # "newCPUFreqTable":[I
    :cond_5
    const-string/jumbo v3, "hrl"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 413
    const/4 v0, 0x6

    goto :goto_1

    .line 414
    :cond_6
    const-string/jumbo v3, "island"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 415
    const-string/jumbo v3, "ssrm_grandprimeplus_xx"

    const-string/jumbo v4, "novel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 416
    const/4 v0, 0x1

    goto :goto_1

    .line 418
    :cond_7
    const-string/jumbo v3, "hrq"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string/jumbo v3, "kf"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string/jumbo v3, "ka"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string/jumbo v3, "tr3ca"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string/jumbo v3, "zl"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string/jumbo v3, "zq"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 420
    :cond_8
    const/4 v0, 0x2

    goto/16 :goto_1

    .line 421
    :cond_9
    const-string/jumbo v3, "tf"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 422
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const v4, 0x286e00

    if-ne v3, v4, :cond_a

    .line 423
    const/4 v0, 0x5

    goto/16 :goto_1

    .line 425
    :cond_a
    const/4 v0, 0x2

    goto/16 :goto_1

    .line 431
    :cond_b
    const-string/jumbo v3, "ssrm_grandprimeplus_xx"

    const-string/jumbo v4, "ja_kor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 432
    const/4 v0, 0x3

    goto/16 :goto_2

    .line 440
    .restart local v1    # "i":I
    .restart local v2    # "newCPUFreqTable":[I
    :cond_c
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    goto/16 :goto_0
.end method

.method private adjustGPUFreqTable()V
    .locals 5

    .prologue
    .line 466
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-nez v3, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    const/4 v0, 0x0

    .line 471
    .local v0, "SHIFT_STEPS":I
    const-string/jumbo v3, "ha"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "ka"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "sa"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "ta"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "hrl"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "hrq"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 473
    :cond_2
    const/4 v0, 0x2

    .line 478
    :cond_3
    :goto_1
    if-lez v0, :cond_0

    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    array-length v3, v3

    if-le v3, v0, :cond_0

    .line 479
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    new-array v2, v3, [I

    .line 480
    .local v2, "newGPUFreqTable":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    if-ge v1, v3, :cond_5

    .line 481
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    add-int v4, v1, v0

    aget v3, v3, v4

    aput v3, v2, v1

    .line 480
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 474
    .end local v1    # "i":I
    .end local v2    # "newGPUFreqTable":[I
    :cond_4
    const-string/jumbo v3, "zl"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 475
    const/4 v0, 0x3

    goto :goto_1

    .line 483
    .restart local v1    # "i":I
    .restart local v2    # "newGPUFreqTable":[I
    :cond_5
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    goto :goto_0
.end method

.method public static createBusBooster(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 3151
    new-instance v0, Landroid/os/DVFSHelper;

    const/16 v3, 0x13

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 3152
    .local v0, "instance":Landroid/os/DVFSHelper;
    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v6

    .line 3153
    .local v6, "table":[I
    if-eqz v6, :cond_0

    .line 3154
    const-string v1, "BUS"

    const/4 v2, 0x0

    aget v2, v6, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 3156
    :cond_0
    return-object v0
.end method

.method public static createBusLimiter(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 3161
    new-instance v0, Landroid/os/DVFSHelper;

    const/16 v3, 0x14

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 3162
    .local v0, "instance":Landroid/os/DVFSHelper;
    return-object v0
.end method

.method public static createCpuBooster(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 3103
    new-instance v0, Landroid/os/DVFSHelper;

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 3104
    .local v0, "instance":Landroid/os/DVFSHelper;
    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v6

    .line 3105
    .local v6, "table":[I
    if-eqz v6, :cond_0

    .line 3106
    const-string v1, "CPU"

    const/4 v2, 0x0

    aget v2, v6, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 3108
    :cond_0
    return-object v0
.end method

.method public static createCpuCoreBooster(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 3135
    new-instance v0, Landroid/os/DVFSHelper;

    const/16 v3, 0xe

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 3136
    .local v0, "instance":Landroid/os/DVFSHelper;
    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v6

    .line 3137
    .local v6, "table":[I
    if-eqz v6, :cond_0

    .line 3138
    const-string v1, "CORE_NUM"

    const/4 v2, 0x0

    aget v2, v6, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 3140
    :cond_0
    return-object v0
.end method

.method public static createCpuCoreLimiter(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 3145
    new-instance v0, Landroid/os/DVFSHelper;

    const/16 v3, 0xe

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 3146
    .local v0, "instance":Landroid/os/DVFSHelper;
    return-object v0
.end method

.method public static createCpuLimiter(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 3113
    new-instance v0, Landroid/os/DVFSHelper;

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 3114
    .local v0, "instance":Landroid/os/DVFSHelper;
    return-object v0
.end method

.method public static createGpuBooster(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 3119
    new-instance v0, Landroid/os/DVFSHelper;

    const/16 v3, 0x10

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 3120
    .local v0, "instance":Landroid/os/DVFSHelper;
    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v6

    .line 3121
    .local v6, "table":[I
    if-eqz v6, :cond_0

    .line 3122
    const-string v1, "GPU"

    const/4 v2, 0x0

    aget v2, v6, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 3124
    :cond_0
    return-object v0
.end method

.method public static createGpuLimiter(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 3129
    new-instance v0, Landroid/os/DVFSHelper;

    const/16 v3, 0x11

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 3130
    .local v0, "instance":Landroid/os/DVFSHelper;
    return-object v0
.end method

.method public static createHintNotifier(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 3293
    sget-object v3, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v3, :cond_3

    .line 3295
    :try_start_0
    const-string v3, "CustomFrequencyManagerService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 3296
    .local v8, "b":Landroid/os/IBinder;
    invoke-static {v8}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v3

    sput-object v3, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3302
    sget-object v3, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v3, :cond_3

    .line 3303
    const/4 v15, 0x0

    .line 3392
    .end local v8    # "b":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-object v15

    .line 3297
    :catch_0
    move-exception v10

    .line 3298
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    sget-boolean v3, Landroid/os/DVFSHelper;->sIsDebugLevelHigh:Z

    if-eqz v3, :cond_1

    .line 3299
    const-string v3, "DVFSHelper"

    const-string v4, "createHintNotifier:: failed to get cfms service."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3302
    :cond_1
    sget-object v3, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v3, :cond_3

    .line 3303
    const/4 v15, 0x0

    goto :goto_0

    .line 3302
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    sget-object v4, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v4, :cond_2

    .line 3303
    const/4 v15, 0x0

    goto :goto_0

    :cond_2
    throw v3

    .line 3308
    :cond_3
    new-instance v15, Landroid/os/DVFSHelper;

    invoke-direct {v15}, Landroid/os/DVFSHelper;-><init>()V

    .line 3310
    .local v15, "notifier":Landroid/os/DVFSHelper;
    const/16 v16, 0x0

    .line 3312
    .local v16, "policyIntent":Landroid/content/Intent;
    :try_start_2
    sget-object v3, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Landroid/os/ICustomFrequencyManager;->getDvfsPolicyByHint(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v16

    .line 3317
    :goto_1
    if-eqz v16, :cond_0

    .line 3318
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 3319
    .local v9, "bundle":Landroid/os/Bundle;
    invoke-virtual {v9}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 3320
    .local v13, "key":Ljava/lang/String;
    invoke-virtual {v9, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3321
    .local v17, "value":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3323
    .local v2, "newHelper":Landroid/os/DVFSHelper;
    const-string v14, ""

    .line 3324
    .local v14, "moduleName":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v11, v3, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v11, v3

    .line 3328
    .local v11, "freqTable":[I
    const-string v3, "CPU_MIN"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3329
    new-instance v2, Landroid/os/DVFSHelper;

    .end local v2    # "newHelper":Landroid/os/DVFSHelper;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@CPU_MIN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc

    const-wide/16 v6, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 3331
    .restart local v2    # "newHelper":Landroid/os/DVFSHelper;
    const-string v14, "CPU"

    .line 3332
    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUFrequencyForSSRM()[I

    move-result-object v11

    .line 3352
    :cond_5
    :goto_3
    if-eqz v2, :cond_4

    .line 3353
    const-string/jumbo v3, "max"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3354
    const/4 v3, 0x0

    aget v3, v11, v3

    int-to-long v4, v3

    invoke-virtual {v2, v14, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 3355
    sget-boolean v3, Landroid/os/DVFSHelper;->sIsDebugLevelHigh:Z

    if-eqz v3, :cond_6

    .line 3356
    const-string v3, "DVFSHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hint : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", moduleName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", freq = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v11, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3386
    :cond_6
    :goto_4
    invoke-direct {v15, v2}, Landroid/os/DVFSHelper;->addHelper(Landroid/os/DVFSHelper;)V

    goto/16 :goto_2

    .line 3313
    .end local v2    # "newHelper":Landroid/os/DVFSHelper;
    .end local v9    # "bundle":Landroid/os/Bundle;
    .end local v11    # "freqTable":[I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "moduleName":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 3314
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v3, "DVFSHelper"

    const-string v4, "createHintNotifier:: failed to call getDvfsPolicyByHint."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3333
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v2    # "newHelper":Landroid/os/DVFSHelper;
    .restart local v9    # "bundle":Landroid/os/Bundle;
    .restart local v11    # "freqTable":[I
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "moduleName":Ljava/lang/String;
    .restart local v17    # "value":Ljava/lang/String;
    :cond_7
    const-string v3, "GPU_MIN"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3334
    new-instance v2, Landroid/os/DVFSHelper;

    .end local v2    # "newHelper":Landroid/os/DVFSHelper;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@GPU_MIN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    const-wide/16 v6, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 3336
    .restart local v2    # "newHelper":Landroid/os/DVFSHelper;
    const-string v14, "GPU"

    .line 3337
    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedGPUFrequencyForSSRM()[I

    move-result-object v11

    goto/16 :goto_3

    .line 3338
    :cond_8
    const-string v3, "BUS_MIN"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3339
    const-string v14, "BUS"

    .line 3340
    new-instance v2, Landroid/os/DVFSHelper;

    .end local v2    # "newHelper":Landroid/os/DVFSHelper;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@BUS_MIN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x13

    const-wide/16 v6, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 3342
    .restart local v2    # "newHelper":Landroid/os/DVFSHelper;
    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v11

    goto/16 :goto_3

    .line 3343
    :cond_9
    const-string v3, "CORE_NUM_MIN"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3344
    new-instance v2, Landroid/os/DVFSHelper;

    .end local v2    # "newHelper":Landroid/os/DVFSHelper;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@CORE_NUM_MIN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xe

    const-wide/16 v6, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 3346
    .restart local v2    # "newHelper":Landroid/os/DVFSHelper;
    const-string v14, "CORE_NUM"

    .line 3347
    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v11

    goto/16 :goto_3

    .line 3348
    :cond_a
    const-string/jumbo v3, "timeout"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3349
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v15, Landroid/os/DVFSHelper;->mHintTimeout:I

    goto/16 :goto_3

    .line 3359
    :cond_b
    const-string v3, "%"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 3360
    const-string v3, "CPU"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 3361
    const/4 v3, 0x0

    const-string v4, "%"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyByPercentOfMaximum(D)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v14, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 3362
    sget-boolean v3, Landroid/os/DVFSHelper;->sIsDebugLevelHigh:Z

    if-eqz v3, :cond_6

    .line 3363
    const-string v3, "DVFSHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hint : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", moduleName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", freq = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "%"

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    div-double v6, v6, v18

    invoke-virtual {v2, v6, v7}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyByPercentOfMaximum(D)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3366
    :cond_c
    const-string v3, "GPU"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 3367
    const/4 v3, 0x0

    const-string v4, "%"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Landroid/os/DVFSHelper;->getApproximateGPUFrequencyByPercentOfMaximum(D)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v14, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 3368
    sget-boolean v3, Landroid/os/DVFSHelper;->sIsDebugLevelHigh:Z

    if-eqz v3, :cond_6

    .line 3369
    const-string v3, "DVFSHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hint : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", moduleName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", freq = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "%"

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    div-double v6, v6, v18

    invoke-virtual {v2, v6, v7}, Landroid/os/DVFSHelper;->getApproximateGPUFrequencyByPercentOfMaximum(D)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3372
    :cond_d
    const-string v3, "BUS"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3373
    const/4 v3, 0x0

    const-string v4, "%"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Landroid/os/DVFSHelper;->getApproximateBUSFrequencyByPercentOfMaximum(D)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v14, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 3374
    sget-boolean v3, Landroid/os/DVFSHelper;->sIsDebugLevelHigh:Z

    if-eqz v3, :cond_6

    .line 3375
    const-string v3, "DVFSHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hint : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", moduleName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", freq = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "%"

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    div-double v6, v6, v18

    invoke-virtual {v2, v6, v7}, Landroid/os/DVFSHelper;->getApproximateBUSFrequencyByPercentOfMaximum(D)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3380
    :cond_e
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v14, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 3381
    sget-boolean v3, Landroid/os/DVFSHelper;->sIsDebugLevelHigh:Z

    if-eqz v3, :cond_6

    .line 3382
    const-string v3, "DVFSHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hint : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", moduleName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", freq = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3389
    .end local v2    # "newHelper":Landroid/os/DVFSHelper;
    .end local v11    # "freqTable":[I
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "moduleName":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/String;
    :cond_f
    const/4 v3, 0x1

    iput-boolean v3, v15, Landroid/os/DVFSHelper;->mIsHintValid:Z

    goto/16 :goto_0
.end method

.method private createModel()Landroid/os/DVFSHelper$Model;
    .locals 2

    .prologue
    .line 2906
    const-string/jumbo v0, "ssrm_grandprimeplus_xx"

    const-string v1, "_gracel_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2907
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->DISPLAY_FHD:Z

    if-eqz v0, :cond_0

    .line 2908
    new-instance v0, Landroid/os/DVFSHelper$ModelGRLForFHD;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelGRLForFHD;-><init>(Landroid/os/DVFSHelper;)V

    .line 3056
    :goto_0
    return-object v0

    .line 2909
    :cond_0
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->DISPLAY_HD:Z

    if-eqz v0, :cond_1

    .line 2910
    new-instance v0, Landroid/os/DVFSHelper$ModelGRLForHD;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelGRLForHD;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_0

    .line 2912
    :cond_1
    new-instance v0, Landroid/os/DVFSHelper$ModelGRL;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelGRL;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_0

    .line 2914
    :cond_2
    const-string/jumbo v0, "ssrm_grandprimeplus_xx"

    const-string v1, "_graceq_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2915
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->DISPLAY_FHD:Z

    if-eqz v0, :cond_3

    .line 2916
    new-instance v0, Landroid/os/DVFSHelper$ModelGRQForFHD;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelGRQForFHD;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_0

    .line 2917
    :cond_3
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->DISPLAY_HD:Z

    if-eqz v0, :cond_4

    .line 2918
    new-instance v0, Landroid/os/DVFSHelper$ModelGRQForHD;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelGRQForHD;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_0

    .line 2920
    :cond_4
    new-instance v0, Landroid/os/DVFSHelper$ModelGRQ;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelGRQ;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_0

    .line 2922
    :cond_5
    const-string/jumbo v0, "hrq"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2923
    new-instance v0, Landroid/os/DVFSHelper$ModelHRQ;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelHRQ;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_0

    .line 2924
    :cond_6
    const-string/jumbo v0, "hrl"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2925
    new-instance v0, Landroid/os/DVFSHelper$ModelHRL;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelHRL;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_0

    .line 2926
    :cond_7
    const-string/jumbo v0, "zl"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2927
    new-instance v0, Landroid/os/DVFSHelper$ModelZL;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelZL;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_0

    .line 2928
    :cond_8
    const-string/jumbo v0, "msm8992"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2929
    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8992;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8992;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_0

    .line 2930
    :cond_9
    const-string/jumbo v0, "jf"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2931
    new-instance v0, Landroid/os/DVFSHelper$ModelJF;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJF;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 2932
    :cond_a
    const-string/jumbo v0, "ja"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2933
    const-string/jumbo v0, "ssrm_grandprimeplus_xx"

    const-string/jumbo v1, "ja_kor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2934
    new-instance v0, Landroid/os/DVFSHelper$ModelJAKOR;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJAKOR;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 2936
    :cond_b
    new-instance v0, Landroid/os/DVFSHelper$ModelJA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJA;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 2938
    :cond_c
    const-string/jumbo v0, "hf"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2939
    new-instance v0, Landroid/os/DVFSHelper$ModelHF;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelHF;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 2940
    :cond_d
    const-string/jumbo v0, "ha"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2941
    const-string/jumbo v0, "ssrm_grandprimeplus_xx"

    const-string/jumbo v1, "vienna"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2942
    new-instance v0, Landroid/os/DVFSHelper$ModelV13GWIFI;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelV13GWIFI;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 2943
    :cond_e
    const-string/jumbo v0, "ssrm_grandprimeplus_xx"

    const-string/jumbo v1, "v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2944
    new-instance v0, Landroid/os/DVFSHelper$ModelV23GWIFI;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelV23GWIFI;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 2945
    :cond_f
    const-string/jumbo v0, "ssrm_grandprimeplus_xx"

    const-string/jumbo v1, "picasso"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2946
    new-instance v0, Landroid/os/DVFSHelper$ModelPicasso3GWIFI;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelPicasso3GWIFI;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 2948
    :cond_10
    new-instance v0, Landroid/os/DVFSHelper$ModelHA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelHA;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 2950
    :cond_11
    const-string/jumbo v0, "kf"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2951
    new-instance v0, Landroid/os/DVFSHelper$ModelKF;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelKF;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 2952
    :cond_12
    const-string/jumbo v0, "ka"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2953
    new-instance v0, Landroid/os/DVFSHelper$ModelKA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelKA;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 2954
    :cond_13
    const-string/jumbo v0, "kq"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2955
    new-instance v0, Landroid/os/DVFSHelper$ModelKQ;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelKQ;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 2956
    :cond_14
    const-string/jumbo v0, "tf"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2957
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->REGION_JPN:Z

    if-eqz v0, :cond_15

    .line 2958
    new-instance v0, Landroid/os/DVFSHelper$ModelTFJpn;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelTFJpn;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 2960
    :cond_15
    new-instance v0, Landroid/os/DVFSHelper$ModelTF;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelTF;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 2962
    :cond_16
    const-string/jumbo v0, "ta"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2963
    new-instance v0, Landroid/os/DVFSHelper$ModelTA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelTA;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 2964
    :cond_17
    const-string/jumbo v0, "sf"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2965
    new-instance v0, Landroid/os/DVFSHelper$ModelSF;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelSF;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 2966
    :cond_18
    const-string/jumbo v0, "sa"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2967
    const-string/jumbo v0, "ssrm_grandprimeplus_xx"

    const-string v1, "_a8e_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2968
    new-instance v0, Landroid/os/DVFSHelper$ModelA8E;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelA8E;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 2970
    :cond_19
    new-instance v0, Landroid/os/DVFSHelper$ModelSA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelSA;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 2972
    :cond_1a
    const-string v0, "clovertrail"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2973
    new-instance v0, Landroid/os/DVFSHelper$ModelSantos10;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelSantos10;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 2974
    :cond_1b
    const-string/jumbo v0, "java"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2975
    new-instance v0, Landroid/os/DVFSHelper$ModelJAVA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJAVA;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 2976
    :cond_1c
    const-string/jumbo v0, "joon"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2977
    new-instance v0, Landroid/os/DVFSHelper$ModelJOON;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJOON;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 2978
    :cond_1d
    const-string/jumbo v0, "island"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2979
    const-string/jumbo v0, "ssrm_grandprimeplus_xx"

    const-string/jumbo v1, "novel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2980
    new-instance v0, Landroid/os/DVFSHelper$ModelNOVEL;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelNOVEL;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 2981
    :cond_1e
    const-string/jumbo v0, "ssrm_grandprimeplus_xx"

    const-string/jumbo v1, "on5lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2982
    new-instance v0, Landroid/os/DVFSHelper$ModelON5;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelON5;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 2984
    :cond_1f
    new-instance v0, Landroid/os/DVFSHelper$ModelISLAND;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelISLAND;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 2986
    :cond_20
    const-string/jumbo v0, "isla"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2987
    new-instance v0, Landroid/os/DVFSHelper$ModelISLA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelISLA;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 2988
    :cond_21
    const-string v0, "carmen2"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2989
    new-instance v0, Landroid/os/DVFSHelper$ModelCARMEN2;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelCARMEN2;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 2990
    :cond_22
    const-string/jumbo v0, "islaquad"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2991
    new-instance v0, Landroid/os/DVFSHelper$ModelISLAQUAD;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelISLAQUAD;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 2992
    :cond_23
    const-string v0, "exynos7870"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2993
    new-instance v0, Landroid/os/DVFSHelper$ModelJOSHUA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJOSHUA;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 2994
    :cond_24
    const-string v0, "exynos4"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2995
    const-string/jumbo v0, "pp"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2996
    new-instance v0, Landroid/os/DVFSHelper$ModelPP;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelPP;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 2997
    :cond_25
    const-string/jumbo v0, "m0"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2998
    new-instance v0, Landroid/os/DVFSHelper$ModelM0;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelM0;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 3000
    :cond_26
    new-instance v0, Landroid/os/DVFSHelper$ModelExynos4;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelExynos4;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 3002
    :cond_27
    const-string/jumbo v0, "kam"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 3003
    new-instance v0, Landroid/os/DVFSHelper$ModelKAM;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelKAM;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 3004
    :cond_28
    const-string/jumbo v0, "ssrm_grandprimeplus_xx"

    const-string v1, "d2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3005
    new-instance v0, Landroid/os/DVFSHelper$ModelD2;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelD2;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 3006
    :cond_29
    const-string/jumbo v0, "hawaii"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 3007
    new-instance v0, Landroid/os/DVFSHelper$ModelHawaii;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelHawaii;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 3008
    :cond_2a
    const-string/jumbo v0, "msm8226"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 3009
    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8x26;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8x26;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 3010
    :cond_2b
    const-string/jumbo v0, "pxa1936"

    sget-object v1, Landroid/os/DVFSHelper;->HARDWARE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 3011
    new-instance v0, Landroid/os/DVFSHelper$ModelPXA1936;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelPXA1936;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 3012
    :cond_2c
    const-string/jumbo v0, "pxa1088"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 3013
    new-instance v0, Landroid/os/DVFSHelper$ModelPXA1088;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelPXA1088;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 3014
    :cond_2d
    const-string/jumbo v0, "pxa1908"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3015
    new-instance v0, Landroid/os/DVFSHelper$ModelPXA1908;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelPXA1908;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 3016
    :cond_2e
    const-string/jumbo v0, "kmini"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3017
    const-string/jumbo v0, "ssrm_grandprimeplus_xx"

    const-string v1, "degaslte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 3018
    new-instance v0, Landroid/os/DVFSHelper$ModelDegasLTE;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelDegasLTE;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 3020
    :cond_2f
    new-instance v0, Landroid/os/DVFSHelper$ModelKMINI;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelKMINI;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 3021
    :cond_30
    const-string v0, "MSM8930AB"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 3022
    new-instance v0, Landroid/os/DVFSHelper$Model8930AB;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$Model8930AB;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 3023
    :cond_31
    const-string/jumbo v0, "msm8952"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 3024
    const-string/jumbo v0, "ssrm_grandprimeplus_xx"

    const-string v1, "_c9_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 3025
    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8976PRO;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8976PRO;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 3026
    :cond_32
    const-string v0, "MSM8976"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "APQ8076"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 3027
    :cond_33
    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8976;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8976;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 3029
    :cond_34
    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8952;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8952;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 3031
    :cond_35
    const-string/jumbo v0, "msm8953"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 3032
    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8953;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8953;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 3033
    :cond_36
    const-string/jumbo v0, "msm8917"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string/jumbo v0, "msm8937"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 3034
    :cond_37
    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8917;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8917;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 3035
    :cond_38
    const-string/jumbo v0, "msm8916"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 3036
    const-string/jumbo v0, "ssrm_grandprimeplus_xx"

    const-string v1, "a3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3037
    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8916_A3;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8916_A3;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 3038
    :cond_39
    const-string v0, "MSM8939"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 3039
    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8939;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8939;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 3040
    :cond_3a
    const-string v0, "MSM8929"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 3041
    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8929;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8929;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 3043
    :cond_3b
    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8916;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8916;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 3045
    :cond_3c
    const-string/jumbo v0, "tr3ca"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 3046
    new-instance v0, Landroid/os/DVFSHelper$ModelTR3CA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelTR3CA;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 3047
    :cond_3d
    const-string v0, "core33g"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 3048
    new-instance v0, Landroid/os/DVFSHelper$ModelCORE33G;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelCORE33G;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 3049
    :cond_3e
    const-string/jumbo v0, "vivalto3mve"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 3050
    new-instance v0, Landroid/os/DVFSHelper$ModelVIVALTO3MVE;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelVIVALTO3MVE;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 3051
    :cond_3f
    const-string v0, "SC9830I"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 3052
    new-instance v0, Landroid/os/DVFSHelper$ModelSC9830I;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelSC9830I;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 3053
    :cond_40
    const-string/jumbo v0, "mt6737t"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 3054
    new-instance v0, Landroid/os/DVFSHelper$ModelMT6737T;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMT6737T;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 3056
    :cond_41
    new-instance v0, Landroid/os/DVFSHelper$ModelJBP;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0
.end method

.method public static getStandbyTimeInUltraPowerSavingMode()I
    .locals 3

    .prologue
    .line 3223
    :try_start_0
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 3224
    const-string v2, "CustomFrequencyManagerService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3225
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 3226
    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    sput-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    .line 3229
    :cond_0
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v2, :cond_1

    .line 3230
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2}, Landroid/os/ICustomFrequencyManager;->getStandbyTimeInUltraPowerSavingMode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3235
    :goto_0
    return v2

    .line 3232
    :catch_0
    move-exception v1

    .line 3233
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3235
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isPackageExistInAppLaunch(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1669
    const/4 v3, 0x0

    .line 1670
    .local v3, "ret":Z
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchPackages:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 1671
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1672
    const/4 v3, 0x1

    .line 1676
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    return v3

    .line 1670
    .restart local v4    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1537
    sget-boolean v0, Landroid/os/DVFSHelper;->sIsDebugLevelHigh:Z

    if-eqz v0, :cond_0

    .line 1538
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    :cond_0
    return-void
.end method

.method public static onScrollEvent(Z)V
    .locals 5
    .param p0, "isScroll"    # Z

    .prologue
    .line 3065
    :try_start_0
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 3066
    const-string v2, "CustomFrequencyManagerService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3067
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 3068
    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    sput-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    .line 3071
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v2, :cond_1

    .line 3072
    sget-object v3, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    const-string v4, "TYPE_SCROLL"

    if-eqz p0, :cond_2

    const-string v2, "TRUE"

    :goto_0
    invoke-interface {v3, v4, v2}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    .line 3077
    :cond_1
    :goto_1
    return-void

    .line 3072
    :cond_2
    const-string v2, "FALSE"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3074
    :catch_0
    move-exception v1

    .line 3075
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static onSmoothScrollEvent(Z)V
    .locals 5
    .param p0, "isScroll"    # Z

    .prologue
    .line 3082
    :try_start_0
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 3083
    const-string v2, "CustomFrequencyManagerService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3084
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 3085
    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    sput-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    .line 3088
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v2, :cond_1

    .line 3089
    sget-object v3, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    const-string v4, "SMOOTH_SCROLL"

    if-eqz p0, :cond_2

    const-string v2, "TRUE"

    :goto_0
    invoke-interface {v3, v4, v2}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    .line 3094
    :cond_1
    :goto_1
    return-void

    .line 3089
    :cond_2
    const-string v2, "FALSE"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3091
    :catch_0
    move-exception v1

    .line 3092
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private releaseImpl()V
    .locals 4

    .prologue
    .line 1247
    iget-object v1, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v1, :cond_0

    .line 1323
    :goto_0
    return-void

    .line 1251
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 1253
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    const-string v1, "DVFSHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "release:: mIsAcquired = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    iget-boolean v1, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 1321
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    .line 1259
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_2

    .line 1260
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 1261
    const-string v1, "DVFSHelper"

    const-string/jumbo v2, "release:: cpuRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 1264
    :cond_2
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_3

    .line 1265
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 1266
    const-string v1, "DVFSHelper"

    const-string/jumbo v2, "release:: cpuNumRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 1269
    :cond_3
    iget-object v1, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_4

    .line 1270
    iget-object v1, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 1271
    const-string v1, "DVFSHelper"

    const-string/jumbo v2, "release:: gpuRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 1274
    :cond_4
    iget-object v1, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_5

    .line 1275
    iget-object v1, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 1276
    const-string v1, "DVFSHelper"

    const-string/jumbo v2, "release:: busRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 1279
    :cond_5
    iget-object v1, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_6

    .line 1280
    iget-object v1, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 1281
    const-string v1, "DVFSHelper"

    const-string/jumbo v2, "release:: mmcRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 1284
    :cond_6
    iget-object v1, p0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_7

    .line 1285
    iget-object v1, p0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 1286
    const-string v1, "DVFSHelper"

    const-string/jumbo v2, "release:: fpsRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 1289
    :cond_7
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_8

    .line 1290
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 1291
    const-string v1, "DVFSHelper"

    const-string/jumbo v2, "release:: cpuDisCStateRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 1294
    :cond_8
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuLegacySchedulerRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_9

    .line 1295
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuLegacySchedulerRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 1296
    const-string v1, "DVFSHelper"

    const-string/jumbo v2, "release:: cpuLegacySchedulerRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->cpuLegacySchedulerRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 1299
    :cond_9
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuHotplugDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_a

    .line 1300
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuHotplugDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 1301
    const-string v1, "DVFSHelper"

    const-string/jumbo v2, "release:: cpuHotplugDisableRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->cpuHotplugDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 1304
    :cond_a
    iget-object v1, p0, Landroid/os/DVFSHelper;->pciePsmDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_b

    .line 1305
    iget-object v1, p0, Landroid/os/DVFSHelper;->pciePsmDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 1306
    const-string v1, "DVFSHelper"

    const-string/jumbo v2, "release:: pciePsmDisableRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->pciePsmDisableRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 1309
    :cond_b
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpusetRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_c

    .line 1310
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpusetRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 1311
    const-string v1, "DVFSHelper"

    const-string/jumbo v2, "release:: cpusetRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->cpusetRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 1314
    :cond_c
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuctlRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_d

    .line 1315
    iget-object v1, p0, Landroid/os/DVFSHelper;->cpuctlRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 1316
    const-string v1, "DVFSHelper"

    const-string/jumbo v2, "release:: cpuctlRequest is released."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/DVFSHelper;->cpuctlRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 1319
    :cond_d
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1321
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method public static sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3248
    :try_start_0
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 3249
    const-string v2, "CustomFrequencyManagerService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3250
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 3251
    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    sput-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    .line 3254
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v2, :cond_1

    .line 3255
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2, p0, p1}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3260
    :cond_1
    :goto_0
    return-void

    .line 3257
    :catch_0
    move-exception v1

    .line 3258
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private x([I)Ljava/lang/String;
    .locals 3
    .param p1, "e"    # [I

    .prologue
    .line 1680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1681
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 1682
    aget v2, p1, v0

    xor-int/lit8 v2, v2, 0x7a

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1681
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1684
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public acquire()V
    .locals 1

    .prologue
    .line 832
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 833
    return-void
.end method

.method public acquire(I)V
    .locals 4
    .param p1, "timeout"    # I

    .prologue
    .line 844
    iget-boolean v2, p0, Landroid/os/DVFSHelper;->mIsHintNotifier:Z

    if-eqz v2, :cond_4

    .line 845
    if-gtz p1, :cond_0

    iget v2, p0, Landroid/os/DVFSHelper;->mHintTimeout:I

    if-lez v2, :cond_2

    .line 846
    :cond_0
    iget-object v2, p0, Landroid/os/DVFSHelper;->mHintList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DVFSHelper;

    .line 847
    .local v0, "helper":Landroid/os/DVFSHelper;
    if-lez p1, :cond_1

    .line 848
    invoke-direct {v0, p1}, Landroid/os/DVFSHelper;->acquireImpl(I)V

    goto :goto_0

    .line 850
    :cond_1
    iget v2, p0, Landroid/os/DVFSHelper;->mHintTimeout:I

    invoke-direct {v0, v2}, Landroid/os/DVFSHelper;->acquireImpl(I)V

    goto :goto_0

    .line 854
    .end local v0    # "helper":Landroid/os/DVFSHelper;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v2, "DVFSHelper"

    const-string v3, "acquire:: Either timeout or mHintTimeout should have the proper number greater than zero"

    invoke-static {v2, v3}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    :cond_3
    :goto_1
    return-void

    .line 857
    :cond_4
    invoke-direct {p0, p1}, Landroid/os/DVFSHelper;->acquireImpl(I)V

    goto :goto_1
.end method

.method public acquire(Ljava/lang/String;)V
    .locals 2
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 818
    iget-object v1, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v1, p1}, Landroid/os/DVFSHelper$Model;->getTimeoutForAction(Ljava/lang/String;)I

    move-result v0

    .line 819
    .local v0, "timeout":I
    if-lez v0, :cond_0

    .line 820
    invoke-virtual {p0, v0}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 822
    :cond_0
    return-void
.end method

.method public addExtraOption(Ljava/lang/String;J)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 1352
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 1353
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 1355
    :cond_0
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1356
    return-void
.end method

.method public addExtraOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1335
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 1336
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 1338
    :cond_0
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1339
    return-void
.end method

.method public addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V
    .locals 7
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0xe

    const/16 v5, 0x10

    const/16 v4, 0x13

    const/16 v3, 0xc

    .line 1376
    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v2, :cond_1

    .line 1530
    :cond_0
    :goto_0
    return-void

    .line 1381
    :cond_1
    const-string v2, "ActivityManager_resume"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1382
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_2

    .line 1383
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAMSResumeCPUFreq()I

    move-result v1

    .line 1384
    .local v1, "freq":I
    if-lez v1, :cond_0

    .line 1385
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 1387
    .end local v1    # "freq":I
    :cond_2
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v5, :cond_3

    .line 1388
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAMSResumeGPUFreq()I

    move-result v1

    .line 1389
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 1390
    const-string v2, "GPU"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 1392
    .end local v1    # "freq":I
    :cond_3
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v4, :cond_4

    .line 1393
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAMSResumeBUSFreq()I

    move-result v1

    .line 1394
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 1395
    const-string v2, "BUS"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 1397
    .end local v1    # "freq":I
    :cond_4
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v6, :cond_0

    .line 1398
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAMSResumeCPUCore()I

    move-result v0

    .line 1399
    .local v0, "coreNum":I
    if-lez v0, :cond_0

    .line 1400
    const-string v2, "CORE_NUM"

    int-to-long v4, v0

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 1403
    .end local v0    # "coreNum":I
    :cond_5
    const-string v2, "Gallery_touch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1404
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_6

    .line 1405
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getGalleryTouchCPUFreq()I

    move-result v1

    .line 1406
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 1407
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 1409
    .end local v1    # "freq":I
    :cond_6
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v4, :cond_0

    .line 1410
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getGalleryTouchBUSFreq()I

    move-result v1

    .line 1411
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 1412
    const-string v2, "BUS"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1415
    .end local v1    # "freq":I
    :cond_7
    const-string v2, "Browser_touch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1416
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_8

    .line 1417
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getBrowserTouchCPUFreq()I

    move-result v1

    .line 1418
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 1419
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1421
    .end local v1    # "freq":I
    :cond_8
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v4, :cond_0

    .line 1422
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getBrowserTouchBUSFreq()I

    move-result v1

    .line 1423
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 1424
    const-string v2, "BUS"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1427
    .end local v1    # "freq":I
    :cond_9
    const-string v2, "Launcher_touch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1428
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_a

    .line 1429
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getLauncherTouchCPUFreq()I

    move-result v1

    .line 1430
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 1431
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1433
    .end local v1    # "freq":I
    :cond_a
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v4, :cond_b

    .line 1434
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getLauncherTouchBUSFreq()I

    move-result v1

    .line 1435
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 1436
    const-string v2, "BUS"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1438
    .end local v1    # "freq":I
    :cond_b
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v5, :cond_c

    .line 1439
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getLauncherTouchGPUFreq()I

    move-result v1

    .line 1440
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 1441
    const-string v2, "GPU"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1443
    .end local v1    # "freq":I
    :cond_c
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v6, :cond_0

    .line 1444
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getLauncherTouchCPUCore()I

    move-result v0

    .line 1445
    .restart local v0    # "coreNum":I
    if-lez v0, :cond_0

    .line 1446
    const-string v2, "CORE_NUM"

    int-to-long v4, v0

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1449
    .end local v0    # "coreNum":I
    :cond_d
    const-string v2, "ListView_scroll"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1450
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_e

    .line 1451
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getListScrollCPUFreq()I

    move-result v1

    .line 1452
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 1453
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1455
    .end local v1    # "freq":I
    :cond_e
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v5, :cond_f

    .line 1456
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getListScrollGPUFreq()I

    move-result v1

    .line 1457
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 1458
    const-string v2, "GPU"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1460
    .end local v1    # "freq":I
    :cond_f
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v4, :cond_0

    .line 1461
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getListScrollBUSFreq()I

    move-result v1

    .line 1462
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 1463
    const-string v2, "BUS"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1466
    .end local v1    # "freq":I
    :cond_10
    const-string v2, "PhoneWindowManager_rotation"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1467
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getRotationCPUFreq()I

    move-result v1

    .line 1468
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 1469
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1471
    .end local v1    # "freq":I
    :cond_11
    const-string v2, "Launcher_homemenu"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1472
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v5, :cond_0

    .line 1473
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getLauncherTouchGPUFreq()I

    move-result v1

    .line 1474
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 1475
    const-string v2, "GPU"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1478
    .end local v1    # "freq":I
    :cond_12
    const-string v2, "ShareMusic_groupPlay"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1479
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getShareMusicCPUFreq()I

    move-result v1

    .line 1480
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 1481
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1483
    .end local v1    # "freq":I
    :cond_13
    const-string v2, "Browser_fling"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1484
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getBrowserFlingCpuFreq()I

    move-result v1

    .line 1485
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 1486
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1488
    .end local v1    # "freq":I
    :cond_14
    const-string v2, "Application_launch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1489
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_15

    .line 1490
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAppLaunchCPUFreq()I

    move-result v1

    .line 1491
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 1492
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1494
    .end local v1    # "freq":I
    :cond_15
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v5, :cond_16

    .line 1495
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAppLaunchGPUFreq()I

    move-result v1

    .line 1496
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 1497
    const-string v2, "GPU"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1499
    .end local v1    # "freq":I
    :cond_16
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v4, :cond_17

    .line 1500
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAppLaunchBUSFreq()I

    move-result v1

    .line 1501
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 1502
    const-string v2, "BUS"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1504
    .end local v1    # "freq":I
    :cond_17
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v6, :cond_0

    .line 1505
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAppLaunchCPUCore()I

    move-result v0

    .line 1506
    .restart local v0    # "coreNum":I
    if-lez v0, :cond_0

    .line 1507
    const-string v2, "CORE_NUM"

    int-to-long v4, v0

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1510
    .end local v0    # "coreNum":I
    :cond_18
    const-string v2, "Device_wakeup"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1511
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_0

    .line 1512
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getDeviceWakeupCPUFreq()I

    move-result v1

    .line 1513
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 1514
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1517
    .end local v1    # "freq":I
    :cond_19
    const-string v2, "Contact_scroll"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1518
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_1a

    .line 1519
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getContactScrollCPUFreq()I

    move-result v1

    .line 1520
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 1521
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1523
    .end local v1    # "freq":I
    :cond_1a
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v6, :cond_0

    .line 1524
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getContactScrollCPUCore()I

    move-result v0

    .line 1525
    .restart local v0    # "coreNum":I
    if-lez v0, :cond_0

    .line 1526
    const-string v2, "CORE_NUM"

    int-to-long v4, v0

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0
.end method

.method public cancelExtraOptions()V
    .locals 1

    .prologue
    .line 1365
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 1366
    return-void
.end method

.method public getApproximateBUSFrequency(I)I
    .locals 4
    .param p1, "freq"    # I

    .prologue
    const/4 v1, -0x1

    .line 710
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    if-eqz v2, :cond_0

    if-gez p1, :cond_1

    .line 727
    :cond_0
    :goto_0
    return v1

    .line 713
    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    array-length v0, v2

    .line 714
    .local v0, "length":I
    if-lez v0, :cond_0

    .line 718
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 719
    .local v1, "realFreq":I
    :goto_1
    if-lez v0, :cond_0

    .line 720
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-lt v2, p1, :cond_2

    .line 721
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v2, v3

    .line 722
    goto :goto_0

    .line 724
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public getApproximateBUSFrequencyByPercentOfMaximum(D)I
    .locals 5
    .param p1, "percent"    # D

    .prologue
    const/4 v1, -0x1

    .line 739
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmpg-double v2, p1, v2

    if-ltz v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v2

    if-lez v2, :cond_1

    .line 747
    :cond_0
    :goto_0
    return v1

    .line 742
    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    array-length v0, v2

    .line 743
    .local v0, "length":I
    if-lez v0, :cond_0

    .line 747
    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-double v2, v1

    mul-double/2addr v2, p1

    double-to-int v1, v2

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateBUSFrequency(I)I

    move-result v1

    goto :goto_0
.end method

.method public getApproximateCPUCore(I)I
    .locals 4
    .param p1, "core"    # I

    .prologue
    const/4 v1, -0x1

    .line 760
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    if-eqz v2, :cond_0

    if-gez p1, :cond_1

    .line 776
    :cond_0
    :goto_0
    return v1

    .line 763
    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    array-length v0, v2

    .line 764
    .local v0, "length":I
    if-lez v0, :cond_0

    .line 768
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 769
    .local v1, "realCore":I
    :goto_1
    if-lez v0, :cond_0

    .line 770
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-lt v2, p1, :cond_2

    .line 771
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v2, v3

    .line 772
    goto :goto_0

    .line 774
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public getApproximateCPUCoreForSSRM(I)I
    .locals 4
    .param p1, "core"    # I

    .prologue
    const/4 v1, -0x1

    .line 788
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNumForSSRM:[I

    if-eqz v2, :cond_0

    if-gez p1, :cond_1

    .line 805
    :cond_0
    :goto_0
    return v1

    .line 791
    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNumForSSRM:[I

    array-length v0, v2

    .line 792
    .local v0, "length":I
    if-lez v0, :cond_0

    .line 796
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNumForSSRM:[I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 797
    .local v1, "realCore":I
    :goto_1
    if-lez v0, :cond_0

    .line 798
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNumForSSRM:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-lt v2, p1, :cond_2

    .line 799
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNumForSSRM:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v2, v3

    .line 800
    goto :goto_0

    .line 802
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public getApproximateCPUFrequency(I)I
    .locals 4
    .param p1, "freq"    # I

    .prologue
    const/4 v1, -0x1

    .line 519
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-eqz v2, :cond_0

    if-gez p1, :cond_1

    .line 536
    :cond_0
    :goto_0
    return v1

    .line 522
    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v0, v2

    .line 523
    .local v0, "length":I
    if-lez v0, :cond_0

    .line 527
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 528
    .local v1, "realFreq":I
    :goto_1
    if-lez v0, :cond_0

    .line 529
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-lt v2, p1, :cond_2

    .line 530
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v2, v3

    .line 531
    goto :goto_0

    .line 533
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public getApproximateCPUFrequencyByPercentOfMaximum(D)I
    .locals 5
    .param p1, "percent"    # D

    .prologue
    const/4 v1, -0x1

    .line 549
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmpg-double v2, p1, v2

    if-ltz v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v2

    if-lez v2, :cond_1

    .line 557
    :cond_0
    :goto_0
    return v1

    .line 552
    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v0, v2

    .line 553
    .local v0, "length":I
    if-lez v0, :cond_0

    .line 557
    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-double v2, v1

    mul-double/2addr v2, p1

    double-to-int v1, v2

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v1

    goto :goto_0
.end method

.method public getApproximateCPUFrequencyByPercentOfMaximumForSSRM(D)I
    .locals 5
    .param p1, "percent"    # D

    .prologue
    const/4 v1, -0x1

    .line 594
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    if-nez v2, :cond_1

    .line 602
    :cond_0
    :goto_0
    return v1

    .line 597
    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    array-length v0, v2

    .line 598
    .local v0, "length":I
    if-lez v0, :cond_0

    .line 602
    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-double v2, v1

    mul-double/2addr v2, p1

    double-to-int v1, v2

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v1

    goto :goto_0
.end method

.method public getApproximateCPUFrequencyForSSRM(I)I
    .locals 4
    .param p1, "freq"    # I

    .prologue
    const/4 v1, -0x1

    .line 570
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    if-eqz v2, :cond_0

    if-gez p1, :cond_1

    .line 587
    :cond_0
    :goto_0
    return v1

    .line 573
    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    array-length v0, v2

    .line 574
    .local v0, "length":I
    if-lez v0, :cond_0

    .line 578
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 579
    .local v1, "realFreq":I
    :goto_1
    if-lez v0, :cond_0

    .line 580
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-lt v2, p1, :cond_2

    .line 581
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v2, v3

    .line 582
    goto :goto_0

    .line 584
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public getApproximateGPUFrequency(I)I
    .locals 4
    .param p1, "freq"    # I

    .prologue
    const/4 v1, -0x1

    .line 643
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-eqz v2, :cond_0

    if-gez p1, :cond_1

    .line 660
    :cond_0
    :goto_0
    return v1

    .line 646
    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    array-length v0, v2

    .line 647
    .local v0, "length":I
    if-lez v0, :cond_0

    .line 651
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 652
    .local v1, "realFreq":I
    :goto_1
    if-lez v0, :cond_0

    .line 653
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-lt v2, p1, :cond_2

    .line 654
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v2, v3

    .line 655
    goto :goto_0

    .line 657
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public getApproximateGPUFrequencyByPercentOfMaximum(D)I
    .locals 5
    .param p1, "percent"    # D

    .prologue
    const/4 v1, -0x1

    .line 672
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmpg-double v2, p1, v2

    if-ltz v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v2

    if-lez v2, :cond_1

    .line 680
    :cond_0
    :goto_0
    return v1

    .line 675
    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    array-length v0, v2

    .line 676
    .local v0, "length":I
    if-lez v0, :cond_0

    .line 680
    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-double v2, v1

    mul-double/2addr v2, p1

    double-to-int v1, v2

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateGPUFrequency(I)I

    move-result v1

    goto :goto_0
.end method

.method public getSupportedBUSFrequency()[I
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    return-object v0
.end method

.method public getSupportedCPUCoreNum()[I
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    return-object v0
.end method

.method public getSupportedCPUCoreNumForSSRM()[I
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNumForSSRM:[I

    return-object v0
.end method

.method public getSupportedCPUFrequency()[I
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    return-object v0
.end method

.method public getSupportedCPUFrequencyForSSRM()[I
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    return-object v0
.end method

.method public getSupportedGPUFrequency()[I
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    return-object v0
.end method

.method public getSupportedGPUFrequencyForSSRM()[I
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequencyForSSRM:[I

    return-object v0
.end method

.method public isAquired()Z
    .locals 1

    .prologue
    .line 3098
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    return v0
.end method

.method public isHintValid()Z
    .locals 1

    .prologue
    .line 3283
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->mIsHintValid:Z

    return v0
.end method

.method public isValidDVFSParam(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 380
    const/16 v0, 0xb

    if-le p1, v0, :cond_0

    const/16 v0, 0x1c

    if-ge p1, v0, :cond_0

    .line 381
    const/4 v0, 0x1

    .line 383
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidDVFSParam(IJ)Z
    .locals 2
    .param p1, "type"    # I
    .param p2, "option"    # J

    .prologue
    .line 397
    invoke-virtual {p0, p1}, Landroid/os/DVFSHelper;->isValidDVFSParam(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 398
    :cond_0
    const/4 v0, 0x0

    .line 400
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityResumeEvent(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/16 v3, 0x16

    .line 1906
    sget-object v0, Landroid/os/DVFSHelper;->mAMSCState:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    .line 1907
    new-instance v0, Landroid/os/DVFSHelper;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Landroid/os/DVFSHelper;->mAMSCState:Landroid/os/DVFSHelper;

    .line 1910
    :cond_0
    sget-object v0, Landroid/os/DVFSHelper;->mAMSCStateTail:Landroid/os/DVFSHelper;

    if-nez v0, :cond_1

    .line 1911
    new-instance v0, Landroid/os/DVFSHelper;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Landroid/os/DVFSHelper;->mAMSCStateTail:Landroid/os/DVFSHelper;

    .line 1915
    :cond_1
    packed-switch p3, :pswitch_data_0

    .line 1932
    :try_start_0
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "onActivityResumeEvent:: type is not defined"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    :cond_2
    :goto_0
    return-void

    .line 1917
    :pswitch_0
    sget-object v0, Landroid/os/DVFSHelper;->mAMSCState:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2

    .line 1918
    sget-object v0, Landroid/os/DVFSHelper;->mAMSCState:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1935
    :catch_0
    move-exception v6

    .line 1936
    .local v6, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1922
    .end local v6    # "e":Ljava/lang/NullPointerException;
    :pswitch_1
    :try_start_1
    sget-object v0, Landroid/os/DVFSHelper;->mAMSCState:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2

    .line 1923
    sget-object v0, Landroid/os/DVFSHelper;->mAMSCState:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_0

    .line 1927
    :pswitch_2
    sget-object v0, Landroid/os/DVFSHelper;->mAMSCStateTail:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2

    .line 1928
    sget-object v0, Landroid/os/DVFSHelper;->mAMSCStateTail:Landroid/os/DVFSHelper;

    sget v1, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1915
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onAppLaunchEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0xfa0

    const/16 v7, 0x1f4

    const-wide/16 v4, 0x0

    const/16 v6, 0x7d0

    .line 1696
    if-nez p2, :cond_0

    .line 1822
    :goto_0
    return-void

    .line 1702
    :cond_0
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_1

    .line 1703
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "LAUNCHER_APP_BOOSTER_CPU"

    const/16 v3, 0xc

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

    .line 1705
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    .line 1706
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    if-eqz v0, :cond_e

    .line 1707
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

    const-string v1, "Application_launch"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 1715
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUCoreNumBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2

    .line 1716
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "LAUNCHER_APP_BOOSTER_CORE"

    const/16 v3, 0xe

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 1718
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    .line 1719
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    if-eqz v0, :cond_f

    .line 1720
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUCoreNumBooster:Landroid/os/DVFSHelper;

    const-string v1, "Application_launch"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 1728
    :cond_2
    :goto_2
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_3

    .line 1729
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "LAUNCHER_APP_BOOSTER_GPU"

    const/16 v3, 0x10

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

    .line 1731
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mGPUFrequencyTable:[I

    .line 1732
    iget-object v0, p0, Landroid/os/DVFSHelper;->mGPUFrequencyTable:[I

    if-eqz v0, :cond_10

    .line 1733
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

    const-string v1, "Application_launch"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 1741
    :cond_3
    :goto_3
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_4

    .line 1742
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "LAUNCHER_APP_BOOSTER_BUS"

    const/16 v3, 0x13

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

    .line 1744
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mBUSFrequencyTable:[I

    .line 1745
    iget-object v0, p0, Landroid/os/DVFSHelper;->mBUSFrequencyTable:[I

    if-eqz v0, :cond_11

    .line 1746
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

    const-string v1, "Application_launch"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 1752
    :cond_4
    :goto_4
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCState:Landroid/os/DVFSHelper;

    if-nez v0, :cond_5

    .line 1753
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "LAUNCHER_APP_BOOSTER_CSTATE"

    const/16 v3, 0x16

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCState:Landroid/os/DVFSHelper;

    .line 1757
    :cond_5
    const-string/jumbo v0, "hf"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "ha"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "kam"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1758
    :cond_6
    iput v7, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    .line 1797
    :goto_5
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    if-eqz v0, :cond_7

    .line 1798
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

    iget v1, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 1800
    :cond_7
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    if-eqz v0, :cond_8

    .line 1801
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUCoreNumBooster:Landroid/os/DVFSHelper;

    iget v1, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 1803
    :cond_8
    iget-object v0, p0, Landroid/os/DVFSHelper;->mGPUFrequencyTable:[I

    if-eqz v0, :cond_a

    .line 1804
    const-string/jumbo v0, "pxa1088"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "pxa1908"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "pxa1936"

    sget-object v1, Landroid/os/DVFSHelper;->HARDWARE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1806
    :cond_9
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

    iget v1, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 1809
    :cond_a
    iget-object v0, p0, Landroid/os/DVFSHelper;->mBUSFrequencyTable:[I

    if-eqz v0, :cond_c

    .line 1810
    const-string/jumbo v0, "hrq"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "tf"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "kf"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "pxa1088"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "pxa1908"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "kmini"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "pxa1936"

    sget-object v1, Landroid/os/DVFSHelper;->HARDWARE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "MSM8976"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "MSM8953"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "APQ8076"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "MSM8937"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "MSM8917"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1815
    :cond_b
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

    iget v1, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 1818
    :cond_c
    iget-object v0, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v0}, Landroid/os/DVFSHelper$Model;->getPlusFreq()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NONE"

    if-eq v0, v1, :cond_d

    .line 1819
    iget-object v0, p0, Landroid/os/DVFSHelper;->mPlusFreqBoost:Landroid/os/PlusFreqBoost;

    iget-object v1, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v1}, Landroid/os/DVFSHelper$Model;->getPlusFreq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/os/PlusFreqBoost;->launchBoost(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    :cond_d
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCState:Landroid/os/DVFSHelper;

    iget v1, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_0

    .line 1709
    :cond_e
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "onAppLaunchEvent:: mCPUFrequencyTable is null"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1722
    :cond_f
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "onAppLaunchEvent:: mCPUCoreTable is null"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1735
    :cond_10
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "onAppLaunchEvent:: mGPUFrequencyTable is null"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1748
    :cond_11
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "onAppLaunchEvent:: mBUSFrequencyTable is null"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1759
    :cond_12
    const-string/jumbo v0, "hrl"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "hrq"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "zl"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "kf"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "ka"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "kq"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "tf"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "ta"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "sf"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "sa"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "zq"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "tr3ca"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1763
    :cond_13
    const-string v0, "com.sec.android.app.camera"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1764
    iput v6, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    goto/16 :goto_5

    .line 1765
    :cond_14
    invoke-direct {p0, p2}, Landroid/os/DVFSHelper;->isPackageExistInAppLaunch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1766
    iput v8, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    goto/16 :goto_5

    .line 1768
    :cond_15
    const-string/jumbo v0, "ssrm_grandprimeplus_xx"

    const-string v1, "_graceq_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1769
    const/16 v0, 0x5dc

    iput v0, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    goto/16 :goto_5

    .line 1770
    :cond_16
    const-string/jumbo v0, "sf"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string/jumbo v0, "sa"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1771
    :cond_17
    const-string/jumbo v0, "ssrm_grandprimeplus_xx"

    const-string v1, "_a8e_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string/jumbo v0, "ssrm_grandprimeplus_xx"

    const-string v1, "_a8hp_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1772
    :cond_18
    iput v6, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    goto/16 :goto_5

    .line 1774
    :cond_19
    iput v7, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    goto/16 :goto_5

    .line 1777
    :cond_1a
    const-string/jumbo v0, "ssrm_kflte_jpn"

    const-string/jumbo v1, "ssrm_grandprimeplus_xx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1778
    iput v6, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    goto/16 :goto_5

    .line 1780
    :cond_1b
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    goto/16 :goto_5

    .line 1784
    :cond_1c
    const-string/jumbo v0, "msm8916"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string/jumbo v0, "island"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string/jumbo v0, "java"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string/jumbo v0, "isla"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "carmen2"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string/jumbo v0, "islaquad"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    const-string/jumbo v1, "mrvl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    const-string/jumbo v1, "sc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string/jumbo v0, "msm8992"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string/jumbo v0, "joon"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1788
    :cond_1d
    invoke-direct {p0, p2}, Landroid/os/DVFSHelper;->isPackageExistInAppLaunch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1789
    iput v8, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    goto/16 :goto_5

    .line 1791
    :cond_1e
    iput v6, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    goto/16 :goto_5

    .line 1794
    :cond_1f
    iput v6, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    goto/16 :goto_5
.end method

.method public onWindowRotationEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x7d0

    const/4 v8, 0x0

    .line 1836
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    if-nez v3, :cond_0

    .line 1837
    new-instance v3, Landroid/os/DVFSHelper;

    const/16 v4, 0xe

    invoke-direct {v3, p1, v4}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 1838
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v1

    .line 1839
    .local v1, "coreTable":[I
    if-eqz v1, :cond_a

    .line 1840
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    const-string v4, "CORE_NUM"

    aget v5, v1, v8

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1845
    .end local v1    # "coreTable":[I
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    if-eqz v3, :cond_1

    .line 1846
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    const/16 v4, 0x1f4

    invoke-virtual {v3, v4}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 1849
    :cond_1
    const-string v3, "exynos4"

    sget-object v4, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "exynos5"

    sget-object v4, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "hf"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "tablet"

    sget-object v4, Landroid/os/DVFSHelper;->DEVICE_TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const-string/jumbo v3, "pxa1088"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "pxa1908"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "msm8226"

    sget-object v4, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "pxa1936"

    sget-object v4, Landroid/os/DVFSHelper;->HARDWARE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1853
    :cond_3
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    if-nez v3, :cond_5

    .line 1854
    new-instance v3, Landroid/os/DVFSHelper;

    const/16 v4, 0x10

    invoke-direct {v3, p1, v4}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    .line 1855
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v2

    .line 1856
    .local v2, "gpuTable":[I
    if-eqz v2, :cond_e

    .line 1857
    const-string/jumbo v3, "ssrm_grandprimeplus_xx"

    const-string/jumbo v4, "zl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "exynos4"

    sget-object v4, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1858
    :cond_4
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    const-string v4, "GPU"

    array-length v5, v2

    add-int/lit8 v5, v5, -0x2

    aget v5, v2, v5

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1869
    .end local v2    # "gpuTable":[I
    :cond_5
    :goto_1
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    if-eqz v3, :cond_6

    .line 1870
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3, v9}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 1874
    :cond_6
    const-string/jumbo v3, "pxa1088"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, "pxa1908"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, "pxa1936"

    sget-object v4, Landroid/os/DVFSHelper;->HARDWARE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1876
    :cond_7
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    if-nez v3, :cond_8

    .line 1877
    new-instance v3, Landroid/os/DVFSHelper;

    const/16 v4, 0x13

    invoke-direct {v3, p1, v4}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    .line 1878
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v0

    .line 1879
    .local v0, "busTable":[I
    if-eqz v0, :cond_f

    .line 1880
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    const-string v4, "BUS"

    aget v5, v0, v8

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1885
    .end local v0    # "busTable":[I
    :cond_8
    :goto_2
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    if-eqz v3, :cond_9

    .line 1886
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3, v9}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 1889
    :cond_9
    return-void

    .line 1842
    .restart local v1    # "coreTable":[I
    :cond_a
    const-string v3, "DVFSHelper"

    const-string/jumbo v4, "onWindowRotationEvent:: coreTable is null"

    invoke-static {v3, v4}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1859
    .end local v1    # "coreTable":[I
    .restart local v2    # "gpuTable":[I
    :cond_b
    const-string/jumbo v3, "pxa1088"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string/jumbo v3, "pxa1908"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string/jumbo v3, "msm8226"

    sget-object v4, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string/jumbo v3, "pxa1936"

    sget-object v4, Landroid/os/DVFSHelper;->HARDWARE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1861
    :cond_c
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    const-string v4, "GPU"

    aget v5, v2, v8

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 1863
    :cond_d
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    const-string v4, "GPU"

    const/4 v5, 0x1

    aget v5, v2, v5

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 1866
    :cond_e
    const-string v3, "DVFSHelper"

    const-string/jumbo v4, "onWindowRotationEvent:: gpuTable is null"

    invoke-static {v3, v4}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1882
    .end local v2    # "gpuTable":[I
    .restart local v0    # "busTable":[I
    :cond_f
    const-string v3, "DVFSHelper"

    const-string/jumbo v4, "onWindowRotationEvent:: busTable is null"

    invoke-static {v3, v4}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public release()V
    .locals 3

    .prologue
    .line 1237
    iget-boolean v2, p0, Landroid/os/DVFSHelper;->mIsHintNotifier:Z

    if-eqz v2, :cond_0

    .line 1238
    iget-object v2, p0, Landroid/os/DVFSHelper;->mHintList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DVFSHelper;

    .line 1239
    .local v0, "helper":Landroid/os/DVFSHelper;
    invoke-direct {v0}, Landroid/os/DVFSHelper;->releaseImpl()V

    goto :goto_0

    .line 1242
    .end local v0    # "helper":Landroid/os/DVFSHelper;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-direct {p0}, Landroid/os/DVFSHelper;->releaseImpl()V

    .line 1244
    :cond_1
    return-void
.end method

.method public setFrequency(J)Landroid/os/DVFSHelper;
    .locals 1
    .param p1, "freq"    # J

    .prologue
    .line 3167
    iget v0, p0, Landroid/os/DVFSHelper;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 3185
    :goto_0
    :pswitch_0
    return-object p0

    .line 3170
    :pswitch_1
    const-string v0, "CPU"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 3174
    :pswitch_2
    const-string v0, "GPU"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 3178
    :pswitch_3
    const-string v0, "CORE_NUM"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 3182
    :pswitch_4
    const-string v0, "BUS"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 3167
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public setFrequencyByPercent(I)Landroid/os/DVFSHelper;
    .locals 4
    .param p1, "percent"    # I

    .prologue
    .line 3191
    const/4 v0, 0x0

    .line 3192
    .local v0, "freq":I
    iget v1, p0, Landroid/os/DVFSHelper;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 3210
    :goto_0
    :pswitch_0
    return-object p0

    .line 3195
    :pswitch_1
    const-string v1, "CPU"

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 3199
    :pswitch_2
    const-string v1, "GPU"

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 3203
    :pswitch_3
    const-string v1, "CORE_NUM"

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 3207
    :pswitch_4
    const-string v1, "BUS"

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 3192
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

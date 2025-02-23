.class public Lcom/android/server/am/DynamicHiddenApp;
.super Ljava/lang/Object;
.source "DynamicHiddenApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/DynamicHiddenApp$ILS_Q;,
        Lcom/android/server/am/DynamicHiddenApp$HotnessValue;
    }
.end annotation


# static fields
.field static final BG_COUNT_CACHED:I = 0x1

.field static final BG_COUNT_CACHED_HIDDEN:I = 0x3

.field static final BG_COUNT_EMPTY:I = 0x2

.field static final BG_COUNT_NON_CACHED:I = 0x4

.field static DEBUG:Z = false

.field static DEBUG_Component:Z = false

.field static final DECREASE_SCORE_THREAD_TIME_INTERNAL:J = 0x5265c00L

.field static DHA_ADJ_CACHED_FACTOR:Z = false

.field static final DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

.field static DHA_HOTNESS_ENABLE:Z = false

.field static DHA_HOTNESS_LFU_MINCachedRate:F = 0.0f

.field static DHA_HOTNESS_LFU_MINEmptyRate:F = 0.0f

.field static DHA_HOTNESS_LRU_PROTECT_MIN:I = 0x0

.field static final DHA_HOTNESS_PROTECT_TIME:J = 0x1388L

.field static DHA_INCREASE_THRESHOLD:J = 0x0L

.field static final DHA_MAX_MARGIN:J = 0x800000L

.field static final DHA_MIN_MARGIN:J = 0x400000L

.field static DHA_PACKAGE_ENABLE:Z = false

.field static final DHA_STATICEXCEPT_PROC_ARRAY:[[Ljava/lang/String;

.field static FALL_PREVENT_ENABLE:Z = false

.field static FHA_ENABLE:Z = false

.field static final HOTNESS_ACTIVITY:I = 0x0

.field static final HOTNESS_EMPTY:I = 0x1

.field static INIT_CACHED_APPS:I = 0x0

.field static INIT_EMPTY_APPS:I = 0x0

.field static LDHA_ES_ENABLE:Z = false

.field static LDHA_SPC_ENABLE:Z = false

.field static MAX_CACHED_APPS:I = 0x0

.field static MAX_EMPTY_APPS:I = 0x0

.field static MIN_CACHED_APPS:I = 0x0

.field static MIN_EMPTY_APPS_FOR_DHA:I = 0x0

.field static PRE_CACHED_KILL:Z = false

.field static PRE_DECREMENT_SYNC:Z = false

.field static PRE_EMPTY_KILL:Z = false

.field static PRE_MAX_KILL_ENABLE:Z = false

.field static PRE_SUPPORT_INCREMENT:Z = false

.field static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final TAG_DHA:Ljava/lang/String; = "DynamicHiddenApp"

.field static final TAG_HOTNESS:Ljava/lang/String; = "ActivityManager_Hotness"

.field static final TOP_STATE_APP:I = 0x3

.field static final TOP_STATE_HOME:I = 0x1

.field static final TOP_STATE_IS_CREATING:I = 0x0

.field static final TOP_STATE_RECENTS_APP:I = 0x2

.field public static final WIDGET_INFO_FILE:Ljava/lang/String; = "appwidgets.xml"

.field public static WIDGET_ON_HOMESCREEN:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static curTopApp:Lcom/android/server/am/ProcessRecord;

.field static curTopState:I

.field static debuggingR:Lcom/android/server/am/ProcessRecord;

.field static dha_amsexcept_map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static dha_keepempty_key:I

.field static dha_keepempty_set:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static isLogPrinted:Z

.field static mAMSExceptionEnable:Z

.field static mDhaKeepEmptyEnable:I

.field static mILS_2nd_Enable:Z

.field static mILS_Enable:Z

.field static mKnoxAMSExceptionEnable:Z

.field static mLMKArray:Ljava/lang/String;

.field static mLMKScale:F

.field static mSzILSFlag:Z

.field static mSzILSRate:F

.field static mSzILS_SDHARate:F

.field static mb64bitLMKEnable:Z

.field static strPrevAppForActivityHotness:Ljava/lang/String;

.field static strPrevAppForEmptyHotness:Ljava/lang/String;


# instance fields
.field private DHA_HOTNESS_MAX_VALUE:I

.field hotnessCached:I

.field hotnessEmpty:I

.field killingProcessesUss:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field killingProcessesUssTotal:J

.field mAm:Lcom/android/server/am/ActivityManagerService;

.field private mDecreaseHotnessScoreThread:Ljava/lang/Thread;

.field mDynamicLMKFlag:Z

.field private final mHotnessAdjMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/DynamicHiddenApp$HotnessValue;",
            ">;"
        }
    .end annotation
.end field

.field private final mHotnessLFU:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mInfo:Lcom/android/internal/util/MemInfoReader;

.field private final mLastKillTimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mMaxCached:I

.field mMaxEmpty:I

.field mNumCachedHiddenProcs:I

.field mNumNonCachedProcs:I

.field private final mOomAdj:[I

.field mProcessList:Lcom/android/server/am/ProcessList;

.field private mSzDHAStep:I

.field private mSzDHAThreshold:J

.field private mSzDHAThresholdRate:F

.field public final mWidgetList:Ljava/lang/Object;

.field numCached:I

.field numEmpty:I

.field private retCacheLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->DEBUG_Component:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->debuggingR:Lcom/android/server/am/ProcessRecord;

    sput-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->isLogPrinted:Z

    sput-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->curTopApp:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v0, "ro.config.fha_enable"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->FHA_ENABLE:Z

    const-string/jumbo v0, "ro.config.dha_hotness_enable"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_ENABLE:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->WIDGET_ON_HOMESCREEN:Ljava/util/HashSet;

    const-string/jumbo v0, "ro.config.dha_cached_max"

    const-string v1, "6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->INIT_CACHED_APPS:I

    const-string/jumbo v0, "ro.config.dha_cached_min"

    const-string v1, "4"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    const-string/jumbo v0, "ro.config.dha_cached_max"

    const-string v1, "6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    const-string/jumbo v0, "ro.config.dha_empty_init"

    const-string v1, "30"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->INIT_EMPTY_APPS:I

    const-string/jumbo v0, "ro.config.dha_empty_min"

    const-string v1, "8"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS_FOR_DHA:I

    const-string/jumbo v0, "ro.config.dha_empty_max"

    const-string v1, "30"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    const-string/jumbo v0, "ro.config.ldha_es_enable"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    const-string/jumbo v0, "ro.config.ldha_spc_enable"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LDHA_SPC_ENABLE:Z

    const-string/jumbo v0, "ro.config.pre_max_kill_enable"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->PRE_MAX_KILL_ENABLE:Z

    const-string/jumbo v0, "ro.config.pre_cached_kill"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->PRE_CACHED_KILL:Z

    const-string/jumbo v0, "ro.config.pre_empty_kill"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->PRE_EMPTY_KILL:Z

    const-string/jumbo v0, "ro.config.pre_decrement_sync"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->PRE_DECREMENT_SYNC:Z

    const-string/jumbo v0, "ro.config.pre_support_increment"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->PRE_SUPPORT_INCREMENT:Z

    const-string/jumbo v0, "ro.config.dha_adj_cached_factor"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DHA_ADJ_CACHED_FACTOR:Z

    const-string/jumbo v0, "ro.config.64bit_lmk_enable"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->mb64bitLMKEnable:Z

    const-string/jumbo v0, "ro.config.dha_ils_enable"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->mILS_Enable:Z

    const-string/jumbo v0, "ro.config.dha_ils_2nd_enable"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->mILS_2nd_Enable:Z

    const-string/jumbo v0, "ro.config.dha_ils_rate"

    const-string v1, "1.5"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->mSzILSRate:F

    const-string/jumbo v0, "ro.config.dha_ils_sdha_rate"

    const-string v1, "1.8"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->mSzILS_SDHARate:F

    sput-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->mSzILSFlag:Z

    const-string/jumbo v0, "ro.config.dha_pwhitelist_enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnable:I

    const-string/jumbo v0, "ro.config.dha_lmk_scale"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    const-string/jumbo v0, "ro.config.dha_lmk_array"

    const-string/jumbo v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    const-string/jumbo v0, "ro.config.ams_exception_enable"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->mAMSExceptionEnable:Z

    const-string/jumbo v0, "ro.config.ams_knoxexpt_enable"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->mKnoxAMSExceptionEnable:Z

    const-string/jumbo v0, "ro.config.fall_prevent_enable"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    const-string/jumbo v0, "ro.config.dha_package_enable"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DHA_PACKAGE_ENABLE:Z

    const-wide/32 v0, 0x200000

    sput-wide v0, Lcom/android/server/am/DynamicHiddenApp;->DHA_INCREASE_THRESHOLD:J

    const-string/jumbo v0, "ro.config.hotness_LRU_Min"

    const-string v1, "6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_LRU_PROTECT_MIN:I

    const-string/jumbo v0, "ro.config.hotness_LFU_CaRate"

    const-string v1, "1.0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_LFU_MINCachedRate:F

    const-string/jumbo v0, "ro.config.hotness_LFU_EmRate"

    const-string v1, "2.0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_LFU_MINEmptyRate:F

    const-string/jumbo v0, "unknown"

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->strPrevAppForActivityHotness:Ljava/lang/String;

    const-string/jumbo v0, "unknown"

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->strPrevAppForEmptyHotness:Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.sec.android.app.sbrowser"

    aput-object v1, v0, v4

    const-string v1, "com.sec.android.gallery3d"

    aput-object v1, v0, v5

    const-string v1, "com.sec.android.app.music"

    aput-object v1, v0, v3

    const-string v1, "com.samsung.everglades.video"

    aput-object v1, v0, v6

    const-string v1, "com.google.android.gm"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.google.android.gms"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.samsung.indexservice"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.vending"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "CONTACTS"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.sec.android.app.camera"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "MMS"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.google.android.music:ui"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.google.android.music:main"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "android.process.acore"

    aput-object v2, v1, v4

    const-string v2, "2"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "com.sec.android.provider.logsprovider"

    aput-object v2, v1, v4

    const-string v2, "1"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "com.samsung.klmsagent"

    aput-object v2, v1, v4

    const-string v2, "1"

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "CONTACTS"

    aput-object v2, v1, v4

    const-string v2, "0"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "android.process.media"

    aput-object v2, v1, v4

    const-string v2, "2"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "com.android.managedprovisioning"

    aput-object v3, v2, v4

    const-string v3, "1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->DHA_STATICEXCEPT_PROC_ARRAY:[[Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_set:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    const-string/jumbo v0, "ro.config.dha_pwhl_key"

    const-string v1, "7682"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_key:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "processList"    # Lcom/android/server/am/ProcessList;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mOomAdj:[I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mWidgetList:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    const-wide/32 v0, 0x2000000

    iput-wide v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    iput v2, p0, Lcom/android/server/am/DynamicHiddenApp;->retCacheLimit:I

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->INIT_EMPTY_APPS:I

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->INIT_CACHED_APPS:I

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    iput-boolean v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mDynamicLMKFlag:Z

    const v0, 0xf4240

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_MAX_VALUE:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mLastKillTimeMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    iput v2, p0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    iput v2, p0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    iput v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    iput v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    iput v2, p0, Lcom/android/server/am/DynamicHiddenApp;->hotnessCached:I

    iput v2, p0, Lcom/android/server/am/DynamicHiddenApp;->hotnessEmpty:I

    iput-object p1, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->initProperty()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x9
        0xf
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/am/DynamicHiddenApp;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/DynamicHiddenApp;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private computeDHAEmptyProcessLimit(I)I
    .locals 3
    .param p1, "totalProcessLimit"    # I

    .prologue
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager_LDHA_ES"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "totalProcessLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "retCacheLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/DynamicHiddenApp;->retCacheLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->retCacheLimit:I

    sub-int v0, p1, v0

    return v0
.end method

.method private final computeHotnessAdjLocked(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "cchListExcludeService":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_6

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    add-int/lit8 v6, v7, -0x1

    .local v6, "provi":I
    :goto_1
    if-ltz v6, :cond_4

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ContentProviderRecord;

    .local v3, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v7, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "j":I
    :goto_2
    if-ltz v5, :cond_3

    iget-object v7, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderConnection;

    .local v2, "conn":Lcom/android/server/am/ContentProviderConnection;
    iget-object v1, v2, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .local v1, "client":Lcom/android/server/am/ProcessRecord;
    if-ne v1, v0, :cond_1

    :cond_0
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_1
    iget v7, v0, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    if-ge v7, v8, :cond_0

    sget-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "ActivityManager_Hotness"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content provider process:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " hotness:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", client process:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " hotness:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v7, v1, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    iput v7, v0, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    goto :goto_3

    .end local v1    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "conn":Lcom/android/server/am/ContentProviderConnection;
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v5    # "j":I
    :cond_4
    sget-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v7, :cond_5

    const-string v7, "ActivityManager_Hotness"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "app:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " hotness:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_0

    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "provi":I
    :cond_6
    return-void
.end method

.method private dhaAddPackageName(Ljava/util/HashMap;[Ljava/lang/String;)V
    .locals 4
    .param p2, "nameindex"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    aget-object v0, p2, v2

    const-string v1, "CONTACTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aget-object v1, p2, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    aget-object v0, p2, v2

    const-string v1, "MMS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aget-object v1, p2, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    aget-object v0, p2, v2

    const-string v1, "CALENDAR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CALENDAR_CONFIG_PACKAGE_NAME"

    const-string v2, "com.android.calendar"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aget-object v1, p2, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    aget-object v0, p2, v2

    aget-object v1, p2, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private dhaAddPackageName(Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 3
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v0, "CONTACTS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "MMS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v0, "CALENDAR"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CALENDAR_CONFIG_PACKAGE_NAME"

    const-string v2, "com.android.calendar"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getDefaultIMEPackage()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .local v0, "strPreferredIME":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_input_method"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "tmp":[Ljava/lang/String;
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    aget-object v0, v1, v4

    .end local v1    # "tmp":[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getDefaultLauncher(I)Ljava/lang/String;
    .locals 9
    .param p1, "userId"    # I

    .prologue
    const/4 v5, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "homeIntent":Landroid/content/Intent;
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .local v3, "pm":Landroid/content/pm/IPackageManager;
    const/4 v6, 0x0

    const/high16 v7, 0x10000

    :try_start_0
    invoke-interface {v3, v2, v6, v7, p1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_0

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_0

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .local v0, "currentLauncher":Ljava/lang/String;
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " getDefaultLauncher currentLauncher -"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "currentLauncher":Ljava/lang/String;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v0, v5

    goto :goto_0
.end method

.method private makeLists(Z)V
    .locals 6
    .param p1, "isFirst"    # Z

    .prologue
    const/4 v5, 0x1

    if-nez p1, :cond_0

    sget-object v3, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_set:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    :cond_0
    const/4 v1, 0x0

    .local v1, "idx":I
    const/4 v0, 0x1

    .local v0, "bitFlag":I
    :goto_0
    sget-object v3, Lcom/android/server/am/DynamicHiddenApp;->DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    sget v3, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnable:I

    if-ne v3, v5, :cond_1

    sget v3, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_key:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_set:Ljava/util/HashSet;

    sget-object v4, Lcom/android/server/am/DynamicHiddenApp;->DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/DynamicHiddenApp;->dhaAddPackageName(Ljava/util/HashSet;Ljava/lang/String;)V

    :cond_1
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3, v5}, Lcom/android/server/am/DynamicHiddenApp;->setSkipPackage(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private setProcessLimit()V
    .locals 5

    .prologue
    iget v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    invoke-direct {p0, v2}, Lcom/android/server/am/DynamicHiddenApp;->computeDHAEmptyProcessLimit(I)I

    move-result v1

    .local v1, "emptyProcessLimit":I
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    .local v0, "cachedProcessLimit":I
    sget v2, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS_FOR_DHA:I

    if-ge v1, v2, :cond_0

    iget v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    sget v3, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS_FOR_DHA:I

    sget v4, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    add-int/2addr v3, v4

    if-gt v2, v3, :cond_2

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS_FOR_DHA:I

    :cond_0
    :goto_0
    sget v2, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    if-ge v0, v2, :cond_1

    iget v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    sget v3, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS_FOR_DHA:I

    sget v4, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    add-int/2addr v3, v4

    if-gt v2, v3, :cond_3

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    :cond_1
    :goto_1
    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    return-void

    :cond_2
    iget v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    goto :goto_1
.end method

.method public static updateILS(Ljava/lang/String;)V
    .locals 4
    .param p0, "pName"    # Ljava/lang/String;

    .prologue
    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->mILS_Enable:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->mSzILSFlag:Z

    .local v0, "ILSPrevFlag":Z
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->isAppsLaunchFreq(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->mSzILSFlag:Z

    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->mSzILSFlag:Z

    if-eq v0, v1, :cond_0

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ILS: FlagChange["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Before "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/am/DynamicHiddenApp;->mSzILSFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method final decreaseHotnessAdj(Lcom/android/server/am/ProcessRecord;I)V
    .locals 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "nHotnessType"    # I

    .prologue
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/server/am/DynamicHiddenApp;->strPrevAppForEmptyHotness:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->strPrevAppForEmptyHotness:Ljava/lang/String;

    const-string/jumbo v1, "unknown"

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->strPrevAppForActivityHotness:Ljava/lang/String;

    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "ActivityManager_Hotness"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decreaseHotnessAdj "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    .local v0, "hotness":Lcom/android/server/am/DynamicHiddenApp$HotnessValue;
    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "ActivityManager_Hotness"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decreaseHotnessAdj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hotness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v0, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v0, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->decreaseHotness(I)V

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "ActivityManager_Hotness"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decreaseHotnessAdj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hotness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "hotness":Lcom/android/server/am/DynamicHiddenApp$HotnessValue;
    :cond_5
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method decrementAppCount(IILcom/android/server/am/ProcessRecord;Z)I
    .locals 7
    .param p1, "empty"    # I
    .param p2, "cached"    # I
    .param p3, "lastCachedApp"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "preventAggressiveKill"    # Z

    .prologue
    const/4 v4, 0x1

    add-int v5, p1, p2

    iget v6, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    sub-int v2, v5, v6

    .local v2, "mUpdateMax":I
    if-gt p1, p2, :cond_0

    iget v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    if-eq v5, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    iget v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    if-le v5, v2, :cond_4

    sget v5, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS_FOR_DHA:I

    sget v6, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    add-int/2addr v5, v6

    if-ge v2, v5, :cond_1

    sget v5, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS_FOR_DHA:I

    sget v6, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    add-int v2, v5, v6

    :cond_1
    :goto_0
    if-le p1, p2, :cond_5

    iput p2, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    :cond_2
    :goto_1
    iget v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    if-gtz v5, :cond_3

    iput v4, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    :cond_3
    return v2

    :cond_4
    iget v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    .local v3, "prevMaxCached":I
    add-int/lit8 v5, p2, -0x1

    iput v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    iget v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    if-le v5, v2, :cond_6

    sub-int v5, v2, p1

    iput v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    :cond_6
    if-eqz p4, :cond_7

    iget v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    if-le v3, v5, :cond_7

    iput v3, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    :cond_7
    sget-boolean v5, Lcom/android/server/am/DynamicHiddenApp;->PRE_MAX_KILL_ENABLE:Z

    if-eqz v5, :cond_2

    sget-boolean v5, Lcom/android/server/am/DynamicHiddenApp;->PRE_DECREMENT_SYNC:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    if-le v3, v5, :cond_2

    iget v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    sget v6, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    if-lt v5, v6, :cond_2

    if-eqz p3, :cond_2

    iget v0, p3, Lcom/android/server/am/ProcessRecord;->curProcState:I

    .local v0, "appState":I
    const/16 v5, 0xe

    if-eq v0, v5, :cond_8

    const/16 v5, 0xf

    if-eq v0, v5, :cond_8

    move v1, v4

    .local v1, "killedBySPC":Z
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DEC:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_9

    const-string v5, "SPC_cached #"

    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5, v4}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    iput v3, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    goto :goto_1

    .end local v1    # "killedBySPC":Z
    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    .restart local v1    # "killedBySPC":Z
    :cond_9
    const-string v5, "cached #"

    goto :goto_3
.end method

.method decrementEmptyAppCount(IILcom/android/server/am/ProcessRecord;Z)I
    .locals 7
    .param p1, "empty"    # I
    .param p2, "cached"    # I
    .param p3, "lastCachedApp"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "preventAggressiveKill"    # Z

    .prologue
    const/4 v4, 0x1

    iget v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    sub-int v3, p1, v5

    .local v3, "ret":I
    iget v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    if-le v5, v3, :cond_5

    sget v5, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS_FOR_DHA:I

    if-ge v3, v5, :cond_0

    sget v3, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS_FOR_DHA:I

    :cond_0
    sget v5, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    if-le p2, v5, :cond_2

    iget v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    .local v2, "prevMaxCached":I
    add-int/lit8 v5, p2, -0x1

    iput v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    if-eqz p4, :cond_1

    iget v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    if-le v2, v5, :cond_1

    iput v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    :cond_1
    sget-boolean v5, Lcom/android/server/am/DynamicHiddenApp;->PRE_MAX_KILL_ENABLE:Z

    if-eqz v5, :cond_2

    sget-boolean v5, Lcom/android/server/am/DynamicHiddenApp;->PRE_DECREMENT_SYNC:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    if-le v2, v5, :cond_2

    if-eqz p3, :cond_2

    iget v0, p3, Lcom/android/server/am/ProcessRecord;->curProcState:I

    .local v0, "appState":I
    const/16 v5, 0xe

    if-eq v0, v5, :cond_3

    const/16 v5, 0xf

    if-eq v0, v5, :cond_3

    move v1, v4

    .local v1, "killedBySPC":Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DEC:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_4

    const-string v5, "SPC_cached #"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5, v4}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    iput v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    .end local v0    # "appState":I
    .end local v1    # "killedBySPC":Z
    .end local v2    # "prevMaxCached":I
    :cond_2
    :goto_2
    return v3

    .restart local v0    # "appState":I
    .restart local v2    # "prevMaxCached":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .restart local v1    # "killedBySPC":Z
    :cond_4
    const-string v5, "cached #"

    goto :goto_1

    .end local v0    # "appState":I
    .end local v1    # "killedBySPC":Z
    .end local v2    # "prevMaxCached":I
    :cond_5
    iget v3, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    goto :goto_2
.end method

.method public dhaProcessesLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V
    .locals 40
    .param p2, "TOP_APP"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, "DHACachedLFU":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .local v9, "DHAEmptyLFU":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .local v8, "DHACachedLRU":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .local v10, "DHAEmptyLRU":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    .local v12, "N":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    .local v28, "now":J
    const-wide/32 v34, 0x1b7740

    sub-long v30, v28, v34

    .local v30, "oldTime":J
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->hotnessCached:I

    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->hotnessEmpty:I

    const/16 v26, 0x0

    .local v26, "lastCachedProcess":Lcom/android/server/am/ProcessRecord;
    const/16 v32, 0x0

    .local v32, "preventAggressiveKill":Z
    if-nez p2, :cond_6

    const/16 v33, 0x0

    .local v33, "topState":I
    :goto_0
    sget v34, Lcom/android/server/am/DynamicHiddenApp;->curTopState:I

    move/from16 v0, v34

    move/from16 v1, v33

    if-eq v0, v1, :cond_0

    sput v33, Lcom/android/server/am/DynamicHiddenApp;->curTopState:I

    :cond_0
    const/16 v21, 0x0

    .local v21, "isPreCachedMaxKill":Z
    const/16 v22, 0x0

    .local v22, "isPreEmptyMaxKill":Z
    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->PRE_MAX_KILL_ENABLE:Z

    if-eqz v34, :cond_3

    const/16 v34, 0x3

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_1

    if-nez v33, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v34, v0

    if-eqz v34, :cond_3

    :cond_1
    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->PRE_EMPTY_KILL:Z

    if-eqz v34, :cond_2

    const/16 v22, 0x1

    :cond_2
    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->PRE_CACHED_KILL:Z

    if-eqz v34, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v34, v0

    if-eqz v34, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v34, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    if-lez v34, :cond_3

    const/16 v21, 0x1

    :cond_3
    const-wide/16 v14, 0x0

    .local v14, "appUss":J
    const/16 v18, 0x0

    .local v18, "isDhaKeepEmpty":Z
    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v34, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/DynamicHiddenApp;->setProcessLimit()V

    :cond_4
    add-int/lit8 v17, v12, -0x1

    .local v17, "i":I
    :goto_1
    if-ltz v17, :cond_4a

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    .local v13, "app":Lcom/android/server/am/ProcessRecord;
    const/16 v18, 0x0

    iget-boolean v0, v13, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    move/from16 v34, v0

    if-nez v34, :cond_5

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v34, v0

    if-eqz v34, :cond_5

    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->mAMSExceptionEnable:Z

    if-eqz v34, :cond_a

    iget v0, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v34

    const/16 v35, 0x64

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_9

    sget-object v34, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_a

    sget-object v34, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-gt v0, v1, :cond_a

    :cond_5
    :goto_2
    add-int/lit8 v17, v17, -0x1

    goto :goto_1

    .end local v13    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v14    # "appUss":J
    .end local v17    # "i":I
    .end local v18    # "isDhaKeepEmpty":Z
    .end local v21    # "isPreCachedMaxKill":Z
    .end local v22    # "isPreEmptyMaxKill":Z
    .end local v33    # "topState":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v34, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_7

    const/16 v33, 0x1

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mRecentsProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v34, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_8

    const/16 v33, 0x2

    goto/16 :goto_0

    :cond_8
    const/16 v33, 0x3

    goto/16 :goto_0

    .restart local v13    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v14    # "appUss":J
    .restart local v17    # "i":I
    .restart local v18    # "isDhaKeepEmpty":Z
    .restart local v21    # "isPreCachedMaxKill":Z
    .restart local v22    # "isPreEmptyMaxKill":Z
    .restart local v33    # "topState":I
    :cond_9
    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->mKnoxAMSExceptionEnable:Z

    if-eqz v34, :cond_a

    sget-object v34, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_a

    sget-object v34, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_5

    sget-object v34, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    if-nez v34, :cond_a

    const/16 v18, 0x1

    :cond_a
    sget v34, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnable:I

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_b

    sget-object v34, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_set:Ljava/util/HashSet;

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_b

    const/16 v18, 0x1

    :cond_b
    const/16 v25, 0x0

    .local v25, "killedBy":Ljava/lang/String;
    iget v0, v13, Lcom/android/server/am/ProcessRecord;->curProcState:I

    move/from16 v34, v0

    packed-switch v34, :pswitch_data_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->LDHA_SPC_ENABLE:Z

    if-eqz v34, :cond_5

    iget v0, v13, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v34, v0

    const/16 v35, 0x9

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_5

    if-eqz v18, :cond_2d

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    if-gtz v34, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/16 v35, 0x0

    const/16 v36, 0x1

    invoke-virtual/range {v34 .. v36}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setHotness(II)V

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    goto/16 :goto_2

    :pswitch_0
    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->DHA_PACKAGE_ENABLE:Z

    if-nez v34, :cond_5

    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-gt v0, v1, :cond_d

    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v34, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_11

    :cond_d
    const/16 v19, 0x1

    .local v19, "isDhaKill":Z
    :goto_3
    if-eqz v21, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_e

    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v34, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_12

    :cond_e
    const/16 v23, 0x1

    .local v23, "isPreKill":Z
    :goto_4
    if-eqz v19, :cond_13

    const-string v25, "DHA"

    :cond_f
    :goto_5
    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_ENABLE:Z

    if-eqz v34, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    if-eqz v34, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getIsHotness(I)Z

    move-result v34

    if-eqz v34, :cond_14

    const/16 v20, 0x1

    .local v20, "isHotness":Z
    :goto_6
    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_ENABLE:Z

    if-eqz v34, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    if-eqz v34, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getIsHotness(I)Z

    move-result v20

    :goto_7
    if-eqz v20, :cond_16

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v7, v0, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/16 v35, 0x0

    const/16 v36, 0x0

    invoke-virtual/range {v34 .. v36}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setIsHotness(ZI)V

    if-eqz v25, :cond_10

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/am/ProcessRecord;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "_H:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "cached #"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x1

    invoke-virtual/range {v34 .. v36}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    :cond_10
    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v34, :cond_5

    const-string v34, "ActivityManager_Hotness"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "CA hotness protected"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    iget v0, v13, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "/"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v19    # "isDhaKill":Z
    .end local v20    # "isHotness":Z
    .end local v23    # "isPreKill":Z
    :cond_11
    const/16 v19, 0x0

    goto/16 :goto_3

    .restart local v19    # "isDhaKill":Z
    :cond_12
    const/16 v23, 0x0

    goto/16 :goto_4

    .restart local v23    # "isPreKill":Z
    :cond_13
    if-eqz v23, :cond_f

    const-string v25, "PMK"

    goto/16 :goto_5

    :cond_14
    const/16 v20, 0x0

    goto/16 :goto_6

    .restart local v20    # "isHotness":Z
    :cond_15
    const/16 v20, 0x0

    goto/16 :goto_7

    :cond_16
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v8, v0, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_17
    if-eqz v25, :cond_1c

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v34

    if-eqz v34, :cond_18

    const-string v34, "com.android.vending"

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_18

    const-string v34, "GATE"

    const-string v35, "<GATE-M> MARKET_LAUNCHED_FAIL </GATE-M>"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    if-eqz v18, :cond_1a

    const-string v34, "ActivityManager"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "PWHL - "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " in Cached"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ":"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "Convert from hidden to empty"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v13, v1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleDestroyAllActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    :cond_19
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    goto/16 :goto_2

    :cond_1a
    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    if-eqz v34, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget v0, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    if-nez v34, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v34, v0

    iget v0, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/util/MemInfoReader;->getUssByPid(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget v0, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    move-wide/from16 v34, v0

    add-long v34, v34, v14

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    const-string v34, "ActivityManager"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "KPU : put ["

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "] : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-wide/16 v36, 0x400

    div-long v36, v14, v36

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " K"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ":"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "cached #"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v13, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    if-nez v19, :cond_19

    if-nez v32, :cond_19

    const/16 v32, 0x1

    goto/16 :goto_8

    :cond_1c
    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_ENABLE:Z

    if-eqz v34, :cond_1d

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v7, v0, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1d
    move-object/from16 v26, v13

    goto/16 :goto_2

    .end local v19    # "isDhaKill":Z
    .end local v20    # "isHotness":Z
    .end local v23    # "isPreKill":Z
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v34, v0

    sget v35, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_APPS:I

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_1e

    iget-wide v0, v13, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    move-wide/from16 v34, v0

    cmp-long v34, v34, v30

    if-gez v34, :cond_1e

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "empty for "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-wide/32 v36, 0x1b7740

    add-long v36, v36, v30

    iget-wide v0, v13, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    move-wide/from16 v38, v0

    sub-long v36, v36, v38

    const-wide/16 v38, 0x3e8

    div-long v36, v36, v38

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, "s"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v13, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-gt v0, v1, :cond_1f

    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v34, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_23

    :cond_1f
    const/16 v19, 0x1

    .restart local v19    # "isDhaKill":Z
    :goto_9
    if-eqz v22, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_20

    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v34, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_24

    :cond_20
    const/16 v23, 0x1

    .restart local v23    # "isPreKill":Z
    :goto_a
    if-eqz v19, :cond_25

    const-string v25, "DHA"

    :cond_21
    :goto_b
    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_ENABLE:Z

    if-eqz v34, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    if-eqz v34, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/16 v35, 0x1

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getIsHotness(I)Z

    move-result v20

    .restart local v20    # "isHotness":Z
    :goto_c
    if-eqz v20, :cond_27

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v9, v0, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/16 v35, 0x0

    const/16 v36, 0x1

    invoke-virtual/range {v34 .. v36}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setIsHotness(ZI)V

    if-eqz v25, :cond_22

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/am/ProcessRecord;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "_H:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "empty #"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x1

    invoke-virtual/range {v34 .. v36}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    :cond_22
    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v34, :cond_5

    const-string v34, "ActivityManager_Hotness"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "EM hotness protected"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    iget v0, v13, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "/"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v19    # "isDhaKill":Z
    .end local v20    # "isHotness":Z
    .end local v23    # "isPreKill":Z
    :cond_23
    const/16 v19, 0x0

    goto/16 :goto_9

    .restart local v19    # "isDhaKill":Z
    :cond_24
    const/16 v23, 0x0

    goto/16 :goto_a

    .restart local v23    # "isPreKill":Z
    :cond_25
    if-eqz v23, :cond_21

    const-string v25, "PMK"

    goto/16 :goto_b

    :cond_26
    const/16 v20, 0x0

    goto/16 :goto_c

    .restart local v20    # "isHotness":Z
    :cond_27
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v10, v0, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .end local v20    # "isHotness":Z
    :cond_28
    if-eqz v18, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/16 v35, 0x0

    const/16 v36, 0x1

    invoke-virtual/range {v34 .. v36}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setHotness(II)V

    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    goto/16 :goto_2

    :cond_2a
    if-eqz v25, :cond_2c

    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    if-eqz v34, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget v0, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    if-nez v34, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v34, v0

    iget v0, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/util/MemInfoReader;->getUssByPid(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget v0, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    move-wide/from16 v34, v0

    add-long v34, v34, v14

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    const-string v34, "ActivityManager"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "KPU : put ["

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "] : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-wide/16 v36, 0x400

    div-long v36, v14, v36

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " K"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ":"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "empty #"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v13, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    goto/16 :goto_2

    :cond_2c
    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_ENABLE:Z

    if-eqz v34, :cond_5

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v9, v0, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    .end local v19    # "isDhaKill":Z
    .end local v23    # "isPreKill":Z
    :cond_2d
    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    if-lez v34, :cond_3d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-gt v0, v1, :cond_2e

    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v34, :cond_32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_32

    :cond_2e
    const/16 v19, 0x1

    .restart local v19    # "isDhaKill":Z
    :goto_d
    if-eqz v21, :cond_33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_2f

    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v34, :cond_33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_33

    :cond_2f
    const/16 v23, 0x1

    .restart local v23    # "isPreKill":Z
    :goto_e
    if-eqz v19, :cond_34

    const-string v25, "DHA"

    :cond_30
    :goto_f
    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_ENABLE:Z

    if-eqz v34, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    if-eqz v34, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getIsHotness(I)Z

    move-result v20

    .restart local v20    # "isHotness":Z
    :goto_10
    if-eqz v20, :cond_36

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v7, v0, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/16 v35, 0x0

    const/16 v36, 0x0

    invoke-virtual/range {v34 .. v36}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setIsHotness(ZI)V

    if-eqz v25, :cond_31

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/am/ProcessRecord;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "_H:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "cached #"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x1

    invoke-virtual/range {v34 .. v36}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    :cond_31
    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v34, :cond_5

    const-string v34, "ActivityManager_Hotness"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "CA hotness protected"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    iget v0, v13, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "/"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v19    # "isDhaKill":Z
    .end local v20    # "isHotness":Z
    .end local v23    # "isPreKill":Z
    :cond_32
    const/16 v19, 0x0

    goto/16 :goto_d

    .restart local v19    # "isDhaKill":Z
    :cond_33
    const/16 v23, 0x0

    goto/16 :goto_e

    .restart local v23    # "isPreKill":Z
    :cond_34
    if-eqz v23, :cond_30

    const-string v25, "PMK"

    goto/16 :goto_f

    :cond_35
    const/16 v20, 0x0

    goto/16 :goto_10

    .restart local v20    # "isHotness":Z
    :cond_36
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v8, v0, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .end local v20    # "isHotness":Z
    :cond_37
    if-eqz v25, :cond_3b

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v34

    if-eqz v34, :cond_38

    const-string v34, "com.android.vending"

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_38

    const-string v34, "GATE"

    const-string v35, "<GATE-M> MARKET_LAUNCHED_FAIL </GATE-M>"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    if-eqz v34, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget v0, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    if-nez v34, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v34, v0

    iget v0, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/util/MemInfoReader;->getUssByPid(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget v0, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    move-wide/from16 v34, v0

    add-long v34, v34, v14

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    const-string v34, "ActivityManager"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "KPU : put ["

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "] : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-wide/16 v36, 0x400

    div-long v36, v14, v36

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " K"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ":"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "SPC_cached #"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v13, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    if-nez v19, :cond_3a

    if-nez v32, :cond_3a

    const/16 v32, 0x1

    :cond_3a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    goto/16 :goto_2

    :cond_3b
    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_ENABLE:Z

    if-eqz v34, :cond_3c

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v7, v0, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_3c
    move-object/from16 v26, v13

    goto/16 :goto_2

    .end local v19    # "isDhaKill":Z
    .end local v23    # "isPreKill":Z
    :cond_3d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-gt v0, v1, :cond_3e

    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v34, :cond_42

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_42

    :cond_3e
    const/16 v19, 0x1

    .restart local v19    # "isDhaKill":Z
    :goto_11
    if-eqz v22, :cond_43

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_3f

    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v34, :cond_43

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_43

    :cond_3f
    const/16 v23, 0x1

    .restart local v23    # "isPreKill":Z
    :goto_12
    if-eqz v19, :cond_44

    const-string v25, "DHA"

    :cond_40
    :goto_13
    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_ENABLE:Z

    if-eqz v34, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    if-eqz v34, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/16 v35, 0x1

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getIsHotness(I)Z

    move-result v20

    .restart local v20    # "isHotness":Z
    :goto_14
    if-eqz v20, :cond_46

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v9, v0, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/16 v35, 0x0

    const/16 v36, 0x1

    invoke-virtual/range {v34 .. v36}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setIsHotness(ZI)V

    if-eqz v25, :cond_41

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/am/ProcessRecord;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "_H:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "empty #"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x1

    invoke-virtual/range {v34 .. v36}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    :cond_41
    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v34, :cond_5

    const-string v34, "ActivityManager_Hotness"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "EM hotness protected"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    iget v0, v13, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "/"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v19    # "isDhaKill":Z
    .end local v20    # "isHotness":Z
    .end local v23    # "isPreKill":Z
    :cond_42
    const/16 v19, 0x0

    goto/16 :goto_11

    .restart local v19    # "isDhaKill":Z
    :cond_43
    const/16 v23, 0x0

    goto/16 :goto_12

    .restart local v23    # "isPreKill":Z
    :cond_44
    if-eqz v23, :cond_40

    const-string v25, "PMK"

    goto/16 :goto_13

    :cond_45
    const/16 v20, 0x0

    goto/16 :goto_14

    .restart local v20    # "isHotness":Z
    :cond_46
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v10, v0, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .end local v20    # "isHotness":Z
    :cond_47
    if-eqz v25, :cond_49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    if-eqz v34, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget v0, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    if-nez v34, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v34, v0

    iget v0, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/util/MemInfoReader;->getUssByPid(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget v0, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    move-wide/from16 v34, v0

    add-long v34, v34, v14

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    const-string v34, "ActivityManager"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "KPU : put ["

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "] : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-wide/16 v36, 0x400

    div-long v36, v14, v36

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " K"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ":"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "SPC_empty #"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v13, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    goto/16 :goto_2

    :cond_49
    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_ENABLE:Z

    if-eqz v34, :cond_5

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v9, v0, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    .end local v13    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v19    # "isDhaKill":Z
    .end local v23    # "isPreKill":Z
    .end local v25    # "killedBy":Ljava/lang/String;
    :cond_4a
    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_ENABLE:Z

    if-eqz v34, :cond_56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v34

    add-int/lit8 v24, v34, -0x1

    .local v24, "j":I
    :goto_15
    if-ltz v24, :cond_4c

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    .restart local v13    # "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/16 v35, 0x1

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v34

    move/from16 v0, v34

    iput v0, v13, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    :goto_16
    add-int/lit8 v24, v24, -0x1

    goto :goto_15

    :cond_4b
    const/16 v34, 0x0

    move/from16 v0, v34

    iput v0, v13, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    goto :goto_16

    .end local v13    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_4c
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v34

    add-int/lit8 v24, v34, -0x1

    :goto_17
    if-ltz v24, :cond_4e

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    .restart local v13    # "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v34

    move/from16 v0, v34

    iput v0, v13, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    :goto_18
    add-int/lit8 v24, v24, -0x1

    goto :goto_17

    :cond_4d
    const/16 v34, 0x0

    move/from16 v0, v34

    iput v0, v13, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    goto :goto_18

    .end local v13    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_4e
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v34

    sget v35, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_LRU_PROTECT_MIN:I

    sub-int v34, v34, v35

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    sget v35, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_LFU_MINCachedRate:F

    mul-float v6, v34, v35

    .local v6, "CachedLFUMax":F
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    sget v35, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_LFU_MINEmptyRate:F

    mul-float v35, v35, v6

    sub-float v34, v34, v35

    const/16 v35, 0x0

    cmpl-float v34, v34, v35

    if-lez v34, :cond_51

    sget v34, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_LFU_MINEmptyRate:F

    mul-float v11, v6, v34

    .local v11, "EmptyLFUMax":F
    :goto_19
    const/16 v34, 0x0

    cmpl-float v34, v6, v34

    if-lez v34, :cond_56

    new-instance v34, Lcom/android/server/am/DynamicHiddenApp$2;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/DynamicHiddenApp$2;-><init>(Lcom/android/server/am/DynamicHiddenApp;)V

    move-object/from16 v0, v34

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/am/DynamicHiddenApp;->computeHotnessAdjLocked(Ljava/util/ArrayList;)V

    new-instance v34, Lcom/android/server/am/DynamicHiddenApp$3;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/DynamicHiddenApp$3;-><init>(Lcom/android/server/am/DynamicHiddenApp;)V

    move-object/from16 v0, v34

    invoke-static {v9, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/am/DynamicHiddenApp;->computeHotnessAdjLocked(Ljava/util/ArrayList;)V

    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v34, :cond_4f

    const-string v34, "ActivityManager_Hotness"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "CachedLFUMax = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "EmptyLFUMax = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v35, v0

    monitor-enter v35

    :try_start_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v34

    add-int/lit8 v27, v34, -0x1

    .local v27, "nCnt":I
    :goto_1a
    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v34, v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    sub-float v36, v36, v6

    cmpl-float v34, v34, v36

    if-ltz v34, :cond_52

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    .restart local v13    # "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    .local v16, "hotness":Lcom/android/server/am/DynamicHiddenApp$HotnessValue;
    const/16 v34, 0x1

    const/16 v36, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v34

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setIsHotness(ZI)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->hotnessCached:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->hotnessCached:I

    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v34, :cond_50

    const-string v34, "ActivityManager_Hotness"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, " hotnessCachedP "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v16    # "hotness":Lcom/android/server/am/DynamicHiddenApp$HotnessValue;
    :cond_50
    add-int/lit8 v27, v27, -0x1

    goto/16 :goto_1a

    .end local v11    # "EmptyLFUMax":F
    .end local v13    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v27    # "nCnt":I
    :cond_51
    const/4 v11, 0x0

    goto/16 :goto_19

    .restart local v11    # "EmptyLFUMax":F
    .restart local v27    # "nCnt":I
    :cond_52
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v34

    add-int/lit8 v27, v34, -0x1

    :goto_1b
    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v34, v0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    sub-float v36, v36, v11

    cmpl-float v34, v34, v36

    if-ltz v34, :cond_54

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    .restart local v13    # "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    .restart local v16    # "hotness":Lcom/android/server/am/DynamicHiddenApp$HotnessValue;
    const/16 v34, 0x1

    const/16 v36, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v34

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setIsHotness(ZI)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->hotnessEmpty:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->hotnessEmpty:I

    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v34, :cond_53

    const-string v34, "ActivityManager_Hotness"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, " hotnessEmptyP "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v16    # "hotness":Lcom/android/server/am/DynamicHiddenApp$HotnessValue;
    :cond_53
    add-int/lit8 v27, v27, -0x1

    goto/16 :goto_1b

    .end local v13    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_54
    monitor-exit v35
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v34, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v34, :cond_55

    const-string v34, "ActivityManager_Hotness"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "hotnessCached = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->hotnessCached:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "hotnessEmpty = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->hotnessEmpty:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    new-instance v35, Lcom/android/server/am/DynamicHiddenApp$4;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/DynamicHiddenApp$4;-><init>(Lcom/android/server/am/DynamicHiddenApp;)V

    invoke-static/range {v34 .. v35}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .end local v6    # "CachedLFUMax":F
    .end local v11    # "EmptyLFUMax":F
    .end local v24    # "j":I
    .end local v27    # "nCnt":I
    :cond_56
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    move-object/from16 v3, v26

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/DynamicHiddenApp;->updateHiddenAppNum(IILcom/android/server/am/ProcessRecord;Z)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    return-void

    .restart local v6    # "CachedLFUMax":F
    .restart local v11    # "EmptyLFUMax":F
    .restart local v24    # "j":I
    :catchall_0
    move-exception v34

    :try_start_1
    monitor-exit v35
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v34

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public dumpComponent(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "callerPid"    # I
    .param p3, "hotness"    # I
    .param p4, "component"    # Ljava/lang/String;
    .param p5, "callee"    # Ljava/lang/String;
    .param p6, "calleePid"    # I
    .param p7, "extraInfo"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    if-ne p6, v0, :cond_2

    :cond_0
    const-string v0, "ActivityManager_Hotness"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%-5s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p4, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p7, :cond_1

    const-string v0, "ActivityManager_Hotness"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extra :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const-string v0, "ActivityManager_Hotness"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/DynamicHiddenApp;->getShortString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%-5s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p4, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p5, p6}, Lcom/android/server/am/DynamicHiddenApp;->getShortString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method dumpDHALocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v3, "ACTIVITY MANAGER DHA Hotness (dumpsys activity dhahot)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, " hotnessAdj value (mHotnessAdjMap) --"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, "entryHotness":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    .local v0, "TempHotness":Lcom/android/server/am/DynamicHiddenApp$HotnessValue;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tHotnessAdj: activity %8d , empty %8d , skip %s,"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v8}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v0, v9}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x2

    iget-boolean v7, v0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->skipPackage:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " proc name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "TempHotness":Lcom/android/server/am/DynamicHiddenApp$HotnessValue;
    .end local v1    # "entryHotness":Ljava/util/Map$Entry;
    :cond_0
    return-void
.end method

.method protected getBgProcCount(I)I
    .locals 1
    .param p1, "kind"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method getShortString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_8

    move-object v0, p1

    .local v0, "shortPkgName":Ljava/lang/String;
    const-string v1, "com."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "android."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string/jumbo v1, "samsung."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "samsung."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string/jumbo v1, "sec."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "sec."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v1, "app."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "app."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    const-string/jumbo v1, "google."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "google."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    const-string/jumbo v1, "org."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "org."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    const-string v1, ".service"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, ".service"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%20s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%7s"

    new-array v3, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v0    # "shortPkgName":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%20s"

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "null"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%7s"

    new-array v3, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method incrementAppCount()I
    .locals 4

    .prologue
    iget v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    iget v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    add-int v0, v1, v2

    .local v0, "mUpdateMax":I
    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    if-le v0, v1, :cond_0

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    :cond_0
    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    iget v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    if-le v1, v2, :cond_1

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    :cond_1
    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    :cond_2
    return v0
.end method

.method incrementEmptyAppCount()I
    .locals 4

    .prologue
    iget v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    iget v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    add-int v0, v1, v2

    .local v0, "ret":I
    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    if-le v0, v1, :cond_0

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    :cond_0
    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    :cond_1
    return v0
.end method

.method public initForHotness()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->setSkipPackageForLauncher()V

    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->runDecreaseHotnessScoreThread()V

    return-void
.end method

.method public initProperty()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    sget-object v1, Lcom/android/server/am/DynamicHiddenApp;->DHA_STATICEXCEPT_PROC_ARRAY:[[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    sget-object v2, Lcom/android/server/am/DynamicHiddenApp;->DHA_STATICEXCEPT_PROC_ARRAY:[[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/DynamicHiddenApp;->dhaAddPackageName(Ljava/util/HashMap;[Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/am/DynamicHiddenApp;->makeLists(Z)V

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->updateLMKThreshold()V

    const-string/jumbo v1, "ro.config.dha_step"

    iget v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    const-string/jumbo v1, "ro.config.dha_th_rate"

    iget v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    const-string/jumbo v2, "ro.config.dha_th_level"

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    const-string/jumbo v1, "ro.config.dha_increase_th"

    sget-wide v2, Lcom/android/server/am/DynamicHiddenApp;->DHA_INCREASE_THRESHOLD:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/am/DynamicHiddenApp;->DHA_INCREASE_THRESHOLD:J

    const-string v1, "DHA_PROPERTY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DHA STEP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DHA_PROPERTY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DHA TH RATE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DHA_PROPERTY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DHA mSzDHAThreshold "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DHA_PROPERTY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DHA DHA_INCREASE_THRESHOLD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/android/server/am/DynamicHiddenApp;->DHA_INCREASE_THRESHOLD:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isWidgetUsingPkg(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->WIDGET_ON_HOMESCREEN:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->WIDGET_ON_HOMESCREEN:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isWidgetUsingPkg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " widget is using."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isWidgetUsingPkg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " no widget is using."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeKillingProcessUss(ILjava/lang/String;)V
    .locals 6
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    iget-wide v0, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    iput-wide v4, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    :cond_0
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KPU : remove ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] , Remain = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " K"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method protected runDecreaseHotnessScoreThread()V
    .locals 2

    .prologue
    new-instance v0, Lcom/android/server/am/DynamicHiddenApp$1;

    const-string v1, "DecreaseHotnessScoreThread"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/DynamicHiddenApp$1;-><init>(Lcom/android/server/am/DynamicHiddenApp;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mDecreaseHotnessScoreThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mDecreaseHotnessScoreThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method setCallerHotnessAdj(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)V
    .locals 5
    .param p1, "callee"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "caller"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez v1, :cond_2

    :cond_0
    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ActivityManager_Hotness"

    const-string/jumbo v2, "setCallerHotnessAdj callee is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p2, :cond_3

    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez v1, :cond_4

    :cond_3
    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ActivityManager_Hotness"

    const-string/jumbo v2, "setCallerHotnessAdj caller is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v3, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v3, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    .local v0, "hotness":Lcom/android/server/am/DynamicHiddenApp$HotnessValue;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v1

    if-lez v1, :cond_6

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v1

    iput v1, p1, Lcom/android/server/am/ProcessRecord;->callerHotnessAdj:I

    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "ActivityManager_Hotness"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCallerHotnessAdj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hotnessAdj="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->callerHotnessAdj:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "hotness":Lcom/android/server/am/DynamicHiddenApp$HotnessValue;
    :cond_5
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "hotness":Lcom/android/server/am/DynamicHiddenApp$HotnessValue;
    :cond_6
    :try_start_1
    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "ActivityManager_Hotness"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCallerHotnessAdj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hotnessAdj is zero"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "hotness":Lcom/android/server/am/DynamicHiddenApp$HotnessValue;
    :cond_7
    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "ActivityManager_Hotness"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCallerHotnessAdj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t have activity hotness!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method setSkipPackage(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "skip"    # Z

    .prologue
    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    .local v0, "hotness":Lcom/android/server/am/DynamicHiddenApp$HotnessValue;
    iput-boolean p2, v0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->skipPackage:Z

    :goto_0
    return-void

    .end local v0    # "hotness":Lcom/android/server/am/DynamicHiddenApp$HotnessValue;
    :cond_0
    new-instance v0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;-><init>(Lcom/android/server/am/DynamicHiddenApp;I)V

    .restart local v0    # "hotness":Lcom/android/server/am/DynamicHiddenApp$HotnessValue;
    iput-boolean p2, v0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->skipPackage:Z

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSkipPackageForLauncher()V
    .locals 8

    .prologue
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0x80

    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "ActivityManager_Hotness"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getLauncherPackage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/DynamicHiddenApp;->setSkipPackage(Ljava/lang/String;Z)V

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_2
    return-void
.end method

.method public upDateWidgetList()V
    .locals 11

    .prologue
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .local v0, "currentUserId":I
    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v7

    const-string v8, "appwidgets.xml"

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v1, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v4, "stream":Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    invoke-interface {v2, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/am/DynamicHiddenApp;->mWidgetList:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x0

    .local v6, "type":I
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .local v5, "tag":Ljava/lang/String;
    const-string/jumbo v7, "p"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    const-string/jumbo v9, "pkg"

    invoke-interface {v2, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "pkg":Ljava/lang/String;
    sget-object v7, Lcom/android/server/am/DynamicHiddenApp;->WIDGET_ON_HOMESCREEN:Ljava/util/HashSet;

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " already exist in list."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "pkg":Ljava/lang/String;
    .end local v5    # "tag":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    monitor-exit v8

    .end local v0    # "currentUserId":I
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "stream":Ljava/io/InputStream;
    .end local v6    # "type":I
    :goto_1
    return-void

    .restart local v0    # "currentUserId":I
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v4    # "stream":Ljava/io/InputStream;
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_2
    const-string v7, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Add "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " into list."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/server/am/DynamicHiddenApp;->WIDGET_ON_HOMESCREEN:Ljava/util/HashSet;

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v3    # "pkg":Ljava/lang/String;
    .end local v5    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v0    # "currentUserId":I
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "stream":Ljava/io/InputStream;
    .end local v6    # "type":I
    :catch_0
    move-exception v7

    goto :goto_1

    :catch_1
    move-exception v7

    goto :goto_1

    :catch_2
    move-exception v7

    goto :goto_1
.end method

.method public updateDHAParameter()V
    .locals 13

    .prologue
    :try_start_0
    const-string v8, ""

    .local v8, "result":Ljava/lang/String;
    const-string v5, ""

    .local v5, "name":Ljava/lang/String;
    const-string v9, ""

    .local v9, "value":Ljava/lang/String;
    const-string v0, "[=:]"

    .local v0, "SEPATOR":Ljava/lang/String;
    const-string v4, "/data/log/dha_parameter.dat"

    .local v4, "filepath":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "buf":Ljava/io/BufferedReader;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, "file":Ljava/io/File;
    const/4 v7, 0x0

    .local v7, "refreshList":Z
    const/4 v6, 0x0

    .local v6, "refreshLMK":Z
    const-string v10, "ActivityManager"

    const-string v11, "Start updateDHAParameter"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_25

    const-string v10, "ActivityManager"

    const-string/jumbo v11, "updateDHAParameter exist"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/BufferedReader;

    .end local v1    # "buf":Ljava/io/BufferedReader;
    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_22

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "[=:]"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v10, "[=:]"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "name = [ "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ], value = [ "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "MAX_CACHED_APPS"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .end local v0    # "SEPATOR":Ljava/lang/String;
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "filepath":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "refreshLMK":Z
    .end local v7    # "refreshList":Z
    .end local v8    # "result":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .restart local v0    # "SEPATOR":Ljava/lang/String;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "filepath":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "refreshLMK":Z
    .restart local v7    # "refreshList":Z
    .restart local v8    # "result":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v10, "MIN_CACHED_APPS"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .end local v0    # "SEPATOR":Ljava/lang/String;
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "filepath":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "refreshLMK":Z
    .end local v7    # "refreshList":Z
    .end local v8    # "result":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1

    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v0    # "SEPATOR":Ljava/lang/String;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "filepath":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "refreshLMK":Z
    .restart local v7    # "refreshList":Z
    .restart local v8    # "result":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v10, "MAX_EMPTY_APPS"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    goto/16 :goto_0

    :cond_3
    const-string v10, "MIN_EMPTY_APPS"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS_FOR_DHA:I

    goto/16 :goto_0

    :cond_4
    const-string v10, "INIT_EMPTY_APPS"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/android/server/am/DynamicHiddenApp;->INIT_EMPTY_APPS:I

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v10, "mSzDHAStep"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v10, "mSzDHAThreshold"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-long v10, v10

    iput-wide v10, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v10, "ro.config.dha_th_rate"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    iput v10, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    goto/16 :goto_0

    :cond_8
    const-string v10, "DHA_INCREASE_THRESHOLD"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-long v10, v10

    sput-wide v10, Lcom/android/server/am/DynamicHiddenApp;->DHA_INCREASE_THRESHOLD:J

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v10, "ro.config.dha_lmk_scale"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    sput v10, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v10, "ro.config.dha_lmk_array"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    sput-object v9, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    const/4 v6, 0x1

    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dha_lmk_array mLMKArray ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v10, "ro.config.dha_ils_enable"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lcom/android/server/am/DynamicHiddenApp;->mILS_Enable:Z

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v10, "ro.config.dha_ils_rate"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    sput v10, Lcom/android/server/am/DynamicHiddenApp;->mSzILSRate:F

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v10, "ro.config.dha_ils_sdha_rate"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    sput v10, Lcom/android/server/am/DynamicHiddenApp;->mSzILS_SDHARate:F

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v10, "ro.config.dha_pwhitelist_enable"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnable:I

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v10, "ro.config.dha_pwhl_key"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_key:I

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v10, "ro.config.64bit_lmk_enable"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lcom/android/server/am/DynamicHiddenApp;->mb64bitLMKEnable:Z

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v10, "ro.config.ldha_es_enable"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v10, "ro.config.ldha_spc_enable"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lcom/android/server/am/DynamicHiddenApp;->LDHA_SPC_ENABLE:Z

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v10, "ro.config.ams_exception_enable"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lcom/android/server/am/DynamicHiddenApp;->mAMSExceptionEnable:Z

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v10, "ro.config.ams_knoxexpt_enable"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lcom/android/server/am/DynamicHiddenApp;->mKnoxAMSExceptionEnable:Z

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v10, "ro.config.fha_enable"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lcom/android/server/am/DynamicHiddenApp;->FHA_ENABLE:Z

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v10, "ro.config.pre_max_kill_enable"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lcom/android/server/am/DynamicHiddenApp;->PRE_MAX_KILL_ENABLE:Z

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v10, "ro.config.pre_cached_kill"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lcom/android/server/am/DynamicHiddenApp;->PRE_CACHED_KILL:Z

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v10, "ro.config.pre_empty_kill"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lcom/android/server/am/DynamicHiddenApp;->PRE_EMPTY_KILL:Z

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v10, "ro.config.pre_decrement_sync"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lcom/android/server/am/DynamicHiddenApp;->PRE_DECREMENT_SYNC:Z

    goto/16 :goto_0

    :cond_1a
    const-string/jumbo v10, "ro.config.pre_support_increment"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lcom/android/server/am/DynamicHiddenApp;->PRE_SUPPORT_INCREMENT:Z

    goto/16 :goto_0

    :cond_1b
    const-string/jumbo v10, "ro.config.dha_adj_cached_factor"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lcom/android/server/am/DynamicHiddenApp;->DHA_ADJ_CACHED_FACTOR:Z

    goto/16 :goto_0

    :cond_1c
    const-string/jumbo v10, "ro.config.fall_prevent_enable"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    goto/16 :goto_0

    :cond_1d
    const-string/jumbo v10, "ro.config.dha_package_enable"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lcom/android/server/am/DynamicHiddenApp;->DHA_PACKAGE_ENABLE:Z

    goto/16 :goto_0

    :cond_1e
    const-string/jumbo v10, "ro.config.hotness_LRU_Min"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_LRU_PROTECT_MIN:I

    goto/16 :goto_0

    :cond_1f
    const-string/jumbo v10, "ro.config.ro.config.hotness_LFU_CaRate"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    sput v10, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_LFU_MINCachedRate:F

    goto/16 :goto_0

    :cond_20
    const-string/jumbo v10, "ro.config.hotness_LFU_EmRate"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    sput v10, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_LFU_MINEmptyRate:F

    goto/16 :goto_0

    :cond_21
    const-string v10, "ActivityManager"

    const-string/jumbo v11, "not matched parameter"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_22
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    if-eqz v7, :cond_23

    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/server/am/DynamicHiddenApp;->makeLists(Z)V

    :cond_23
    if-eqz v6, :cond_24

    iget-object v10, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessList;->updateLMKThreshold()V

    iget-object v10, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    const-string/jumbo v11, "ro.config.dha_th_level"

    const/16 v12, 0xf

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    :cond_24
    const-string v10, "ActivityManager"

    const-string v11, "complete parameter"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_25
    const-string v10, "ActivityManager"

    const-string/jumbo v11, "file does not exist"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method

.method public updateHiddenAppNum(IILcom/android/server/am/ProcessRecord;Z)I
    .locals 24
    .param p1, "curCached"    # I
    .param p2, "curEmpty"    # I
    .param p3, "lastCachedApp"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "preventAggressiveKill"    # Z

    .prologue
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    .local v10, "ret":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/util/MemInfoReader;->readLightMemInfo()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v16

    .local v16, "szFreeMem":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeLegacy()J

    move-result-wide v14

    .local v14, "szCachedMem":J
    add-long v12, v16, v14

    .local v12, "szAvailableMem":J
    sget-boolean v18, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    move/from16 v18, v0

    sget v19, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    sget v18, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    move/from16 v18, v0

    sget v19, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    sget v18, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    :cond_2
    sget-boolean v18, Lcom/android/server/am/DynamicHiddenApp;->mSzILSFlag:Z

    if-eqz v18, :cond_3

    sget-boolean v18, Lcom/android/server/am/DynamicHiddenApp;->mILS_2nd_Enable:Z

    if-eqz v18, :cond_3

    sget v18, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    :cond_3
    sget-boolean v18, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v18, :cond_4

    const/4 v9, 0x0

    .local v9, "maxBG":I
    sget-boolean v18, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    :goto_0
    const-string v18, "ActivityManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "AvailableMem = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-wide/16 v20, 0x400

    div-long v20, v12, v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "kB (Free: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-wide/16 v20, 0x400

    div-long v20, v16, v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "kB, Cached: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-wide/16 v20, 0x400

    div-long v20, v14, v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "kB) "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "Threshold = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x400

    div-long v20, v20, v22

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "kB [MaxHidden: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", Current Hidden"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", Current Empty"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "], Frag.Mem = 0KB"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", KPU Total = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x400

    div-long v20, v20, v22

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "kB"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", ILS Flag: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-boolean v20, Lcom/android/server/am/DynamicHiddenApp;->mSzILSFlag:Z

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v9    # "maxBG":I
    :cond_4
    const-wide/16 v18, 0x0

    cmp-long v18, v16, v18

    if-gtz v18, :cond_6

    move v11, v10

    .end local v10    # "ret":I
    .end local v12    # "szAvailableMem":J
    .end local v14    # "szCachedMem":J
    .end local v16    # "szFreeMem":J
    .local v11, "ret":I
    :goto_1
    return v11

    .end local v11    # "ret":I
    .restart local v9    # "maxBG":I
    .restart local v10    # "ret":I
    .restart local v12    # "szAvailableMem":J
    .restart local v14    # "szCachedMem":J
    .restart local v16    # "szFreeMem":J
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    move/from16 v19, v0

    add-int v9, v18, v19

    goto/16 :goto_0

    .end local v9    # "maxBG":I
    :cond_6
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    .local v8, "mFinalDHAThresholdRate":F
    sget-boolean v18, Lcom/android/server/am/DynamicHiddenApp;->mSzILSFlag:Z

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    move/from16 v18, v0

    sget v19, Lcom/android/server/am/DynamicHiddenApp;->mSzILSRate:F

    mul-float v8, v18, v19

    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    mul-float v7, v18, v8

    .local v7, "mFinalDHAThreshold":F
    const/4 v6, 0x0

    .local v6, "curProcess":I
    sget-boolean v18, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v18, :cond_9

    add-int v6, p1, p2

    :goto_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    move-wide/from16 v18, v0

    add-long v18, v18, v12

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v18, v7

    if-gez v18, :cond_b

    sget-boolean v18, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/DynamicHiddenApp;->decrementAppCount(IILcom/android/server/am/ProcessRecord;Z)I

    move-result v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->retCacheLimit:I

    :goto_3
    sget-boolean v18, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v18, :cond_8

    const-string v18, "ActivityManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Decrease Hidden App Number from "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "curProcess":I
    .end local v7    # "mFinalDHAThreshold":F
    .end local v8    # "mFinalDHAThresholdRate":F
    .end local v12    # "szAvailableMem":J
    .end local v14    # "szCachedMem":J
    .end local v16    # "szFreeMem":J
    :cond_8
    :goto_4
    move v11, v10

    .end local v10    # "ret":I
    .restart local v11    # "ret":I
    goto/16 :goto_1

    .end local v11    # "ret":I
    .restart local v6    # "curProcess":I
    .restart local v7    # "mFinalDHAThreshold":F
    .restart local v8    # "mFinalDHAThresholdRate":F
    .restart local v10    # "ret":I
    .restart local v12    # "szAvailableMem":J
    .restart local v14    # "szCachedMem":J
    .restart local v16    # "szFreeMem":J
    :cond_9
    move/from16 v6, p2

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/DynamicHiddenApp;->decrementEmptyAppCount(IILcom/android/server/am/ProcessRecord;Z)I

    move-result v10

    goto :goto_3

    :cond_b
    long-to-float v0, v12

    move/from16 v18, v0

    sget-wide v20, Lcom/android/server/am/DynamicHiddenApp;->DHA_INCREASE_THRESHOLD:J

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v19, v0

    add-float v19, v19, v7

    cmpl-float v18, v18, v19

    if-lez v18, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_c

    sget-boolean v18, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-nez v18, :cond_e

    sget-boolean v18, Lcom/android/server/am/DynamicHiddenApp;->PRE_MAX_KILL_ENABLE:Z

    if-eqz v18, :cond_e

    sget-boolean v18, Lcom/android/server/am/DynamicHiddenApp;->PRE_SUPPORT_INCREMENT:Z

    if-eqz v18, :cond_e

    sget v18, Lcom/android/server/am/DynamicHiddenApp;->curTopState:I

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    add-int/lit8 v18, v6, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_e

    :cond_c
    sget-boolean v18, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v18, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/DynamicHiddenApp;->incrementAppCount()I

    move-result v10

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->retCacheLimit:I

    :goto_5
    sget-boolean v18, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v18, :cond_8

    const-string v18, "ActivityManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Increase Hidden App Number from "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/DynamicHiddenApp;->incrementEmptyAppCount()I

    move-result v10

    goto :goto_5

    :cond_e
    sget-boolean v18, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    move/from16 v18, v0

    sget v19, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_f

    sget v18, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    :cond_f
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->retCacheLimit:I

    goto/16 :goto_4
.end method

.method final updateHotnessAdj(Lcom/android/server/am/ProcessRecord;I)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "nHotnessType"    # I

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/DynamicHiddenApp;->updateHotnessAdj(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method final updateHotnessAdj(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;)V
    .locals 12
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "nHotnessType"    # I
    .param p3, "caller"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v11, 0x1

    if-eqz p1, :cond_0

    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v8, Lcom/android/server/am/DynamicHiddenApp;->curTopApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_2

    sget-object v8, Lcom/android/server/am/DynamicHiddenApp;->curTopApp:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    sget-object v9, Lcom/android/server/am/DynamicHiddenApp;->curTopApp:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-boolean v8, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "ActivityManager_Hotness"

    const-string v9, "TOP app is same!"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v8, Lcom/android/server/am/DynamicHiddenApp;->strPrevAppForActivityHotness:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    sput-object v8, Lcom/android/server/am/DynamicHiddenApp;->strPrevAppForActivityHotness:Ljava/lang/String;

    const-string/jumbo v8, "unknown"

    sput-object v8, Lcom/android/server/am/DynamicHiddenApp;->strPrevAppForEmptyHotness:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v10, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v10, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    .local v4, "hotness":Lcom/android/server/am/DynamicHiddenApp$HotnessValue;
    iget-boolean v8, v4, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->skipPackage:Z

    if-eqz v8, :cond_4

    sget-boolean v8, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v8, :cond_3

    const-string v8, "ActivityManager_Hotness"

    const-string/jumbo v10, "we don\'t need to update hotness"

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit v9

    goto :goto_0

    .end local v4    # "hotness":Lcom/android/server/am/DynamicHiddenApp$HotnessValue;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .restart local v4    # "hotness":Lcom/android/server/am/DynamicHiddenApp$HotnessValue;
    :cond_4
    if-ne p2, v11, :cond_b

    :try_start_1
    iget v8, p1, Lcom/android/server/am/ProcessRecord;->callerHotnessAdj:I

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v10

    if-le v8, v10, :cond_5

    iget v8, p1, Lcom/android/server/am/ProcessRecord;->callerHotnessAdj:I

    invoke-virtual {v4, v8, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setHotness(II)V

    :cond_5
    :goto_1
    iget v8, p0, Lcom/android/server/am/DynamicHiddenApp;->hotnessCached:I

    if-lez v8, :cond_7

    invoke-virtual {v4, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v10

    iget-object v8, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    iget v8, v8, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    if-le v10, v8, :cond_7

    iget-object v8, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .local v5, "i":I
    :goto_2
    if-ltz v5, :cond_6

    invoke-virtual {v4, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v10

    iget-object v8, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    iget v8, v8, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    if-ge v10, v8, :cond_c

    :cond_6
    iget-object v8, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v8, v10, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v8, 0x1

    invoke-virtual {v4, v8, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setIsHotness(ZI)V

    iget-object v10, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    .local v7, "tmp":Lcom/android/server/am/DynamicHiddenApp$HotnessValue;
    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v10}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setIsHotness(ZI)V

    const/4 v8, 0x0

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v10}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setIsHotness(ZI)V

    iget-object v10, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-boolean v8, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v8, :cond_7

    const-string v8, "ActivityManager_Hotness"

    const-string/jumbo v10, "hotness LFU changed"

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "i":I
    .end local v7    # "tmp":Lcom/android/server/am/DynamicHiddenApp$HotnessValue;
    :cond_7
    iget-object v8, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v10, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v8, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v8, :cond_8

    const-string v8, "ActivityManager_Hotness"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "hotness updated ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    sget-boolean v8, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_ENABLE:Z

    if-eqz v8, :cond_e

    invoke-virtual {v4, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v8

    iget v10, p0, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_MAX_VALUE:I

    if-le v8, v10, :cond_e

    sget-boolean v8, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v8, :cond_9

    const-string v8, "ActivityManager_Hotness"

    const-string/jumbo v10, "hotness value reached MAX, the hotness value of all app will be tuned half"

    invoke-static {v8, v10}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v8, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "it":Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .local v3, "entryHotness":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    move-object v0, v8

    check-cast v0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    move-object v2, v0

    .local v2, "TempHotness":Lcom/android/server/am/DynamicHiddenApp$HotnessValue;
    invoke-virtual {v2, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setHalf(I)V

    iget-object v8, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v8, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v8, :cond_a

    const-string v8, "ActivityManager_Hotness"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HotnessMAX! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v2    # "TempHotness":Lcom/android/server/am/DynamicHiddenApp$HotnessValue;
    .end local v3    # "entryHotness":Ljava/util/Map$Entry;
    .end local v6    # "it":Ljava/util/Iterator;
    :cond_b
    invoke-virtual {v4, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->increaseHotness(I)V

    goto/16 :goto_1

    .restart local v5    # "i":I
    :cond_c
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_2

    .end local v4    # "hotness":Lcom/android/server/am/DynamicHiddenApp$HotnessValue;
    .end local v5    # "i":I
    :cond_d
    new-instance v4, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    invoke-direct {v4, p0, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;-><init>(Lcom/android/server/am/DynamicHiddenApp;I)V

    .restart local v4    # "hotness":Lcom/android/server/am/DynamicHiddenApp$HotnessValue;
    iget-object v8, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v10, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v8, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v8, :cond_8

    const-string v8, "ActivityManager_Hotness"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "hotness newly updated ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_e
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean v8, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v8, :cond_f

    const-string v8, "ActivityManager_Hotness"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateHotnessAdj ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", pid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", hotness="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v8, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->resumedAppForMARsLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .local v1, "TOP_ACT":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_10

    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    :goto_5
    sput-object v8, Lcom/android/server/am/DynamicHiddenApp;->curTopApp:Lcom/android/server/am/ProcessRecord;

    goto/16 :goto_0

    :cond_10
    const/4 v8, 0x0

    goto :goto_5
.end method

.method final updateLastKillTime(Lcom/android/server/am/ProcessRecord;J)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "now"    # J

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mLastKillTimeMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mLastKillTimeMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager_Hotness"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLastKillTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

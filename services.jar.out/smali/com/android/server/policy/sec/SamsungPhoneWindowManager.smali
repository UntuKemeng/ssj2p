.class public Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/sec/SamsungPhoneWindowManager$WakeupPreventionObserver;,
        Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;,
        Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;,
        Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenShotForEffect;,
        Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;,
        Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenshotRunnable;,
        Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SettingsObserver;
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_DARKSCREEN_POWERKEY_DOUBLECLICK:Ljava/lang/String; = "ADPD"

.field private static final ACTION_DEVICE_WAKEUP:Ljava/lang/String; = "Device_wakeup"

.field private static final ACTION_REFRESH_HWKEY:Ljava/lang/String; = "edm.intent.action.internal.kioskmode.REFRESH_HWKEY_CACHE"

.field private static BOOSTING_TIMEOUT:I = 0x0

.field static final DEBUG:Z = false

.field public static final EOH_STOP_BY_SCREEN_OFF:I = 0x0

.field public static final EXTRA_ACCESSIBILITY_DARKSCREEN_POWERKEY_DOUBLECLICK:Ljava/lang/String; = "PowerKey DoubleClick"

.field public static final EXTRA_VOICE_CALL_HOMEKEY_CLICK:Ljava/lang/String; = "HomeKey Click"

.field public static final EXTRA_VOICE_CALL_RECENTKEY_CLICK:Ljava/lang/String; = "RecentKey Click"

.field private static final FINGERPRINT_KEY_IGNORE_DURATION:I = 0x3e8

.field private static final INTENT_ACTION_HOME_DOUBLE_CLICK:Ljava/lang/String; = "com.samsung.android.action.HOME_DOUBLE_CLICK"

.field private static final INTENT_PERMISSION_HOME_DOUBLE_CLICK:Ljava/lang/String; = "com.samsung.android.permisson.HOME_DOUBLE_CLICK"

.field private static final MENU_LONG_POLICY_LAUNCH_SFINDER:Ljava/lang/String; = "SFINDER"

.field static final QUICKACCESS_BLACKUI_COMPONENT:Ljava/lang/String; = "com.sec.android.app.GlanceView"

.field static final QUICKACCESS_BLACKUI_LAUNCH_ACTION:Ljava/lang/String; = "com.android.settings.LaunchGlanceView"

.field static final QUICKACCESS_BLACKUI_RECEIVER:Ljava/lang/String; = "com.sec.android.app.GlanceView.GlanceReceiver"

.field static final SAFE_DEBUG:Z

.field static final SAMSUNGPAY_LAUNCH_ACTION:Ljava/lang/String; = "com.samsung.android.spay.quickpay"

.field static final SCREENCAPTURE_AIR_COMMAND:I = 0x3

.field static final SCREENCAPTURE_BOTH:I = 0x3

.field static final SCREENCAPTURE_KEY:I = 0x1

.field static final SCREENCAPTURE_MAIN:I = 0x1

.field static final SCREENCAPTURE_ORIGINAL:I = 0x1

.field static final SCREENCAPTURE_PALM:I = 0x2

.field static final SCREENCAPTURE_QUICK_PANEL:I = 0x4

.field static final SCREENCAPTURE_SUB:I = 0x2

.field static final SCREENCAPTURE_SWEEP_LEFT:I = 0x2

.field static final SCREENCAPTURE_SWEEP_RIGHT:I = 0x3

.field public static final START_AOD_BOOT:I = 0x1

.field public static final START_AOD_SCREEN_OFF:I = 0x3

.field public static final START_AOD_SCREEN_ON:I = 0x2

.field static final TAG:Ljava/lang/String; = "SamsungWindowManager"

.field public static final TORCH_FILE:Ljava/lang/String; = "/sys/class/camera/flash/rear_flash"

.field public static final VOICE_CALL_HOMEKEY_ANSWER:Ljava/lang/String; = "VCHA"

.field public static final VOICE_CALL_HOMEKEY_CLICK:Ljava/lang/String; = "VCHK"

.field public static final VOICE_CALL_POWERKEY_ENDCALL:Ljava/lang/String; = "VCPE"

.field public static final VOICE_CALL_POWERKEY_SIELNCE:Ljava/lang/String; = "VCPS"

.field public static final VOICE_CALL_RECENTKEY_CLICK:Ljava/lang/String; = "VCRK"

.field public static final VOICE_CALL_VOLUMEKEY_SILENCE:Ljava/lang/String; = "VCVS"

.field static final localLOGV:Z

.field private static final mAODVersion:I

.field private static mCameraId:Ljava/lang/String;

.field private static mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private static mCpuBooster:Landroid/os/DVFSHelper;

.field private static mCurrentUser:I

.field static mFocusedWindowPkgName:Ljava/lang/String;

.field private static mIsJapanModel:Z

.field private static mIsTablet:Z

.field private static mModelName:Ljava/lang/String;


# instance fields
.field private final EnableLinuxCOMMONAPI4:Ljava/lang/String;

.field final MAX_SCREENSHOT_CONNECTION:I

.field final QUICKACCESS_AOD_DOUBLETAB:I

.field final QUICKACCESS_AOD_LONGPROESS:I

.field final QUICKACCESS_AOD_PRESS:I

.field final QUICKACCESS_CAMERA:I

.field final QUICKACCESS_CHANGE_AOD_MODE:I

.field final QUICKACCESS_SAMSUNGPAY:I

.field final QUICKACCESS_STATUS:I

.field final QUICKACCESS_SUBSCREEN_WAKEUP:I

.field private final UVS_ORIENTATION_PROVIDER:Ljava/lang/String;

.field private final UVS_ORIENTATION_REQUEST:Ljava/lang/String;

.field WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

.field private bIsTorchOn:Z

.field mAlwaysComponet:Landroid/content/ComponentName;

.field mAlwaysIntent:Landroid/content/Intent;

.field public mAodStartState:I

.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mAudioManager:Landroid/media/AudioManager;

.field mAvailableDoublTapOnHomeCommand:Z

.field mAvailableVoiceCommand:Z

.field private mBackKeyConsumed:Z

.field mBlockKeyForDrivingMode:Z

.field private mBlockedHwKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

.field mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field mBootCompleted:Z

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field mCaptureReceiver:Landroid/content/BroadcastReceiver;

.field mCapturedDisplay:I

.field mCapturedOrigin:I

.field private final mCleanWatchLaunchingFlagRunnable:Ljava/lang/Runnable;

.field mClearCoverComponent:Landroid/content/ComponentName;

.field mCombinationKeyManager:Lcom/android/server/policy/sec/CombinationKeyManager;

.field mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

.field mContext:Landroid/content/Context;

.field private mContextLoggingThread:Ljava/lang/Thread;

.field private mCoreNumLockHelper:Landroid/os/DVFSHelper;

.field mCoverNoteEnabled:Z

.field private mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

.field private mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

.field private mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

.field private mDVFSHelperTail:Landroid/os/DVFSHelper;

.field final mDcmAppPkg:Ljava/lang/String;

.field mDoubleTapHomeUser:I

.field mDoubleTapOnHomeBehavior:I

.field mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field mEM:Lcom/sec/android/emergencymode/EmergencyManager;

.field mFingerPrintIntent:Landroid/content/Intent;

.field mFingerPrintPending:Z

.field private final mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

.field mFlashAnnotateComponent:Landroid/content/ComponentName;

.field mFlashAnnotateServiceComponent:Landroid/content/ComponentName;

.field mFlipFolderOpenedIntent:Landroid/content/Intent;

.field private mFolderCloseSound:Ljava/lang/String;

.field private mFolderOpenSound:Ljava/lang/String;

.field private mFolderSoundEnable:Z

.field mHandler:Landroid/os/Handler;

.field mHasDaynotePackage:Z

.field private mHasFakeMenuKeyBack:Z

.field private mHasFakeMenuKeyRecent:Z

.field mHasFlashAnnotateComponent:Z

.field private mHasPermanentMenuKey:Z

.field mIsCheckDrivingMode:Z

.field mIsDockHomeEnabled:Z

.field mIsEasyModeEnabled:Z

.field mIsEnabledAccessControl:Z

.field mIsKidsModeEnabled:Z

.field private final mIsLiveDemo:Z

.field private mIsRingingOrOffhook:Z

.field mIsSafetyAssuranceEnabled:Z

.field mIsScreenOnBeforeHomePressed:Z

.field private mIsSupportManualScreenPinning:Z

.field mIsUseAccessControl:Z

.field private mIsWakeupPrevention:Z

.field private mKeyEventInjectionThread:Ljava/lang/Thread;

.field mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field private mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

.field final mLock:Ljava/lang/Object;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mLowPowerMode:Z

.field private mMenuConsumed:Z

.field private mMultiPhoneWindowManager:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

.field mNetworkSelectionLongPress:Z

.field mOrientationListenerForPenGesture:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

.field mPWM:Lcom/android/server/policy/PhoneWindowManager;

.field mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field mPenInsertedIntent:Landroid/content/Intent;

.field mPenInsertedIntentUserSwitch:Landroid/content/Intent;

.field mPenNotifyVibrationChecked:Z

.field mPenState:I

.field mPerformEditAfterScreenCapture:Z

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mPowerDoubleBehavior:Z

.field mPowerManager:Landroid/os/PowerManager;

.field mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mPowerSave:Z

.field mPowerSaveChangeReceiver:Landroid/content/BroadcastReceiver;

.field mPremiumWatchReceiver:Landroid/content/BroadcastReceiver;

.field private mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

.field private mProKioskReEnableVolumeUpKey:Z

.field private mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

.field private mRecentConsumed:Z

.field private final mRecentKeyLongPressForScreenManager:Ljava/lang/Runnable;

.field mRingtone:Landroid/media/Ringtone;

.field private mRotationBooster:Landroid/os/DVFSHelper;

.field private final mRotationForQuickAccess:Ljava/lang/Runnable;

.field private mSFinderLaunchPolicy:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

.field final mScreenshotLock:Ljava/lang/Object;

.field private mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

.field final mServiceAquireLock:Ljava/lang/Object;

.field mServiceConnectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ServiceConnection;",
            "Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenshotRunnable;",
            ">;"
        }
    .end annotation
.end field

.field mSettingsObserver:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SettingsObserver;

.field mSideSyncSourcePresentationActived:Z

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mSweepDirection:I

.field mSweepReceiver:Landroid/content/BroadcastReceiver;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

.field mTorchlightEnabled:Z

.field mTorchlightOn:Z

.field mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

.field mTripleTapOnHomeBehavior:I

.field private final mTurnOffTorchlight:Ljava/lang/Runnable;

.field private mUserKeyConsumed:Z

.field mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

.field private mUvsOrientation:I

.field mUvsReceiver:Landroid/content/BroadcastReceiver;

.field mVibrator:Landroid/os/Vibrator;

.field mVoiceCommandIntent:Landroid/content/Intent;

.field mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mVolumeDownLongPress:Ljava/lang/Runnable;

.field private final mVolumeUpLongPress:Ljava/lang/Runnable;

.field private mWakeupPreventionObserver:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$WakeupPreventionObserver;

.field private mWakeupPreventionPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 211
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    .line 316
    sput-boolean v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsTablet:Z

    .line 318
    const-string/jumbo v0, "ro.build.characteristics"

    const-string/jumbo v2, "phone"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "tablet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsTablet:Z

    .line 320
    const-string/jumbo v0, "ro.product.name"

    const-string v2, "Unknown"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mModelName:Ljava/lang/String;

    .line 321
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isJapanModel()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsJapanModel:Z

    .line 373
    const-string v0, "UNKNOWN"

    sput-object v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFocusedWindowPkgName:Ljava/lang/String;

    .line 407
    const-string v0, "0"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAODVersion:I

    .line 441
    sput-object v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 2650
    sput v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCurrentUser:I

    .line 3197
    sput-object v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 3199
    const/16 v0, 0x3e8

    sput v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->BOOSTING_TIMEOUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 233
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 234
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    .line 239
    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    .line 251
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBootCompleted:Z

    .line 252
    iput v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenState:I

    .line 255
    iput v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 256
    iput v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapHomeUser:I

    .line 257
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAvailableDoublTapOnHomeCommand:Z

    .line 258
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    .line 262
    iput v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    .line 266
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerDoubleBehavior:Z

    .line 274
    iput v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSweepDirection:I

    .line 280
    iput v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCapturedDisplay:I

    .line 287
    iput v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCapturedOrigin:I

    .line 289
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    .line 290
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    .line 294
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    .line 298
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    .line 299
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    .line 303
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    .line 307
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    .line 311
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasDaynotePackage:Z

    .line 315
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    .line 325
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsCheckDrivingMode:Z

    .line 326
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockKeyForDrivingMode:Z

    .line 330
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    .line 334
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    .line 338
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoverNoteEnabled:Z

    .line 342
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mNetworkSelectionLongPress:Z

    .line 347
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightOn:Z

    .line 348
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightEnabled:Z

    .line 352
    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    .line 357
    iput-boolean v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    .line 361
    iput v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    .line 362
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_EnableLinuxCommonApi4"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->EnableLinuxCOMMONAPI4:Ljava/lang/String;

    .line 363
    const-string v0, "com.lguplus.uvs.REQUEST_ORIENTATION"

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->UVS_ORIENTATION_REQUEST:Ljava/lang/String;

    .line 364
    const-string v0, "LGT"

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->UVS_ORIENTATION_PROVIDER:Ljava/lang/String;

    .line 382
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z

    .line 390
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFolderSoundEnable:Z

    .line 391
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFolderOpenSound:Ljava/lang/String;

    .line 392
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFolderCloseSound:Ljava/lang/String;

    .line 397
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFakeMenuKeyRecent:Z

    .line 398
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFakeMenuKeyBack:Z

    .line 400
    iput v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->QUICKACCESS_STATUS:I

    .line 401
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->QUICKACCESS_CAMERA:I

    .line 402
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->QUICKACCESS_SAMSUNGPAY:I

    .line 404
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->QUICKACCESS_SUBSCREEN_WAKEUP:I

    .line 409
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->QUICKACCESS_CHANGE_AOD_MODE:I

    .line 410
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->QUICKACCESS_AOD_PRESS:I

    .line 411
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->QUICKACCESS_AOD_LONGPROESS:I

    .line 412
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->QUICKACCESS_AOD_DOUBLETAB:I

    .line 434
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsWakeupPrevention:Z

    .line 435
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mWakeupPreventionPackages:Ljava/util/HashSet;

    .line 438
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mLowPowerMode:Z

    .line 443
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->bIsTorchOn:Z

    .line 448
    const-string v0, "com.nttdocomo.android.mascot"

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDcmAppPkg:Ljava/lang/String;

    .line 459
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSweepReceiver:Landroid/content/BroadcastReceiver;

    .line 514
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$2;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    .line 532
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$3;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 548
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$4;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 558
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$5;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 575
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$6;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerSaveChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 600
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$7;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

    .line 1816
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsScreenOnBeforeHomePressed:Z

    .line 2343
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mMenuConsumed:Z

    .line 2383
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRecentConsumed:Z

    .line 2444
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    .line 2455
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUserKeyConsumed:Z

    .line 2465
    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    .line 2483
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    .line 2484
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    .line 2485
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->MAX_SCREENSHOT_CONNECTION:I

    .line 2645
    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2648
    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    .line 2654
    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    .line 2655
    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    .line 2656
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskReEnableVolumeUpKey:Z

    .line 3173
    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRotationBooster:Landroid/os/DVFSHelper;

    .line 3198
    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    .line 3242
    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    .line 3243
    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    .line 3244
    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    .line 3245
    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    .line 3377
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$14;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$14;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    .line 3408
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$15;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$15;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    .line 3416
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$16;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$16;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    .line 3424
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$17;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$17;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    .line 3431
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$18;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$18;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRotationForQuickAccess:Ljava/lang/Runnable;

    .line 3912
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$20;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$20;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUvsReceiver:Landroid/content/BroadcastReceiver;

    .line 3985
    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSFinderLaunchPolicy:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    .line 4364
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableLiveDemo"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsLiveDemo:Z

    .line 4413
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$21;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$21;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPremiumWatchReceiver:Landroid/content/BroadcastReceiver;

    .line 4441
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$22;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$22;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCleanWatchLaunchingFlagRunnable:Ljava/lang/Runnable;

    .line 4613
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$23;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$23;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 4653
    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    .line 4717
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$25;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$25;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRecentKeyLongPressForScreenManager:Ljava/lang/Runnable;

    .line 4791
    iput v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAodStartState:I

    .line 4835
    return-void
.end method

.method private TorchModeFlashSet(I)V
    .locals 8
    .param p1, "torchTime"    # I

    .prologue
    const/4 v7, 0x0

    .line 3438
    sget-boolean v4, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Torch Time Out ==> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3439
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 3440
    .local v1, "input":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3442
    .local v2, "out":Ljava/io/FileWriter;
    if-lez p1, :cond_3

    .line 3443
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightOn:Z

    .line 3444
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3445
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    int-to-long v6, p1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3446
    const-string v1, "1"

    .line 3456
    :goto_0
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/sys/class/camera/flash/rear_flash"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3457
    .end local v2    # "out":Ljava/io/FileWriter;
    .local v3, "out":Ljava/io/FileWriter;
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v1, v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3462
    if-eqz v3, :cond_1

    .line 3464
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    move-object v2, v3

    .line 3469
    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    :cond_2
    :goto_2
    return-void

    .line 3448
    :cond_3
    iput-boolean v7, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightOn:Z

    .line 3449
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3450
    const-string v1, "0"

    goto :goto_0

    .line 3458
    :catch_0
    move-exception v0

    .line 3459
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    const-string v4, "SamsungWindowManager"

    const-string v5, "exception occurred. /sys/class/camera/flash/rear_flash"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3462
    if-eqz v2, :cond_2

    .line 3464
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 3465
    :catch_1
    move-exception v4

    goto :goto_2

    .line 3462
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v2, :cond_4

    .line 3464
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 3466
    :cond_4
    :goto_5
    throw v4

    .line 3465
    .end local v2    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catch_2
    move-exception v4

    goto :goto_1

    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    :catch_3
    move-exception v5

    goto :goto_5

    .line 3462
    .end local v2    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    goto :goto_4

    .line 3458
    .end local v2    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->updatePowerSave()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->setPowerSave(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->EnableLinuxCOMMONAPI4:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    .prologue
    .line 208
    iget v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->setUvsOrieatation(I)V

    return-void
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->bIsTorchOn:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->initCameraManager()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->updateWacomOffset(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isUsingSound()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->handleTorchKey()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->TorchModeFlashSet(I)V

    return-void
.end method

.method private getCameraId()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 4600
    sget-object v8, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v8}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v5

    .line 4601
    .local v5, "ids":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v4, v0, v3

    .line 4602
    .local v4, "id":Ljava/lang/String;
    sget-object v8, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v8, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 4603
    .local v1, "c":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 4604
    .local v2, "flashAvailable":Ljava/lang/Boolean;
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 4605
    .local v7, "lensFacing":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 4610
    .end local v1    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v2    # "flashAvailable":Ljava/lang/Boolean;
    .end local v4    # "id":Ljava/lang/String;
    .end local v7    # "lensFacing":Ljava/lang/Integer;
    :goto_1
    return-object v4

    .line 4601
    .restart local v1    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v2    # "flashAvailable":Ljava/lang/Boolean;
    .restart local v4    # "id":Ljava/lang/String;
    .restart local v7    # "lensFacing":Ljava/lang/Integer;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4610
    .end local v1    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v2    # "flashAvailable":Ljava/lang/Boolean;
    .end local v4    # "id":Ljava/lang/String;
    .end local v7    # "lensFacing":Ljava/lang/Integer;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 3543
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 3544
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 3547
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method public static getVoIPInterfaceService()Landroid/os/IVoIPInterface;
    .locals 3

    .prologue
    .line 4129
    const-string/jumbo v1, "voip"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    .line 4131
    .local v0, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-nez v0, :cond_0

    .line 4132
    const-string v1, "SamsungWindowManager"

    const-string v2, "Unable to find IVoIPInterface interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4134
    :cond_0
    return-object v0
.end method

.method private handleTorchKey()V
    .locals 4

    .prologue
    .line 4560
    sget-object v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 4561
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->initCameraManager()V

    .line 4565
    :cond_1
    :try_start_0
    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Torch light bIsTorchOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->bIsTorchOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCameraId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4566
    sget-object v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 4567
    sget-object v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    sget-object v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->bIsTorchOn:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v3, v1}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4573
    :cond_2
    :goto_1
    return-void

    .line 4567
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 4569
    :catch_0
    move-exception v0

    .line 4570
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t initialize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleUserKey(Z)Z
    .locals 14
    .param p1, "longPress"    # Z

    .prologue
    const/4 v13, 0x2

    const/4 v8, 0x1

    const/4 v12, 0x0

    .line 4469
    const/4 v7, 0x0

    .line 4470
    .local v7, "ret":Z
    const/4 v5, 0x0

    .line 4471
    .local v5, "package_index":I
    const/4 v4, 0x0

    .line 4472
    .local v4, "launch_app":Ljava/lang/String;
    const/4 v6, 0x0

    .line 4473
    .local v6, "package_name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 4475
    .local v1, "activity_name":Ljava/lang/String;
    if-eqz p1, :cond_7

    .line 4476
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSupportBCM()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 4477
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mEM:Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-virtual {v9}, Lcom/sec/android/emergencymode/EmergencyManager;->getModeType()I

    move-result v3

    .line 4478
    .local v3, "emMode":I
    sget-boolean v9, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "SamsungWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "now mode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4480
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v9, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4482
    .local v0, "BCM_intent":Landroid/content/Intent;
    const-string/jumbo v9, "flag"

    const/16 v10, 0x800

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4483
    const/high16 v9, 0x10000000

    invoke-virtual {v0, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4485
    const/4 v9, -0x1

    if-ne v3, v9, :cond_2

    .line 4486
    const-string v9, "enabled"

    invoke-virtual {v0, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4490
    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v9, v0, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4536
    .end local v0    # "BCM_intent":Landroid/content/Intent;
    .end local v3    # "emMode":I
    :goto_1
    return v8

    .line 4487
    .restart local v0    # "BCM_intent":Landroid/content/Intent;
    .restart local v3    # "emMode":I
    :cond_2
    if-ne v3, v13, :cond_1

    .line 4488
    const-string v9, "enabled"

    invoke-virtual {v0, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 4493
    .end local v0    # "BCM_intent":Landroid/content/Intent;
    .end local v3    # "emMode":I
    :cond_3
    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "long_press_app"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4504
    :goto_2
    if-eqz v4, :cond_4

    .line 4505
    const/16 v8, 0x2f

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 4506
    const/4 v8, 0x0

    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 4507
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4515
    :cond_4
    :goto_3
    sget-boolean v8, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v8, :cond_5

    const-string v8, "SamsungWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found pkg="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", cls="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " longPress = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4517
    :cond_5
    const-string/jumbo v8, "torch"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string/jumbo v8, "torch"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 4518
    const-string/jumbo v8, "service.camera.running"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 4519
    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v8}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 4520
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->checkLaunchSetting()I

    move-result v8

    if-eqz v8, :cond_6

    .line 4521
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->handleTorchKey()V

    .line 4522
    const/4 v7, 0x1

    :cond_6
    :goto_4
    move v8, v7

    .line 4536
    goto/16 :goto_1

    .line 4496
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSupportBCM()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mEM:Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-virtual {v8}, Lcom/sec/android/emergencymode/EmergencyManager;->getModeType()I

    move-result v8

    if-ne v8, v13, :cond_8

    .line 4497
    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "short_press_app_battery_conserve"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 4499
    :cond_8
    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "short_press_app"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 4509
    :catch_0
    move-exception v2

    .line 4510
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v8, "SamsungWindowManager"

    const-string v9, "Invalid user key app defined"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4511
    const/4 v6, 0x0

    .line 4512
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 4525
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_9
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->handleTorchKey()V

    .line 4526
    const/4 v7, 0x1

    goto :goto_4

    .line 4529
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSupportBCM()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSupportActiveDouble()Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v8}, Lcom/android/server/policy/PhoneWindowManager;->getActiveKeyTriggered()Z

    move-result v8

    if-nez v8, :cond_6

    .line 4533
    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v8}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyguardLw()V

    goto :goto_4
.end method

.method private initCameraManager()V
    .locals 5

    .prologue
    .line 4577
    sget-object v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-nez v2, :cond_0

    .line 4578
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "camera"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    sput-object v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 4581
    :cond_0
    sget-object v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v2, :cond_2

    .line 4582
    const/4 v0, 0x0

    .line 4584
    .local v0, "cameraId":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getCameraId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4588
    sput-object v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    .line 4591
    :goto_0
    sget-object v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 4592
    sget-object v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    .line 4597
    .end local v0    # "cameraId":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 4585
    .restart local v0    # "cameraId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 4586
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "SamsungWindowManager"

    const-string v3, "Couldn\'t initialize."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4588
    sput-object v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    sput-object v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    throw v2

    .line 4595
    .end local v0    # "cameraId":Ljava/lang/String;
    :cond_2
    const-string v2, "SamsungWindowManager"

    const-string v3, "camera service is not availabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private initHomeBoost()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 3248
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    .line 3249
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "HOME_BOOSTER"

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    .line 3250
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    const-string v1, "ActivityManager_resume"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 3253
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    if-nez v0, :cond_1

    .line 3254
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "HOME_BOOSTER"

    const/16 v3, 0x10

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    .line 3255
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    const-string v1, "ActivityManager_resume"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 3258
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2

    .line 3259
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "HOME_BOOSTER"

    const/16 v3, 0x13

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    .line 3260
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    const-string v1, "ActivityManager_resume"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 3263
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    if-nez v0, :cond_3

    .line 3264
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "HOME_BOOSTER"

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    .line 3265
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    const-string v1, "ActivityManager_resume"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 3267
    :cond_3
    return-void
.end method

.method private injectionKeyEvent(I)V
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 2467
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2468
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 2470
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$13;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$13;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    .line 2479
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2480
    return-void
.end method

.method private isAppInstalled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 4965
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 4967
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4970
    :goto_0
    return v2

    .line 4969
    :catch_0
    move-exception v0

    .line 4970
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isBackKeyConsumed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2446
    iget-boolean v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    if-eqz v1, :cond_0

    .line 2447
    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    .line 2448
    const/4 v0, 0x1

    .line 2450
    :cond_0
    return v0
.end method

.method private isDefaultLauncher(Ljava/lang/String;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3673
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3674
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3676
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3677
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3679
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3680
    .local v3, "preferredActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3681
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1, v3, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 3683
    const-string v7, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isDefaultLauncher :"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3684
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    :goto_1
    return v5

    :cond_0
    move v4, v6

    .line 3683
    goto :goto_0

    :cond_1
    move v5, v6

    .line 3684
    goto :goto_1
.end method

.method public static isEncryptionMode()Z
    .locals 3

    .prologue
    .line 4331
    const/4 v0, 0x0

    .line 4332
    .local v0, "ret":Z
    const-string/jumbo v1, "trigger_restart_min_framework"

    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "encrypted"

    const-string/jumbo v2, "ro.crypto.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4334
    const/4 v0, 0x1

    .line 4336
    :cond_0
    return v0
.end method

.method private isHardwareKeyAllowed(IZ)Z
    .locals 5
    .param p1, "hwKeyId"    # I
    .param p2, "showMsg"    # Z

    .prologue
    .line 3523
    const/4 v0, 0x1

    .line 3526
    .local v0, "allowed":Z
    :try_start_0
    const-string/jumbo v3, "kioskmode"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/kioskmode/IKioskMode;

    move-result-object v2

    .line 3528
    .local v2, "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    if-eqz v2, :cond_0

    .line 3529
    const/4 v3, 0x0

    invoke-interface {v2, v3, p1, p2}, Landroid/app/enterprise/kioskmode/IKioskMode;->isHardwareKeyAllowed(Landroid/app/enterprise/ContextInfo;IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3535
    .end local v2    # "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    :cond_0
    :goto_0
    return v0

    .line 3531
    :catch_0
    move-exception v1

    .line 3532
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "Exception while getting kiosk mode service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isJapanModel()Z
    .locals 2

    .prologue
    .line 1204
    const-string v0, ""

    .line 1206
    .local v0, "salesCode":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1208
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1209
    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1213
    :cond_0
    :goto_0
    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "KDI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "XJP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SBM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1211
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isKioskLocked()Z
    .locals 8

    .prologue
    .line 4341
    iget-object v6, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "persona"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    .line 4342
    .local v3, "mPm":Landroid/os/PersonaManager;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4343
    invoke-virtual {v3}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v5

    .line 4344
    .local v5, "personaids":[I
    if-eqz v5, :cond_2

    .line 4345
    move-object v0, v5

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget v4, v0, v1

    .line 4346
    .local v4, "personaid":I
    invoke-virtual {v3, v4}, Landroid/os/PersonaManager;->isKioskModeEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3, v4}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v6

    sget-object v7, Landroid/content/pm/PersonaState;->LICENSE_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v6, v7}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3, v4}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v6

    sget-object v7, Landroid/content/pm/PersonaState;->ADMIN_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v6, v7}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3, v4}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v6

    sget-object v7, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v6, v7}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4350
    :cond_0
    const-string v6, "SamsungWindowManager"

    const-string v7, "Kiosk exists and it is locked"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4351
    const/4 v6, 0x1

    .line 4356
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "personaid":I
    .end local v5    # "personaids":[I
    :goto_1
    return v6

    .line 4345
    .restart local v0    # "arr$":[I
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v4    # "personaid":I
    .restart local v5    # "personaids":[I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4356
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "personaid":I
    .end local v5    # "personaids":[I
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private isKnoxCreatingOnTop()Z
    .locals 7

    .prologue
    .line 3580
    const/4 v2, 0x0

    .line 3581
    .local v2, "isKnoxCreatingOnTop":Z
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    .line 3582
    .local v3, "mPm":Landroid/os/PersonaManager;
    invoke-virtual {v3}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v1

    .line 3584
    .local v1, "ids":[I
    if-eqz v1, :cond_1

    array-length v4, v1

    if-lez v4, :cond_1

    .line 3585
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 3586
    sget-boolean v4, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_0

    .line 3587
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PersonaState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v1, v0

    invoke-virtual {v3, v6}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PersonaManager$StateManager;->getState()Landroid/content/pm/PersonaState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3589
    :cond_0
    aget v4, v1, v0

    invoke-virtual {v3, v4}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v4

    sget-object v5, Landroid/content/pm/PersonaState;->CREATING:Landroid/content/pm/PersonaState;

    invoke-virtual {v4, v5}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isKnoxSetupWizardTopActivity()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3590
    const/4 v2, 0x1

    .line 3596
    .end local v0    # "i":I
    :cond_1
    sget-boolean v4, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_2

    .line 3597
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isKnoxCreatingOnTop: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3599
    :cond_2
    return v2

    .line 3585
    .restart local v0    # "i":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isKnoxKeyguardShowing()Z
    .locals 3

    .prologue
    .line 3570
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 3571
    .local v0, "mPm":Landroid/os/PersonaManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PersonaManager;->getKeyguardShowState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3572
    const-string v1, "SamsungWindowManager"

    const-string v2, "KnoxKeyguard is showing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3573
    const/4 v1, 0x1

    .line 3575
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isKnoxSetupWizardTopActivity()Z
    .locals 5

    .prologue
    .line 3603
    const/4 v1, 0x0

    .line 3604
    .local v1, "isKnoxSetupWizardTopActivity":Z
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.knox.knoxsetupwizardclient"

    const-string v3, "com.sec.knox.knoxsetupwizardclient.SetupWizardKnoxNameSettingActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3607
    .local v0, "KnoxSetupWizard":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3608
    const/4 v1, 0x1

    .line 3611
    :cond_0
    sget-boolean v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_1

    .line 3612
    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCurrentTopActivity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3613
    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isKnoxSetupWizardTopActivity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3615
    :cond_1
    return v1
.end method

.method private isScreenCaptureEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2660
    const/4 v0, 0x1

    .line 2661
    .local v0, "isScreenCaptureEnabled":Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsStarted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2662
    const-string v3, "SamsungWindowManager"

    const-string v4, "ShutdownThread is started."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2680
    :goto_0
    return v2

    .line 2666
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/enterprise/RestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2667
    const-string v3, "SamsungWindowManager"

    const-string/jumbo v4, "mEDM.getRestrictionPolicy().isScreenCaptureEnabled() return false"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2668
    const/4 v0, 0x0

    .line 2669
    goto :goto_0

    .line 2673
    :cond_1
    const-string/jumbo v3, "persona"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PersonaManagerService;

    .line 2674
    .local v1, "pService":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService;->isKnoxMultiWindowExist()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2675
    const-string v3, "SamsungWindowManager"

    const-string v4, "KnoxMultiwindowExists. isScreenCaptureEnabled() returns false"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2676
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const v5, 0x1040bc3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    move v2, v0

    .line 2680
    goto :goto_0
.end method

.method private isStubPTTApp()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4959
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.kodiak.intent.action.PTT_BUTTON"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4960
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "com.bell.ptt"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4961
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isUserKeyConsumed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2457
    iget-boolean v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUserKeyConsumed:Z

    if-eqz v1, :cond_0

    .line 2458
    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUserKeyConsumed:Z

    .line 2459
    const/4 v0, 0x1

    .line 2461
    :cond_0
    return v0
.end method

.method private isUsingSound()Z
    .locals 3

    .prologue
    .line 4917
    const/4 v1, 0x0

    .line 4918
    .local v1, "ret":Z
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 4925
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isFMActive()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isVoiceCallActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4928
    :cond_0
    const/4 v1, 0x1

    .line 4931
    :cond_1
    return v1
.end method

.method private isWatchRunning()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4427
    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4428
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4429
    .local v1, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v1, :cond_0

    .line 4430
    iget-object v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4431
    .local v2, "taskName":Ljava/lang/String;
    const-string v5, "SamsungWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isWatchRunning "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4432
    const-string v5, "com.sec.android.app.premiumwatch"

    iget-object v6, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4437
    .end local v2    # "taskName":Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private playSound(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 3099
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3101
    .local v0, "soundUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_0

    .line 3102
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 3103
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    .line 3106
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    .line 3108
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_1

    .line 3109
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 3110
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 3114
    :goto_0
    return-void

    .line 3112
    :cond_1
    const-string v1, "SamsungWindowManager"

    const-string v2, "There are no ringtones"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private playSoundEffect()V
    .locals 3

    .prologue
    .line 2736
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 2737
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    .line 2738
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "trigger_restart_min_framework"

    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2740
    const/16 v1, 0x66

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->playSoundEffect(II)V

    .line 2748
    :goto_0
    return-void

    .line 2743
    :cond_0
    const-string v1, "SamsungWindowManager"

    const-string/jumbo v2, "keyguard - disable key sound"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2746
    :cond_1
    const-string v1, "SamsungWindowManager"

    const-string v2, "Couldn\'t get audio manager"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPowerSave(Z)V
    .locals 1
    .param p1, "powerSave"    # Z

    .prologue
    .line 595
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerSave:Z

    if-ne p1, v0, :cond_0

    .line 597
    :goto_0
    return-void

    .line 596
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerSave:Z

    goto :goto_0
.end method

.method private setUvsOrieatation(I)V
    .locals 1
    .param p1, "request"    # I

    .prologue
    .line 3900
    iget v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    if-eq v0, p1, :cond_1

    .line 3901
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 3905
    :cond_0
    iput p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    .line 3910
    :cond_1
    :goto_0
    return-void

    .line 3907
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    goto :goto_0
.end method

.method private shouldPassEventForPTT(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 4951
    sget-boolean v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldPassEventForPTT Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4952
    :cond_0
    const-string v0, "BMC"

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.bell.ptt"

    invoke-direct {p0, v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isAppInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isStubPTTApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4953
    const/4 v0, 0x1

    .line 4955
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startCustomApp()Z
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3632
    :try_start_0
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    if-nez v9, :cond_1

    .line 3633
    const-string v8, "SamsungWindowManager"

    const-string/jumbo v9, "mKnoxCustomSystemManager null"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3669
    :cond_0
    :goto_0
    return v7

    .line 3637
    :cond_1
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v9}, Landroid/app/enterprise/knoxcustom/SystemManager;->getRecentLongPressMode()I

    move-result v3

    .line 3638
    .local v3, "mode":I
    if-eqz v3, :cond_0

    .line 3643
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3644
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 3645
    .local v5, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v9, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3647
    .local v6, "taskName":Ljava/lang/String;
    if-ne v3, v8, :cond_2

    invoke-direct {p0, v6}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDefaultLauncher(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 3649
    const-string v8, "SamsungWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Foreground taskName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3665
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v3    # "mode":I
    .end local v5    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v6    # "taskName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 3666
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "SamsungWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startCustomApp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3652
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v3    # "mode":I
    .restart local v5    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v6    # "taskName":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v9}, Landroid/app/enterprise/knoxcustom/SystemManager;->getRecentLongPressActivity()Ljava/lang/String;

    move-result-object v1

    .line 3654
    .local v1, "appToStart":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3655
    :cond_3
    const-string v8, "SamsungWindowManager"

    const-string v9, "appToStart null"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3658
    :cond_4
    const-string v9, "SamsungWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "starting custom app : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3659
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 3661
    .local v4, "regularIntent":Landroid/content/Intent;
    if-eqz v4, :cond_5

    .line 3662
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    move v7, v8

    .line 3669
    goto/16 :goto_0
.end method

.method private startSGA(Ljava/lang/String;)V
    .locals 5
    .param p1, "gamePkg"    # Ljava/lang/String;

    .prologue
    .line 4225
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 4226
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 4227
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 4229
    if-eqz v1, :cond_1

    .line 4231
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4238
    :cond_0
    :goto_0
    return-void

    .line 4232
    :catch_0
    move-exception v0

    .line 4233
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-boolean v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    const-string v4, "SGA is not installed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4236
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    sget-boolean v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    const-string/jumbo v4, "no Launch intent of SGA"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopScreenManager()Z
    .locals 7

    .prologue
    .line 4703
    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4704
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const v5, 0x7fffffff

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 4705
    .local v4, "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    const-string v5, "com.samsung.android.dualscreencontrolpanel.DualScreenControlPanelService"

    iget-object v6, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4706
    new-instance v1, Landroid/content/ComponentName;

    const-string v5, "com.samsung.android.dualscreencontrolpanel"

    const-string v6, "com.samsung.android.dualscreencontrolpanel.DualScreenControlPanelService"

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4708
    .local v1, "cn":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 4709
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4710
    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 4711
    const/4 v5, 0x1

    .line 4714
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private toggleScreenManager()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4691
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 4700
    :cond_0
    :goto_0
    return-void

    .line 4694
    :cond_1
    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v2}, Lcom/samsung/android/dualscreen/DualScreenManager;->getTopRunningTaskInfo(Lcom/samsung/android/dualscreen/DualScreen;)Lcom/samsung/android/dualscreen/TaskInfo;

    move-result-object v1

    .line 4695
    .local v1, "taskInfoMain":Lcom/samsung/android/dualscreen/TaskInfo;
    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v2}, Lcom/samsung/android/dualscreen/DualScreenManager;->getTopRunningTaskInfo(Lcom/samsung/android/dualscreen/DualScreen;)Lcom/samsung/android/dualscreen/TaskInfo;

    move-result-object v0

    .line 4696
    .local v0, "TaskInfoSub":Lcom/samsung/android/dualscreen/TaskInfo;
    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/TaskInfo;->getTaskType()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/TaskInfo;->getTaskType()I

    move-result v2

    if-nez v2, :cond_0

    .line 4697
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 4698
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRecentKeyLongPressForScreenManager:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private updatePowerSave()V
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->setPowerSave(Z)V

    .line 592
    return-void
.end method

.method private updateWacomOffset(I)V
    .locals 5
    .param p1, "rotation"    # I

    .prologue
    .line 3153
    const/4 v1, 0x0

    .line 3155
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/sec_epen/epen_rotation"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3156
    .end local v1    # "out":Ljava/io/OutputStream;
    .local v2, "out":Ljava/io/OutputStream;
    add-int/lit8 v3, p1, 0x30

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3163
    if-eqz v2, :cond_0

    .line 3164
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    .line 3170
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    :cond_1
    :goto_0
    return-void

    .line 3166
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 3167
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 3169
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_0

    .line 3157
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 3163
    :goto_1
    if-eqz v1, :cond_1

    .line 3164
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 3166
    :catch_2
    move-exception v0

    .line 3167
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3159
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 3160
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3163
    if-eqz v1, :cond_1

    .line 3164
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 3166
    :catch_4
    move-exception v0

    .line 3167
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3162
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 3163
    :goto_3
    if-eqz v1, :cond_2

    .line 3164
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 3168
    :cond_2
    :goto_4
    throw v3

    .line 3166
    :catch_5
    move-exception v0

    .line 3167
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 3162
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_3

    .line 3159
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 3157
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method private updateWakeupPreventionPackages(Ljava/lang/String;)V
    .locals 6
    .param p1, "wakeupPreventionPackages"    # Ljava/lang/String;

    .prologue
    .line 4869
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mWakeupPreventionPackages:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 4870
    if-eqz p1, :cond_0

    .line 4871
    const-string v3, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateWakeupPreventionPackages = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4873
    const-string/jumbo v3, "|"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4874
    .local v2, "wakeupPreventionPackagesList":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 4875
    array-length v0, v2

    .line 4876
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4877
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mWakeupPreventionPackages:Ljava/util/HashSet;

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4876
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4881
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "wakeupPreventionPackagesList":[Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public broadcastHardKeyIntent(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3706
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getHardKeyIntentState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3708
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 3709
    .local v0, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 3710
    .local v2, "keyCode":I
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 3712
    sparse-switch v2, :sswitch_data_0

    .line 3731
    .end local v0    # "down":Z
    .end local v2    # "keyCode":I
    :cond_0
    :goto_1
    return-void

    .line 3708
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3721
    .restart local v0    # "down":Z
    .restart local v2    # "keyCode":I
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.action.HARD_KEY_PRESS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3722
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.sec.intent.extra.KEY_CODE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3723
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 3712
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x52 -> :sswitch_0
        0xbb -> :sswitch_0
    .end sparse-switch
.end method

.method public callAccessibilityScreenCurtain()V
    .locals 4

    .prologue
    .line 2228
    const-string v2, "SamsungWindowManager"

    const-string v3, "callAccessibilityScreenCurtain() is called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    const-string v2, "ADPD"

    const-string v3, "PowerKey DoubleClick"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2230
    const-string v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2232
    .local v1, "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :try_start_0
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->setScreenCurtain()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2236
    :goto_0
    return-void

    .line 2233
    :catch_0
    move-exception v0

    .line 2234
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public callAccessibilityTalkbackMode()V
    .locals 4

    .prologue
    .line 2218
    const-string v2, "SamsungWindowManager"

    const-string v3, "callAccessibilityTalkbackMode() is called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    const-string v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2221
    .local v1, "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :try_start_0
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->setTalkbackMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2225
    :goto_0
    return-void

    .line 2222
    :catch_0
    move-exception v0

    .line 2223
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public changeAppOpsMode(IILjava/lang/String;)I
    .locals 7
    .param p1, "outAppOp"    # I
    .param p2, "callingUid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4894
    const/4 v1, 0x3

    .line 4896
    .local v1, "ret":I
    const-string v4, "com.nttdocomo.android.mascot"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4898
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4899
    .local v2, "identity":J
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, p2, p3, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 4900
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mode change : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4901
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4902
    const/4 v1, 0x0

    .line 4907
    .end local v2    # "identity":J
    :cond_0
    :goto_0
    return v1

    .line 4903
    :catch_0
    move-exception v0

    .line 4904
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occured for AppOpsManager "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkLaunchSetting()I
    .locals 4

    .prologue
    .line 4635
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "active_key_on_lockscreen"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4636
    .local v0, "state":I
    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLaunchSetting state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4637
    return v0
.end method

.method public downloadForSGA(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgUri"    # Ljava/lang/String;

    .prologue
    .line 4257
    sget-boolean v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SamsungWindowManager"

    const-string/jumbo v3, "try download SGA"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4259
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4260
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4261
    const v2, 0x30000020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4263
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4269
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 4264
    :catch_0
    move-exception v0

    .line 4266
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-boolean v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "SamsungWindowManager"

    const-string v3, "Samsung apps is not installed. so you are moving to Samsung apps download page."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4267
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->downloadForSamsungApps()V

    goto :goto_0
.end method

.method public downloadForSamsungApps()V
    .locals 5

    .prologue
    .line 4241
    sget-boolean v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    const-string/jumbo v4, "try download SamsungApps"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4242
    :cond_0
    const-string/jumbo v2, "http://apps.samsung.com/mw/apk_en.as"

    .line 4244
    .local v2, "url":Ljava/lang/String;
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4246
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4247
    const v3, 0x30000020

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4249
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4254
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 4250
    :catch_0
    move-exception v0

    .line 4252
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "There is not browsable apps for samsungapps download"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3479
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPenState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3480
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPerformEditAfterScreenCapture="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3481
    const-string v0, " mHasFlashAnnotateComponent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3482
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsSafetyAssuranceEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3483
    const-string v0, " mIsUseAccessControl="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3484
    const-string v0, " mIsEnabledAccessControl="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3485
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsKidsModeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3486
    const-string v0, " mIsEasyModeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3487
    const-string v0, " mIsDockHomeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3488
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDoubleTapOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3489
    const-string v0, " mAvailableDoublTapOnHomeCommand="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAvailableDoublTapOnHomeCommand:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3490
    const-string/jumbo v0, "mDoubleTapHomeUser="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapHomeUser:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3491
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mComponentNameOfDoubleTapOnHomeCommandIntent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3492
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTripleTapOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3493
    const-string v0, " mAvailableVoiceCommand="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3494
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHasFakeMenuKeyRecent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFakeMenuKeyRecent:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3495
    const-string v0, " mHasFakeMenuKeyBack="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFakeMenuKeyBack:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3497
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSideSyncSourcePresentationActived="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3500
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsWakeupPrevention="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsWakeupPrevention:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3501
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWakeupPreventionPackages="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mWakeupPreventionPackages:Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3503
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/server/policy/sec/CombinationKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/sec/CombinationKeyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3504
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;Landroid/content/Context;)V

    .line 3505
    return-void
.end method

.method public endCallByGamekey()Z
    .locals 6

    .prologue
    .line 4165
    const/4 v1, 0x0

    .line 4167
    .local v1, "hungUp":Z
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v2

    .line 4168
    .local v2, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4169
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v1

    .line 4173
    :cond_0
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v3

    .line 4175
    .local v3, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isVoIPRinging()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4176
    invoke-interface {v3}, Landroid/os/IVoIPInterface;->hangupVoIPCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    or-int/2addr v1, v4

    .line 4181
    :cond_1
    :goto_0
    return v1

    .line 4178
    :catch_0
    move-exception v0

    .line 4179
    .local v0, "ex":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "SamsungWindowManager"

    const-string v5, "ITelephony2 threw RemoteException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAodStartState()I
    .locals 1

    .prologue
    .line 4794
    iget v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAodStartState:I

    return v0
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .locals 3

    .prologue
    .line 3306
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3307
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 3308
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    .line 3311
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    monitor-exit v1

    return-object v0

    .line 3312
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLidControlsSleep()Z
    .locals 2

    .prologue
    .line 4935
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isMirrorLinkEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4936
    const-string v0, "SamsungWindowManager"

    const-string/jumbo v1, "isMirrorLinkEnabled : LidControlsSleep is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4937
    const/4 v0, 0x0

    .line 4940
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getProKioskManager()Landroid/app/enterprise/knoxcustom/ProKioskManager;
    .locals 1

    .prologue
    .line 3692
    invoke-static {}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getInstance()Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-result-object v0

    return-object v0
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    .line 3296
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3297
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 3298
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 3301
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 3302
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getTelecommService()Landroid/telecom/TelecomManager;
    .locals 2

    .prologue
    .line 3292
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public getTimeoutTimeOfKeyCombination(I)J
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 2080
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/server/policy/sec/CombinationKeyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/sec/CombinationKeyManager;->getTimeoutTimeOfKeyCombination(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUvsOrientation()I
    .locals 1

    .prologue
    .line 3896
    iget v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    return v0
.end method

.method public goingToSleep(I)V
    .locals 1
    .param p1, "why"    # I

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mOrientationListenerForPenGesture:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;->disable()V

    .line 833
    :cond_0
    return-void
.end method

.method public handleLongPressOnHome()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 2276
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isScreenOffOnLongPressHome()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2277
    sget-boolean v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress block in KNOX"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    :cond_0
    :goto_0
    return v2

    .line 2280
    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2281
    sget-boolean v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress block in ProKiosk Mode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2288
    :cond_2
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isVzwSetupRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2289
    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress block when Verizon Setup Wizard Running"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2296
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 2297
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2298
    sget-boolean v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress block in Ringing"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2301
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isVoIPRinging()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2302
    sget-boolean v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress block in VoIPRinging"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2308
    :cond_5
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 2309
    .local v0, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2310
    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress block in emergency & upsm mode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2316
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isKidsModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2317
    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress block in kidsmode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2323
    :cond_7
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isEnableAccessControl(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2324
    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress blocked by Interaction control"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2329
    :cond_8
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v3

    if-nez v3, :cond_9

    .line 2330
    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress block in UserSetup not complete"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2334
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSimLocked()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isCarrierLocked()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2335
    :cond_a
    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress blocked by CarrierLock and SimLock"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2338
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public handleLongPressOnMenu()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2346
    iget-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsSupportManualScreenPinning:Z

    if-eqz v2, :cond_2

    .line 2347
    iget-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasPermanentMenuKey:Z

    if-eqz v2, :cond_2

    .line 2348
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2350
    :try_start_0
    sget-boolean v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SamsungWindowManager"

    const-string v3, "Menu longpress used in Lock task mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2352
    .local v0, "activityManager":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->stopLockTaskModeOnCurrent()V

    .line 2353
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mMenuConsumed:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2371
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    :cond_1
    :goto_0
    return-void

    .line 2354
    :catch_0
    move-exception v1

    .line 2355
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "Unable to reach activity manager"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2364
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-virtual {v2}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2369
    :cond_3
    iput-boolean v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mMenuConsumed:Z

    .line 2370
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v3, v3}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    goto :goto_0
.end method

.method public handleLongPressOnRecent()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2395
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isRecentAppStart()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2396
    iput-boolean v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRecentConsumed:Z

    .line 2432
    :cond_0
    :goto_0
    return-void

    .line 2402
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsSupportManualScreenPinning:Z

    if-eqz v2, :cond_3

    .line 2403
    iget-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasPermanentMenuKey:Z

    if-nez v2, :cond_3

    .line 2404
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2406
    :try_start_0
    sget-boolean v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "SamsungWindowManager"

    const-string v3, "Recent longpress used in Lock task mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    :cond_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2408
    .local v0, "activityManager":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->stopLockTaskModeOnCurrent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2409
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    :catch_0
    move-exception v1

    .line 2410
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "Unable to reach activity manager"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2418
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    iput-boolean v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRecentConsumed:Z

    .line 2428
    iget-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFakeMenuKeyRecent:Z

    if-eqz v2, :cond_0

    .line 2430
    const/16 v2, 0x52

    invoke-direct {p0, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->injectionKeyEvent(I)V

    goto :goto_0
.end method

.method public handleLongPressOnStar()V
    .locals 5

    .prologue
    .line 4304
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const-string/jumbo v3, "reason"

    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->closeSystemWindows(Ljava/lang/String;)V

    .line 4306
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4307
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4308
    const-string v2, "com.sec.android.applicationshortcut"

    const-string v3, "com.sec.android.applicationshortcut.MainviewActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4309
    if-eqz v1, :cond_0

    .line 4310
    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "launch applicationshortcut "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4312
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4317
    :cond_0
    :goto_0
    return-void

    .line 4313
    :catch_0
    move-exception v0

    .line 4314
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "No activity to launch applicationshortcut."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public handleQuickAccess(IFF)V
    .locals 8
    .param p1, "info"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 4372
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4373
    .local v0, "intent":Landroid/content/Intent;
    new-array v1, v7, [F

    const/4 v3, 0x0

    aput p2, v1, v3

    aput p3, v1, v5

    .line 4374
    .local v1, "location":[F
    const/4 v2, 0x0

    .line 4376
    .local v2, "premission":Ljava/lang/String;
    if-ne p1, v6, :cond_1

    .line 4377
    const-string v3, "com.samsung.android.spay.quickpay"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4378
    new-instance v2, Ljava/lang/String;

    .end local v2    # "premission":Ljava/lang/String;
    const-string v3, "com.samsung.android.spay.permission.SIMPLE_PAY"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 4406
    .restart local v2    # "premission":Ljava/lang/String;
    :goto_0
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4408
    sget-boolean v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendbroadcast intent :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " premission="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4409
    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 4410
    return-void

    .line 4380
    :cond_1
    const/4 v3, 0x7

    if-ne p1, v3, :cond_5

    .line 4381
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3, v5}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4382
    sget-boolean v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "SamsungWindowManager"

    const-string/jumbo v4, "main screen wake up"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4383
    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager;->setMultipleScreenStateOverride(II)V

    .line 4388
    :goto_1
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRotationForQuickAccess:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4389
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRotationForQuickAccess:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4385
    :cond_3
    sget-boolean v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "SamsungWindowManager"

    const-string/jumbo v4, "sub screen wake up"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4386
    :cond_4
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3, v7, v6}, Landroid/os/PowerManager;->setMultipleScreenStateOverride(II)V

    goto :goto_1

    .line 4392
    :cond_5
    const/16 v3, 0x8

    if-eq p1, v3, :cond_6

    const/16 v3, 0x9

    if-eq p1, v3, :cond_6

    const/16 v3, 0xa

    if-eq p1, v3, :cond_6

    const/16 v3, 0xb

    if-ne p1, v3, :cond_7

    .line 4394
    :cond_6
    const-string v3, "com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4395
    const-string/jumbo v3, "info"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4396
    const-string/jumbo v3, "location"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    .line 4397
    new-instance v2, Ljava/lang/String;

    .end local v2    # "premission":Ljava/lang/String;
    const-string v3, "com.samsung.android.app.aodservice.permission.BROADCAST_RECEIVER"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v2    # "premission":Ljava/lang/String;
    goto/16 :goto_0

    .line 4401
    :cond_7
    const-string v3, "com.android.settings.LaunchGlanceView"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4403
    const-string/jumbo v3, "info"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4404
    const-string/jumbo v3, "location"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public handleWakingUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 837
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mOrientationListenerForPenGesture:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;->enable()V

    .line 843
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightOn:Z

    if-eqz v0, :cond_1

    .line 844
    invoke-virtual {p0, v1, v1, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->processTorchlight(IZZ)V

    .line 847
    :cond_1
    return-void
.end method

.method public hasCustomDoubleTapHomeCommand()Z
    .locals 1

    .prologue
    .line 2119
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideRecentApps(Z)Z
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    .line 3515
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isShowOrHideRecentAppsAllowedByKNOX()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3516
    const/4 v0, 0x1

    .line 3518
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ignorePowerKeyInEncrypting()Z
    .locals 6

    .prologue
    .line 3951
    const-string/jumbo v3, "vold.encrypt_progress"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3952
    .local v2, "state":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 3953
    const/4 v1, 0x0

    .line 3955
    .local v1, "progress":I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3959
    :goto_0
    if-lez v1, :cond_0

    const/16 v3, 0x64

    if-ge v1, v3, :cond_0

    .line 3960
    const-string v3, "SamsungWindowManager"

    const-string v4, "Ignore Power Off Key!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3961
    const/4 v3, 0x1

    .line 3964
    .end local v1    # "progress":I
    :goto_1
    return v3

    .line 3956
    .restart local v1    # "progress":I
    :catch_0
    move-exception v0

    .line 3957
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing progress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3964
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "progress":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public init(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneWindowManager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p3, "windowManager"    # Landroid/view/IWindowManager;
    .param p4, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 622
    iput-object p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 623
    iput-object p2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    .line 624
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 625
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 626
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 627
    const-string/jumbo v1, "vibrator"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 628
    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 629
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 631
    new-instance v1, Lcom/android/server/policy/sec/CombinationKeyManager;

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {v1, p1, v2, p0}, Lcom/android/server/policy/sec/CombinationKeyManager;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/server/policy/sec/CombinationKeyManager;

    .line 633
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "SamsungPhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 635
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "PhoneWindowManager.mTorchlightWakeLock"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 639
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 640
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.motion.SWEEP_LEFT"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 641
    const-string v1, "com.samsung.android.motion.SWEEP_RIGHT"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 642
    const-string v1, "com.samsung.android.motion.SWEEP_DOWN"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 643
    const-string v1, "com.samsung.android.motion.SWEEP_FULL_SCREEN"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 644
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSweepReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "com.samsung.permission.PALM_MOTION"

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 646
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 647
    .local v8, "filter2":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.capture.QuickPanelCapture"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 648
    iget-object v6, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v9, "com.samsung.permission.CAPTURE"

    const/4 v10, 0x0

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 651
    new-instance v4, Landroid/content/IntentFilter;

    .end local v4    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 652
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 653
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 656
    new-instance v4, Landroid/content/IntentFilter;

    .end local v4    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 657
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 658
    const-string/jumbo v1, "package"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 659
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 662
    new-instance v4, Landroid/content/IntentFilter;

    .end local v4    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 663
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 664
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 666
    new-instance v4, Landroid/content/IntentFilter;

    .end local v4    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 667
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 668
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 669
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerSaveChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 672
    new-instance v11, Landroid/content/IntentFilter;

    const-string v1, "edm.intent.action.internal.kioskmode.REFRESH_HWKEY_CACHE"

    invoke-direct {v11, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 673
    .local v11, "kioskFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 677
    invoke-static {}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getInstance()Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    .line 678
    invoke-static {}, Landroid/app/enterprise/knoxcustom/SystemManager;->getInstance()Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    .line 681
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    .line 682
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 683
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const-string/jumbo v2, "isThisComeFromHomeKeyDoubleClickConcept"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 684
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const-string v2, "CHECK_SCHEDULE_ENABLED"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 685
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const-string/jumbo v2, "isQuickLaunchMode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 687
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.action.SVOICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    .line 688
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string/jumbo v2, "isThisComeFromHomeKeyDoubleClickConcept"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 689
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string v2, "CHECK_SCHEDULE_ENABLED"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 690
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isActivitiesAvailable(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    .line 692
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.pen.INSERT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    .line 693
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.pen.INSERT.USER_SWITCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenInsertedIntentUserSwitch:Landroid/content/Intent;

    .line 694
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.app.always.action.LAUNCH_ALWAYS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAlwaysIntent:Landroid/content/Intent;

    .line 695
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.flipfolder.OPEN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFlipFolderOpenedIntent:Landroid/content/Intent;

    .line 696
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.secretmode.action.REQ_SHOW_VISUAL_CUE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintIntent:Landroid/content/Intent;

    .line 697
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintIntent:Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.secretmode.service"

    const-string v5, "com.samsung.android.secretmode.service.SecretModeService"

    invoke-direct {v2, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 699
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.always"

    const-string v3, "com.samsung.android.app.always.ui.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAlwaysComponet:Landroid/content/ComponentName;

    .line 701
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.spen.flashannotate"

    const-string v3, "com.sec.spen.flashannotate.FlashAnnotateActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFlashAnnotateComponent:Landroid/content/ComponentName;

    .line 703
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.spen.flashannotatesvc"

    const-string v3, "com.sec.spen.flashannotatesvc.flashannotateservice"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFlashAnnotateServiceComponent:Landroid/content/ComponentName;

    .line 706
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFlashAnnotateComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    .line 709
    const-string v1, "com.sec.android.daynote"

    invoke-virtual {p0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasDaynotePackage:Z

    .line 713
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "PhoneWindowManager.mVoiceWakeUpWakeLock"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 718
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v1, :cond_0

    .line 720
    new-instance v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mOrientationListenerForPenGesture:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    .line 725
    :cond_0
    const-string v1, "LGT"

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->EnableLinuxCOMMONAPI4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 726
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 727
    .local v12, "mUvsFilter":Landroid/content/IntentFilter;
    const-string v1, "com.lguplus.uvs.REQUEST_ORIENTATION"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 728
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUvsReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.SET_ORIENTATION"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v12, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 733
    .end local v12    # "mUvsFilter":Landroid/content/IntentFilter;
    :cond_1
    new-instance v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$8;

    invoke-direct {v1, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$8;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 741
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_2

    .line 742
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 747
    :cond_2
    new-instance v4, Landroid/content/IntentFilter;

    .end local v4    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 748
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.intent.action.PAUSE_WATCH"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 749
    const-string v1, "com.sec.android.intent.action.STOP_WATCH"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 750
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPremiumWatchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 753
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.findo"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;)V

    :goto_0
    iput-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSFinderLaunchPolicy:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    .line 755
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 758
    new-instance v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SettingsObserver;

    .line 759
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SettingsObserver;->observe()V

    .line 761
    new-instance v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$WakeupPreventionObserver;

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$WakeupPreventionObserver;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mWakeupPreventionObserver:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$WakeupPreventionObserver;

    .line 762
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mWakeupPreventionObserver:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$WakeupPreventionObserver;

    invoke-virtual {v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$WakeupPreventionObserver;->observe()V

    .line 764
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mEM:Lcom/sec/android/emergencymode/EmergencyManager;

    .line 765
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->initHomeBoost()V

    .line 766
    return-void

    .line 753
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public insertLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 4656
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4657
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 4660
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$24;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$24;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    .line 4685
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4686
    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/KeyEvent;)Z
    .locals 30
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v19

    .line 1230
    .local v19, "keyguardOn":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v18

    .line 1231
    .local v18, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v21

    .line 1232
    .local v21, "repeatCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v13

    .line 1233
    .local v13, "flags":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v26

    if-nez v26, :cond_2

    const/4 v10, 0x1

    .line 1234
    .local v10, "down":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    .line 1238
    .local v6, "canceled":Z
    const/16 v26, 0x19

    move/from16 v0, v18

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    const/16 v26, 0x18

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    :cond_0
    if-eqz v21, :cond_3

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v26

    if-eqz v26, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getVolumeKeyAppState()Z

    move-result v26

    if-eqz v26, :cond_3

    .line 1244
    sget-boolean v26, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v26, :cond_1

    const-string v26, "SamsungWindowManager"

    const-string/jumbo v27, "knox: volume key is blocked"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    :cond_1
    const/16 v26, 0x1

    .line 1813
    :goto_1
    return v26

    .line 1233
    .end local v6    # "canceled":Z
    .end local v10    # "down":Z
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 1253
    .restart local v6    # "canceled":Z
    .restart local v10    # "down":Z
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v26

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    move-object/from16 v26, v0

    if-eqz v26, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_8

    .line 1255
    const/4 v15, 0x1

    .line 1256
    .local v15, "isAllowed":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v26

    if-nez v26, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v26

    if-nez v26, :cond_7

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v26, v0

    if-eqz v26, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v26

    if-eqz v26, :cond_6

    .line 1259
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v15

    .line 1260
    const/16 v26, 0x18

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskReEnableVolumeUpKey:Z

    move/from16 v26, v0

    if-eqz v26, :cond_4

    .line 1261
    const/4 v15, 0x1

    .line 1262
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskReEnableVolumeUpKey:Z

    .line 1273
    :cond_4
    :goto_2
    if-nez v15, :cond_8

    .line 1274
    sget-boolean v26, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v26, :cond_5

    const-string v26, "SamsungWindowManager"

    const-string v27, "MDM: key is blocked"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    :cond_5
    const/16 v26, 0x1

    goto :goto_1

    .line 1265
    :cond_6
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v15

    goto :goto_2

    .line 1271
    :cond_7
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v15

    goto :goto_2

    .line 1280
    .end local v15    # "isAllowed":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/server/policy/sec/CombinationKeyManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/sec/CombinationKeyManager;->isConsumedKeyCombination(Landroid/view/KeyEvent;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 1281
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1285
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v26

    if-eqz v26, :cond_b

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 1286
    sget-boolean v26, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v26, :cond_a

    const-string v26, "SamsungWindowManager"

    const-string/jumbo v27, "interceptKeyTi : Key was blocked by sidesync."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :cond_a
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1291
    :cond_b
    const/16 v26, 0x3

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_1e

    .line 1293
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v26

    if-eqz v26, :cond_f

    .line 1294
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 1295
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    .line 1296
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v20

    .line 1297
    .local v20, "lRestPolicy":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v20, :cond_d

    .line 1298
    const/4 v15, 0x1

    .line 1299
    .restart local v15    # "isAllowed":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v26

    if-nez v26, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v26

    if-nez v26, :cond_c

    .line 1300
    const/16 v26, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isHomeKeyEnabled(Z)Z

    move-result v15

    .line 1304
    :goto_3
    if-nez v15, :cond_d

    .line 1305
    const-string v26, "SamsungWindowManager"

    const-string/jumbo v27, "home key disabled by edm"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1302
    :cond_c
    const/16 v26, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isHomeKeyEnabled(Z)Z

    move-result v15

    goto :goto_3

    .line 1309
    .end local v15    # "isAllowed":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v26

    if-gtz v26, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/enterprise/SecurityPolicy;->isDodBannerVisible()Z

    move-result v26

    if-eqz v26, :cond_f

    .line 1311
    :cond_e
    const-string v26, "SamsungWindowManager"

    const-string/jumbo v27, "home key disabled by either pwd policy OR DoD Banner"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1318
    .end local v20    # "lRestPolicy":Landroid/app/enterprise/RestrictionPolicy;
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isKnoxKeyguardShowing()Z

    move-result v26

    if-eqz v26, :cond_10

    .line 1319
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z

    move/from16 v26, v0

    if-nez v26, :cond_10

    .line 1320
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsScreenOnBeforeHomePressed:Z

    move/from16 v26, v0

    if-eqz v26, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v26

    if-nez v26, :cond_10

    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    new-instance v27, Landroid/content/Intent;

    const-string v28, "com.samsung.knox.kss.KnoxKeyguardHomeButton"

    invoke-direct/range {v27 .. v28}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v28, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v26 .. v28}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1323
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1331
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isHMTSupportAndConnected()Z

    move-result v26

    if-eqz v26, :cond_13

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "vrmode_developer_mode"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    if-eqz v26, :cond_12

    const/16 v25, 0x1

    .line 1333
    .local v25, "vrDevelopMode":Z
    :goto_4
    if-nez v25, :cond_13

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v26

    if-nez v26, :cond_13

    .line 1334
    sget-boolean v26, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v26, :cond_11

    const-string v26, "SamsungWindowManager"

    const-string v27, "Home key is blocked by VR"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    :cond_11
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1332
    .end local v25    # "vrDevelopMode":Z
    :cond_12
    const/16 v25, 0x0

    goto :goto_4

    .line 1340
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v26

    if-eqz v26, :cond_15

    .line 1341
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z

    move-result v26

    if-eqz v26, :cond_15

    .line 1342
    sget-boolean v26, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v26, :cond_14

    const-string v26, "SamsungWindowManager"

    const-string v27, "Home key is send to SideSync"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    :cond_14
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1349
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isMirrorLinkEnabled()Z

    move-result v26

    if-eqz v26, :cond_16

    .line 1350
    const-string v26, "SamsungWindowManager"

    const-string/jumbo v27, "isMirrorLinkEnabled() true"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1355
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockKeyForDrivingMode:Z

    move/from16 v26, v0

    if-eqz v26, :cond_17

    .line 1356
    const-string v26, "SamsungWindowManager"

    const-string v27, "carmode true"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1362
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_18

    .line 1363
    const-string v26, "SamsungWindowManager"

    const-string v27, "Home key is blocked by policy"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1367
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isKioskLocked()Z

    move-result v26

    if-eqz v26, :cond_1a

    .line 1368
    sget-boolean v26, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v26, :cond_19

    const-string v26, "SamsungWindowManager"

    const-string v27, "Home key is blocked by Kiosk"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    :cond_19
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1372
    :cond_1a
    if-nez v10, :cond_1c

    .line 1374
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isVoIPRinging()Z

    move-result v26

    if-eqz v26, :cond_1c

    .line 1375
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isAnyKeyMode()Z

    move-result v26

    if-eqz v26, :cond_1c

    .line 1377
    :try_start_0
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v24

    .line 1378
    .local v24, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v24, :cond_1b

    .line 1379
    invoke-interface/range {v24 .. v24}, Landroid/os/IVoIPInterface;->answerVoIPCall()Z

    .line 1380
    const-string v26, "SamsungWindowManager"

    const-string v27, "HOME; while ringing: Answer the VoIPcall!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1383
    :cond_1b
    const-string v26, "SamsungWindowManager"

    const-string v27, "Unable to find IVoIPInterface interface"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1394
    .end local v24    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_1c
    :goto_5
    if-nez v10, :cond_1d

    .line 1813
    :cond_1d
    :goto_6
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 1385
    :catch_0
    move-exception v12

    .line 1386
    .local v12, "ex":Landroid/os/RemoteException;
    const-string v26, "SamsungWindowManager"

    const-string v27, "RemoteException from getVoIPInterfaceService()"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 1403
    .end local v12    # "ex":Landroid/os/RemoteException;
    :cond_1e
    const/16 v26, 0x52

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_1f

    .line 1405
    if-eqz v10, :cond_1d

    goto :goto_6

    .line 1440
    :cond_1f
    const/16 v26, 0xbb

    move/from16 v0, v18

    move/from16 v1, v26

    if-eq v0, v1, :cond_20

    const/16 v26, 0x3e9

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_2d

    .line 1442
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v26, v0

    if-eqz v26, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v26

    if-eqz v26, :cond_22

    .line 1443
    sget-boolean v26, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v26, :cond_21

    const-string v26, "SamsungWindowManager"

    const-string v27, "Recent key is blocked in ProKiosk mode"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    :cond_21
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1448
    :cond_22
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v26

    if-eqz v26, :cond_24

    .line 1449
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 1450
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    .line 1451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v26

    if-gtz v26, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/enterprise/SecurityPolicy;->isDodBannerVisible()Z

    move-result v26

    if-eqz v26, :cond_24

    .line 1453
    :cond_23
    const-string v26, "SamsungWindowManager"

    const-string/jumbo v27, "recent apps key disabled by either pwd policy OR DoD Banner"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1459
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isKnoxKeyguardShowing()Z

    move-result v26

    if-nez v26, :cond_25

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isKnoxCreatingOnTop()Z

    move-result v26

    if-eqz v26, :cond_26

    .line 1460
    :cond_25
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1465
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isMirrorLinkEnabled()Z

    move-result v26

    if-eqz v26, :cond_27

    .line 1466
    const-string v26, "SamsungWindowManager"

    const-string/jumbo v27, "isMirrorLinkEnabled() true"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1471
    :cond_27
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockKeyForDrivingMode:Z

    move/from16 v26, v0

    if-eqz v26, :cond_28

    .line 1472
    const-string v26, "SamsungWindowManager"

    const-string v27, "carmode true"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1478
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_2a

    .line 1479
    sget-boolean v26, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v26, :cond_29

    const-string v26, "SamsungWindowManager"

    const-string v27, "Recent key is blocked by policy"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    :cond_29
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1483
    :cond_2a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isKioskLocked()Z

    move-result v26

    if-eqz v26, :cond_2c

    .line 1484
    sget-boolean v26, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v26, :cond_2b

    const-string v26, "SamsungWindowManager"

    const-string v27, "Recent key is blocked by Kiosk"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    :cond_2b
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1489
    :cond_2c
    if-eqz v10, :cond_1d

    if-nez v21, :cond_1d

    goto/16 :goto_6

    .line 1497
    :cond_2d
    const/16 v26, 0x4

    move/from16 v0, v18

    move/from16 v1, v26

    if-eq v0, v1, :cond_2e

    const/16 v26, 0x6f

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_32

    .line 1506
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isHMTSupportAndConnected()Z

    move-result v26

    if-eqz v26, :cond_30

    .line 1507
    sget-boolean v26, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v26, :cond_2f

    const-string v26, "SamsungWindowManager"

    const-string/jumbo v27, "hmt connected"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    :cond_2f
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 1521
    :cond_30
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFakeMenuKeyBack:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1d

    .line 1522
    if-nez v10, :cond_31

    .line 1523
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isBackKeyConsumed()Z

    move-result v26

    if-eqz v26, :cond_1d

    .line 1524
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1526
    :cond_31
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    move/from16 v26, v0

    if-nez v26, :cond_1d

    const/16 v26, 0xa

    move/from16 v0, v21

    move/from16 v1, v26

    if-ne v0, v1, :cond_1d

    .line 1527
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    .line 1529
    const/16 v26, 0x52

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->injectionKeyEvent(I)V

    goto/16 :goto_6

    .line 1534
    :cond_32
    const/16 v26, 0x415

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_34

    .line 1535
    if-eqz v10, :cond_33

    .line 1536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1537
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    .line 1538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    const-wide/16 v28, 0x3e8

    invoke-virtual/range {v26 .. v29}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1540
    :cond_33
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1541
    :cond_34
    const/16 v26, 0x416

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_36

    .line 1542
    if-nez v10, :cond_35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    move/from16 v26, v0

    if-eqz v26, :cond_35

    .line 1543
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    .line 1544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1545
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->launchFingerPrint()V

    .line 1547
    :cond_35
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1551
    :cond_36
    const/16 v26, 0x3f9

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_41

    .line 1552
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isSupportDMBAntennaDetach()Z

    move-result v26

    if-eqz v26, :cond_3f

    .line 1553
    const-string/jumbo v26, "service.media.dmb"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1554
    .local v7, "dmb_running":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "dmb_antenna_auto_start"

    const/16 v28, 0x0

    const/16 v29, -0x2

    invoke-static/range {v26 .. v29}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3c

    const/16 v16, 0x1

    .line 1556
    .local v16, "isDmbAutoStarton":Z
    :goto_7
    const/4 v5, 0x0

    .line 1557
    .local v5, "b_dmb_running":Z
    const/16 v17, 0x0

    .line 1558
    .local v17, "isSecureKeyguard":Z
    if-eqz v7, :cond_37

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_37

    .line 1559
    const-string v26, "1"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3d

    .line 1560
    const/4 v5, 0x1

    .line 1566
    :cond_37
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v17

    .line 1568
    :cond_38
    const-string v26, "SamsungWindowManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "KEYCODE_DMB_ANT_OPEN dmb_running="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", isSecureKeyguard="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", isDmbAutoStarton="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    if-nez v10, :cond_3a

    if-nez v21, :cond_3a

    .line 1574
    :try_start_1
    const-string v4, "/efs/FactoryApp/tdmb_det_count"

    .line 1575
    .local v4, "TDMB_DET_PATH":Ljava/lang/String;
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1576
    .local v23, "strDMBCount":Ljava/lang/String;
    const-string v26, "SamsungWindowManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "TDMB_DET_COUNT : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    if-eqz v23, :cond_3e

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_3e

    .line 1579
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    const-wide/16 v28, 0x1

    add-long v8, v26, v28

    .line 1580
    .local v8, "dmb_det_count":J
    const-wide/32 v26, 0xf423f

    cmp-long v26, v8, v26

    if-lez v26, :cond_39

    .line 1581
    const-wide/16 v8, 0x1

    .line 1583
    :cond_39
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1594
    .end local v4    # "TDMB_DET_PATH":Ljava/lang/String;
    .end local v8    # "dmb_det_count":J
    .end local v23    # "strDMBCount":Ljava/lang/String;
    :cond_3a
    :goto_9
    if-nez v10, :cond_1d

    if-nez v21, :cond_1d

    if-nez v5, :cond_1d

    if-nez v17, :cond_1d

    if-eqz v16, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v27}, Landroid/os/FactoryTest;->isFactoryMode(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result v26

    if-nez v26, :cond_1d

    .line 1597
    const-string v26, "SamsungWindowManager"

    const-string v27, "KEYCODE_DMB_ANT_OPEN"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    new-instance v26, Landroid/content/ComponentName;

    const-string v27, "com.sec.android.app.dmb"

    const-string v28, "com.sec.android.app.dmb.activity.DMBFullScreenView"

    invoke-direct/range {v26 .. v28}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v26 .. v26}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v14

    .line 1601
    .local v14, "intent":Landroid/content/Intent;
    const-string v26, "com.sec.android.action.DMB_ANT_OPEN"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1602
    const/high16 v26, 0x10000000

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1604
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1609
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v26

    if-eqz v26, :cond_3b

    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    new-instance v27, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$11;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$11;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1616
    :cond_3b
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1554
    .end local v5    # "b_dmb_running":Z
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v16    # "isDmbAutoStarton":Z
    .end local v17    # "isSecureKeyguard":Z
    :cond_3c
    const/16 v16, 0x0

    goto/16 :goto_7

    .line 1561
    .restart local v5    # "b_dmb_running":Z
    .restart local v16    # "isDmbAutoStarton":Z
    .restart local v17    # "isSecureKeyguard":Z
    :cond_3d
    const-string v26, "0"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_37

    .line 1562
    const/4 v5, 0x0

    goto/16 :goto_8

    .line 1585
    .restart local v4    # "TDMB_DET_PATH":Ljava/lang/String;
    .restart local v23    # "strDMBCount":Ljava/lang/String;
    :cond_3e
    :try_start_3
    const-string v26, "0"

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_9

    .line 1587
    .end local v4    # "TDMB_DET_PATH":Ljava/lang/String;
    .end local v23    # "strDMBCount":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 1588
    .local v11, "e":Ljava/io/IOException;
    const-string v26, "SamsungWindowManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "IOException : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1589
    .end local v11    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v11

    .line 1590
    .local v11, "e":Ljava/lang/NumberFormatException;
    const-string v26, "SamsungWindowManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "NumberFormatException : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1605
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v14    # "intent":Landroid/content/Intent;
    :catch_3
    move-exception v11

    .line 1606
    .local v11, "e":Landroid/content/ActivityNotFoundException;
    const-string v26, "SamsungWindowManager"

    const-string v27, "No activity to launch DMB."

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .line 1620
    .end local v5    # "b_dmb_running":Z
    .end local v7    # "dmb_running":Ljava/lang/String;
    .end local v11    # "e":Landroid/content/ActivityNotFoundException;
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v16    # "isDmbAutoStarton":Z
    .end local v17    # "isSecureKeyguard":Z
    :cond_3f
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isSupportDTVAntennaDetach()Z

    move-result v26

    if-eqz v26, :cond_1d

    .line 1622
    const/16 v17, 0x0

    .line 1623
    .restart local v17    # "isSecureKeyguard":Z
    const-string v26, "SamsungWindowManager"

    const-string v27, "SISO DTV  APPLICATION KEYCODE_DTV_ANTENNA_OPEN"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_40

    .line 1625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v17

    .line 1627
    :cond_40
    if-nez v10, :cond_1d

    if-nez v21, :cond_1d

    if-nez v17, :cond_1d

    .line 1628
    const-string v26, "SamsungWindowManager"

    const-string v27, "SISO DTV  APPLICATION KEYCODE_DTV_ANTENNA_OPEN TO SEND BROADCAST"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 1630
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v26, "com.samsung.sec.mtv.DTV_ANTENNA_OPEN"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    sget-object v27, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1632
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1635
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v17    # "isSecureKeyguard":Z
    :cond_41
    const/16 v26, 0x3fa

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_43

    .line 1636
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isSupportDMBAntennaDetach()Z

    move-result v26

    if-eqz v26, :cond_42

    .line 1637
    if-nez v10, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v27}, Landroid/os/FactoryTest;->isFactoryMode(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result v26

    if-nez v26, :cond_1d

    .line 1638
    const-string v26, "SamsungWindowManager"

    const-string v27, "KEYCODE_DMB_ANT_CLOSE"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 1640
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v26, "com.sec.android.action.DMB_ANT_CLOSE"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    sget-object v27, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1643
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1647
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_42
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isSupportDTVAntennaDetach()Z

    move-result v26

    if-eqz v26, :cond_1d

    .line 1648
    if-nez v10, :cond_1d

    .line 1649
    const-string v26, "SamsungWindowManager"

    const-string v27, "KEYCODE_DTV_ANT_CLOSE"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 1651
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v26, "com.samsung.sec.mtv.DTV_ANTENNA_CLOSE"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    sget-object v27, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1653
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1661
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_43
    const/16 v26, 0x3eb

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_45

    .line 1662
    if-eqz v10, :cond_1d

    if-nez v19, :cond_1d

    if-nez v21, :cond_1d

    .line 1664
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v22

    .line 1665
    .local v22, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v22, :cond_44

    .line 1666
    invoke-interface/range {v22 .. v22}, Lcom/android/internal/statusbar/IStatusBarService;->toggleNotificationPanel()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1672
    .end local v22    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_44
    :goto_b
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1668
    :catch_4
    move-exception v12

    .line 1670
    .restart local v12    # "ex":Landroid/os/RemoteException;
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_b

    .line 1675
    .end local v12    # "ex":Landroid/os/RemoteException;
    :cond_45
    const/16 v26, 0x428

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_47

    .line 1676
    if-nez v10, :cond_46

    .line 1677
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->launchSFinderIfPossible()Z

    .line 1679
    :cond_46
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1681
    :cond_47
    const/16 v26, 0x3ec

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_48

    .line 1682
    if-nez v10, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v26

    if-eqz v26, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v26, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn(I)Z

    move-result v26

    if-eqz v26, :cond_1d

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isScreenCaptureEnabled()Z

    move-result v26

    if-eqz v26, :cond_1d

    .line 1684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    new-instance v27, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$12;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$12;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 1692
    :cond_48
    const/16 v26, 0x425

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_4b

    .line 1693
    if-nez v10, :cond_49

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v26

    if-eqz v26, :cond_49

    if-nez v19, :cond_49

    .line 1694
    const-string v26, "SamsungWindowManager"

    const-string v27, "KEYCODE_MULTI_WINDOW key input"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4a

    .line 1696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->handleLongPressOnRecent()Z

    move-result v26

    if-nez v26, :cond_49

    .line 1697
    const-string v26, "SamsungWindowManager"

    const-string v27, "KEYCODE_MULTI_WINDOW key is blocked"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    :cond_49
    :goto_c
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1699
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/policy/PhoneWindowManager;->closeMultiWindowTrayBar(Z)Z

    move-result v26

    if-nez v26, :cond_49

    .line 1700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/policy/PhoneWindowManager;->toggleMultiWindowTray()Z

    goto :goto_c

    .line 1707
    :cond_4b
    const/16 v26, 0x41a

    move/from16 v0, v18

    move/from16 v1, v26

    if-eq v0, v1, :cond_1d

    .line 1725
    const/16 v26, 0x1a

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_4c

    .line 1726
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v26

    if-eqz v26, :cond_1d

    .line 1727
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z

    move-result v26

    if-eqz v26, :cond_1d

    .line 1728
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1734
    :cond_4c
    const/16 v26, 0x3f7

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_53

    .line 1735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_4d

    .line 1736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const v28, 0x1040b7c

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Toast;->show()V

    .line 1737
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1740
    :cond_4d
    if-eqz v10, :cond_50

    .line 1741
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v26

    if-eqz v26, :cond_1d

    .line 1742
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->shouldPassEventForPTT(Landroid/view/KeyEvent;)Z

    move-result v26

    if-nez v26, :cond_4f

    .line 1743
    sget-boolean v26, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v26, :cond_4e

    const-string v26, "SamsungWindowManager"

    const-string v27, "User key longpress - Do longpress"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    :cond_4e
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUserKeyConsumed:Z

    .line 1747
    :cond_4f
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->handleUserKey(Z)Z

    move-result v26

    if-eqz v26, :cond_1d

    .line 1748
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1752
    :cond_50
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isUserKeyConsumed()Z

    move-result v26

    if-eqz v26, :cond_52

    .line 1753
    sget-boolean v26, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v26, :cond_51

    const-string v26, "SamsungWindowManager"

    const-string v27, "User key up after long press - ignore up key"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    :cond_51
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1756
    :cond_52
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->handleUserKey(Z)Z

    move-result v26

    if-eqz v26, :cond_1d

    .line 1757
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1763
    :cond_53
    const/16 v26, 0x417

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_59

    .line 1764
    const-string v26, "SamsungWindowManager"

    const-string v27, "KeyEvent.KEYCODE_NETWORK_SEL"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v26

    if-nez v26, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_55

    .line 1766
    :cond_54
    const-string v26, "SamsungWindowManager"

    const-string v27, "Network selection key - no action in factory mode"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1768
    :cond_55
    if-nez v19, :cond_56

    .line 1769
    if-eqz v10, :cond_57

    and-int/lit16 v0, v13, 0x80

    move/from16 v26, v0

    if-eqz v26, :cond_57

    .line 1770
    const-string v26, "SamsungWindowManager"

    const-string v27, "Network selection long press action"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 1772
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v26, "ACTION_NETWORK_LONGPRESS_KEY"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    sget-object v27, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1775
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mNetworkSelectionLongPress:Z

    .line 1787
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_56
    :goto_d
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1776
    :cond_57
    if-nez v10, :cond_56

    if-nez v21, :cond_56

    .line 1777
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mNetworkSelectionLongPress:Z

    move/from16 v26, v0

    if-nez v26, :cond_58

    .line 1778
    const-string v26, "SamsungWindowManager"

    const-string v27, "Network selection short press action"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 1780
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v26, "ACTION_NETWORK_KEY"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    sget-object v27, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_d

    .line 1783
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_58
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mNetworkSelectionLongPress:Z

    goto :goto_d

    .line 1789
    :cond_59
    const/16 v26, 0x40c

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_5c

    .line 1790
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v26

    if-nez v26, :cond_5a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_5b

    .line 1791
    :cond_5a
    const-string v26, "SamsungWindowManager"

    const-string v27, "Data key - no action in factory mode"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1793
    :cond_5b
    if-nez v10, :cond_1d

    if-nez v21, :cond_1d

    .line 1794
    const-string v26, "SamsungWindowManager"

    const-string v27, "3G key action"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    new-instance v14, Landroid/content/Intent;

    const-string v26, "android.settings.DATA_NETWORK_KEY_PRESSED"

    move-object/from16 v0, v26

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1796
    .restart local v14    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    sget-object v27, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_6

    .line 1801
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_5c
    const/16 v26, 0x1b

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_5f

    .line 1802
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSimLocked()Z

    move-result v26

    if-nez v26, :cond_5d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isCarrierLocked()Z

    move-result v26

    if-nez v26, :cond_5d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_1d

    .line 1803
    :cond_5d
    sget-boolean v26, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v26, :cond_5e

    const-string v26, "SamsungWindowManager"

    const-string v27, "Key was blocked by sim or carrier status"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    :cond_5e
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 1807
    :cond_5f
    const/16 v26, 0x431

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_1d

    .line 1808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_1d

    .line 1809
    sget-boolean v26, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v26, :cond_60

    const-string v26, "SamsungWindowManager"

    const-string v27, "Key was blocked by carrier status"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    :cond_60
    const/16 v26, 0x1

    goto/16 :goto_1
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)Z
    .locals 28
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 1827
    const/high16 v24, 0x20000000

    and-int v24, v24, p2

    if-eqz v24, :cond_2

    const/16 v18, 0x1

    .line 1828
    .local v18, "interactive":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v24

    if-nez v24, :cond_3

    const/4 v11, 0x1

    .line 1829
    .local v11, "down":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v20

    .line 1832
    .local v20, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v24

    if-nez v24, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v24

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 1834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v24, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn(I)Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsScreenOnBeforeHomePressed:Z

    .line 1835
    const-string v24, "SamsungWindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "interceptKeyBeforeQueueing isScreenOn = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsScreenOnBeforeHomePressed:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/policy/PhoneWindowManager;->getLockTaskMode()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    const/16 v24, 0x3

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    const/16 v24, 0xbb

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 1840
    :cond_1
    const-string v24, "SamsungWindowManager"

    const-string v25, "Key was blocked by LOCK_TASK_MODE_LOCKED"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    const/16 v24, 0x1

    .line 2075
    :goto_2
    return v24

    .line 1827
    .end local v11    # "down":Z
    .end local v18    # "interactive":Z
    .end local v20    # "keyCode":I
    :cond_2
    const/16 v18, 0x0

    goto :goto_0

    .line 1828
    .restart local v18    # "interactive":Z
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 1844
    .restart local v11    # "down":Z
    .restart local v20    # "keyCode":I
    :cond_4
    const/16 v24, 0x19

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_5

    const/16 v24, 0x18

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 1845
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isMirrorLinkEnabled()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 1846
    const-string v24, "SamsungWindowManager"

    const-string v25, "Volume key was blocked by MirrorLink"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    const/16 v24, 0x1

    goto :goto_2

    .line 1854
    :cond_6
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->broadcastHardKeyIntent(Landroid/view/KeyEvent;)V

    .line 1860
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_a

    .line 1862
    const/16 v19, 0x1

    .line 1863
    .local v19, "isAllowed":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v24

    if-nez v24, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v24

    if-nez v24, :cond_9

    .line 1865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v24, v0

    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v24

    if-eqz v24, :cond_8

    .line 1866
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v19

    .line 1867
    const/16 v24, 0x18

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskReEnableVolumeUpKey:Z

    move/from16 v24, v0

    if-eqz v24, :cond_7

    .line 1868
    const/16 v19, 0x1

    .line 1879
    :cond_7
    :goto_3
    if-nez v19, :cond_a

    .line 1880
    const-string v24, "SamsungWindowManager"

    const-string v25, "MDM: key is blocked"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    const/16 v24, 0x1

    goto/16 :goto_2

    .line 1871
    :cond_8
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v19

    goto :goto_3

    .line 1877
    :cond_9
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v19

    goto :goto_3

    .line 1887
    .end local v19    # "isAllowed":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/server/policy/sec/CombinationKeyManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/sec/CombinationKeyManager;->interceptKeyCombinationBeforeQueueing(Landroid/view/KeyEvent;I)V

    .line 1890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v24

    if-nez v24, :cond_b

    .line 1891
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->processTorchlight(IZZ)V

    .line 1895
    :cond_b
    const/16 v24, 0x3

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isEnableAccessControl(I)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 1896
    sget-boolean v24, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v24, :cond_c

    const-string v24, "SamsungWindowManager"

    const-string/jumbo v25, "interceptKeyTq : Key was blocked by access control"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    :cond_c
    const/16 v24, 0x1

    goto/16 :goto_2

    .line 1901
    :cond_d
    sparse-switch v20, :sswitch_data_0

    .line 1984
    :cond_e
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v24

    if-eqz v24, :cond_18

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z

    move-result v24

    if-eqz v24, :cond_18

    .line 1985
    const-string v24, "SamsungWindowManager"

    const-string/jumbo v25, "interceptKeyTq : Key was blocked by sidesync."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    const/16 v24, 0x1

    goto/16 :goto_2

    .line 1903
    :sswitch_0
    if-eqz v11, :cond_e

    .line 1904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    goto :goto_4

    .line 1910
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isMirrorLinkEnabled()Z

    move-result v24

    if-eqz v24, :cond_f

    .line 1911
    const-string v24, "SamsungWindowManager"

    const-string/jumbo v25, "isMirrorLinkEnabled() true"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    const/16 v24, 0x1

    goto/16 :goto_2

    .line 1916
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isHMTSupportAndConnected()Z

    move-result v24

    if-eqz v24, :cond_e

    .line 1917
    const/16 v24, 0x1

    goto/16 :goto_2

    .line 1924
    :sswitch_2
    if-nez v11, :cond_11

    .line 1925
    const-string v24, "SamsungWindowManager"

    const-string/jumbo v25, "launch voice LPSD"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v24

    if-eqz v24, :cond_10

    .line 1927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1929
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v24, v0

    const-wide/16 v26, 0x1388

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1930
    const-string v5, "com.samsung.android.app.sounddetector.VOICE_WAKEUP"

    .line 1931
    .local v5, "SOUND_DETECTOR_WAKEUP":Ljava/lang/String;
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1932
    .local v17, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    sget-object v25, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1934
    .end local v5    # "SOUND_DETECTOR_WAKEUP":Ljava/lang/String;
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_11
    const/16 v24, 0x1

    goto/16 :goto_2

    .line 1937
    :sswitch_3
    if-nez v11, :cond_13

    .line 1938
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v24

    if-nez v24, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_14

    .line 1939
    :cond_12
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 1940
    .restart local v17    # "intent":Landroid/content/Intent;
    const-string v24, "com.sec.android.intent.action.VOICE_WAKEUP_KEY"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    sget-object v25, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v26, "com.sec.android.permission.HANDLE_VOICE_WAKEUP_KEY"

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1960
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_13
    :goto_5
    const/16 v24, 0x1

    goto/16 :goto_2

    .line 1944
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsCheckDrivingMode:Z

    move/from16 v24, v0

    if-eqz v24, :cond_15

    .line 1946
    const-string v24, "SamsungWindowManager"

    const-string/jumbo v25, "launch drivelink"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 1948
    .restart local v17    # "intent":Landroid/content/Intent;
    const-string v24, "com.sec.android.automotive.drivelink.ACTION_VOICE_WAKEUP"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    sget-object v25, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_5

    .line 1953
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_15
    const-string v24, "SamsungWindowManager"

    const-string/jumbo v25, "launch voice command"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    const-string v4, "com.samsung.alwaysmicon.alwaysmiconservice.ACTION_VOICE_WAKEUP"

    .line 1955
    .local v4, "LAUNCH_SVOICE_WAKEUP":Ljava/lang/String;
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1956
    .restart local v17    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    sget-object v25, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_5

    .line 1963
    .end local v4    # "LAUNCH_SVOICE_WAKEUP":Ljava/lang/String;
    .end local v17    # "intent":Landroid/content/Intent;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v24

    if-eqz v24, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v24

    if-nez v24, :cond_16

    .line 1964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyguardLw()V

    .line 1966
    :cond_16
    const/16 v24, 0x1

    goto/16 :goto_2

    .line 1969
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    .line 1970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    move/from16 v24, v0

    if-nez v24, :cond_17

    if-eqz v11, :cond_17

    .line 1971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    move-object/from16 v25, v0

    const-wide/16 v26, 0xbb8

    invoke-virtual/range {v24 .. v27}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    .line 1975
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v24

    if-eqz v24, :cond_e

    .line 1977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_4

    .line 1991
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v24, v0

    if-eqz v24, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v24

    if-eqz v24, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getVolumeKeyAppState()Z

    move-result v24

    if-eqz v24, :cond_28

    .line 1993
    if-eqz v11, :cond_28

    const/16 v24, 0x19

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_19

    const/16 v24, 0x18

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_28

    .line 1994
    :cond_19
    const-string v24, "SamsungWindowManager"

    const-string v25, "Knox Custom: Volume Key app switching starting"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getVolumeKeyAppsList()Ljava/util/List;

    move-result-object v7

    .line 1996
    .local v7, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_1a

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v24

    if-nez v24, :cond_1c

    .line 1997
    :cond_1a
    const-string v24, "SamsungWindowManager"

    const-string v25, "Knox Custom: no apps in list"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    :cond_1b
    :goto_6
    const-string v24, "SamsungWindowManager"

    const-string v25, "Knox Custom: Volume Key app switching done"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    const/16 v24, 0x1

    goto/16 :goto_2

    .line 1999
    :cond_1c
    const-string v24, "SamsungWindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Knox Custom: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " apps in list"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "activity"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 2001
    .local v6, "activityManager":Landroid/app/ActivityManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    .line 2004
    .local v22, "pm":Landroid/content/pm/PackageManager;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2005
    .local v10, "availableAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2006
    .local v8, "appListItem":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 2007
    .local v9, "appStartIntent":Landroid/content/Intent;
    if-eqz v9, :cond_1d

    .line 2008
    const-string v24, "SamsungWindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Knox Custom: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " available"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 2011
    :cond_1d
    const-string v24, "SamsungWindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Knox Custom: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " not available"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2014
    .end local v8    # "appListItem":Ljava/lang/String;
    .end local v9    # "appStartIntent":Landroid/content/Intent;
    :cond_1e
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-nez v24, :cond_1f

    .line 2015
    const-string v24, "SamsungWindowManager"

    const-string v25, "Knox Custom: no available apps"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2019
    :cond_1f
    const v24, 0x7fffffff

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v23

    .line 2020
    .local v23, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v24, 0x0

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2021
    .local v13, "foregroundApp":Ljava/lang/String;
    const-string v24, "SamsungWindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Knox Custom: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " in foreground"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    const/4 v14, -0x1

    .line 2024
    .local v14, "foregroundAppIndex":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v15, v0, :cond_21

    .line 2025
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_20

    .line 2026
    const-string v24, "SamsungWindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Knox Custom: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " found at index "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    move v14, v15

    .line 2024
    :cond_20
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 2030
    :cond_21
    const/16 v24, -0x1

    move/from16 v0, v24

    if-ne v14, v0, :cond_22

    .line 2031
    const-string v24, "SamsungWindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Knox Custom: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " not found in list; use first"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    :cond_22
    move-object/from16 v21, v13

    .line 2035
    .local v21, "newApp":Ljava/lang/String;
    const/16 v24, 0x19

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_25

    .line 2036
    if-lez v14, :cond_24

    .line 2037
    add-int/lit8 v24, v14, -0x1

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "newApp":Ljava/lang/String;
    check-cast v21, Ljava/lang/String;

    .line 2050
    .restart local v21    # "newApp":Ljava/lang/String;
    :cond_23
    :goto_9
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_27

    .line 2051
    const-string v24, "SamsungWindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Knox Custom: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " already in foreground"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2039
    :cond_24
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "newApp":Ljava/lang/String;
    check-cast v21, Ljava/lang/String;

    .restart local v21    # "newApp":Ljava/lang/String;
    goto :goto_9

    .line 2041
    :cond_25
    const/16 v24, 0x18

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_23

    .line 2042
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    if-ge v14, v0, :cond_26

    .line 2043
    add-int/lit8 v24, v14, 0x1

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "newApp":Ljava/lang/String;
    check-cast v21, Ljava/lang/String;

    .restart local v21    # "newApp":Ljava/lang/String;
    goto :goto_9

    .line 2045
    :cond_26
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "newApp":Ljava/lang/String;
    check-cast v21, Ljava/lang/String;

    .restart local v21    # "newApp":Ljava/lang/String;
    goto :goto_9

    .line 2053
    :cond_27
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 2054
    .restart local v9    # "appStartIntent":Landroid/content/Intent;
    const-string v24, "SamsungWindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Knox Custom: switching to "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    if-eqz v9, :cond_1b

    .line 2056
    const/high16 v24, 0x10400000

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2059
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    .line 2060
    :catch_0
    move-exception v12

    .line 2061
    .local v12, "e":Landroid/content/ActivityNotFoundException;
    const-string v24, "SamsungWindowManager"

    const-string v25, "No activity to launch Knox Custom switching."

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 2075
    .end local v6    # "activityManager":Landroid/app/ActivityManager;
    .end local v7    # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "appStartIntent":Landroid/content/Intent;
    .end local v10    # "availableAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "e":Landroid/content/ActivityNotFoundException;
    .end local v13    # "foregroundApp":Ljava/lang/String;
    .end local v14    # "foregroundAppIndex":I
    .end local v15    # "i":I
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v21    # "newApp":Ljava/lang/String;
    .end local v22    # "pm":Landroid/content/pm/PackageManager;
    .end local v23    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_28
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 1901
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x19 -> :sswitch_5
        0x1a -> :sswitch_1
        0x426 -> :sswitch_3
        0x427 -> :sswitch_2
        0x436 -> :sswitch_4
    .end sparse-switch
.end method

.method public isActivitiesAvailable(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3321
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3322
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 3323
    const/high16 v2, 0x10000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 3325
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 3326
    const/4 v2, 0x1

    .line 3329
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isAnyKeyMode()Z
    .locals 4

    .prologue
    .line 4153
    const/4 v0, 0x0

    .line 4154
    .local v0, "isAnyKeyMode":Z
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anykey_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 4155
    const/4 v0, 0x0

    .line 4159
    :goto_0
    return v0

    .line 4157
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAppLockRunning()Z
    .locals 6

    .prologue
    .line 4771
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4772
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, 0x0

    .line 4773
    .local v1, "isAppLockRunning":Z
    if-eqz v0, :cond_0

    .line 4774
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 4775
    .local v2, "runningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 4776
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4777
    .local v3, "topPackageName":Ljava/lang/String;
    const-string v4, "com.samsung.android.applock"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4778
    const/4 v1, 0x1

    .line 4782
    .end local v2    # "runningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v3    # "topPackageName":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public isApplicationShortcutShouldBlocked()Z
    .locals 4

    .prologue
    .line 4293
    const/4 v1, 0x0

    .line 4294
    .local v1, "ret":Z
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.contacts"

    const-string v3, "com.android.dialer.DialtactsActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4295
    .local v0, "dialtactsActivity":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4296
    const/4 v1, 0x1

    .line 4297
    const-string v2, "SamsungWindowManager"

    const-string v3, "ApplicationShortcut is blocked by dialtactsActivity"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4299
    :cond_0
    return v1
.end method

.method public isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3854
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 3855
    .local v2, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    .line 3856
    .local v1, "flags":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_0

    move v0, v3

    .line 3857
    .local v0, "down":Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    const/16 v5, 0x1a

    if-eq v2, v5, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v5

    if-nez v5, :cond_1

    .line 3864
    :goto_1
    return v3

    .end local v0    # "down":Z
    :cond_0
    move v0, v4

    .line 3856
    goto :goto_0

    .restart local v0    # "down":Z
    :cond_1
    move v3, v4

    .line 3864
    goto :goto_1
.end method

.method public isBlockedPowerKeyByKeyTest(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 3969
    invoke-static {}, Landroid/os/FactoryTest;->needBlockingPowerKey()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.factory.app.ui.UIHardKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.OneJigBinary.testitem.KeyTest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.simplefunctiontest.KeypadTest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.factory.app.spcselftest.SpcSelfTestMain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.latin.tdfnotifier"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3976
    :cond_0
    sget-boolean v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SamsungWindowManager"

    const-string v1, "Skip power key behavior by FactoryTest application"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3977
    :cond_1
    const/4 v0, 0x1

    .line 3979
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCarrierLocked()Z
    .locals 2

    .prologue
    .line 4325
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isRemoteLockEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isCombinationKeyTriggered()Z
    .locals 1

    .prologue
    .line 2084
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/server/policy/sec/CombinationKeyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/CombinationKeyManager;->isCombinationKeyTriggered()Z

    move-result v0

    return v0
.end method

.method public isComponentAvailable(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 3333
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3335
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3337
    const/4 v2, 0x1

    .line 3342
    :cond_0
    :goto_0
    return v2

    .line 3341
    :catch_0
    move-exception v0

    .line 3342
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public isCurrentUserSetupComplete()Z
    .locals 1

    .prologue
    .line 1178
    sget v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCurrentUser:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3316
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isDockHomeEnabled(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1190
    const/4 v0, 0x1

    .line 1191
    .local v0, "resDeskHomeEnabled":Z
    sget-boolean v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsTablet:Z

    if-nez v1, :cond_1

    .line 1192
    sget-boolean v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsJapanModel:Z

    if-eqz v1, :cond_0

    const-string v1, "SC-04F"

    sget-object v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mModelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SCL23"

    sget-object v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mModelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1194
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    const-string v2, "android.intent.category.DESK_DOCK"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1195
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    .line 1199
    :cond_1
    return v0
.end method

.method public isDoubleTapOnHomeEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2090
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isVzwSetupRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2091
    const-string v2, "SamsungWindowManager"

    const-string v3, "Home Double Tap block when Verizon Setup Wizard Running"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    :cond_0
    :goto_0
    return v1

    .line 2095
    :cond_1
    const-string/jumbo v2, "service.camera.running"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2097
    .local v0, "isCameraRunning":Z
    iget v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-nez v2, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isDoubleTapOnPowerEnabled()Z
    .locals 1

    .prologue
    .line 2214
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerDoubleBehavior:Z

    return v0
.end method

.method public isEasyModeEnabled()Z
    .locals 1

    .prologue
    .line 1186
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    return v0
.end method

.method public isEnableAccessControl(I)Z
    .locals 8
    .param p1, "event"    # I

    .prologue
    const/4 v7, -0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1152
    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "access_control_power_button"

    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1154
    .local v1, "mAccessPower":I
    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "access_control_volume_button"

    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 1156
    .local v2, "mAccessVolume":I
    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "access_control_keyboard_block"

    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1159
    .local v0, "mAccessKeyboard":I
    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x7

    if-lt p1, v5, :cond_2

    const/16 v5, 0x12

    if-gt p1, v5, :cond_2

    .line 1161
    iget-boolean v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    if-eqz v5, :cond_1

    if-eqz v0, :cond_1

    .line 1173
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    .line 1161
    goto :goto_0

    .line 1164
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 1173
    iget-boolean v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    goto :goto_0

    .line 1166
    :sswitch_0
    iget-boolean v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    goto :goto_0

    .line 1168
    :sswitch_1
    iget-boolean v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    if-eqz v5, :cond_3

    if-nez v1, :cond_0

    :cond_3
    move v3, v4

    goto :goto_0

    .line 1171
    :sswitch_2
    iget-boolean v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    if-eqz v5, :cond_4

    if-nez v2, :cond_0

    :cond_4
    move v3, v4

    goto :goto_0

    .line 1164
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x1a -> :sswitch_1
    .end sparse-switch
.end method

.method public isHMTSupportAndConnected()Z
    .locals 1

    .prologue
    .line 4361
    const/4 v0, 0x0

    return v0
.end method

.method public isKidsModeEnabled()Z
    .locals 1

    .prologue
    .line 1182
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    return v0
.end method

.method public isLiveDemo()Z
    .locals 1

    .prologue
    .line 4366
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsLiveDemo:Z

    return v0
.end method

.method public isMenuConsumed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2374
    iget-boolean v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mMenuConsumed:Z

    if-eqz v1, :cond_0

    .line 2375
    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mMenuConsumed:Z

    .line 2376
    const/4 v0, 0x1

    .line 2378
    :cond_0
    return v0
.end method

.method public isMirrorLinkEnabled()Z
    .locals 2

    .prologue
    .line 3474
    const-string v0, "1"

    const-string/jumbo v1, "net.mirrorlink.on"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOneTouchReportEnabled()Z
    .locals 17

    .prologue
    .line 2900
    const-string/jumbo v15, "go.police.report"

    .line 2901
    .local v15, "oneTouchReportPackageName":Ljava/lang/String;
    const-string v14, "com.android.vending"

    .line 2903
    .local v14, "oneTouchReportInstaller":Ljava/lang/String;
    const/4 v13, 0x0

    .line 2904
    .local v13, "installerPackage":Ljava/lang/String;
    const/4 v12, 0x0

    .line 2906
    .local v12, "enabled":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2907
    const/4 v2, 0x0

    .line 2952
    :goto_0
    return v2

    .line 2911
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 2913
    .local v16, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string/jumbo v2, "go.police.report"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2915
    const-string v2, "com.android.vending"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    .line 2917
    const/4 v2, 0x0

    goto :goto_0

    .line 2919
    :catch_0
    move-exception v11

    .line 2921
    .local v11, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0

    .line 2925
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v9, "content://go.police.provider.report"

    .line 2926
    .local v9, "customerAgreementPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2928
    .local v1, "cr":Landroid/content/ContentResolver;
    if-eqz v1, :cond_3

    .line 2929
    const-string v2, "content://go.police.provider.report"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2931
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2932
    const-string v2, "customer_agreement"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 2934
    .local v8, "customerAgreementColumn":I
    const/4 v2, -0x1

    if-eq v8, v2, :cond_2

    .line 2935
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    .line 2936
    .local v10, "customerAgreementValue":I
    const/4 v2, 0x1

    if-ne v2, v10, :cond_4

    const/4 v12, 0x1

    .line 2946
    .end local v8    # "customerAgreementColumn":I
    .end local v10    # "customerAgreementValue":I
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    .line 2947
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v7    # "c":Landroid/database/Cursor;
    :cond_3
    :goto_2
    move v2, v12

    .line 2952
    goto :goto_0

    .line 2936
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v8    # "customerAgreementColumn":I
    .restart local v10    # "customerAgreementValue":I
    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    .line 2943
    .end local v8    # "customerAgreementColumn":I
    .end local v10    # "customerAgreementValue":I
    :catch_1
    move-exception v11

    .line 2944
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2946
    if-eqz v7, :cond_3

    .line 2947
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2946
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_5

    .line 2947
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
.end method

.method public isPackageAvailable(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 3347
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3349
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3350
    const/4 v2, 0x1

    .line 3355
    :cond_0
    :goto_0
    return v2

    .line 3354
    :catch_0
    move-exception v0

    .line 3355
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public isPowerSave()Z
    .locals 1

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerSave:Z

    return v0
.end method

.method public isPreloadInstallComplete()Z
    .locals 4

    .prologue
    .line 4944
    const-string/jumbo v1, "persist.sys.storage_preload"

    const-string v2, "2"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 4945
    .local v0, "isPreloadInstallComplete":Z
    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPreloadInstallComplete = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4946
    return v0
.end method

.method public isRecentAppStart()Z
    .locals 1

    .prologue
    .line 3622
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/SystemManager;->getRecentLongPressMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3623
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->startCustomApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3624
    const/4 v0, 0x1

    .line 3627
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecentConsumed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2435
    iget-boolean v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRecentConsumed:Z

    if-eqz v1, :cond_0

    .line 2436
    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRecentConsumed:Z

    .line 2437
    const/4 v0, 0x1

    .line 2439
    :cond_0
    return v0
.end method

.method public isRingingOrOffhook()Z
    .locals 1

    .prologue
    .line 4114
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z

    return v0
.end method

.method public isSFinderLaunchable()Z
    .locals 1

    .prologue
    .line 4103
    const/4 v0, 0x0

    return v0
.end method

.method public isSafetyAssuranceEnabled()Z
    .locals 1

    .prologue
    .line 1137
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    return v0
.end method

.method public isScreenOffOnLongPressHome()Z
    .locals 4

    .prologue
    .line 3696
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3697
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/SystemManager;->getScreenOffOnHomeLongPressState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3698
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 3699
    const/4 v0, 0x1

    .line 3702
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowOrHideRecentAppsAllowedByKNOX()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3552
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3566
    :cond_0
    :goto_0
    return v1

    .line 3557
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3558
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    .line 3559
    .local v0, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v0, :cond_2

    .line 3560
    invoke-virtual {v0, v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .end local v0    # "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_2
    move v1, v2

    .line 3566
    goto :goto_0
.end method

.method public isSideSyncPresentationRunning()Z
    .locals 1

    .prologue
    .line 3883
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    return v0
.end method

.method public isSimLocked()Z
    .locals 1

    .prologue
    .line 4320
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSimLocked()Z

    move-result v0

    return v0
.end method

.method public isSupportActiveDouble()Z
    .locals 4

    .prologue
    .line 4547
    const/4 v1, 0x0

    .line 4548
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "double_press_app"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4550
    .local v0, "launch_app":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 4551
    const/4 v1, 0x0

    .line 4555
    :goto_0
    return v1

    .line 4553
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSupportBCM()Z
    .locals 1

    .prologue
    .line 4540
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mEM:Lcom/sec/android/emergencymode/EmergencyManager;

    if-nez v0, :cond_0

    .line 4541
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mEM:Lcom/sec/android/emergencymode/EmergencyManager;

    .line 4543
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mEM:Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportBatteryConversingMode()Z

    move-result v0

    return v0
.end method

.method public isTphoneRelaxMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4119
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isSktTphoneEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "skt_phone20_relax_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 4122
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isTripleTapOnHomeEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2188
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-static {v2}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isVzwSetupWizardRunning(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2189
    const-string v1, "SamsungWindowManager"

    const-string v2, "Home Triple Tap block when Verizon Setup Wizard Running"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    :cond_0
    :goto_0
    return v0

    .line 2194
    :cond_1
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isEasyOneHandEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->getEasyOneHandPkgVersion(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_2

    move v0, v1

    .line 2195
    goto :goto_0

    .line 2200
    :cond_2
    iget v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isUseAccessControl()Z
    .locals 1

    .prologue
    .line 1141
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    return v0
.end method

.method public isUvsOrientationRequested()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3889
    const-string v1, "LGT"

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->EnableLinuxCOMMONAPI4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3892
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method isVoIPRinging()Z
    .locals 5

    .prologue
    .line 4138
    const/4 v1, 0x0

    .line 4140
    .local v1, "isVoIPRinging":Z
    :try_start_0
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v2

    .line 4141
    .local v2, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v2, :cond_0

    .line 4142
    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPRinging()Z

    move-result v1

    .line 4149
    .end local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :goto_0
    return v1

    .line 4144
    .restart local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_0
    const-string v3, "SamsungWindowManager"

    const-string v4, "Unable to find IVoIPInterface interface"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4146
    .end local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :catch_0
    move-exception v0

    .line 4147
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "RemoteException from getVoIPInterfaceService()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isVolumeKeyAppsEnabled()Z
    .locals 1

    .prologue
    .line 3734
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getVolumeKeyAppState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3736
    const/4 v0, 0x1

    .line 3738
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWakeupPreventionPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4884
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsWakeupPrevention:Z

    if-eqz v0, :cond_0

    .line 4885
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mWakeupPreventionPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4886
    const/4 v0, 0x1

    .line 4890
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchDoubleTapOnHomeCommand()V
    .locals 6

    .prologue
    .line 2123
    iget v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-nez v3, :cond_1

    .line 2182
    :cond_0
    :goto_0
    return-void

    .line 2127
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->hasCustomDoubleTapHomeCommand()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2128
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->launchVoiceCommand()V

    goto :goto_0

    .line 2129
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2130
    iget-boolean v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAvailableDoublTapOnHomeCommand:Z

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDoubleTapOnHomeEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2131
    const-string v3, "SamsungWindowManager"

    const-string/jumbo v4, "launch double tap command"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v2

    .line 2134
    .local v2, "isSecureLock":Z
    :goto_1
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const-string/jumbo v4, "isSecure"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2135
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2136
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2137
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_7

    .line 2139
    :cond_3
    sget-boolean v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_4

    .line 2140
    const-string v3, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Add cleartask flag by policy: isShowing = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isScreenOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    :cond_4
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const v4, 0x24001000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2150
    :goto_2
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x20000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    .line 2151
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawnTarget(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2164
    :cond_5
    :goto_3
    :try_start_1
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2169
    :goto_4
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const-string/jumbo v4, "homekey"

    invoke-virtual {v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->closeSystemWindows(Ljava/lang/String;)V

    .line 2171
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 2172
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 2173
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    goto/16 :goto_0

    .line 2133
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "isSecureLock":Z
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 2146
    .restart local v2    # "isSecureLock":Z
    :cond_7
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const/high16 v4, 0x200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 2165
    :catch_0
    move-exception v0

    .line 2166
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "No activity to launch double tap command."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2176
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "isSecureLock":Z
    :cond_8
    const-string v3, "SamsungWindowManager"

    const-string v4, "Device is not available double tap command or setting"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->launchHome()V

    goto/16 :goto_0

    .line 2180
    :cond_9
    const-string v3, "SamsungWindowManager"

    const-string v4, "Device is not provisioned"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2153
    .restart local v2    # "isSecureLock":Z
    :catch_1
    move-exception v3

    goto :goto_3
.end method

.method public launchFingerPrint()V
    .locals 4

    .prologue
    .line 3361
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isSupportFingerPrint()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3362
    const-string v1, "SamsungWindowManager"

    const-string/jumbo v2, "launch fingerprint"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3364
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3371
    :goto_0
    return-void

    .line 3365
    :catch_0
    move-exception v0

    .line 3366
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "SamsungWindowManager"

    const-string v2, "No activity to handle fingerprint."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3369
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    const-string v1, "SamsungWindowManager"

    const-string v2, "Device is not supported, not launch fingerprint"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public launchFixedTask()V
    .locals 5

    .prologue
    .line 4752
    const-string v1, "SamsungWindowManager"

    const-string/jumbo v2, "launch Fixed Task for DualScreen"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4754
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getFixedTaskId()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4758
    :goto_0
    return-void

    .line 4755
    :catch_0
    move-exception v0

    .line 4756
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public launchHomeDuringVzwSetup()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2261
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isVzwSetupRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2262
    const-string/jumbo v1, "persist.sys.enablehomekey"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2263
    .local v0, "isHomeKeyEnabled":Z
    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Verizon Setup Wizard Running, launch home key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    .end local v0    # "isHomeKeyEnabled":Z
    :cond_0
    return v0
.end method

.method public launchPremiumWatch(Z)V
    .locals 6
    .param p1, "resetLaunchingFlag"    # Z

    .prologue
    .line 4450
    :try_start_0
    const-string v2, "SamsungWindowManager"

    const-string v3, "Premium watch on"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4452
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4453
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.intent.action.START_WATCH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4454
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4455
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4460
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    if-eqz p1, :cond_0

    .line 4461
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCleanWatchLaunchingFlagRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4462
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCleanWatchLaunchingFlagRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4464
    :cond_0
    return-void

    .line 4456
    :catch_0
    move-exception v0

    .line 4457
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "Fail to launch premium watch"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public launchSFinderIfPossible()Z
    .locals 1

    .prologue
    .line 4108
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSFinderLaunchPolicy:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSFinderLaunchPolicy:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    # invokes: Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->launch()Z
    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->access$1400(Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchSReminder()V
    .locals 5

    .prologue
    .line 4274
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const-string v3, "assist"

    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->closeSystemWindows(Ljava/lang/String;)V

    .line 4276
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.app.sreminder"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 4279
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 4280
    const-string v2, "FROM"

    const-string v3, "HOMEKEY"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4281
    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "launchSReminder "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4283
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4288
    :cond_0
    :goto_0
    return-void

    .line 4284
    :catch_0
    move-exception v0

    .line 4285
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "No activity to launch SReminder."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public launchSamsungHome()V
    .locals 6

    .prologue
    .line 4731
    const-string v3, "SamsungWindowManager"

    const-string/jumbo v4, "launch Samsung Home for DualScreen"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4732
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4733
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.dualscreen.intent.category.SAMSUNG_HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4734
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "left_home"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4735
    .local v0, "defaultValue":I
    if-gez v0, :cond_1

    .line 4745
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4749
    :goto_1
    return-void

    .line 4737
    :cond_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 4738
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.dailydigest"

    const-string v5, "com.sec.android.app.dailydigest.activities.DailyDigestActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 4740
    :cond_2
    if-nez v0, :cond_0

    .line 4741
    const-string v3, "com.samsung.android.app.headlines"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 4746
    :catch_0
    move-exception v1

    .line 4747
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "No activity to launch Samsung Home."

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public launchVoiceCommand()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2101
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDoubleTapOnHomeEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2102
    const-string v3, "SamsungWindowManager"

    const-string/jumbo v4, "launch voicecommand"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const-string/jumbo v4, "homekey"

    invoke-virtual {v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->closeSystemWindows(Ljava/lang/String;)V

    .line 2104
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v1

    .line 2105
    .local v1, "isSecureLock":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string/jumbo v4, "isSecure"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2106
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string v4, "AUTO_LISTEN"

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2107
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2109
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2116
    .end local v1    # "isSecureLock":Z
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 2104
    goto :goto_0

    .line 2110
    .restart local v1    # "isSecureLock":Z
    :catch_0
    move-exception v0

    .line 2111
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "No activity to launch voicecommand."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2114
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "isSecureLock":Z
    :cond_2
    const-string v2, "SamsungWindowManager"

    const-string v3, "Device is not provisioned or not available voice command."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public launchingGamekey(Z)Z
    .locals 9
    .param p1, "keyguardOn"    # Z

    .prologue
    const/4 v5, 0x0

    .line 4185
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->endCallByGamekey()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4186
    const/4 v5, 0x1

    .line 4221
    :cond_0
    :goto_0
    return v5

    .line 4187
    :cond_1
    if-nez p1, :cond_0

    .line 4192
    const-string v1, "com.sec.game.sga"

    .line 4193
    .local v1, "gamePkg":Ljava/lang/String;
    const-string v4, "com.sec.android.app.samsungapps"

    .line 4194
    .local v4, "samsungAppsPkg":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "samsungapps://ProductDetail/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4196
    .local v3, "pkgUri":Ljava/lang/String;
    const/4 v2, 0x0

    .line 4199
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 4204
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 4205
    invoke-direct {p0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->startSGA(Ljava/lang/String;)V

    goto :goto_0

    .line 4200
    :catch_0
    move-exception v0

    .line 4201
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v6, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "SamsungWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not exist. so try to download the SGA apps."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4208
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 4213
    :cond_4
    :goto_2
    if-eqz v2, :cond_6

    .line 4214
    sget-boolean v6, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_5

    const-string v6, "SamsungWindowManager"

    const-string v7, "SGA is not installed. so you are moving to Samsung apps."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4215
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->downloadForSGA(Ljava/lang/String;)V

    goto :goto_0

    .line 4209
    :catch_1
    move-exception v0

    .line 4210
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v6, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "SamsungWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not exist. so try to download the SGA apps."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4217
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    sget-boolean v6, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_7

    const-string v6, "SamsungWindowManager"

    const-string v7, "Samsung apps is not installed. so you are moving to Samsung apps download page."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4218
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->downloadForSamsungApps()V

    goto/16 :goto_0
.end method

.method public notifyCPFoldertype_changed(Z)V
    .locals 5
    .param p1, "lidOpen"    # Z

    .prologue
    .line 2957
    const/16 v0, 0x1000

    .line 2958
    .local v0, "FOLDER_STATE":I
    const-string/jumbo v3, "ril.backoffstate"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2959
    .local v1, "backoffstate":I
    if-eqz p1, :cond_1

    .line 2960
    and-int/lit16 v1, v1, -0x1001

    .line 2965
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v3, :cond_0

    .line 2966
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 2968
    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v3, :cond_2

    .line 2970
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/ITelephony;->setTransmitPower(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2977
    :goto_1
    return-void

    .line 2962
    :cond_1
    or-int/2addr v1, v0

    goto :goto_0

    .line 2971
    :catch_0
    move-exception v2

    .line 2972
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "RemoteException occurs in setTransmitPower"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2975
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v3, "SamsungWindowManager"

    const-string/jumbo v4, "mPhoneService is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public notifyCoverSwitchChanged(JZ)V
    .locals 5
    .param p1, "whenNanos"    # J
    .param p3, "coverOpen"    # Z

    .prologue
    .line 3120
    iget-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoverNoteEnabled:Z

    if-nez v2, :cond_1

    .line 3133
    :cond_0
    :goto_0
    return-void

    .line 3123
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    if-nez p3, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasDaynotePackage:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3124
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3125
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.daynote"

    const-string v3, "com.sec.android.daynote.DayNoteActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3126
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3128
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3129
    :catch_0
    move-exception v0

    .line 3130
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "No activity to launch daynote activity."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public notifyLidSwitchChangedForFolder(JZ)V
    .locals 4
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2979
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->performCPUBoost()V

    .line 2981
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v2, :cond_0

    if-ne p3, v2, :cond_0

    .line 2983
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2985
    iget-boolean v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->bIsTorchOn:Z

    if-eqz v1, :cond_0

    .line 2986
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->handleTorchKey()V

    .line 2990
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1, p3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->changeLidState(Z)V

    .line 2991
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    if-eqz p3, :cond_1

    .line 2992
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2993
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2994
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1, v3, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->keyguardDone(ZZ)V

    .line 2999
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFlipFolderOpenedIntent:Landroid/content/Intent;

    const-string/jumbo v2, "flipOpen"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3000
    sget-boolean v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_2

    .line 3001
    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Flip Folder open = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , broadcasted."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFlipFolderOpenedIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3005
    iget-boolean v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFolderSoundEnable:Z

    if-eqz v1, :cond_4

    .line 3006
    if-eqz p3, :cond_5

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFolderOpenSound:Ljava/lang/String;

    .line 3007
    .local v0, "soundPath":Ljava/lang/String;
    :goto_0
    sget-boolean v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_3

    .line 3008
    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Folder open/close soundPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3009
    :cond_3
    if-eqz v0, :cond_4

    .line 3010
    invoke-direct {p0, v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->playSound(Ljava/lang/String;)V

    .line 3019
    .end local v0    # "soundPath":Ljava/lang/String;
    :cond_4
    return-void

    .line 3006
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFolderCloseSound:Ljava/lang/String;

    goto :goto_0
.end method

.method public notifyPenSwitchChanged(JZZ)V
    .locals 15
    .param p1, "whenNanos"    # J
    .param p3, "penInsert"    # Z
    .param p4, "isBootComplete"    # Z

    .prologue
    .line 3023
    if-eqz p3, :cond_2

    const/4 v3, 0x1

    .line 3024
    .local v3, "newPenState":I
    :goto_0
    const/4 v4, 0x1

    .line 3025
    .local v4, "playSound":Z
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v9}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v6

    .line 3026
    .local v6, "screenOn":Z
    sget-boolean v9, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "SamsungWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "newPenState : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mPenState : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenState:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3027
    :cond_0
    iget v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenState:I

    if-ne v3, v9, :cond_3

    .line 3096
    :cond_1
    :goto_1
    return-void

    .line 3023
    .end local v3    # "newPenState":I
    .end local v4    # "playSound":Z
    .end local v6    # "screenOn":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 3029
    .restart local v3    # "newPenState":I
    .restart local v4    # "playSound":Z
    .restart local v6    # "screenOn":Z
    :cond_3
    iget v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenState:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_4

    .line 3030
    const/4 v4, 0x0

    .line 3032
    :cond_4
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "spen_feedback_sound"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-nez v9, :cond_5

    .line 3033
    const/4 v4, 0x0

    .line 3036
    :cond_5
    sget-boolean v9, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v9, :cond_6

    const-string v9, "SamsungWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "playSound : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", screenOn : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    :cond_6
    iput v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenState:I

    .line 3040
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "pen_detachment_notification"

    const/4 v11, -0x2

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 3043
    .local v7, "sound":Ljava/lang/String;
    if-eqz v7, :cond_b

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 3045
    .local v8, "soundPath":[Ljava/lang/String;
    :goto_2
    const/4 v2, 0x0

    .line 3046
    .local v2, "enableScreenOffMemo":Z
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 3047
    .local v5, "screenOffMemoIntent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "action_memo_on_off_screen"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-eqz v9, :cond_c

    .line 3049
    const/4 v2, 0x1

    .line 3050
    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.samsung.android.snote"

    const-string v11, "com.samsung.android.snote.control.ui.quickmemo.service.InstantMemo_Service"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3057
    :cond_7
    :goto_3
    if-eqz p3, :cond_d

    .line 3059
    if-eqz v4, :cond_8

    if-eqz v7, :cond_8

    :try_start_0
    array-length v9, v8

    const/4 v10, 0x1

    if-le v9, v10, :cond_8

    const/4 v9, 0x0

    aget-object v9, v8, v9

    invoke-direct {p0, v9}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->playSound(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3062
    :cond_8
    :goto_4
    iget-boolean v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    if-eqz v9, :cond_9

    if-nez p4, :cond_9

    .line 3063
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const v10, 0xc36d

    const/4 v11, -0x1

    const/4 v12, 0x0

    sget-object v13, Landroid/os/Vibrator$MagnitudeTypes;->MaxMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 3085
    :cond_9
    :goto_5
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string/jumbo v10, "penInsert"

    move/from16 v0, p3

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3086
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string/jumbo v10, "isScreenOn"

    invoke-virtual {v9, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3087
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string/jumbo v10, "isKeyguardLocked"

    iget-object v11, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v11}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3089
    iget-object v10, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string/jumbo v11, "isBoot"

    const-wide/16 v12, 0x0

    cmp-long v9, p1, v12

    if-nez v9, :cond_12

    const/4 v9, 0x1

    :goto_6
    invoke-virtual {v10, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3090
    sget-boolean v9, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v9, :cond_a

    const-string v9, "SamsungWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "pen = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , broadcasted."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3091
    :cond_a
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3093
    if-eqz v2, :cond_1

    const-wide/16 v10, 0x0

    cmp-long v9, p1, v10

    if-eqz v9, :cond_1

    if-nez p3, :cond_1

    .line 3094
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v9, v5, v10}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 3043
    .end local v2    # "enableScreenOffMemo":Z
    .end local v5    # "screenOffMemoIntent":Landroid/content/Intent;
    .end local v8    # "soundPath":[Ljava/lang/String;
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 3051
    .restart local v2    # "enableScreenOffMemo":Z
    .restart local v5    # "screenOffMemoIntent":Landroid/content/Intent;
    .restart local v8    # "soundPath":[Ljava/lang/String;
    :cond_c
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "screen_off_memo"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-eqz v9, :cond_7

    .line 3053
    const/4 v2, 0x1

    .line 3054
    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.samsung.android.app.notes"

    const-string v11, "com.samsung.android.app.notes.screenoffmemo.ScreenOffMemoService"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 3065
    :cond_d
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v9}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 3066
    if-nez v2, :cond_e

    .line 3067
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v12, 0x4

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/PowerManager;->wakeUp(JI)V

    .line 3078
    :cond_e
    :goto_7
    if-eqz v4, :cond_f

    if-eqz v7, :cond_f

    :try_start_1
    array-length v9, v8

    const/4 v10, 0x1

    if-le v9, v10, :cond_f

    const/4 v9, 0x1

    aget-object v9, v8, v9

    invoke-direct {p0, v9}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->playSound(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3081
    :cond_f
    :goto_8
    iget-boolean v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    if-eqz v9, :cond_9

    if-nez p4, :cond_9

    .line 3082
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const v10, 0xc369

    const/4 v11, -0x1

    const/4 v12, 0x0

    sget-object v13, Landroid/os/Vibrator$MagnitudeTypes;->MaxMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    goto/16 :goto_5

    .line 3070
    :cond_10
    if-eqz v6, :cond_11

    .line 3071
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_7

    .line 3072
    :cond_11
    if-nez v2, :cond_e

    .line 3073
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v12, 0x4

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/PowerManager;->wakeUp(JI)V

    goto :goto_7

    .line 3089
    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 3079
    :catch_0
    move-exception v9

    goto :goto_8

    .line 3060
    :catch_1
    move-exception v9

    goto/16 :goto_4
.end method

.method public performCPUBoost()V
    .locals 9

    .prologue
    .line 3203
    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 3204
    :try_start_0
    sget-object v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    .line 3205
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "WAKEUP_BOOSTER"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 3206
    sget-object v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    .line 3207
    sget-object v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    const-string v1, "Device_wakeup"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 3210
    :cond_0
    sget-object v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 3212
    :try_start_1
    sget-object v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    sget v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3219
    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2

    .line 3220
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "WAKEUP_CORE_BOOSTER"

    const/16 v3, 0xe

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    .line 3222
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2

    .line 3223
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v6

    .line 3224
    .local v6, "coreNumTable":[I
    if-eqz v6, :cond_2

    array-length v0, v6

    if-lez v0, :cond_2

    .line 3225
    const/4 v0, 0x0

    aget v0, v6, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 3226
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    sget v2, Landroid/os/DVFSHelper;->WAKEUP_BOOSTER_CORE_NUM:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 3230
    .end local v6    # "coreNumTable":[I
    :cond_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3231
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_3

    .line 3233
    :try_start_3
    const-string v0, "SamsungWindowManager"

    const-string/jumbo v1, "mCoreNumLockHelper.acquire"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3234
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    sget v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 3240
    :cond_3
    :goto_1
    return-void

    .line 3213
    :catch_0
    move-exception v7

    .line 3214
    .local v7, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v0, "SamsungWindowManager"

    const-string/jumbo v1, "mCpuBooster.acquire is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3215
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3230
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 3235
    :catch_1
    move-exception v7

    .line 3236
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v0, "SamsungWindowManager"

    const-string/jumbo v1, "mCoreNumLockHelper.acquire is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3237
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 16
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .prologue
    .line 2753
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v11}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v11

    if-nez v11, :cond_0

    .line 2754
    const/4 v11, 0x0

    .line 2894
    :goto_0
    return v11

    .line 2757
    :cond_0
    const/4 v5, 0x0

    .line 2759
    .local v5, "hapticsDisabledByPowerSavingMode":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "haptic_feedback_enabled"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    if-nez v11, :cond_6

    const/4 v4, 0x1

    .line 2763
    .local v4, "hapticsDisabled":Z
    :goto_1
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isPowerSavingMode()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 2764
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "psm_switch"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "powersaving_switch"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    const/4 v9, 0x1

    .line 2773
    .local v9, "powerSavingModeEnabled":Z
    :goto_2
    if-eqz v9, :cond_2

    .line 2774
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "psm_haptic_feedback"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a

    const/4 v10, 0x1

    .line 2777
    .local v10, "turnOffHapticFeedbackEnabled":Z
    :goto_3
    if-eqz v10, :cond_2

    .line 2778
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "psm_auto_turn_on"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_b

    const/4 v8, 0x1

    .line 2781
    .local v8, "powerSavingAutoModeEnabled":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "isLowLevel"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c

    const/4 v6, 0x1

    .line 2783
    .local v6, "isLowLevelBattery":Z
    :goto_5
    sget-boolean v11, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v11, :cond_1

    .line 2784
    const-string v11, "SamsungWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Check haptic disabled policy : powerSavingAutoModeEnabled = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " isLowLevelBattery = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    :cond_1
    if-eqz v8, :cond_d

    .line 2789
    if-eqz v6, :cond_2

    .line 2790
    const/4 v5, 0x1

    .line 2800
    .end local v6    # "isLowLevelBattery":Z
    .end local v8    # "powerSavingAutoModeEnabled":Z
    .end local v10    # "turnOffHapticFeedbackEnabled":Z
    :cond_2
    :goto_6
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v11

    const-string v12, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v11

    const-string v12, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v11

    const-string v12, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 2802
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "emergency_mode"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_e

    const/4 v3, 0x1

    .line 2810
    .local v3, "emergencyModeEnabled":Z
    :goto_7
    const-string v11, "SamsungWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "f.b. a = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " psme = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " hdpsm = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " hd = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " lpm = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mLowPowerMode:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " eme = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ksno = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v13}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ps = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerSave:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2814
    if-nez p3, :cond_10

    if-eqz v9, :cond_4

    if-nez v5, :cond_5

    :cond_4
    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mLowPowerMode:Z

    if-nez v11, :cond_5

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v11}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v11

    if-nez v11, :cond_5

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerSave:Z

    if-eqz v11, :cond_10

    .line 2817
    :cond_5
    const-string v11, "SamsungWindowManager"

    const-string/jumbo v12, "haptic disabled by policy"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2818
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2759
    .end local v3    # "emergencyModeEnabled":Z
    .end local v4    # "hapticsDisabled":Z
    .end local v9    # "powerSavingModeEnabled":Z
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 2764
    .restart local v4    # "hapticsDisabled":Z
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 2769
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "psm_switch"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9

    const/4 v9, 0x1

    .restart local v9    # "powerSavingModeEnabled":Z
    :goto_8
    goto/16 :goto_2

    .end local v9    # "powerSavingModeEnabled":Z
    :cond_9
    const/4 v9, 0x0

    goto :goto_8

    .line 2774
    .restart local v9    # "powerSavingModeEnabled":Z
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 2778
    .restart local v10    # "turnOffHapticFeedbackEnabled":Z
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 2781
    .restart local v8    # "powerSavingAutoModeEnabled":Z
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 2793
    .restart local v6    # "isLowLevelBattery":Z
    :cond_d
    const/4 v5, 0x1

    goto/16 :goto_6

    .line 2802
    .end local v6    # "isLowLevelBattery":Z
    .end local v8    # "powerSavingAutoModeEnabled":Z
    .end local v10    # "turnOffHapticFeedbackEnabled":Z
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 2806
    :cond_f
    const/4 v3, 0x0

    .restart local v3    # "emergencyModeEnabled":Z
    goto/16 :goto_7

    .line 2821
    :cond_10
    sget-boolean v11, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v11, :cond_11

    .line 2822
    if-eqz p1, :cond_11

    .line 2823
    const-string v11, "SamsungWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "haptic feedback for : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    :cond_11
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v11}, Landroid/os/Vibrator;->isEnableIntensity()Z

    move-result v11

    if-eqz v11, :cond_13

    .line 2828
    sparse-switch p2, :sswitch_data_0

    .line 2846
    invoke-static/range {p2 .. p2}, Landroid/view/HapticFeedbackConstants;->isValidatedVibeIndex(I)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 2847
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v12, -0x1

    const/4 v13, 0x0

    sget-object v14, Landroid/os/Vibrator$MagnitudeTypes;->TouchMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    move/from16 v0, p2

    invoke-virtual {v11, v0, v12, v13, v14}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 2849
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2830
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const v12, 0xc369

    const/4 v13, -0x1

    const/4 v14, 0x0

    sget-object v15, Landroid/os/Vibrator$MagnitudeTypes;->TouchMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 2832
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2837
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const v12, 0xc36a

    const/4 v13, -0x1

    const/4 v14, 0x0

    sget-object v15, Landroid/os/Vibrator$MagnitudeTypes;->TouchMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 2839
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2841
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const v12, 0xc36b

    const/4 v13, -0x1

    const/4 v14, 0x0

    sget-object v15, Landroid/os/Vibrator$MagnitudeTypes;->TouchMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 2843
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2852
    :cond_12
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2854
    :cond_13
    const/4 v2, 0x0

    .line 2855
    .local v2, "duration":I
    sparse-switch p2, :sswitch_data_1

    .line 2890
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2859
    :sswitch_3
    const/16 v2, 0x32

    .line 2892
    :goto_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    int-to-long v12, v2

    invoke-virtual {v11, v12, v13}, Landroid/os/Vibrator;->vibrate(J)V

    .line 2894
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2864
    :sswitch_4
    const/16 v2, 0x32

    .line 2865
    goto :goto_9

    .line 2868
    :sswitch_5
    const/16 v2, 0x64

    .line 2869
    goto :goto_9

    .line 2872
    :sswitch_6
    const/16 v2, 0x1f4

    .line 2873
    goto :goto_9

    .line 2876
    :sswitch_7
    const/16 v2, 0x5dc

    .line 2877
    goto :goto_9

    .line 2879
    :sswitch_8
    const/16 v2, 0xfa

    .line 2880
    goto :goto_9

    .line 2882
    :sswitch_9
    const/4 v11, 0x4

    new-array v7, v11, [J

    fill-array-data v7, :array_0

    .line 2883
    .local v7, "pattern":[J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v12, -0x1

    invoke-virtual {v11, v7, v12}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 2884
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2887
    .end local v7    # "pattern":[J
    :sswitch_a
    const/16 v2, 0x32

    .line 2888
    goto :goto_9

    .line 2828
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_1
        0xc35a -> :sswitch_2
        0xc35e -> :sswitch_1
    .end sparse-switch

    .line 2855
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_3
        0x3 -> :sswitch_3
        0xc359 -> :sswitch_4
        0xc35a -> :sswitch_5
        0xc35c -> :sswitch_6
        0xc35d -> :sswitch_7
        0xc35e -> :sswitch_a
        0xc360 -> :sswitch_8
        0xc361 -> :sswitch_9
        0xc362 -> :sswitch_7
    .end sparse-switch

    .line 2882
    :array_0
    .array-data 8
        0x0
        0xfa
        0xfa
        0xfa
    .end array-data
.end method

.method public performHomeBoost()V
    .locals 5

    .prologue
    .line 3270
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3271
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3272
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    sget v2, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v0, v2}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 3275
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3276
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    sget v2, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v0, v2}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 3279
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3280
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    sget v2, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v0, v2}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 3283
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3284
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    sget v2, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v0, v2}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 3287
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "AMS_RESUME_BOOST_CSTATE"

    const/4 v4, 0x3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/DVFSHelper;->onActivityResumeEvent(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3288
    monitor-exit v1

    .line 3289
    return-void

    .line 3288
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public performSystemKeyFeedback(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const v3, 0xc35e

    const/4 v2, 0x0

    .line 2687
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "SPC_Remote_Controller"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2733
    :cond_0
    :goto_0
    return-void

    .line 2693
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 2718
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2720
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->isEnableIntensity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2721
    invoke-virtual {p0, v4, v3, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2723
    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->playSoundEffect()V

    goto :goto_0

    .line 2699
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "gpio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isHMTSupportAndConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMobileKeyboardEnabled:Z

    if-nez v0, :cond_0

    .line 2703
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->isEnableIntensity()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2704
    invoke-virtual {p0, v4, v3, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2706
    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->playSoundEffect()V

    goto :goto_0

    .line 2710
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->hasQwertyKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2711
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->isEnableIntensity()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2712
    invoke-virtual {p0, v4, v3, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2714
    :cond_4
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->playSoundEffect()V

    goto :goto_0

    .line 2730
    :sswitch_3
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->playSoundEffect()V

    goto :goto_0

    .line 2693
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x1b -> :sswitch_3
        0x52 -> :sswitch_1
        0x54 -> :sswitch_2
        0xbb -> :sswitch_1
        0xcf -> :sswitch_3
        0x3e9 -> :sswitch_1
        0x430 -> :sswitch_3
        0x431 -> :sswitch_3
    .end sparse-switch
.end method

.method public processTorchlight(IZZ)V
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z
    .param p3, "interactive"    # Z

    .prologue
    .line 3390
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightEnabled:Z

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    .line 3391
    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    .line 3392
    if-eqz p2, :cond_1

    .line 3393
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3394
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3406
    :cond_0
    :goto_0
    return-void

    .line 3396
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3399
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3400
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightOn:Z

    if-eqz v0, :cond_0

    .line 3401
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->TorchModeFlashSet(I)V

    .line 3402
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public sendBroadcastForAccessibility()V
    .locals 4

    .prologue
    .line 2204
    const-string v1, "SamsungWindowManager"

    const-string/jumbo v2, "sendBroadcastForAccessibility() is called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.HOME_TRIPLE_CLICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2207
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "com.samsung.permission.HOME_TRIPLE_CLICK"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2209
    return-void
.end method

.method public sendBroadcastForSafetyAssurance()V
    .locals 3

    .prologue
    .line 2240
    const-string v1, "SamsungWindowManager"

    const-string/jumbo v2, "sendBroadcastForSafetyAssurance() is called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSafetyAssuranceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2243
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SAFETY_MESSAGE_TRIGGER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2244
    .local v0, "safetyMessage":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2245
    const-string v1, "SamsungWindowManager"

    const-string v2, "Safety mesage broadcasted"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    .end local v0    # "safetyMessage":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public sendHomeDoubleClickBR()V
    .locals 4

    .prologue
    .line 4911
    sget-boolean v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungWindowManager"

    const-string/jumbo v2, "send HomeDoubleClickBR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4912
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.action.HOME_DOUBLE_CLICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4913
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "com.samsung.android.permisson.HOME_DOUBLE_CLICK"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 4914
    return-void
.end method

.method public sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3868
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_1

    .line 3870
    sget-boolean v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System key send to sidesync.source keycode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3871
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3872
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.sidesync.source"

    const-string v2, "com.sec.android.sidesync.source.WimpService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3873
    const-string v1, "com.sec.android.intent.action.SYSTEM_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3874
    const-string v1, "KEYCODE"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3875
    const-string v1, "ACTION"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3876
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3877
    const/4 v1, 0x1

    .line 3879
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAppLockedStatus()V
    .locals 3

    .prologue
    .line 4763
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4765
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    .line 4766
    invoke-virtual {v0}, Landroid/app/ActivityManager;->clearAppLockedUnLockedApp()V

    .line 4768
    :cond_0
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 3539
    sput p1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCurrentUser:I

    .line 3540
    return-void
.end method

.method public setFingerPrintPending()V
    .locals 1

    .prologue
    .line 3374
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    .line 3375
    return-void
.end method

.method public setMultiPhoneWindowManager(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    .prologue
    .line 770
    iput-object p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    .line 771
    return-void
.end method

.method public setProKioskReEnableVolumeUpKey(Z)V
    .locals 0
    .param p1, "proKioskReEnableVolumeUpKey"    # Z

    .prologue
    .line 3688
    iput-boolean p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskReEnableVolumeUpKey:Z

    .line 3689
    return-void
.end method

.method public setRotationLw(I)V
    .locals 7
    .param p1, "rotation"    # I

    .prologue
    .line 3176
    const-string v0, "SamsungWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRotationLw() : rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3178
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_0

    .line 3180
    invoke-direct {p0, p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->updateWacomOffset(I)V

    .line 3185
    :cond_0
    iget-object v6, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3186
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRotationBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_1

    .line 3187
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "ROTATION_BOOSTER"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRotationBooster:Landroid/os/DVFSHelper;

    .line 3189
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRotationBooster:Landroid/os/DVFSHelper;

    const-string v1, "PhoneWindowManager_rotation"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 3191
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3192
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRotationBooster:Landroid/os/DVFSHelper;

    sget v1, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 3193
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRotationBooster:Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "ROTATION_BOOSTER"

    invoke-virtual {v0, v1, v2}, Landroid/os/DVFSHelper;->onWindowRotationEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 3195
    return-void

    .line 3191
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public showBottomKeyPanel(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    .line 3838
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.easybottompanel"

    const-string v4, "com.sec.android.easybottompanel.EasyBottomPanelService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3840
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.action.EASYBOTTOMPANEL_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 3841
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    const-string v3, "Show"

    :goto_0
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3843
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3848
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 3841
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v3, "Hide"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3844
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 3845
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SamsungWindowManager"

    const-string v4, "Exception showBottomKeyPanelState: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public showRecentApps(Z)Z
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    .line 3508
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isShowOrHideRecentAppsAllowedByKNOX()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3509
    const/4 v0, 0x1

    .line 3511
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startAodService(I)Z
    .locals 4
    .param p1, "aodStartState"    # I

    .prologue
    const/4 v3, -0x2

    const/4 v0, 0x0

    .line 4798
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "aod_mode"

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "aod_night_mode"

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    .line 4800
    :cond_0
    iput p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAodStartState:I

    .line 4801
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$26;

    invoke-direct {v1, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$26;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4829
    const/4 v0, 0x1

    .line 4831
    :cond_1
    return v0
.end method

.method public stopEasyOneHandervice(I)V
    .locals 2
    .param p1, "stopReason"    # I

    .prologue
    .line 3776
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->getEasyOneHandPkgVersion(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 3777
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$19;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$19;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3791
    :cond_0
    return-void
.end method

.method public systemBooted()V
    .locals 4

    .prologue
    .line 799
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 801
    :try_start_0
    const-string/jumbo v2, "kioskmode"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/kioskmode/IKioskMode;

    move-result-object v1

    .line 803
    .local v1, "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    if-eqz v1, :cond_0

    .line 804
    invoke-interface {v1}, Landroid/app/enterprise/kioskmode/IKioskMode;->getBlockedHwKeysCache()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    .line 805
    const-string v2, "SamsungWindowManager"

    const-string v3, "Blocked hw keys cache is being refreshed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 813
    .end local v1    # "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    :cond_0
    :goto_0
    sget v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAODVersion:I

    if-lez v2, :cond_1

    .line 814
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->startAodService(I)Z

    .line 818
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$10;

    invoke-direct {v3, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$10;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 824
    return-void

    .line 807
    :catch_0
    move-exception v0

    .line 808
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "Exception while getting kiosk mode service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public systemReady(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V
    .locals 2
    .param p1, "keyguardDelegate"    # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .prologue
    .line 775
    iput-object p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 776
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewConfiguration;->hasFakeMenuKey(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFakeMenuKeyRecent:Z

    .line 777
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewConfiguration;->hasFakeMenuKey(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFakeMenuKeyBack:Z

    .line 780
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasPermanentMenuKey:Z

    .line 781
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsSupportManualScreenPinning:Z

    .line 782
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/server/policy/sec/CombinationKeyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/CombinationKeyManager;->onSystemReady()V

    .line 784
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 785
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$9;

    invoke-direct {v1, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$9;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 795
    :cond_0
    return-void
.end method

.method public takeScreenshot(I)V
    .locals 18
    .param p1, "event"    # I

    .prologue
    .line 2513
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isScreenCaptureEnabled()Z

    move-result v14

    if-nez v14, :cond_1

    .line 2514
    sget-boolean v14, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v14, :cond_0

    const-string v14, "SamsungWindowManager"

    const-string v15, "can not takescreenshot"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    :cond_0
    :goto_0
    return-void

    .line 2518
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v15

    .line 2519
    :try_start_0
    sget-boolean v14, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v14, :cond_2

    .line 2520
    const-string v14, "SamsungWindowManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "takeScreenshot : event = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", mPerformEditAfterScreenCapture = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", mServiceConnectionMap.size() = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2525
    :cond_2
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 2527
    .local v4, "curr":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v13

    .line 2528
    .local v13, "versionInfo":Landroid/os/Bundle;
    const-string v14, "2.0"

    const-string/jumbo v16, "version"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 2529
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v16, "persona"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PersonaManager;

    .line 2530
    .local v9, "pm":Landroid/os/PersonaManager;
    invoke-virtual {v9}, Landroid/os/PersonaManager;->getFocusedUser()I

    move-result v6

    .line 2532
    .local v6, "currUser":I
    const-string v14, "SamsungWindowManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "screenshot: current active user is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v16, "user"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/UserManager;

    .line 2535
    .local v12, "um":Landroid/os/UserManager;
    invoke-virtual {v12, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 2536
    .local v5, "currInfo":Landroid/content/pm/UserInfo;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 2537
    new-instance v4, Landroid/os/UserHandle;

    .end local v4    # "curr":Landroid/os/UserHandle;
    invoke-direct {v4, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 2540
    .restart local v4    # "curr":Landroid/os/UserHandle;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v8

    .line 2541
    .local v8, "isKioskContainer":Z
    if-eqz v8, :cond_4

    if-nez v6, :cond_4

    .line 2542
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const v16, 0x1040b7c

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v16, "KNOX"

    const-string v17, "Knox"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 2543
    .local v11, "toastMSG":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v11, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 2544
    monitor-exit v15

    goto/16 :goto_0

    .line 2572
    .end local v4    # "curr":Landroid/os/UserHandle;
    .end local v5    # "currInfo":Landroid/content/pm/UserInfo;
    .end local v6    # "currUser":I
    .end local v8    # "isKioskContainer":Z
    .end local v9    # "pm":Landroid/os/PersonaManager;
    .end local v11    # "toastMSG":Ljava/lang/String;
    .end local v12    # "um":Landroid/os/UserManager;
    .end local v13    # "versionInfo":Landroid/os/Bundle;
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 2548
    .restart local v4    # "curr":Landroid/os/UserHandle;
    .restart local v13    # "versionInfo":Landroid/os/Bundle;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    if-eqz v14, :cond_6

    .line 2549
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 2550
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v14, 0x10000000

    invoke-virtual {v7, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2551
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFlashAnnotateServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v7, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2552
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v7, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2572
    :cond_5
    :goto_1
    monitor-exit v15

    goto/16 :goto_0

    .line 2554
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v14

    const/16 v16, 0x3

    move/from16 v0, v16

    if-lt v14, v0, :cond_7

    .line 2555
    monitor-exit v15

    goto/16 :goto_0

    .line 2557
    :cond_7
    new-instance v2, Landroid/content/ComponentName;

    const-string v14, "com.android.systemui"

    const-string v16, "com.android.systemui.screenshot.TakeScreenshotService"

    move-object/from16 v0, v16

    invoke-direct {v2, v14, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2559
    .local v2, "cn":Landroid/content/ComponentName;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 2560
    .restart local v7    # "intent":Landroid/content/Intent;
    invoke-virtual {v7, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2561
    new-instance v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V

    .line 2563
    .local v3, "conn":Landroid/content/ServiceConnection;
    const-string v14, "SamsungWindowManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " screenshot is taken for user "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2565
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v7, v3, v0, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 2567
    new-instance v10, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenshotRunnable;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v3}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenshotRunnable;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Landroid/content/ServiceConnection;)V

    .line 2568
    .local v10, "runnable":Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenshotRunnable;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v14, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2569
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v16, 0x2710

    move-wide/from16 v0, v16

    invoke-virtual {v14, v10, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public triggerPanicCall()V
    .locals 3

    .prologue
    .line 2252
    const-string v1, "SamsungWindowManager"

    const-string/jumbo v2, "triggerPanicCall() is called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string/jumbo v2, "tel:112"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2254
    .local v0, "callIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2255
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2256
    return-void
.end method

.method public updateBottomKeyPanelState(ZZ)V
    .locals 5
    .param p1, "init"    # Z
    .param p2, "maximize"    # Z

    .prologue
    .line 3815
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.easybottompanel"

    const-string v4, "com.sec.android.easybottompanel.EasyBottomPanelService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3817
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.action.EASYBOTTOMPANEL_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 3819
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 3820
    const-string v3, "Softkey"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3828
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3833
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 3822
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_0
    if-eqz p2, :cond_1

    .line 3823
    const-string v3, "Maximize"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3829
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 3830
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SamsungWindowManager"

    const-string v4, "Exception updateEasyBottomPanelState: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3825
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :try_start_1
    const-string v3, "Minimize"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public updateEasyOneHandState(ZZZ)V
    .locals 7
    .param p1, "isLeftHand"    # Z
    .param p2, "isShow"    # Z
    .param p3, "isHomeKey"    # Z

    .prologue
    .line 3746
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->getCoverStateSwitch()Z

    move-result v3

    .line 3747
    .local v3, "isCoverOpen":Z
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateEasyOneHandState() isLeftHand="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isShow="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isCoverOpen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isHomeKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3749
    if-nez v3, :cond_0

    .line 3770
    :goto_0
    return-void

    .line 3754
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.easyonehand"

    const-string v5, "com.sec.android.easyonehand.EasyOneHandService"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3756
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.action.EASYONEHAND_SERVICE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 3758
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_1

    .line 3759
    const-string v4, "StartByHomeKey"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3760
    const-string v4, "LeftHandMode"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3765
    :goto_1
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3766
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 3767
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "SamsungWindowManager"

    const-string v5, "Exception updateEasyOneHandService: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3762
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :try_start_1
    const-string v4, "ForceHide"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public updateSettings()V
    .locals 29

    .prologue
    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    .line 962
    .local v21, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 964
    :try_start_0
    const-string v24, "double_tab_launch_component"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 965
    .local v5, "componentNameOfDoubleTapOnHomeCommandIntent":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 966
    const-string v24, "/"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 967
    .local v22, "titles":[Ljava/lang/String;
    if-eqz v22, :cond_0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v24, v0

    const/16 v26, 0x2

    move/from16 v0, v24

    move/from16 v1, v26

    if-lt v0, v1, :cond_0

    .line 968
    new-instance v19, Landroid/content/ComponentName;

    const/16 v24, 0x0

    aget-object v24, v22, v24

    const/16 v26, 0x1

    aget-object v26, v22, v26

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    .local v19, "newComponentName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    move-object/from16 v24, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 971
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isActivitiesAvailable(Landroid/content/Intent;)Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAvailableDoublTapOnHomeCommand:Z

    .line 978
    .end local v19    # "newComponentName":Landroid/content/ComponentName;
    .end local v22    # "titles":[Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapHomeUser:I

    .line 979
    const-string v24, "double_tab_launch"

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 980
    .local v6, "doubleTapOnHomeBehavior":I
    const-string v24, "SamsungWindowManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "updateSettings(). settings changed. doubleTapOnHomeBehavior : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ". mDoubleTapOnHomeBehavior : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ". mDoubleTapHomeUser "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapHomeUser:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v0, v6, :cond_1

    .line 984
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 989
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v26, "direct_access"

    const/16 v27, 0x0

    const/16 v28, -0x2

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v23

    .line 991
    .local v23, "tripleTapOnHomeBehavior":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    .line 992
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    .line 997
    :cond_2
    const-string/jumbo v24, "lcd_curtain"

    const/16 v26, 0x0

    const/16 v27, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v24

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_12

    const-string v24, "accessibility_enabled"

    const/16 v26, 0x0

    const/16 v27, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v24

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_12

    const/16 v24, 0x1

    :goto_0
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerDoubleBehavior:Z

    .line 1002
    const-string v24, "edit_after_screen_capture"

    const/16 v26, 0x0

    const/16 v27, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v24

    if-eqz v24, :cond_13

    const/16 v20, 0x1

    .line 1004
    .local v20, "performEditAfterScreenCapture":Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    .line 1005
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    .line 1010
    :cond_3
    const-string/jumbo v24, "send_emergency_message"

    const/16 v26, 0x0

    const/16 v27, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v24

    if-eqz v24, :cond_14

    const/4 v14, 0x1

    .line 1012
    .local v14, "isSafetyAssuranceEnabled":Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v0, v14, :cond_4

    .line 1013
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    .line 1018
    :cond_4
    const-string v24, "access_control_use"

    const/16 v26, 0x0

    const/16 v27, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v24

    if-eqz v24, :cond_15

    const/16 v17, 0x1

    .line 1020
    .local v17, "isUseAccessControl":Z
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    .line 1021
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    .line 1023
    :cond_5
    const-string v24, "access_control_enabled"

    const/16 v26, 0x0

    const/16 v27, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v24

    if-eqz v24, :cond_16

    const/4 v11, 0x1

    .line 1025
    .local v11, "isEnabledAccessControl":Z
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v0, v11, :cond_6

    .line 1026
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    .line 1031
    :cond_6
    const-string/jumbo v24, "kids_home_mode"

    const/16 v26, 0x0

    const/16 v27, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v24

    if-eqz v24, :cond_17

    const/4 v12, 0x1

    .line 1033
    .local v12, "isKidsMode":Z
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v0, v12, :cond_7

    .line 1034
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    .line 1039
    :cond_7
    const-string v24, "easy_mode_switch"

    const/16 v26, 0x1

    const/16 v27, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v24

    if-nez v24, :cond_18

    const/4 v10, 0x1

    .line 1041
    .local v10, "isEasyMode":Z
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v0, v10, :cond_8

    .line 1042
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    .line 1055
    :cond_8
    const-string v24, "desk_home_screen_display"

    const/16 v26, 0x1

    const/16 v27, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v24

    if-eqz v24, :cond_19

    const/4 v9, 0x1

    .line 1057
    .local v9, "isDockHomeEnabled":Z
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v0, v9, :cond_9

    .line 1058
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    .line 1063
    :cond_9
    const-string/jumbo v24, "torchlight_enable"

    const/16 v26, 0x0

    const/16 v27, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v24

    if-eqz v24, :cond_1a

    const/16 v16, 0x1

    .line 1065
    .local v16, "isTorchlightEnabled":Z
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightEnabled:Z

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, v16

    if-eq v0, v1, :cond_a

    .line 1066
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightEnabled:Z

    .line 1071
    :cond_a
    const-string v24, "car_mode_on"

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    if-eqz v24, :cond_1b

    const/4 v7, 0x1

    .line 1073
    .local v7, "isCheckDrivingMode":Z
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsCheckDrivingMode:Z

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v0, v7, :cond_b

    .line 1074
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsCheckDrivingMode:Z

    .line 1077
    :cond_b
    const-string v24, "car_mode_blocking_system_key"

    const/16 v26, 0x0

    const/16 v27, -0x3

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v24

    if-eqz v24, :cond_1c

    const/4 v4, 0x1

    .line 1079
    .local v4, "blockKeyForDrivingMode":Z
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockKeyForDrivingMode:Z

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v0, v4, :cond_c

    .line 1080
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockKeyForDrivingMode:Z

    .line 1085
    :cond_c
    const-string/jumbo v24, "sidesync_source_presentation"

    const/16 v26, 0x0

    const/16 v27, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v24

    if-eqz v24, :cond_1d

    const/4 v15, 0x1

    .line 1087
    .local v15, "isSideSyncSourcePresentationActived":Z
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v0, v15, :cond_d

    .line 1088
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    .line 1101
    :cond_d
    const-string/jumbo v24, "pen_attach_detach_vibration"

    const/16 v26, 0x1

    const/16 v27, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v24

    if-eqz v24, :cond_1e

    const/4 v13, 0x1

    .line 1103
    .local v13, "isPenNotifyVibrationChecked":Z
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v0, v13, :cond_e

    .line 1104
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    .line 1109
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasDaynotePackage:Z

    move/from16 v24, v0

    if-eqz v24, :cond_f

    .line 1110
    const-string v24, "cover_note"

    const/16 v26, 0x0

    const/16 v27, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v24

    if-eqz v24, :cond_1f

    const/4 v8, 0x1

    .line 1113
    .local v8, "isCoverNote":Z
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoverNoteEnabled:Z

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v0, v8, :cond_f

    .line 1114
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoverNoteEnabled:Z

    .line 1120
    .end local v8    # "isCoverNote":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v24

    if-eqz v24, :cond_11

    .line 1121
    const-string/jumbo v24, "folder_sounds_enabled"

    const/16 v26, 0x0

    const/16 v27, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v24

    if-eqz v24, :cond_20

    const/16 v18, 0x1

    .line 1123
    .local v18, "mFolderSound":Z
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFolderSoundEnable:Z

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    .line 1124
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFolderSoundEnable:Z

    .line 1126
    :cond_10
    const-string/jumbo v24, "folder_open_sound"

    const/16 v26, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFolderOpenSound:Ljava/lang/String;

    .line 1128
    const-string/jumbo v24, "folder_close_sound"

    const/16 v26, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFolderCloseSound:Ljava/lang/String;

    .line 1132
    .end local v18    # "mFolderSound":Z
    :cond_11
    monitor-exit v25

    .line 1133
    return-void

    .line 997
    .end local v4    # "blockKeyForDrivingMode":Z
    .end local v7    # "isCheckDrivingMode":Z
    .end local v9    # "isDockHomeEnabled":Z
    .end local v10    # "isEasyMode":Z
    .end local v11    # "isEnabledAccessControl":Z
    .end local v12    # "isKidsMode":Z
    .end local v13    # "isPenNotifyVibrationChecked":Z
    .end local v14    # "isSafetyAssuranceEnabled":Z
    .end local v15    # "isSideSyncSourcePresentationActived":Z
    .end local v16    # "isTorchlightEnabled":Z
    .end local v17    # "isUseAccessControl":Z
    .end local v20    # "performEditAfterScreenCapture":Z
    :cond_12
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 1002
    :cond_13
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 1010
    .restart local v20    # "performEditAfterScreenCapture":Z
    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 1018
    .restart local v14    # "isSafetyAssuranceEnabled":Z
    :cond_15
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 1023
    .restart local v17    # "isUseAccessControl":Z
    :cond_16
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 1031
    .restart local v11    # "isEnabledAccessControl":Z
    :cond_17
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 1039
    .restart local v12    # "isKidsMode":Z
    :cond_18
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 1055
    .restart local v10    # "isEasyMode":Z
    :cond_19
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 1063
    .restart local v9    # "isDockHomeEnabled":Z
    :cond_1a
    const/16 v16, 0x0

    goto/16 :goto_8

    .line 1071
    .restart local v16    # "isTorchlightEnabled":Z
    :cond_1b
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 1077
    .restart local v7    # "isCheckDrivingMode":Z
    :cond_1c
    const/4 v4, 0x0

    goto/16 :goto_a

    .line 1085
    .restart local v4    # "blockKeyForDrivingMode":Z
    :cond_1d
    const/4 v15, 0x0

    goto/16 :goto_b

    .line 1101
    .restart local v15    # "isSideSyncSourcePresentationActived":Z
    :cond_1e
    const/4 v13, 0x0

    goto/16 :goto_c

    .line 1110
    .restart local v13    # "isPenNotifyVibrationChecked":Z
    :cond_1f
    const/4 v8, 0x0

    goto/16 :goto_d

    .line 1121
    :cond_20
    const/16 v18, 0x0

    goto :goto_e

    .line 1132
    .end local v4    # "blockKeyForDrivingMode":Z
    .end local v5    # "componentNameOfDoubleTapOnHomeCommandIntent":Ljava/lang/String;
    .end local v6    # "doubleTapOnHomeBehavior":I
    .end local v7    # "isCheckDrivingMode":Z
    .end local v9    # "isDockHomeEnabled":Z
    .end local v10    # "isEasyMode":Z
    .end local v11    # "isEnabledAccessControl":Z
    .end local v12    # "isKidsMode":Z
    .end local v13    # "isPenNotifyVibrationChecked":Z
    .end local v14    # "isSafetyAssuranceEnabled":Z
    .end local v15    # "isSideSyncSourcePresentationActived":Z
    .end local v16    # "isTorchlightEnabled":Z
    .end local v17    # "isUseAccessControl":Z
    .end local v20    # "performEditAfterScreenCapture":Z
    .end local v23    # "tripleTapOnHomeBehavior":I
    :catchall_0
    move-exception v24

    monitor-exit v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v24
.end method

.method public updateSideKeyPanelState(Z)V
    .locals 5
    .param p1, "isShow"    # Z

    .prologue
    .line 3796
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.easysidepanel"

    const-string v4, "com.sec.android.easysidepanel.EasySidePanelService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3798
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.action.EASYSIDEPANEL_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 3800
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 3801
    const-string v3, "Softkey"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3805
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3810
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 3803
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v3, "ForceHide"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3806
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 3807
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SamsungWindowManager"

    const-string v4, "Exception updateEasySidePanelState: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public updateWakeupPrevention()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 4856
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4857
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4858
    :try_start_0
    const-string/jumbo v3, "wakeup_prevention"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v1, v3, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 4859
    .local v0, "isWakeupPrevention":Z
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsWakeupPrevention:Z

    if-eq v3, v0, :cond_1

    .line 4860
    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsWakeupPrevention:Z

    .line 4861
    const-string v3, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateWakeupPrevention = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsWakeupPrevention:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4863
    :cond_1
    const-string/jumbo v3, "wakeup_prevention_packages"

    const/4 v5, -0x2

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 4864
    .local v2, "wakeupPreventionPackages":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->updateWakeupPreventionPackages(Ljava/lang/String;)V

    .line 4865
    monitor-exit v4

    .line 4866
    return-void

    .line 4865
    .end local v0    # "isWakeupPrevention":Z
    .end local v2    # "wakeupPreventionPackages":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

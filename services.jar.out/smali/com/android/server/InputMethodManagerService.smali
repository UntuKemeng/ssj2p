.class public Lcom/android/server/InputMethodManagerService;
.super Lcom/android/internal/view/IInputMethodManager$Stub;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;,
        Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;,
        Lcom/android/server/InputMethodManagerService$MobileKeyboardChangeObserver;,
        Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;,
        Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;,
        Lcom/android/server/InputMethodManagerService$USBKeyboardReceiver;,
        Lcom/android/server/InputMethodManagerService$LocalServiceImpl;,
        Lcom/android/server/InputMethodManagerService$InputMethodFileManager;,
        Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;,
        Lcom/android/server/InputMethodManagerService$HardKeyboardListener;,
        Lcom/android/server/InputMethodManagerService$MethodCallback;,
        Lcom/android/server/InputMethodManagerService$MyPackageMonitor;,
        Lcom/android/server/InputMethodManagerService$KeyboardSubTypeReceiver;,
        Lcom/android/server/InputMethodManagerService$CarModeReceiver;,
        Lcom/android/server/InputMethodManagerService$RangeModeChangeReceiver;,
        Lcom/android/server/InputMethodManagerService$VZWResetSettingReceiver;,
        Lcom/android/server/InputMethodManagerService$KMSKeyboardReceiver;,
        Lcom/android/server/InputMethodManagerService$PSSKeyboardReceiver;,
        Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;,
        Lcom/android/server/InputMethodManagerService$SettingsObserver;,
        Lcom/android/server/InputMethodManagerService$KeyboardDetect;,
        Lcom/android/server/InputMethodManagerService$ClientState;,
        Lcom/android/server/InputMethodManagerService$SessionState;
    }
.end annotation


# static fields
.field private static final ACTION_KMS_EVENT:Ljava/lang/String; = "com.sec.android.sidesync.action.KMS_KEYBOARD"

.field private static final ACTION_LOCK_TASK_MODE:Ljava/lang/String; = "com.samsung.android.action.LOCK_TASK_MODE"

.field private static final ACTION_PSS_EVENT:Ljava/lang/String; = "com.sec.android.sidesync.action.PSS_KEYBOARD"

.field private static final ACTION_SUBTYPE_EVENT:Ljava/lang/String; = "com.sec.android.inputmethod.Subtype"

.field private static final ACTION_VZW_RESET_SETTING:Ljava/lang/String; = "com.samsung.intent.action.SETTINGS_SOFT_RESET"

.field private static final AUXILIARAY_EMOTICON_KEYPAD:Ljava/lang/String; = "com.sec.android.inputmethod/.AuxiliaryEmotionKeypad"

.field private static final CHINESE_KEYPAD:Ljava/lang/String; = "com.samsung.inputmethod/.SamsungIME"

.field private static COUNTRY_CODE:Ljava/lang/String; = null

.field static final DEBUG:Z = false

.field static final DEBUG_RESTORE:Z = false

.field private static final EXTRA_KMS_STATE:Ljava/lang/String; = "device_state"

.field private static final EXTRA_PSS_STATE:Ljava/lang/String; = "device_state"

.field private static final EXTRA_SIP_SUBTYPE:Ljava/lang/String; = "SamsungIME.Subtype"

.field public static final IMS_MASK_HW_KEYBOARD:I = 0xf

.field private static final INPUT_METHOD_SEPARATOR:C = ':'

.field private static final INPUT_METHOD_SUBTYPE_SEPARATOR:C = ';'

.field private static final JAPANESE_KEYPAD:Ljava/lang/String; = "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

.field public static final LOCK_TO_APP_EXIT_LOCKED:Ljava/lang/String; = "lock_to_app_exit_locked"

.field static final MSG_ATTACH_TOKEN:I = 0x410

.field static final MSG_BIND_INPUT:I = 0x3f2

.field static final MSG_BIND_METHOD:I = 0xbc2

.field static final MSG_CREATE_SESSION:I = 0x41a

.field static final MSG_HARD_KEYBOARD_SWITCH_CHANGED:I = 0xfa0

.field static final MSG_HIDE_SOFT_INPUT:I = 0x406

.field static final MSG_MINIMIZE_SOFT_INPUT:I = 0x400

.field static final MSG_RESTART_INPUT:I = 0x7da

.field static final MSG_SET_ACTIVE:I = 0xbcc

.field static final MSG_SET_INTERACTIVE:I = 0xbd6

.field static final MSG_SET_SPELL_CHECKER:I = 0xbf4

.field static final MSG_SET_USER_ACTION_NOTIFICATION_SEQUENCE_NUMBER:I = 0xbe0

.field static final MSG_SHOW_AGAIN_IM_PICKER:I = 0x3ff

.field static final MSG_SHOW_IM_CONFIG:I = 0x3

.field static final MSG_SHOW_IM_SUBTYPE_ENABLER:I = 0x2

.field static final MSG_SHOW_IM_SUBTYPE_PICKER:I = 0x1

.field static final MSG_SHOW_SOFT_INPUT:I = 0x3fc

.field static final MSG_START_INPUT:I = 0x7d0

.field static final MSG_UNBIND_INPUT:I = 0x3e8

.field static final MSG_UNBIND_METHOD:I = 0xbb8

.field static final MSG_UNDO_MINIMIZE_SOFT_INPUT:I = 0x401

.field static final MSG_UPDATE_FLOATING_STATE:I = 0x3fe

.field static final MSG_UPDATE_WACOM_STATE:I = 0x3fd

.field static final NOTI_TAG:Ljava/lang/String; = "InputMethodManagerService_Noti"

.field private static final NOT_A_SUBTYPE_ID:I = -0x1

.field private static final SAMSUNG_KEYPAD:Ljava/lang/String; = "com.sec.android.inputmethod/.SamsungKeypad"

.field static final SECURE_SUGGESTION_SPANS_MAX_SIZE:I = 0x14

.field static final TAG:Ljava/lang/String; = "InputMethodManagerService"

.field private static final TAG_TRY_SUPPRESSING_IME_SWITCHER:Ljava/lang/String; = "TrySuppressingImeSwitcher"

.field static final TIME_TO_RECONNECT:J = 0xbb8L

.field public static final UNIVERSAL_SWITCH_ENABLED:Ljava/lang/String; = "universal_switch_enabled"

.field private static keyboardState:I

.field private static mAccessControlEnable:Z

.field private static mAccessControlKeyboardBlockEnable:Z

.field private static mBTKeyboardCount:I

.field private static mDefaultSIP:Ljava/lang/String;

.field private static mDeviceDefaultThemeType:Ljava/lang/String;

.field private static mEnabledKCMFeatureForHWKeyboard:Z

.field private static mFloatingForMultiWindow:Z

.field private static mUSBKeyboardCount:I

.field private static mbWACOMPen:Z

.field private static prevAutoMode:I


# instance fields
.field private final DEBUG_HARDWARE_KEYBOARD:Z

.field private final HID_BT:I

.field private final KEYBOARD_BT:I

.field private final KEYBOARD_DOCK:I

.field private final KEYBOARD_EXTERNAL:I

.field private final KEYBOARD_KMS:I

.field private final KEYBOARD_PSS:I

.field private final KEYBOARD_UNDEFINED:I

.field private final KEYBOARD_USB:I

.field private curImeId_for_menu:Ljava/lang/String;

.field private isKnoxKeypadUsed:Z

.field kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

.field private knoxV2Enabled:Z

.field private mAccessControlEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;

.field private mAccessControlKeyboardEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;

.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field mBackDisposition:I

.field mBoundToMethod:Z

.field final mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/InputMethodManagerService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field mContentResolver:Landroid/content/ContentResolver;

.field final mContext:Landroid/content/Context;

.field mCurAttribute:Landroid/view/inputmethod/EditorInfo;

.field mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

.field private mCurClientInKeyguard:Z

.field mCurFocusedWindow:Landroid/os/IBinder;

.field mCurId:Ljava/lang/String;

.field mCurInputContext:Lcom/android/internal/view/IInputContext;

.field mCurIntent:Landroid/content/Intent;

.field mCurMethod:Lcom/android/internal/view/IInputMethod;

.field mCurMethodId:Ljava/lang/String;

.field mCurSeq:I

.field mCurToken:Landroid/os/IBinder;

.field mCurUserActionNotificationSequenceNumber:I

.field private mCurrentFocusedUserId:I

.field private mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

.field private mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

.field private mForcedtoSecureKeypad:Z

.field final mHandler:Landroid/os/Handler;

.field private final mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

.field final mHasFeature:Z

.field mHaveConnection:Z

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field private final mImeSelectedOnBoot:Z

.field private mImeSwitchPendingIntent:Landroid/app/PendingIntent;

.field private mImeSwitcherNotification:Landroid/app/Notification$Builder;

.field mImeWindowVis:I

.field private mIms:[Landroid/view/inputmethod/InputMethodInfo;

.field mInputShown:Z

.field final mIsFolderModel:Z

.field mIsInteractive:Z

.field private mIsPersona:Z

.field mIsScreenPinnedState:Z

.field private mKeyboardBuilder:Landroid/app/AlertDialog$Builder;

.field private mKeyboardDialog:Landroid/app/AlertDialog;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field mLastBindTime:J

.field private mLastSystemLocale:Ljava/util/Locale;

.field final mMethodList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMobileKeyboardChangeObserver:Lcom/android/server/InputMethodManagerService$MobileKeyboardChangeObserver;

.field public mMobilekeyboardCheckedItem:I

.field private mMobilekeyboardIms:[Landroid/view/inputmethod/InputMethodInfo;

.field private mMobilekeyboardSubtypeIds:[I

.field private final mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

.field private mNeedToExplicitallyCall:Z

.field final mNoBinding:Lcom/android/internal/view/InputBindResult;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationShown:Z

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mPrevInputMethodForCarMode:Ljava/lang/String;

.field private mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

.field final mRes:Landroid/content/res/Resources;

.field private mSecureKeypadEnabled:Z

.field private final mSecureSuggestionSpans:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/text/style/SuggestionSpan;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

.field final mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

.field private final mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation
.end field

.field mShowExplicitlyRequested:Z

.field mShowForced:Z

.field mShowHWR:Z

.field private mShowImeWithHardKeyboard:Z

.field private mShowOngoingImeSwitcherForPhones:Z

.field mShowRequested:Z

.field private mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

.field private mSubtypeIds:[I

.field private final mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

.field private mSwitchingDialog:Landroid/app/AlertDialog;

.field private mSwitchingDialogTitleView:Landroid/view/View;

.field mSystemReady:Z

.field private mUniversalSwitchChangeObserver:Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;

.field mVisibleBound:Z

.field final mVisibleConnection:Landroid/content/ServiceConnection;

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

.field private notificationcontrol_lock:Z

.field private notificationcontrol_release:Z

.field private switchingFromVoice:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 280
    const-string/jumbo v0, "none"

    sput-object v0, Lcom/android/server/InputMethodManagerService;->COUNTRY_CODE:Ljava/lang/String;

    .line 330
    sput v1, Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I

    .line 331
    sput v1, Lcom/android/server/InputMethodManagerService;->mUSBKeyboardCount:I

    .line 337
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/InputMethodManagerService;->mEnabledKCMFeatureForHWKeyboard:Z

    .line 396
    sput-boolean v1, Lcom/android/server/InputMethodManagerService;->mbWACOMPen:Z

    .line 399
    sput-boolean v1, Lcom/android/server/InputMethodManagerService;->mAccessControlEnable:Z

    .line 400
    sput-boolean v1, Lcom/android/server/InputMethodManagerService;->mAccessControlKeyboardBlockEnable:Z

    .line 431
    sput-boolean v1, Lcom/android/server/InputMethodManagerService;->mFloatingForMultiWindow:Z

    .line 434
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/InputMethodManagerService;->mDeviceDefaultThemeType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 1432
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;-><init>()V

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->DEBUG_HARDWARE_KEYBOARD:Z

    .line 300
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForCarMode:Ljava/lang/String;

    .line 321
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->KEYBOARD_UNDEFINED:I

    .line 322
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->KEYBOARD_EXTERNAL:I

    .line 323
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->KEYBOARD_DOCK:I

    .line 324
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->KEYBOARD_BT:I

    .line 325
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->KEYBOARD_USB:I

    .line 326
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->HID_BT:I

    .line 327
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->KEYBOARD_PSS:I

    .line 328
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->KEYBOARD_KMS:I

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    .line 356
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    .line 357
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    .line 362
    new-instance v0, Lcom/android/server/InputMethodManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$1;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    .line 389
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mIsPersona:Z

    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->knoxV2Enabled:Z

    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mPersonaManager:Landroid/os/PersonaManager;

    .line 392
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I

    .line 405
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

    .line 408
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardCheckedItem:I

    .line 502
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    .line 569
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    .line 645
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    .line 724
    new-instance v0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    .line 726
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    .line 728
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    .line 761
    new-instance v0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    .line 769
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mNeedToExplicitallyCall:Z

    .line 6185
    new-instance v0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mUniversalSwitchChangeObserver:Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;

    .line 6264
    new-instance v0, Lcom/android/server/InputMethodManagerService$MobileKeyboardChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$MobileKeyboardChangeObserver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMobileKeyboardChangeObserver:Lcom/android/server/InputMethodManagerService$MobileKeyboardChangeObserver;

    .line 6310
    new-instance v0, Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mAccessControlEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;

    .line 6328
    new-instance v0, Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mAccessControlKeyboardEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;

    .line 1433
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 1434
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1435
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 1436
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 1438
    new-instance v0, Lcom/android/server/InputMethodManagerService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/InputMethodManagerService$SettingsObserver;-><init>(Lcom/android/server/InputMethodManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    .line 1439
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 1441
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/InputMethodManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/InputMethodManagerService$2;-><init>(Lcom/android/server/InputMethodManagerService;)V

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1447
    iput-object p2, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 1448
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1449
    new-instance v0, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;-><init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    .line 1450
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.input_methods"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mHasFeature:Z

    .line 1453
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mIsFolderModel:Z

    .line 1460
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x10804a0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string/jumbo v1, "sys"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    .line 1476
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1477
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    const/16 v1, 0x1000

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 1479
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.settings.SHOW_INPUT_METHOD_PICKER"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1480
    .local v10, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v10, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitchPendingIntent:Landroid/app/PendingIntent;

    .line 1482
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    .line 1484
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1485
    .local v6, "broadcastFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1486
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1487
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1488
    const-string v0, "android.os.action.SETTING_RESTORED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1489
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1490
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1491
    const-string v0, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1492
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1494
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z

    .line 1495
    const/4 v5, 0x0

    .line 1498
    .local v5, "userId":I
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mForcedtoSecureKeypad:Z

    .line 1499
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mSecureKeypadEnabled:Z

    .line 1500
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->curImeId_for_menu:Ljava/lang/String;

    .line 1501
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->switchingFromVoice:Z

    .line 1502
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->isKnoxKeypadUsed:Z

    .line 1503
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->notificationcontrol_lock:Z

    .line 1504
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->notificationcontrol_release:Z

    .line 1506
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v12

    .line 1507
    .local v12, "versionInfo":Landroid/os/Bundle;
    if-eqz v12, :cond_0

    const-string v0, "2.0"

    const-string/jumbo v1, "version"

    invoke-virtual {v12, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1508
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->knoxV2Enabled:Z

    .line 1513
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/InputMethodManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/InputMethodManagerService$3;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 1541
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1545
    :goto_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 1549
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1551
    const/4 v0, 0x0

    sput v0, Lcom/android/server/InputMethodManagerService;->keyboardState:I

    .line 1553
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->registerSamsungAdditionalReceviers()V

    .line 1558
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Ljava/util/HashMap;Ljava/util/ArrayList;I)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1563
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageManagerInternal;

    .line 1565
    .local v11, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v0, Lcom/android/server/InputMethodManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$4;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManagerInternal;->setImePackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    .line 1592
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->updateCurrentProfileIds()V

    .line 1593
    new-instance v0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-direct {v0, v1, v5}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;-><init>(Ljava/util/HashMap;I)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    .line 1594
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1595
    :try_start_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-static {v0, p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->createInstanceLocked(Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    .line 1597
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1600
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v7

    .line 1604
    .local v7, "defaultImiId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    .line 1606
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1607
    :try_start_2
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;Z)V

    .line 1609
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1610
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->enableAllIMEsIfThereIsNoEnabledIME()V

    .line 1612
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    if-nez v0, :cond_1

    .line 1613
    const-string v0, "InputMethodManagerService"

    const-string v1, "No IME selected. Choose the most applicable IME."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1615
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    .line 1616
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1619
    :cond_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1620
    :try_start_4
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v0, v5}, Lcom/android/server/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    .line 1621
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 1622
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1626
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 1627
    .local v9, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1628
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/InputMethodManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/InputMethodManagerService$5;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v0, v1, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1638
    const-class v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    new-instance v1, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;-><init>(Landroid/os/Handler;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1640
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_keyboard_block"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_3
    sput-boolean v0, Lcom/android/server/InputMethodManagerService;->mAccessControlKeyboardBlockEnable:Z

    .line 1642
    return-void

    .line 1542
    .end local v7    # "defaultImiId":Ljava/lang/String;
    .end local v9    # "filter":Landroid/content/IntentFilter;
    .end local v11    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    :catch_0
    move-exception v8

    .line 1543
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "InputMethodManagerService"

    const-string v1, "Couldn\'t get current user ID; guessing it\'s 0"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1597
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v11    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 1604
    .restart local v7    # "defaultImiId":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1607
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 1609
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 1616
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 1622
    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    .line 1640
    .restart local v9    # "filter":Landroid/content/IntentFilter;
    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mAccessControlEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mAccessControlKeyboardEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/InputMethodManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForCarMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForCarMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/InputMethodManagerService;Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/ContentResolver;

    .prologue
    .line 209
    invoke-direct {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/InputMethodManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$InputMethodFileManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/InputMethodManagerService;)Landroid/content/pm/IPackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/InputMethodManagerService;Landroid/os/IBinder;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 209
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/InputMethodManagerService;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->hideImeNotification()V

    return-void
.end method

.method static synthetic access$2102(Lcom/android/server/InputMethodManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 209
    iput p1, p0, Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/InputMethodManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->switchUserLocked(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->resetStateIfCurrentLocaleChangedLocked()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardIms:[Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/InputMethodManagerService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardSubtypeIds:[I

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/InputMethodManagerService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->showConfigureInputMethods()V

    return-void
.end method

.method static synthetic access$2900()I
    .locals 1

    .prologue
    .line 209
    sget v0, Lcom/android/server/InputMethodManagerService;->mUSBKeyboardCount:I

    return v0
.end method

.method static synthetic access$2902(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 209
    sput p0, Lcom/android/server/InputMethodManagerService;->mUSBKeyboardCount:I

    return p0
.end method

.method static synthetic access$2906()I
    .locals 1

    .prologue
    .line 209
    sget v0, Lcom/android/server/InputMethodManagerService;->mUSBKeyboardCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/server/InputMethodManagerService;->mUSBKeyboardCount:I

    return v0
.end method

.method static synthetic access$2908()I
    .locals 2

    .prologue
    .line 209
    sget v0, Lcom/android/server/InputMethodManagerService;->mUSBKeyboardCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/InputMethodManagerService;->mUSBKeyboardCount:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 209
    sget v0, Lcom/android/server/InputMethodManagerService;->keyboardState:I

    return v0
.end method

.method static synthetic access$3000()I
    .locals 1

    .prologue
    .line 209
    sget v0, Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I

    return v0
.end method

.method static synthetic access$3002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 209
    sput p0, Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I

    return p0
.end method

.method static synthetic access$3006()I
    .locals 1

    .prologue
    .line 209
    sget v0, Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I

    return v0
.end method

.method static synthetic access$3008()I
    .locals 2

    .prologue
    .line 209
    sget v0, Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/InputMethodManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$372(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 209
    sget v0, Lcom/android/server/InputMethodManagerService;->keyboardState:I

    and-int/2addr v0, p0

    sput v0, Lcom/android/server/InputMethodManagerService;->keyboardState:I

    return v0
.end method

.method static synthetic access$376(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 209
    sget v0, Lcom/android/server/InputMethodManagerService;->keyboardState:I

    or-int/2addr v0, p0

    sput v0, Lcom/android/server/InputMethodManagerService;->keyboardState:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/InputMethodManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isChineseRegion()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->isInstalledInputMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 209
    sget-boolean v0, Lcom/android/server/InputMethodManagerService;->mEnabledKCMFeatureForHWKeyboard:Z

    return v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 209
    sget v0, Lcom/android/server/InputMethodManagerService;->prevAutoMode:I

    return v0
.end method

.method static synthetic access$802(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 209
    sput p0, Lcom/android/server/InputMethodManagerService;->prevAutoMode:I

    return p0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 209
    sget-boolean v0, Lcom/android/server/InputMethodManagerService;->mFloatingForMultiWindow:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 209
    sput-boolean p0, Lcom/android/server/InputMethodManagerService;->mFloatingForMultiWindow:Z

    return p0
.end method

.method private addShortcutInputMethodAndSubtypes(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 2
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 5236
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5237
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5243
    :goto_0
    return-void

    .line 5239
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5240
    .local v0, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5241
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 3
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    .prologue
    .line 2031
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2032
    :cond_0
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- bind failed: service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", conn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    const/4 v0, 0x0

    .line 2035
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    goto :goto_0
.end method

.method static buildInputMethodsAndSubtypesString(Landroid/util/ArrayMap;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 938
    .local p0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 940
    .local v2, "imeMap":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 941
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 942
    .local v3, "imeName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 943
    .local v4, "subtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 944
    .local v5, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    .line 945
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 947
    :cond_0
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 949
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v3    # "imeName":Ljava/lang/String;
    .end local v4    # "subtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildInputMethodsSettingString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private calledFromValidUser()Z
    .locals 6

    .prologue
    const/16 v5, 0x3e8

    const/4 v2, 0x1

    .line 1971
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1972
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1982
    .local v1, "userId":I
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/InputMethodManagerService;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1983
    const-string v3, "InputMethodManagerService"

    const-string v4, "calledFromValidUser - Knox case"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 1985
    if-eq v0, v5, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    if-eq v4, v1, :cond_0

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I

    if-ne v4, v1, :cond_2

    .line 1986
    :cond_0
    monitor-exit v3

    .line 2013
    :cond_1
    :goto_0
    return v2

    .line 1988
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2002
    :cond_3
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 2011
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- IPC called from background users. Ignore. \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodUtils;->getStackTrace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    const/4 v2, 0x0

    goto :goto_0

    .line 1988
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1992
    :cond_4
    if-eq v0, v5, :cond_1

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isCurrentProfile(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method private calledWithValidToken(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 2023
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq v0, p1, :cond_1

    .line 2024
    :cond_0
    const/4 v0, 0x0

    .line 2026
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private chooseNewDefaultIMELocked()Z
    .locals 2

    .prologue
    .line 4338
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    .line 4340
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_0

    .line 4344
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 4345
    const/4 v1, 0x1

    .line 4348
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private findLastResortApplicableShortcutInputMethodAndSubtypeLocked(Ljava/lang/String;)Landroid/util/Pair;
    .locals 14
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5103
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v11}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v5

    .line 5104
    .local v5, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v6, 0x0

    .line 5105
    .local v6, "mostApplicableIMI":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v7, 0x0

    .line 5106
    .local v7, "mostApplicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v1, 0x0

    .line 5109
    .local v1, "foundInSystemIME":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 5110
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 5111
    .local v4, "imiId":Ljava/lang/String;
    if-eqz v1, :cond_1

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 5114
    :cond_1
    const/4 v9, 0x0

    .line 5115
    .local v9, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v3, v13}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v0

    .line 5118
    .local v0, "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v11, :cond_2

    .line 5119
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v0, p1, v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v9

    .line 5124
    :cond_2
    if-nez v9, :cond_3

    .line 5125
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v11, v0, p1, v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v9

    .line 5128
    :cond_3
    invoke-static {v3, p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getOverridingImplicitlyEnabledSubtypes(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 5130
    .local v8, "overridingImplicitlyEnabledSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-static {v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v10

    .line 5135
    .local v10, "subtypesForSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :goto_1
    if-nez v9, :cond_4

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v11, :cond_4

    .line 5136
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v10, p1, v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v9

    .line 5141
    :cond_4
    if-nez v9, :cond_5

    .line 5142
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v11, v10, p1, v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v9

    .line 5145
    :cond_5
    if-eqz v9, :cond_0

    .line 5146
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 5148
    move-object v6, v3

    .line 5149
    move-object v7, v9

    .line 5173
    .end local v0    # "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "imiId":Ljava/lang/String;
    .end local v8    # "overridingImplicitlyEnabledSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v9    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v10    # "subtypesForSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-eqz v6, :cond_9

    .line 5174
    new-instance v11, Landroid/util/Pair;

    invoke-direct {v11, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5177
    :goto_2
    return-object v11

    .restart local v0    # "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v4    # "imiId":Ljava/lang/String;
    .restart local v8    # "overridingImplicitlyEnabledSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v9    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_7
    move-object v10, v8

    .line 5130
    goto :goto_1

    .line 5151
    .restart local v10    # "subtypesForSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_8
    if-nez v1, :cond_0

    .line 5153
    move-object v6, v3

    .line 5154
    move-object v7, v9

    .line 5155
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_0

    .line 5157
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 5177
    .end local v0    # "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "imiId":Ljava/lang/String;
    .end local v8    # "overridingImplicitlyEnabledSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v9    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v10    # "subtypesForSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_9
    const/4 v11, 0x0

    goto :goto_2
.end method

.method private finishSessionLocked(Lcom/android/server/InputMethodManagerService$SessionState;)V
    .locals 5
    .param p1, "sessionState"    # Lcom/android/server/InputMethodManagerService$SessionState;

    .prologue
    const/4 v4, 0x0

    .line 2491
    if-eqz p1, :cond_1

    .line 2492
    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_0

    .line 2494
    :try_start_0
    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodSession;->finishSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2499
    :goto_0
    iput-object v4, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    .line 2501
    :cond_0
    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    if-eqz v1, :cond_1

    .line 2502
    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 2503
    iput-object v4, p1, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    .line 2506
    :cond_1
    return-void

    .line 2495
    :catch_0
    move-exception v0

    .line 2496
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManagerService"

    const-string v2, "Session failed to close due to remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2497
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    goto :goto_0
.end method

.method private getAppShowFlags()I
    .locals 2

    .prologue
    .line 2167
    const/4 v0, 0x0

    .line 2168
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    if-eqz v1, :cond_1

    .line 2169
    or-int/lit8 v0, v0, 0x2

    .line 2173
    :cond_0
    :goto_0
    return v0

    .line 2170
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-nez v1, :cond_0

    .line 2171
    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 6052
    if-nez p2, :cond_1

    .line 6053
    const/4 v0, 0x0

    .line 6076
    :cond_0
    :goto_0
    return-object v0

    .line 6055
    :cond_1
    const/4 v0, 0x0

    .line 6056
    .local v0, "inputMethodId":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    .line 6058
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 6070
    :goto_1
    const-string v1, "DCM"

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.sevenknowledge.sevennotesproduct.samsung/com.sevenknowledge.mazec.MazecIms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6073
    const-string v0, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    goto :goto_0

    .line 6062
    :cond_2
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 5196
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 5231
    :cond_0
    :goto_0
    return-object v4

    .line 5199
    :cond_1
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isSubtypeSelected()Z

    move-result v3

    .line 5200
    .local v3, "subtypeIsSelected":Z
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 5201
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v5

    if-eqz v5, :cond_0

    .line 5204
    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v5

    invoke-static {v1, v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 5206
    :cond_2
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v2

    .line 5207
    .local v2, "subtypeId":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_5

    .line 5211
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v1, v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v0

    .line 5215
    .local v0, "explicitlyOrImplicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v7, :cond_4

    .line 5216
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 5231
    .end local v0    # "explicitlyOrImplicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v2    # "subtypeId":I
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_0

    .line 5217
    .restart local v0    # "explicitlyOrImplicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v2    # "subtypeId":I
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v7, :cond_3

    .line 5218
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const-string/jumbo v6, "keyboard"

    invoke-static {v5, v0, v6, v4, v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 5221
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v5, :cond_3

    .line 5222
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-static {v5, v0, v4, v4, v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_1

    .line 5228
    .end local v0    # "explicitlyOrImplicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_5
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_1
.end method

.method private getDeviceThemeFromSystemProperties()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    const-string/jumbo v0, "ro.build.scafe.cream"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getImeShowFlags()I
    .locals 2

    .prologue
    .line 2152
    const/4 v0, 0x0

    .line 2153
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    if-eqz v1, :cond_2

    .line 2154
    or-int/lit8 v0, v0, 0x3

    .line 2159
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowHWR:Z

    if-eqz v1, :cond_1

    .line 2160
    or-int/lit8 v0, v0, 0x10

    .line 2163
    :cond_1
    return v0

    .line 2156
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-eqz v1, :cond_0

    .line 2157
    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getPersonaService()Landroid/os/PersonaManager;
    .locals 2

    .prologue
    .line 4309
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mPersonaManager:Landroid/os/PersonaManager;

    if-nez v0, :cond_0

    .line 4310
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mPersonaManager:Landroid/os/PersonaManager;

    .line 4312
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mPersonaManager:Landroid/os/PersonaManager;

    return-object v0
.end method

.method private getSecureDefaultIMELocked()Landroid/view/inputmethod/InputMethodInfo;
    .locals 5

    .prologue
    .line 4248
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v0

    .line 4249
    .local v0, "enabledList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->knoxV2Enabled:Z

    if-eqz v3, :cond_3

    .line 4250
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 4251
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 4252
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 4253
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v2, :cond_1

    const-string v3, "com.sec.android.inputmethod/.AuxiliaryEmotionKeypad"

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4251
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4256
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/InputMethodManagerService;->isSamsungIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4265
    .end local v1    # "i":I
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return-object v2

    .line 4259
    .restart local v1    # "i":I
    .restart local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/server/InputMethodManagerService;->isSecureIMEKnox(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 4265
    .end local v1    # "i":I
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private handleSetInteractive(Z)V
    .locals 6
    .param p1, "interactive"    # Z

    .prologue
    const/4 v0, 0x0

    .line 4234
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 4235
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    .line 4236
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eqz p1, :cond_2

    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    :goto_0
    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v3, v1, v4}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 4239
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v1, :cond_1

    .line 4240
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0xbcc

    iget-boolean v5, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {v3, v4, v0, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 4243
    :cond_1
    monitor-exit v2

    .line 4244
    return-void

    :cond_2
    move v1, v0

    .line 4236
    goto :goto_0

    .line 4243
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private hideImeNotification()V
    .locals 4

    .prologue
    .line 2648
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 2650
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "InputMethodManagerService_Noti"

    const v2, 0x10403fa

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 2651
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z

    .line 2655
    :cond_0
    return-void
.end method

.method private isChineseRegion()Z
    .locals 2

    .prologue
    .line 6005
    const-string/jumbo v0, "none"

    sget-object v1, Lcom/android/server/InputMethodManagerService;->COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6006
    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/InputMethodManagerService;->COUNTRY_CODE:Ljava/lang/String;

    .line 6008
    :cond_0
    const-string v0, "CHINA"

    sget-object v1, Lcom/android/server/InputMethodManagerService;->COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "HONG KONG"

    sget-object v1, Lcom/android/server/InputMethodManagerService;->COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TAIWAN"

    sget-object v1, Lcom/android/server/InputMethodManagerService;->COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6011
    :cond_1
    const/4 v0, 0x1

    .line 6013
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDeviceBlackTheme()Z
    .locals 2

    .prologue
    .line 437
    sget-object v0, Lcom/android/server/InputMethodManagerService;->mDeviceDefaultThemeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/InputMethodManagerService;->mDeviceDefaultThemeType:Ljava/lang/String;

    const-string v1, "black"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    const/4 v0, 0x1

    .line 441
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHWAccessoryKeyboard()Z
    .locals 1

    .prologue
    .line 6045
    sget v0, Lcom/android/server/InputMethodManagerService;->keyboardState:I

    and-int/lit8 v0, v0, 0xf

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInstalledInputMethod(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 5975
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v1

    .line 5976
    .local v1, "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 5977
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 5978
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5979
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 5980
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5981
    const/4 v4, 0x1

    .line 5985
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return v4

    .line 5978
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5985
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isKeyguardLocked()Z
    .locals 1

    .prologue
    .line 2644
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isKnoxId(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 3267
    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    const/16 v0, 0xc8

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    .line 3269
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isKoreaRegion()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 5989
    const-string/jumbo v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5990
    .local v0, "cscCode":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "KOREA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    .line 5993
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSamsungIme(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 4
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1794
    if-nez p1, :cond_1

    .line 1805
    :cond_0
    :goto_0
    return v1

    .line 1797
    :cond_1
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1798
    .local v0, "imiId":Ljava/lang/String;
    const-string v3, "com.samsung.inputmethod/.SamsungIME"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 1799
    goto :goto_0

    .line 1800
    :cond_2
    const-string v3, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 1801
    goto :goto_0

    .line 1802
    :cond_3
    const-string v3, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 1803
    goto :goto_0
.end method

.method private isScreenLocked()Z
    .locals 1

    .prologue
    .line 4501
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSecureIMEKnox(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 9
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4286
    if-nez p1, :cond_1

    .line 4305
    :cond_0
    :goto_0
    return v4

    .line 4289
    :cond_1
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v5

    .line 4290
    goto :goto_0

    .line 4292
    :cond_2
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getPersonaService()Landroid/os/PersonaManager;

    move-result-object v3

    .line 4293
    .local v3, "mPersona":Landroid/os/PersonaManager;
    if-eqz v3, :cond_0

    .line 4296
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getPersonaService()Landroid/os/PersonaManager;

    move-result-object v6

    sget-object v7, Landroid/os/PersonaManager$AppType;->IME:Landroid/os/PersonaManager$AppType;

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/os/PersonaManager;->getAppListForPersona(Landroid/os/PersonaManager$AppType;I)Ljava/util/List;

    move-result-object v2

    .line 4298
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 4299
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4300
    .local v1, "imiId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v5

    .line 4301
    goto :goto_0
.end method

.method private isSecureIMEKnox(Ljava/lang/String;)Z
    .locals 5
    .param p1, "imiId"    # Ljava/lang/String;

    .prologue
    .line 4269
    if-nez p1, :cond_0

    .line 4270
    const/4 v4, 0x0

    .line 4282
    :goto_0
    return v4

    .line 4272
    :cond_0
    const/4 v1, 0x0

    .line 4273
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v3

    .line 4274
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 4275
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 4276
    .local v2, "item":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4277
    move-object v1, v2

    .line 4282
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/InputMethodManagerService;->isSecureIMEKnox(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v4

    goto :goto_0
.end method

.method static parseInputMethodsAndSubtypesString(Ljava/lang/String;)Landroid/util/ArrayMap;
    .locals 8
    .param p0, "inputMethodsAndSubtypesString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 955
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 957
    .local v3, "imeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 976
    :cond_0
    return-object v3

    .line 961
    :cond_1
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x3a

    invoke-direct {v6, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 963
    .local v6, "typeSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x3b

    invoke-direct {v4, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 965
    .local v4, "subtypeSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-static {p0, v6, v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildInputMethodsAndSubtypeList(Ljava/lang/String;Landroid/text/TextUtils$SimpleStringSplitter;Landroid/text/TextUtils$SimpleStringSplitter;)Ljava/util/List;

    move-result-object v0

    .line 969
    .local v0, "allImeSettings":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 970
    .local v2, "ime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 971
    .local v5, "subtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v7, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v7, :cond_2

    .line 972
    iget-object v7, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 974
    :cond_2
    iget-object v7, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private refreshImeWindowVis()V
    .locals 13

    .prologue
    .line 1919
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1920
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v10, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_6

    const/4 v2, 0x1

    .line 1922
    .local v2, "haveHardKeyboard":Z
    :goto_0
    if-eqz v2, :cond_7

    iget v10, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_7

    const/4 v1, 0x1

    .line 1929
    .local v1, "hardKeyShown":Z
    :goto_1
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isChineseRegion()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isKoreaRegion()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mIsFolderModel:Z

    if-eqz v10, :cond_2

    .line 1930
    :cond_0
    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mIsFolderModel:Z

    .line 1931
    .local v6, "isFolderPhone":Z
    iget v10, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    const/4 v5, 0x1

    .line 1932
    .local v5, "isFolderOpen":Z
    :goto_2
    if-eqz v1, :cond_9

    if-eqz v6, :cond_1

    if-nez v5, :cond_9

    :cond_1
    const/4 v1, 0x1

    .line 1934
    :goto_3
    const-string v10, "InputMethodManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HARDWARE_KEYBOARD] (refreshImeWindowVis) isChineseRegion = true, isFolderPhone= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " isFolderOpen = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " hardKeyShown = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    .end local v5    # "isFolderOpen":Z
    .end local v6    # "isFolderPhone":Z
    :cond_2
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isKeyguardLocked()Z

    move-result v7

    .line 1941
    .local v7, "isScreenLocked":Z
    if-nez v7, :cond_a

    iget-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    if-nez v10, :cond_3

    if-eqz v1, :cond_a

    :cond_3
    const/4 v3, 0x1

    .line 1942
    .local v3, "inputActive":Z
    :goto_4
    if-eqz v7, :cond_b

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v10}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v8, 0x1

    .line 1945
    .local v8, "isScreenSecurelyLocked":Z
    :goto_5
    if-eqz v7, :cond_5

    if-eqz v8, :cond_5

    .line 1946
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "universal_switch_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 1948
    .local v9, "universalSwitchState":I
    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 1949
    iget-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    if-nez v10, :cond_4

    if-eqz v1, :cond_c

    :cond_4
    const/4 v3, 0x1

    .line 1954
    .end local v9    # "universalSwitchState":I
    :cond_5
    :goto_6
    if-eqz v3, :cond_d

    if-nez v1, :cond_d

    const/4 v4, 0x1

    .line 1955
    .local v4, "inputVisible":Z
    :goto_7
    if-eqz v3, :cond_e

    const/4 v10, 0x1

    move v11, v10

    :goto_8
    if-eqz v4, :cond_f

    const/4 v10, 0x2

    :goto_9
    or-int/2addr v10, v11

    iput v10, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    .line 1959
    const-string v10, "InputMethodManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HARDWARE_KEYBOARD] (refreshImeWindowVis) mImeWindowVis= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " inputVisible = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "haveHardKeyboard = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " hardKeyShown = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    return-void

    .line 1920
    .end local v1    # "hardKeyShown":Z
    .end local v2    # "haveHardKeyboard":Z
    .end local v3    # "inputActive":Z
    .end local v4    # "inputVisible":Z
    .end local v7    # "isScreenLocked":Z
    .end local v8    # "isScreenSecurelyLocked":Z
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1922
    .restart local v2    # "haveHardKeyboard":Z
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 1931
    .restart local v1    # "hardKeyShown":Z
    .restart local v6    # "isFolderPhone":Z
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 1932
    .restart local v5    # "isFolderOpen":Z
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 1941
    .end local v5    # "isFolderOpen":Z
    .end local v6    # "isFolderPhone":Z
    .restart local v7    # "isScreenLocked":Z
    :cond_a
    const/4 v3, 0x0

    goto :goto_4

    .line 1942
    .restart local v3    # "inputActive":Z
    :cond_b
    const/4 v8, 0x0

    goto :goto_5

    .line 1949
    .restart local v8    # "isScreenSecurelyLocked":Z
    .restart local v9    # "universalSwitchState":I
    :cond_c
    const/4 v3, 0x0

    goto :goto_6

    .line 1954
    .end local v9    # "universalSwitchState":I
    :cond_d
    const/4 v4, 0x0

    goto :goto_7

    .line 1955
    .restart local v4    # "inputVisible":Z
    :cond_e
    const/4 v10, 0x0

    move v11, v10

    goto :goto_8

    :cond_f
    const/4 v10, 0x0

    goto :goto_9
.end method

.method private resetAllInternalStateLocked(ZZ)V
    .locals 6
    .param p1, "updateOnlyWhenLocaleChanged"    # Z
    .param p2, "resetDefaultEnabledIme"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1683
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v3, :cond_1

    .line 1723
    :cond_0
    :goto_0
    return-void

    .line 1687
    :cond_1
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1688
    .local v1, "newLocale":Ljava/util/Locale;
    if-eqz p1, :cond_2

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocale:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1690
    :cond_2
    if-nez p1, :cond_3

    .line 1691
    const/4 v3, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 1692
    invoke-virtual {p0, v5, v4}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(ZZ)V

    .line 1697
    :cond_3
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {p0, v3, v4, p2}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;Z)V

    .line 1698
    if-nez p1, :cond_4

    .line 1699
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v2

    .line 1700
    .local v2, "selectedImiId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1703
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    .line 1713
    .end local v2    # "selectedImiId":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 1714
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocale:Ljava/util/Locale;

    .line 1715
    if-nez p1, :cond_0

    .line 1717
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1718
    :catch_0
    move-exception v0

    .line 1719
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "InputMethodManagerService"

    const-string v4, "Unexpected exception"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private resetDefaultImeLocked(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 1646
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1679
    :cond_0
    :goto_0
    return-void

    .line 1651
    :cond_1
    const/4 v6, 0x0

    .line 1652
    .local v6, "defIm":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 1654
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->isSamsungIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v6, v0

    .line 1657
    :cond_3
    if-nez v6, :cond_2

    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-eqz v1, :cond_2

    .line 1658
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1659
    .local v3, "systemLocale":Ljava/util/Locale;
    const/4 v2, 0x1

    sget-object v5, Lcom/android/internal/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1662
    move-object v6, v0

    .line 1663
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Selected default: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1667
    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "systemLocale":Ljava/util/Locale;
    :cond_4
    if-nez v6, :cond_5

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 1668
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v6

    .line 1670
    if-eqz v6, :cond_6

    .line 1671
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default found, using "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    :cond_5
    :goto_2
    if-eqz v6, :cond_0

    .line 1677
    const/4 v1, -0x1

    invoke-direct {p0, v6, v1, v4}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    goto/16 :goto_0

    .line 1673
    :cond_6
    const-string v1, "InputMethodManagerService"

    const-string v2, "No default found"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V
    .locals 7
    .param p1, "newDefaultIme"    # Ljava/lang/String;

    .prologue
    .line 5083
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 5084
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v2, -0x1

    .line 5086
    .local v2, "lastSubtypeId":I
    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5087
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastSubtypeForInputMethodLocked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5088
    .local v3, "subtypeHashCode":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 5090
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 5097
    .end local v3    # "subtypeHashCode":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v4}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 5098
    return-void

    .line 5092
    .restart local v3    # "subtypeHashCode":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 5093
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HashCode for subtype looks broken: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private resetStateIfCurrentLocaleChangedLocked()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1726
    invoke-direct {p0, v0, v0}, Lcom/android/server/InputMethodManagerService;->resetAllInternalStateLocked(ZZ)V

    .line 1728
    return-void
.end method

.method static restoreEnabledInputMethods(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prevValue"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 911
    invoke-static {p1}, Lcom/android/server/InputMethodManagerService;->parseInputMethodsAndSubtypesString(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v5

    .line 912
    .local v5, "prevMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-static {p2}, Lcom/android/server/InputMethodManagerService;->parseInputMethodsAndSubtypesString(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v4

    .line 915
    .local v4, "newMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 916
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 917
    .local v2, "imeId":Ljava/lang/String;
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    .line 918
    .local v6, "prevSubtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v6, :cond_0

    .line 919
    new-instance v6, Landroid/util/ArraySet;

    .end local v6    # "prevSubtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v7, 0x2

    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(I)V

    .line 920
    .restart local v6    # "prevSubtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v5, v2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_0

    .line 925
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v2    # "imeId":Ljava/lang/String;
    .end local v6    # "prevSubtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_1
    invoke-static {v5}, Lcom/android/server/InputMethodManagerService;->buildInputMethodsAndSubtypesString(Landroid/util/ArrayMap;)Ljava/lang/String;

    move-result-object v3

    .line 930
    .local v3, "mergedImesAndSubtypesString":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "enabled_input_methods"

    invoke-static {v7, v8, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 932
    return-void
.end method

.method private setInputMethodWithSubtypeId(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtypeId"    # I

    .prologue
    .line 3894
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3895
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 3896
    monitor-exit v1

    .line 3897
    return-void

    .line 3896
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtypeId"    # I

    .prologue
    .line 3900
    if-nez p1, :cond_0

    .line 3901
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 3904
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Using null token requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3908
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq v2, p1, :cond_1

    .line 3909
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring setInputMethod of uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3920
    :goto_0
    return-void

    .line 3914
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3916
    .local v0, "ident":J
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3918
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V
    .locals 7
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtypeId"    # I
    .param p3, "setSubtypeOnly"    # Z

    .prologue
    const/4 v6, -0x1

    .line 5036
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->saveCurrentInputMethodAndSubtypeToHistory(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 5038
    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    .line 5045
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v1, :cond_0

    .line 5046
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbe0

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 5052
    :cond_0
    if-eqz p1, :cond_1

    if-gez p2, :cond_3

    .line 5053
    :cond_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1, v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 5054
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 5076
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-eqz v1, :cond_2

    if-nez p3, :cond_2

    .line 5078
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 5080
    :cond_2
    return-void

    .line 5056
    :cond_3
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    if-ge p2, v1, :cond_4

    .line 5057
    invoke-virtual {p1, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 5058
    .local v0, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 5059
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_0

    .line 5061
    .end local v0    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1, v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 5063
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_0

    .line 5078
    :cond_5
    const-string v1, ""

    goto :goto_1
.end method

.method private setSpellCheckerEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 4464
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "textservices"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    .line 4466
    .local v0, "textServicesManager":Landroid/view/textservice/TextServicesManager;
    if-eqz v0, :cond_0

    .line 4468
    invoke-virtual {v0, p1}, Landroid/view/textservice/TextServicesManager;->setSpellCheckerEnabled(Z)V

    .line 4470
    :cond_0
    return-void
.end method

.method private shouldShowImeSwitcherLocked(I)Z
    .locals 15
    .param p1, "visibility"    # I

    .prologue
    .line 2586
    iget-boolean v12, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    if-nez v12, :cond_0

    const/4 v12, 0x0

    .line 2640
    :goto_0
    return v12

    .line 2587
    :cond_0
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v12, :cond_1

    const/4 v12, 0x0

    goto :goto_0

    .line 2588
    :cond_1
    iget-boolean v12, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    if-nez v12, :cond_2

    const/4 v12, 0x0

    goto :goto_0

    .line 2589
    :cond_2
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isKeyguardLocked()Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x0

    goto :goto_0

    .line 2590
    :cond_3
    and-int/lit8 v12, p1, 0x1

    if-nez v12, :cond_4

    const/4 v12, 0x0

    goto :goto_0

    .line 2591
    :cond_4
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowManagerService;->isHardKeyboardAvailable()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 2596
    const/4 v12, 0x1

    goto :goto_0

    .line 2598
    :cond_5
    and-int/lit8 v12, p1, 0x2

    if-nez v12, :cond_6

    const/4 v12, 0x0

    goto :goto_0

    .line 2600
    :cond_6
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v12}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v5

    .line 2601
    .local v5, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 2602
    .local v0, "N":I
    const/4 v12, 0x2

    if-le v0, v12, :cond_7

    const/4 v12, 0x1

    goto :goto_0

    .line 2603
    :cond_7
    const/4 v12, 0x1

    if-ge v0, v12, :cond_8

    const/4 v12, 0x0

    goto :goto_0

    .line 2604
    :cond_8
    const/4 v7, 0x0

    .line 2605
    .local v7, "nonAuxCount":I
    const/4 v1, 0x0

    .line 2606
    .local v1, "auxCount":I
    const/4 v8, 0x0

    .line 2607
    .local v8, "nonAuxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v2, 0x0

    .line 2608
    .local v2, "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_c

    .line 2609
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 2610
    .local v4, "imi":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v4, v14}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    .line 2612
    .local v11, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    .line 2613
    .local v10, "subtypeCount":I
    if-nez v10, :cond_a

    .line 2614
    add-int/lit8 v7, v7, 0x1

    .line 2608
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2616
    :cond_a
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-ge v6, v10, :cond_9

    .line 2617
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    .line 2618
    .local v9, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v12

    if-nez v12, :cond_b

    .line 2619
    add-int/lit8 v7, v7, 0x1

    .line 2620
    move-object v8, v9

    .line 2616
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2622
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 2623
    move-object v2, v9

    goto :goto_3

    .line 2628
    .end local v4    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v6    # "j":I
    .end local v9    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v10    # "subtypeCount":I
    .end local v11    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_c
    const/4 v12, 0x1

    if-gt v7, v12, :cond_d

    const/4 v12, 0x1

    if-le v1, v12, :cond_e

    .line 2629
    :cond_d
    const/4 v12, 0x1

    goto :goto_0

    .line 2630
    :cond_e
    const/4 v12, 0x1

    if-ne v7, v12, :cond_11

    const/4 v12, 0x1

    if-ne v1, v12, :cond_11

    .line 2631
    if-eqz v8, :cond_10

    if-eqz v2, :cond_10

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v12

    if-nez v12, :cond_f

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v12

    if-eqz v12, :cond_10

    :cond_f
    const-string v12, "TrySuppressingImeSwitcher"

    invoke-virtual {v8, v12}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 2636
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2638
    :cond_10
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 2640
    :cond_11
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method private showConfigureInputMethods()V
    .locals 5

    .prologue
    .line 4493
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4494
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4497
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 4498
    return-void
.end method

.method private showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V
    .locals 4
    .param p1, "inputMethodId"    # Ljava/lang/String;

    .prologue
    .line 4482
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4483
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4486
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4487
    const-string/jumbo v1, "input_method_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4489
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 4490
    return-void
.end method

.method private showInputMethodMenu()V
    .locals 1

    .prologue
    .line 4474
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->showInputMethodMenuInternal(Z)V

    .line 4475
    return-void
.end method

.method private showInputMethodMenu(Z)V
    .locals 50
    .param p1, "showAuxSubtypes"    # Z

    .prologue
    .line 4542
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 4543
    .local v11, "context":Landroid/content/Context;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isScreenLocked()Z

    move-result v27

    .line 4545
    .local v27, "isScreenLocked":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v33

    .line 4546
    .local v33, "lastInputMethodId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v34

    .line 4549
    .local v34, "lastInputMethodSubtypeId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v46, v0

    monitor-enter v46

    .line 4550
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getExplicitlyOrImplicitlyEnabledInputMethodsAndSubtypeListLocked(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v24

    .line 4553
    .local v24, "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    if-eqz v24, :cond_0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->size()I

    move-result v45

    if-nez v45, :cond_1

    .line 4554
    :cond_0
    monitor-exit v46

    .line 4839
    :goto_0
    return-void

    .line 4557
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenuLocked()V

    .line 4559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    move-object/from16 v45, v0

    const/16 v47, 0x1

    move-object/from16 v0, v45

    move/from16 v1, v47

    move/from16 v2, p1

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeListLocked(ZZZ)Ljava/util/List;

    move-result-object v22

    .line 4563
    .local v22, "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    const/16 v45, -0x1

    move/from16 v0, v34

    move/from16 v1, v45

    if-ne v0, v1, :cond_2

    .line 4564
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v14

    .line 4565
    .local v14, "currentSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v14, :cond_2

    .line 4566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    move-object/from16 v47, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/InputMethodInfo;

    .line 4567
    .local v13, "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v45

    move/from16 v0, v45

    invoke-static {v13, v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v34

    .line 4574
    .end local v13    # "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v14    # "currentSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_2
    const-string v45, "InputMethodManagerService"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "showInputMethodMenuInternal : mSecureKeypadEnabled: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mSecureKeypadEnabled:Z

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4575
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mSecureKeypadEnabled:Z

    move/from16 v45, v0

    if-eqz v45, :cond_4

    .line 4576
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->knoxV2Enabled:Z

    move/from16 v45, v0

    if-eqz v45, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mIsPersona:Z

    move/from16 v45, v0

    if-eqz v45, :cond_4

    .line 4577
    if-eqz v22, :cond_4

    .line 4578
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .line 4579
    .local v23, "imiIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    :cond_3
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_4

    .line 4580
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 4581
    .local v28, "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService;->isSecureIMEKnox(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v45

    if-nez v45, :cond_3

    .line 4582
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 4838
    .end local v22    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .end local v23    # "imiIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .end local v24    # "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .end local v28    # "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :catchall_0
    move-exception v45

    monitor-exit v46
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v45

    .line 4589
    .restart local v22    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .restart local v24    # "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    :cond_4
    const/4 v12, 0x0

    .line 4590
    .local v12, "currentImePackage":Ljava/lang/String;
    const/4 v8, 0x0

    .line 4591
    .local v8, "checkedItem":I
    if-eqz v22, :cond_b

    .line 4592
    :try_start_1
    const-string v45, "com.sec.android.inputmethod/.AuxiliaryEmotionKeypad"

    move-object/from16 v0, v33

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_6

    .line 4593
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v45

    move/from16 v0, v21

    move/from16 v1, v45

    if-ge v0, v1, :cond_6

    .line 4594
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 4595
    .local v30, "itemTest":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v36, v0

    .line 4596
    .local v36, "mImsTest":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual/range {v36 .. v36}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v41

    .line 4597
    .local v41, "test_imID":Ljava/lang/String;
    const-string v45, "com.sec.android.inputmethod/.AuxiliaryEmotionKeypad"

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_5

    .line 4598
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4599
    add-int/lit8 v21, v21, -0x1

    .line 4593
    :cond_5
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 4603
    .end local v21    # "i":I
    .end local v30    # "itemTest":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v36    # "mImsTest":Landroid/view/inputmethod/InputMethodInfo;
    .end local v41    # "test_imID":Ljava/lang/String;
    :cond_6
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v5

    .line 4604
    .local v5, "N":I
    new-array v0, v5, [Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 4605
    new-array v0, v5, [I

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    .line 4606
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_3
    move/from16 v0, v21

    if-ge v0, v5, :cond_b

    .line 4607
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 4608
    .restart local v28    # "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v47, v0

    aput-object v47, v45, v21

    .line 4609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    move-object/from16 v45, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    move/from16 v47, v0

    aput v47, v45, v21

    .line 4610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v45, v0

    aget-object v45, v45, v21

    invoke-virtual/range {v45 .. v45}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_9

    .line 4611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v45, v0

    aget-object v45, v45, v21

    invoke-virtual/range {v45 .. v45}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 4612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    move-object/from16 v45, v0

    aget v40, v45, v21

    .line 4613
    .local v40, "subtypeId":I
    const/16 v45, -0x1

    move/from16 v0, v40

    move/from16 v1, v45

    if-eq v0, v1, :cond_8

    const/16 v45, -0x1

    move/from16 v0, v34

    move/from16 v1, v45

    if-ne v0, v1, :cond_7

    if-eqz v40, :cond_8

    :cond_7
    move/from16 v0, v40

    move/from16 v1, v34

    if-ne v0, v1, :cond_a

    .line 4616
    :cond_8
    move/from16 v8, v21

    .line 4606
    .end local v40    # "subtypeId":I
    :cond_9
    :goto_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 4617
    .restart local v40    # "subtypeId":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v45, v0

    aget-object v45, v45, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService;->isSamsungIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v45

    if-eqz v45, :cond_9

    .line 4618
    move/from16 v8, v21

    goto :goto_4

    .line 4624
    .end local v5    # "N":I
    .end local v21    # "i":I
    .end local v28    # "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v40    # "subtypeId":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v45

    move-object/from16 v0, v45

    iget v0, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    move/from16 v45, v0

    const/16 v47, 0x1

    move/from16 v0, v45

    move/from16 v1, v47

    if-ne v0, v1, :cond_12

    .line 4625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    move/from16 v47, v0

    move-object/from16 v0, v45

    move/from16 v1, p1

    move/from16 v2, v47

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeListLocked(ZZZ)Ljava/util/List;

    move-result-object v31

    .line 4628
    .local v31, "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    if-eqz v31, :cond_11

    if-eqz v22, :cond_11

    .line 4629
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    .line 4630
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v5

    .line 4631
    .restart local v5    # "N":I
    new-array v0, v5, [Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v35, v0

    .line 4632
    .local v35, "mIms":[Landroid/view/inputmethod/InputMethodInfo;
    new-array v0, v5, [Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 4633
    new-array v0, v5, [I

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardSubtypeIds:[I

    .line 4634
    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v37, v0

    .line 4635
    .local v37, "mPackageName":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 4637
    .local v9, "checkitem":I
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_5
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v45

    move/from16 v0, v21

    move/from16 v1, v45

    if-ge v0, v1, :cond_d

    .line 4638
    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 4639
    .restart local v28    # "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v29, v0

    .line 4640
    .local v29, "itemInfo":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual/range {v29 .. v29}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v45

    const-string v47, "com.sec.android.inputmethod/.AuxiliaryEmotionKeypad"

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_c

    .line 4641
    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4642
    add-int/lit8 v21, v21, -0x1

    .line 4643
    add-int/lit8 v5, v5, -0x1

    .line 4637
    :cond_c
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 4647
    .end local v28    # "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v29    # "itemInfo":Landroid/view/inputmethod/InputMethodInfo;
    :cond_d
    const/16 v21, 0x0

    :goto_6
    move/from16 v0, v21

    if-ge v0, v5, :cond_11

    .line 4648
    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 4649
    .restart local v28    # "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v45, v0

    aput-object v45, v35, v21

    .line 4650
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v45

    aput-object v45, v37, v21

    .line 4651
    aget-object v45, v37, v21

    const-string v47, "com.sec.android.inputmethod"

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_e

    aget-object v45, v37, v21

    const-string v47, "com.google.android.googlequicksearchbox"

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_e

    aget-object v45, v37, v21

    const-string v47, "com.samsung.android.svoiceime"

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_10

    .line 4653
    :cond_e
    const-string v45, "InputMethodManagerService"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "IMMS: showInputMethodMenuInternal() -checkitem : "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4654
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardIms:[Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v47, v0

    aput-object v47, v45, v9

    .line 4656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardSubtypeIds:[I

    move-object/from16 v45, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    move/from16 v47, v0

    aput v47, v45, v9

    .line 4657
    move/from16 v0, v21

    if-ne v8, v0, :cond_f

    .line 4658
    const-string v45, "InputMethodManagerService"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "IMMS: showInputMethodMenuInternal() checkedItem==i -checkitem : "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " i =  "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4659
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardCheckedItem:I

    .line 4661
    :cond_f
    add-int/lit8 v9, v9, 0x1

    .line 4647
    :cond_10
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_6

    .line 4665
    .end local v5    # "N":I
    .end local v9    # "checkitem":I
    .end local v21    # "i":I
    .end local v28    # "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v35    # "mIms":[Landroid/view/inputmethod/InputMethodInfo;
    .end local v37    # "mPackageName":[Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardCheckedItem:I

    .line 4670
    .end local v31    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v45

    const/16 v47, 0x64

    move/from16 v0, v45

    move/from16 v1, v47

    if-lt v0, v1, :cond_16

    .line 4671
    move-object/from16 v32, v11

    .line 4673
    .local v32, "knoxContext":Landroid/content/Context;
    const/16 v45, 0x0

    :try_start_2
    new-instance v47, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v48

    invoke-direct/range {v47 .. v48}, Landroid/os/UserHandle;-><init>(I)V

    move/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v11, v12, v0, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v32

    .line 4677
    :goto_7
    :try_start_3
    new-instance v39, Landroid/view/ContextThemeWrapper;

    const v45, 0x1030223

    move-object/from16 v0, v39

    move-object/from16 v1, v32

    move/from16 v2, v45

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 4682
    .end local v32    # "knoxContext":Landroid/content/Context;
    .local v39, "settingsContext":Landroid/content/Context;
    :goto_8
    new-instance v45, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v45

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 4683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v45, v0

    new-instance v47, Lcom/android/server/InputMethodManagerService$8;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService$8;-><init>(Lcom/android/server/InputMethodManagerService;)V

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 4690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v15

    .line 4691
    .local v15, "dialogContext":Landroid/content/Context;
    const/16 v45, 0x0

    sget-object v47, Lcom/android/internal/R$styleable;->DialogPreference:[I

    const v48, 0x101005d

    const/16 v49, 0x0

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    move/from16 v2, v48

    move/from16 v3, v49

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 4694
    .local v6, "a":Landroid/content/res/TypedArray;
    const/16 v45, 0x2

    move/from16 v0, v45

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 4696
    .local v16, "dialogIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 4698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 4700
    const-string/jumbo v45, "layout_inflater"

    move-object/from16 v0, v45

    invoke-virtual {v15, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/view/LayoutInflater;

    .line 4702
    .local v25, "inflater":Landroid/view/LayoutInflater;
    const v45, 0x1090082

    const/16 v47, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v45

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v44

    .line 4704
    .local v44, "tv":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 4707
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isHWAccessoryKeyboard()Z

    move-result v26

    .line 4708
    .local v26, "isDisplayedHardKeySwitch":Z
    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    .line 4709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    move-object/from16 v45, v0

    const v47, 0x1020360

    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/TextView;

    .line 4710
    .local v43, "textView":Landroid/widget/TextView;
    const v4, 0x3f99999a    # 1.2f

    .line 4711
    .local v4, "MAX_FONT_SCALE":F
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v45

    move-object/from16 v0, v45

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    move/from16 v18, v0

    .line 4712
    .local v18, "fontScale":F
    invoke-virtual/range {v43 .. v43}, Landroid/widget/TextView;->getTextSize()F

    move-result v45

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v47

    move-object/from16 v0, v47

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    move/from16 v47, v0

    div-float v19, v45, v47

    .line 4714
    .local v19, "fontsize":F
    cmpl-float v45, v18, v4

    if-lez v45, :cond_13

    .line 4715
    move/from16 v18, v4

    .line 4717
    :cond_13
    const/16 v45, 0x1

    mul-float v47, v19, v18

    move-object/from16 v0, v43

    move/from16 v1, v45

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    move-object/from16 v45, v0

    const v47, 0x10203eb

    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v47

    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isHWAccessoryKeyboard()Z

    move-result v45

    if-eqz v45, :cond_17

    const/16 v45, 0x0

    :goto_9
    move-object/from16 v0, v47

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    move-object/from16 v45, v0

    const v47, 0x10203ec

    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Switch;

    .line 4723
    .local v20, "hardKeySwitch":Landroid/widget/Switch;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v45

    move-object/from16 v0, v20

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 4724
    new-instance v45, Lcom/android/server/InputMethodManagerService$9;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService$9;-><init>(Lcom/android/server/InputMethodManagerService;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4739
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Switch;->isChecked()Z

    move-result v45

    if-nez v45, :cond_18

    if-eqz v26, :cond_18

    .line 4740
    const v42, 0x1090084

    .line 4745
    .local v42, "textResourceId":I
    :goto_a
    new-instance v7, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    move/from16 v0, v42

    move-object/from16 v1, v22

    invoke-direct {v7, v15, v0, v1, v8}, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;I)V

    .line 4748
    .local v7, "adapter":Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    new-instance v10, Lcom/android/server/InputMethodManagerService$10;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v7}, Lcom/android/server/InputMethodManagerService$10;-><init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;)V

    .line 4781
    .local v10, "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v0, v7, v8, v10}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4783
    if-nez v27, :cond_14

    .line 4784
    new-instance v38, Lcom/android/server/InputMethodManagerService$11;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService$11;-><init>(Lcom/android/server/InputMethodManagerService;)V

    .line 4791
    .local v38, "positiveListener":Landroid/content/DialogInterface$OnClickListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v45, v0

    const v47, 0x10403fb

    move-object/from16 v0, v45

    move/from16 v1, v47

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4794
    .end local v38    # "positiveListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 4795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v45, v0

    new-instance v47, Lcom/android/server/InputMethodManagerService$12;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/InputMethodManagerService$12;-><init>(Lcom/android/server/InputMethodManagerService;Landroid/content/Context;)V

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 4812
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Switch;->isChecked()Z

    move-result v45

    if-nez v45, :cond_15

    if-eqz v26, :cond_15

    .line 4813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v45

    const/16 v47, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 4815
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v45, v0

    const/16 v47, 0x1

    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 4818
    if-eqz v27, :cond_19

    .line 4819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v45

    const/16 v47, 0x837

    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 4830
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v45

    move-object/from16 v0, v45

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v47, v0

    or-int/lit8 v47, v47, 0x10

    move/from16 v0, v47

    move-object/from16 v1, v45

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v45

    const-string v47, "Select input method"

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 4833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    move/from16 v47, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    move/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v47

    move/from16 v3, v48

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->updateSystemUi(Landroid/os/IBinder;II)V

    .line 4834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/app/AlertDialog;->show()V

    .line 4836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v45, v0

    new-instance v47, Landroid/content/Intent;

    const-string v48, "ACTION_SWITCHING_DIALOG_SHOWN"

    invoke-direct/range {v47 .. v48}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4838
    monitor-exit v46

    goto/16 :goto_0

    .line 4674
    .end local v4    # "MAX_FONT_SCALE":F
    .end local v6    # "a":Landroid/content/res/TypedArray;
    .end local v7    # "adapter":Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    .end local v10    # "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v15    # "dialogContext":Landroid/content/Context;
    .end local v16    # "dialogIcon":Landroid/graphics/drawable/Drawable;
    .end local v18    # "fontScale":F
    .end local v19    # "fontsize":F
    .end local v20    # "hardKeySwitch":Landroid/widget/Switch;
    .end local v25    # "inflater":Landroid/view/LayoutInflater;
    .end local v26    # "isDisplayedHardKeySwitch":Z
    .end local v39    # "settingsContext":Landroid/content/Context;
    .end local v42    # "textResourceId":I
    .end local v43    # "textView":Landroid/widget/TextView;
    .end local v44    # "tv":Landroid/view/View;
    .restart local v32    # "knoxContext":Landroid/content/Context;
    :catch_0
    move-exception v17

    .line 4675
    .local v17, "e":Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 4679
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v32    # "knoxContext":Landroid/content/Context;
    :cond_16
    new-instance v39, Landroid/view/ContextThemeWrapper;

    const v45, 0x1030223

    move-object/from16 v0, v39

    move/from16 v1, v45

    invoke-direct {v0, v11, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .restart local v39    # "settingsContext":Landroid/content/Context;
    goto/16 :goto_8

    .line 4718
    .restart local v4    # "MAX_FONT_SCALE":F
    .restart local v6    # "a":Landroid/content/res/TypedArray;
    .restart local v15    # "dialogContext":Landroid/content/Context;
    .restart local v16    # "dialogIcon":Landroid/graphics/drawable/Drawable;
    .restart local v18    # "fontScale":F
    .restart local v19    # "fontsize":F
    .restart local v25    # "inflater":Landroid/view/LayoutInflater;
    .restart local v26    # "isDisplayedHardKeySwitch":Z
    .restart local v43    # "textView":Landroid/widget/TextView;
    .restart local v44    # "tv":Landroid/view/View;
    :cond_17
    const/16 v45, 0x8

    goto/16 :goto_9

    .line 4743
    .restart local v20    # "hardKeySwitch":Landroid/widget/Switch;
    :cond_18
    const v42, 0x1090083

    .restart local v42    # "textResourceId":I
    goto/16 :goto_a

    .line 4823
    .restart local v7    # "adapter":Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    .restart local v10    # "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v45

    const/16 v47, 0x7d8

    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_b
.end method

.method private showInputMethodMenuInternal(Z)V
    .locals 0
    .param p1, "showSubtypes"    # Z

    .prologue
    .line 4507
    return-void
.end method

.method private showInputMethodSubtypeMenu()V
    .locals 1

    .prologue
    .line 4478
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->showInputMethodMenuInternal(Z)V

    .line 4479
    return-void
.end method

.method private startWritingBuddyService()V
    .locals 0

    .prologue
    .line 6150
    .line 6151
    return-void
.end method

.method private switchSpellChecker(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 3275
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "textservices"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    .line 3276
    .local v0, "textServicesManager":Landroid/view/textservice/TextServicesManager;
    if-eqz v0, :cond_0

    .line 3277
    invoke-virtual {v0, p1}, Landroid/view/textservice/TextServicesManager;->switchUserForKnox(I)V

    .line 3279
    :cond_0
    return-void
.end method

.method private switchUserLocked(I)V
    .locals 10
    .param p1, "newUserId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1735
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v7, p1}, Lcom/android/server/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    .line 1736
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v7, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->setCurrentUserId(I)V

    .line 1737
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->updateCurrentProfileIds()V

    .line 1739
    new-instance v7, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-direct {v7, v8, p1}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;-><init>(Ljava/util/HashMap;I)V

    iput-object v7, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    .line 1740
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v0

    .line 1750
    .local v0, "defaultImiId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1751
    .local v2, "initialUserSwitch":Z
    invoke-direct {p0, v6, v2}, Lcom/android/server/InputMethodManagerService;->resetAllInternalStateLocked(ZZ)V

    .line 1753
    if-eqz v2, :cond_0

    .line 1754
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, p1, v9}, Lcom/android/internal/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V

    .line 1763
    :cond_0
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getPersonaService()Landroid/os/PersonaManager;

    move-result-object v5

    .line 1764
    .local v5, "mPersona":Landroid/os/PersonaManager;
    if-eqz v5, :cond_1

    .line 1765
    invoke-virtual {v5, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mIsPersona:Z

    .line 1770
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "access_control_enabled"

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    move v3, v4

    .line 1772
    .local v3, "isAccessControlEnable":Z
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/InputMethodManagerService;->setAccessControlEnable(Z)V

    .line 1774
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "access_control_keyboard_block"

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_3

    .line 1777
    .local v4, "isAccessControlKeyboardBlockEnable":Z
    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/server/InputMethodManagerService;->setisAccessControlKeyboardBlockEnable(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1781
    .end local v3    # "isAccessControlEnable":Z
    .end local v4    # "isAccessControlKeyboardBlockEnable":Z
    :goto_2
    return-void

    :cond_2
    move v3, v6

    .line 1770
    goto :goto_0

    .restart local v3    # "isAccessControlEnable":Z
    :cond_3
    move v4, v6

    .line 1774
    goto :goto_1

    .line 1778
    .end local v3    # "isAccessControlEnable":Z
    :catch_0
    move-exception v1

    .line 1779
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v6, "InputMethodManagerService"

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateSystemUi(Landroid/os/IBinder;II)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    .prologue
    .line 2675
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2676
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 2677
    monitor-exit v1

    .line 2678
    return-void

    .line 2677
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateSystemUiLocked(Landroid/os/IBinder;II)V
    .locals 17
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    .prologue
    .line 2682
    invoke-direct/range {p0 .. p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 2683
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 2684
    .local v11, "uid":I
    const-string v12, "InputMethodManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ignoring updateSystemUiLocked due to an invalid token. uid:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " token:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2740
    .end local v11    # "uid":I
    :goto_0
    return-void

    .line 2691
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2694
    .local v4, "ident":J
    if-eqz p2, :cond_1

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isKeyguardLocked()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/InputMethodManagerService;->mCurClientInKeyguard:Z

    if-nez v12, :cond_1

    .line 2695
    const/16 p2, 0x0

    .line 2698
    :cond_1
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    .line 2699
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService;->shouldShowImeSwitcherLocked(I)Z

    move-result v8

    .line 2700
    .local v8, "needsToShowImeSwitcher":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v12, :cond_2

    .line 2701
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v12, v0, v1, v2, v8}, Lcom/android/server/statusbar/StatusBarManagerService;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    .line 2704
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 2705
    .local v6, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v6, :cond_5

    if-eqz v8, :cond_5

    .line 2707
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isHWAccessoryKeyboard()Z

    move-result v7

    .line 2708
    .local v7, "isDisplayedHardKeySwitch":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v13, 0x10403fa

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 2710
    .local v10, "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v12}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v12

    if-nez v12, :cond_4

    if-eqz v7, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v13, 0x1040860

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 2714
    .local v9, "summary":Ljava/lang/CharSequence;
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    invoke-virtual {v12, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mImeSwitchPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 2717
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowManagerService;->hasNavigationBar()Z

    move-result v12

    if-nez v12, :cond_3

    .line 2722
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v13, "InputMethodManagerService_Noti"

    const v14, 0x10403fa

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    invoke-virtual {v15}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v15

    sget-object v16, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v12 .. v16}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 2725
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2738
    .end local v7    # "isDisplayedHardKeySwitch":Z
    .end local v9    # "summary":Ljava/lang/CharSequence;
    .end local v10    # "title":Ljava/lang/CharSequence;
    :cond_3
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 2710
    .restart local v7    # "isDisplayedHardKeySwitch":Z
    .restart local v10    # "title":Ljava/lang/CharSequence;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v12, v6, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    move-result-object v9

    goto :goto_1

    .line 2728
    .end local v7    # "isDisplayedHardKeySwitch":Z
    .end local v10    # "title":Ljava/lang/CharSequence;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v12, :cond_3

    .line 2732
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v13, "InputMethodManagerService_Noti"

    const v14, 0x10403fa

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v13, v14, v15}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 2734
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 2738
    .end local v6    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v8    # "needsToShowImeSwitcher":Z
    :catchall_0
    move-exception v12

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12
.end method


# virtual methods
.method public addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V
    .locals 4
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .prologue
    .line 2097
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2104
    :goto_0
    return-void

    .line 2100
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2101
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/android/server/InputMethodManagerService$ClientState;-><init>(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2103
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method attachNewInputLocked(Z)Lcom/android/internal/view/InputBindResult;
    .locals 7
    .param p1, "initial"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2177
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    if-nez v0, :cond_0

    .line 2178
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x3f2

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService$ClientState;->binding:Landroid/view/inputmethod/InputBinding;

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    .line 2182
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v6, v0, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    .line 2183
    .local v6, "session":Lcom/android/server/InputMethodManagerService$SessionState;
    if-eqz p1, :cond_4

    .line 2184
    iget-object v0, v6, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x7d0

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v1, v3, v6, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2190
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    if-nez v0, :cond_1

    const-string v0, "com.sec.android.inputmethod/.AuxiliaryEmotionKeypad"

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2192
    :cond_1
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getAppShowFlags()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 2194
    :cond_2
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    iget-object v1, v6, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    iget-object v3, v6, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    if-eqz v3, :cond_3

    iget-object v2, v6, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Landroid/view/InputChannel;->dup()Landroid/view/InputChannel;

    move-result-object v2

    :cond_3
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    return-object v0

    .line 2187
    :cond_4
    iget-object v0, v6, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x7da

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v1, v3, v6, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    goto :goto_0
.end method

.method buildInputMethodListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;Z)V
    .locals 22
    .param p3, "resetDefaultEnabledIme"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 4357
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 4358
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->clear()V

    .line 4361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 4362
    .local v15, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getDisabledSystemInputMethods()Ljava/lang/String;

    move-result-object v8

    .line 4363
    .local v8, "disabledSysImes":Ljava/lang/String;
    if-nez v8, :cond_0

    const-string v8, ""

    .line 4365
    :cond_0
    new-instance v19, Landroid/content/Intent;

    const-string v20, "android.view.InputMethod"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v20, 0x8080

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v17

    .line 4370
    .local v17, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->getAllAdditionalInputMethodSubtypes()Ljava/util/HashMap;

    move-result-object v3

    .line 4372
    .local v3, "additionalSubtypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_8

    .line 4373
    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 4374
    .local v16, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v18, v0

    .line 4375
    .local v18, "si":Landroid/content/pm/ServiceInfo;
    new-instance v4, Landroid/content/ComponentName;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4376
    .local v4, "compName":Landroid/content/ComponentName;
    const-string v19, "android.permission.BIND_INPUT_METHOD"

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 4378
    const-string v19, "InputMethodManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Skipping input method "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ": it does not require the permission "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4372
    :cond_1
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 4387
    :cond_2
    :try_start_0
    new-instance v14, Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v1, v3}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/Map;)V

    .line 4389
    .local v14, "p":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v12

    .line 4390
    .local v12, "id":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    const/4 v10, 0x1

    .line 4397
    .local v10, "haveHardKeyboard":Z
    :goto_2
    const-string v19, "com.sec.android.inputmethod/.AuxiliaryEmotionKeypad"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 4398
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 4402
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/InputMethodManagerService;->isSamsungIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 4403
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4417
    .end local v10    # "haveHardKeyboard":Z
    .end local v12    # "id":Ljava/lang/String;
    .end local v14    # "p":Landroid/view/inputmethod/InputMethodInfo;
    :catch_0
    move-exception v9

    .line 4418
    .local v9, "e":Ljava/lang/Exception;
    const-string v19, "InputMethodManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unable to load input method "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 4393
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v12    # "id":Ljava/lang/String;
    .restart local v14    # "p":Landroid/view/inputmethod/InputMethodInfo;
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 4400
    .restart local v10    # "haveHardKeyboard":Z
    :cond_4
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4406
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isJapaneseRegion()Z

    move-result v19

    if-eqz v19, :cond_6

    const-string v19, "com.nttdocomo.android.voiceeditor/.standardcommon.IWnnLanguageSwitcher"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 4407
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    .line 4408
    :cond_6
    const-string v19, "com.sec.android.indiainputmethod/.SamsungIndiaKeypad"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 4409
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    .line 4410
    :cond_7
    const-string v19, "com.samsung.android.svoiceime/.SamsungVoiceReco"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 4411
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 4422
    .end local v4    # "compName":Landroid/content/ComponentName;
    .end local v10    # "haveHardKeyboard":Z
    .end local v12    # "id":Ljava/lang/String;
    .end local v14    # "p":Landroid/view/inputmethod/InputMethodInfo;
    .end local v16    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v18    # "si":Landroid/content/pm/ServiceInfo;
    :cond_8
    if-eqz p3, :cond_a

    .line 4423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;ZLjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    .line 4425
    .local v6, "defaultEnabledIme":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v11, 0x0

    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_a

    .line 4426
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/InputMethodInfo;

    .line 4431
    .local v13, "imi":Landroid/view/inputmethod/InputMethodInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v5

    .line 4433
    .local v5, "def_ime":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v5, :cond_9

    const-string v19, "com.samsung.inputmethod/.SamsungIME"

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    const-string v19, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 4425
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 4437
    :cond_9
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    goto :goto_5

    .line 4441
    .end local v5    # "def_ime":Landroid/view/inputmethod/InputMethodInfo;
    .end local v6    # "defaultEnabledIme":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v13    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v7

    .line 4442
    .local v7, "defaultImiId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 4443
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_c

    .line 4444
    const-string v19, "InputMethodManagerService"

    const-string v20, "Default IME is uninstalled. Choose new default IME."

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4445
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 4446
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 4457
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    .line 4458
    return-void

    .line 4450
    :cond_c
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    goto :goto_6
.end method

.method public changeFullInputMethod(Z)V
    .locals 1
    .param p1, "fullmode"    # Z

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->changeFullInputMethod(Z)V

    .line 422
    return-void
.end method

.method changeKeyboard()V
    .locals 3

    .prologue
    .line 5877
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isHWAccessoryKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5879
    sget-object v0, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    sget-object v2, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5883
    :cond_0
    :goto_0
    return-void

    .line 5881
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method changeKeyboardForVZWResetSetting()V
    .locals 3

    .prologue
    .line 5889
    :try_start_0
    sget-object v0, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5890
    sget-object v0, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    sget-object v2, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5894
    :cond_0
    :goto_0
    return-void

    .line 5892
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V
    .locals 1
    .param p1, "cs"    # Lcom/android/server/InputMethodManagerService$ClientState;

    .prologue
    .line 2485
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/InputMethodManagerService$SessionState;)V

    .line 2486
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    .line 2487
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 2488
    return-void
.end method

.method clearCurMethodLocked()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2509
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v2, :cond_1

    .line 2510
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 2511
    .local v0, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    goto :goto_0

    .line 2514
    .end local v0    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-direct {p0, v2}, Lcom/android/server/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/InputMethodManagerService$SessionState;)V

    .line 2515
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    .line 2516
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 2518
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v2, :cond_2

    .line 2519
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    const-string/jumbo v3, "ime"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2521
    :cond_2
    return-void
.end method

.method public dismissAndShowAgainInputMethodPicker()V
    .locals 2

    .prologue
    .line 3620
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3628
    :goto_0
    return-void

    .line 3624
    :cond_0
    const-string v0, "InputMethodManagerService"

    const-string/jumbo v1, "showAgainInputMehtodPicker"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3626
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ff

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 5517
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.DUMP"

    invoke-virtual {v9, v10}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_0

    .line 5520
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Permission Denial: can\'t dump InputMethodManager from from pid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5594
    :goto_0
    return-void

    .line 5529
    :cond_0
    new-instance v8, Landroid/util/PrintWriterPrinter;

    invoke-direct {v8, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 5531
    .local v8, "p":Landroid/util/Printer;
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 5532
    :try_start_0
    const-string v9, "Current Input Method Manager state:"

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5533
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5534
    .local v0, "N":I
    const-string v9, "  Input Methods:"

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5535
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 5536
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 5537
    .local v6, "info":Landroid/view/inputmethod/InputMethodInfo;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  InputMethod #"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ":"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5538
    const-string v9, "    "

    invoke-virtual {v6, v8, v9}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 5535
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5540
    .end local v6    # "info":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    const-string v9, "  Clients:"

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5541
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 5542
    .local v1, "ci":Lcom/android/server/InputMethodManagerService$ClientState;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Client "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ":"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5543
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    client="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5544
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    inputContext="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v1, Lcom/android/server/InputMethodManagerService$ClientState;->inputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5545
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    sessionRequested="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, v1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5546
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    curSession="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 5569
    .end local v0    # "N":I
    .end local v1    # "ci":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v4    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 5548
    .restart local v0    # "N":I
    .restart local v4    # "i":I
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mCurMethodId="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5549
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 5550
    .local v2, "client":Lcom/android/server/InputMethodManagerService$ClientState;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mCurClient="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " mCurSeq="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5551
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mCurFocusedWindow="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5552
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mCurId="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " mHaveConnect="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " mBoundToMethod="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5554
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mCurToken="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5555
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mCurIntent="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5556
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 5557
    .local v7, "method":Lcom/android/internal/view/IInputMethod;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mCurMethod="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5558
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mEnabledSession="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5559
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mShowRequested="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " mShowExplicitlyRequested="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " mShowForced="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " mInputShown="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5563
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mCurUserActionNotificationSequenceNumber="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5565
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mSystemReady="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " mInteractive="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5566
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mSettingsObserver="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5567
    const-string v9, "  mSwitchingController:"

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5568
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-virtual {v9, v8}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->dump(Landroid/util/Printer;)V

    .line 5569
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5571
    const-string v9, " "

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5572
    if-eqz v2, :cond_3

    .line 5573
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5575
    :try_start_2
    iget-object v9, v2, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v9}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-interface {v9, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 5583
    :goto_3
    const-string v9, " "

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5584
    if-eqz v7, :cond_4

    .line 5585
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5587
    :try_start_3
    invoke-interface {v7}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-interface {v9, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 5588
    :catch_0
    move-exception v3

    .line 5589
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Input method service dead: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5576
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 5577
    .restart local v3    # "e":Landroid/os/RemoteException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Input method client dead: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 5580
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string v9, "No input method client."

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 5592
    :cond_4
    const-string v9, "No input method service."

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V
    .locals 1
    .param p1, "target"    # Landroid/os/IInterface;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 2120
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    instance-of v0, v0, Landroid/os/Binder;

    if-eqz v0, :cond_0

    .line 2121
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, p2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2126
    :goto_0
    return-void

    .line 2123
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/InputMethodManagerService;->handleMessage(Landroid/os/Message;)Z

    .line 2124
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    goto :goto_0
.end method

.method public finishInput(Lcom/android/internal/view/IInputMethodClient;)V
    .locals 0
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .prologue
    .line 2390
    return-void
.end method

.method public getCurrentFocusDisplayID()I
    .locals 1

    .prologue
    .line 6259
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getInputMethodTargetWindowDisplayId()I

    move-result v0

    return v0
.end method

.method public getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 2

    .prologue
    .line 5187
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5188
    const/4 v0, 0x0

    .line 5191
    :goto_0
    return-object v0

    .line 5190
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 5191
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 5192
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEnabledInputMethodList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2060
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2061
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2064
    :goto_0
    return-object v0

    .line 2063
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2064
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 2065
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;
    .locals 4
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "allowsImplicitlySelectedSubtypes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2076
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2077
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 2089
    :goto_0
    return-object v1

    .line 2079
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 2081
    if-nez p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2082
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 2086
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    if-nez v0, :cond_2

    .line 2087
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 2091
    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2084
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .restart local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_1

    .line 2089
    :cond_2
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v0, p2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getInputMethodList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2043
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getInputMethodList: UserHandle.getCallingUserId()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getInputMethodList: mSettings.getCurrentUserId()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getInputMethodList: mCurrentFocusedUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    :cond_0
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2050
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2053
    :goto_0
    return-object v0

    .line 2052
    :cond_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2053
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    goto :goto_0

    .line 2054
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInputMethodWindowVisibleHeight()I
    .locals 1

    .prologue
    .line 3869
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getInputMethodWindowVisibleHeight()I

    move-result v0

    return v0
.end method

.method public getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 3805
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v6

    .line 3824
    :goto_0
    return-object v5

    .line 3808
    :cond_0
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 3809
    :try_start_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;

    move-result-object v1

    .line 3811
    .local v1, "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3812
    :cond_1
    monitor-exit v7

    move-object v5, v6

    goto :goto_0

    .line 3813
    :cond_2
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v8, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 3814
    .local v2, "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v2, :cond_3

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v6

    goto :goto_0

    .line 3816
    :cond_3
    :try_start_1
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3817
    .local v3, "lastSubtypeHash":I
    invoke-static {v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v4

    .line 3819
    .local v4, "lastSubtypeId":I
    if-ltz v4, :cond_4

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-lt v4, v5, :cond_5

    .line 3820
    :cond_4
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v6

    goto :goto_0

    .line 3822
    :cond_5
    :try_start_3
    invoke-virtual {v2, v4}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    :try_start_4
    monitor-exit v7

    goto :goto_0

    .line 3826
    .end local v1    # "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "lastSubtypeHash":I
    .end local v4    # "lastSubtypeId":I
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 3823
    .restart local v1    # "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    :catch_0
    move-exception v0

    .line 3824
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v5, v6

    goto :goto_0
.end method

.method public getShortcutInputMethodsAndSubtypes()Ljava/util/List;
    .locals 8

    .prologue
    .line 5249
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 5250
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5251
    .local v4, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 5255
    const-string/jumbo v6, "voice"

    invoke-direct {p0, v6}, Lcom/android/server/InputMethodManagerService;->findLastResortApplicableShortcutInputMethodAndSubtypeLocked(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 5258
    .local v3, "info":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz v3, :cond_0

    .line 5259
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5260
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5262
    :cond_0
    monitor-exit v7

    .line 5270
    .end local v3    # "info":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;>;"
    :goto_0
    return-object v4

    .line 5264
    :cond_1
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 5265
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5266
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodSubtype;

    .line 5267
    .local v5, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5271
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v5    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 5270
    .restart local v4    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_3
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getWACOMPen()Z
    .locals 1

    .prologue
    .line 425
    sget-boolean v0, Lcom/android/server/InputMethodManagerService;->mbWACOMPen:Z

    return v0
.end method

.method getsystemimeKnox(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 6158
    const/4 v0, 0x0

    .line 6159
    .local v0, "defIm":Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 6161
    .local v2, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 6162
    .local v4, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-direct {p0, v4}, Lcom/android/server/InputMethodManagerService;->isSamsungIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6163
    move-object v0, v4

    goto :goto_0

    .line 6172
    .end local v4    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    if-nez v0, :cond_2

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 6173
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 6177
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6180
    return-object v0

    .line 6177
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 3987
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    move v12, v11

    .line 4230
    :cond_0
    :goto_0
    return v12

    .line 3990
    :sswitch_0
    iget v10, p1, Landroid/os/Message;->arg1:I

    packed-switch v10, :pswitch_data_0

    .line 4004
    const-string v10, "InputMethodManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown subtype picker mode = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v11

    .line 4005
    goto :goto_0

    .line 3995
    :pswitch_0
    iget-boolean v9, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    .line 4007
    .local v9, "showAuxSubtypes":Z
    :goto_1
    invoke-direct {p0, v9}, Lcom/android/server/InputMethodManagerService;->showInputMethodMenu(Z)V

    goto :goto_0

    .line 3998
    .end local v9    # "showAuxSubtypes":Z
    :pswitch_1
    const/4 v9, 0x1

    .line 3999
    .restart local v9    # "showAuxSubtypes":Z
    goto :goto_1

    .line 4001
    .end local v9    # "showAuxSubtypes":Z
    :pswitch_2
    const/4 v9, 0x0

    .line 4002
    .restart local v9    # "showAuxSubtypes":Z
    goto :goto_1

    .line 4012
    .end local v9    # "showAuxSubtypes":Z
    :sswitch_1
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 4013
    const-string v10, "InputMethodManagerService"

    const-string v11, "MSG_SHOW_AGAIN_IM_PICKER"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4014
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->dismiss()V

    .line 4018
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->showInputMethodSubtypeMenu()V

    goto :goto_0

    .line 4024
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4025
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/server/InputMethodManagerService;->showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V

    .line 4026
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 4030
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_3
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->showConfigureInputMethods()V

    goto :goto_0

    .line 4037
    :sswitch_4
    :try_start_0
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputMethod;

    invoke-interface {v10}, Lcom/android/internal/view/IInputMethod;->unbindInput()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4038
    :catch_0
    move-exception v10

    goto :goto_0

    .line 4043
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4045
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputMethod;

    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v11, Landroid/view/inputmethod/InputBinding;

    invoke-interface {v10, v11}, Lcom/android/internal/view/IInputMethod;->bindInput(Landroid/view/inputmethod/InputBinding;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_f

    .line 4048
    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 4051
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4055
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2
    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputMethod;

    iget v13, p1, Landroid/os/Message;->arg1:I

    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v11, Landroid/os/ResultReceiver;

    invoke-interface {v10, v13, v11}, Lcom/android/internal/view/IInputMethod;->showSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_e

    .line 4058
    :goto_3
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 4063
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4068
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_3
    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputMethod;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11}, Lcom/android/internal/view/IInputMethod;->updateWacomState(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_d

    .line 4071
    :goto_4
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 4080
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_8
    :try_start_4
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputMethod;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11}, Lcom/android/internal/view/IInputMethod;->updateFloatingState(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 4081
    :catch_1
    move-exception v10

    goto/16 :goto_0

    .line 4087
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4091
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_5
    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputMethod;

    const/4 v13, 0x0

    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v11, Landroid/os/ResultReceiver;

    invoke-interface {v10, v13, v11}, Lcom/android/internal/view/IInputMethod;->hideSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_c

    .line 4094
    :goto_5
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 4102
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_a
    :try_start_6
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputMethod;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11}, Lcom/android/internal/view/IInputMethod;->minimizeSoftInput(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 4103
    :catch_2
    move-exception v4

    .line 4104
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 4111
    .end local v4    # "e":Landroid/os/RemoteException;
    :sswitch_b
    :try_start_7
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputMethod;

    invoke-interface {v10}, Lcom/android/internal/view/IInputMethod;->undoMinimizeSoftInput()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 4112
    :catch_3
    move-exception v4

    .line 4113
    .restart local v4    # "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 4119
    .end local v4    # "e":Landroid/os/RemoteException;
    :sswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4122
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_8
    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputMethod;

    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v11, Landroid/os/IBinder;

    invoke-interface {v10, v11}, Lcom/android/internal/view/IInputMethod;->attachToken(Landroid/os/IBinder;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_b

    .line 4125
    :goto_6
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 4128
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4129
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/view/IInputMethod;

    .line 4130
    .local v5, "method":Lcom/android/internal/view/IInputMethod;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/view/InputChannel;

    .line 4132
    .local v1, "channel":Landroid/view/InputChannel;
    :try_start_9
    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputSessionCallback;

    invoke-interface {v5, v1, v10}, Lcom/android/internal/view/IInputMethod;->createSession(Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 4137
    if-eqz v1, :cond_1

    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 4138
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 4141
    :cond_1
    :goto_7
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 4133
    :catch_4
    move-exception v10

    .line 4137
    if-eqz v1, :cond_1

    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 4138
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    goto :goto_7

    .line 4137
    :catchall_0
    move-exception v10

    if-eqz v1, :cond_2

    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 4138
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    :cond_2
    throw v10

    .line 4147
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "channel":Landroid/view/InputChannel;
    .end local v5    # "method":Lcom/android/internal/view/IInputMethod;
    :sswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4149
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_a
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/InputMethodManagerService$SessionState;

    .line 4150
    .local v8, "session":Lcom/android/server/InputMethodManagerService$SessionState;
    invoke-virtual {p0, v8}, Lcom/android/server/InputMethodManagerService;->setEnabledSessionInMainThread(Lcom/android/server/InputMethodManagerService$SessionState;)V

    .line 4151
    iget-object v13, v8, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputContext;

    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v11, Landroid/view/inputmethod/EditorInfo;

    invoke-interface {v13, v10, v11}, Lcom/android/internal/view/IInputMethod;->startInput(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a

    .line 4155
    .end local v8    # "session":Lcom/android/server/InputMethodManagerService$SessionState;
    :goto_8
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 4158
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4160
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_b
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/InputMethodManagerService$SessionState;

    .line 4161
    .restart local v8    # "session":Lcom/android/server/InputMethodManagerService$SessionState;
    invoke-virtual {p0, v8}, Lcom/android/server/InputMethodManagerService;->setEnabledSessionInMainThread(Lcom/android/server/InputMethodManagerService$SessionState;)V

    .line 4162
    iget-object v13, v8, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputContext;

    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v11, Landroid/view/inputmethod/EditorInfo;

    invoke-interface {v13, v10, v11}, Lcom/android/internal/view/IInputMethod;->restartInput(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_9

    .line 4166
    .end local v8    # "session":Lcom/android/server/InputMethodManagerService$SessionState;
    :goto_9
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 4173
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_10
    :try_start_c
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputMethodClient;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11}, Lcom/android/internal/view/IInputMethodClient;->onUnbindMethod(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_0

    .line 4174
    :catch_5
    move-exception v10

    goto/16 :goto_0

    .line 4179
    :sswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4180
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputMethodClient;

    .line 4181
    .local v2, "client":Lcom/android/internal/view/IInputMethodClient;
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/view/InputBindResult;

    .line 4183
    .local v6, "res":Lcom/android/internal/view/InputBindResult;
    :try_start_d
    invoke-interface {v2, v6}, Lcom/android/internal/view/IInputMethodClient;->onBindMethod(Lcom/android/internal/view/InputBindResult;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 4189
    iget-object v10, v6, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v10, :cond_3

    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 4190
    iget-object v10, v6, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v10}, Landroid/view/InputChannel;->dispose()V

    .line 4193
    :cond_3
    :goto_a
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 4184
    :catch_6
    move-exception v4

    .line 4185
    .restart local v4    # "e":Landroid/os/RemoteException;
    :try_start_e
    const-string v10, "InputMethodManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Client died receiving input method "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 4189
    iget-object v10, v6, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v10, :cond_3

    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 4190
    iget-object v10, v6, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v10}, Landroid/view/InputChannel;->dispose()V

    goto :goto_a

    .line 4189
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v10

    iget-object v11, v6, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v11, :cond_4

    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 4190
    iget-object v11, v6, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v11}, Landroid/view/InputChannel;->dispose()V

    :cond_4
    throw v10

    .line 4198
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local v6    # "res":Lcom/android/internal/view/InputBindResult;
    :sswitch_12
    :try_start_f
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v10, v10, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget v13, p1, Landroid/os/Message;->arg1:I

    if-eqz v13, :cond_5

    move v11, v12

    :cond_5
    invoke-interface {v10, v11}, Lcom/android/internal/view/IInputMethodClient;->setActive(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_7

    goto/16 :goto_0

    .line 4199
    :catch_7
    move-exception v4

    .line 4200
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string v11, "InputMethodManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Got RemoteException sending setActive(false) notification to pid "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/InputMethodManagerService$ClientState;

    iget v10, v10, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " uid "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/InputMethodManagerService$ClientState;

    iget v10, v10, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4206
    .end local v4    # "e":Landroid/os/RemoteException;
    :sswitch_13
    iget v10, p1, Landroid/os/Message;->arg1:I

    if-eqz v10, :cond_6

    move v10, v12

    :goto_b
    invoke-direct {p0, v10}, Lcom/android/server/InputMethodManagerService;->handleSetInteractive(Z)V

    goto/16 :goto_0

    :cond_6
    move v10, v11

    goto :goto_b

    .line 4209
    :sswitch_14
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 4210
    .local v7, "sequenceNumber":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 4212
    .local v3, "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    :try_start_10
    iget-object v10, v3, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v10, v7}, Lcom/android/internal/view/IInputMethodClient;->setUserActionNotificationSequenceNumber(I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_8

    goto/16 :goto_0

    .line 4213
    :catch_8
    move-exception v4

    .line 4214
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string v10, "InputMethodManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Got RemoteException sending setUserActionNotificationSequenceNumber("

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ") notification to pid "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v3, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " uid "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v3, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4223
    .end local v3    # "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v7    # "sequenceNumber":I
    :sswitch_15
    iget v10, p1, Landroid/os/Message;->arg1:I

    if-ne v10, v12, :cond_7

    move v11, v12

    :cond_7
    invoke-direct {p0, v11}, Lcom/android/server/InputMethodManagerService;->setSpellCheckerEnabled(Z)V

    goto/16 :goto_0

    .line 4227
    :sswitch_16
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    iget v13, p1, Landroid/os/Message;->arg1:I

    if-ne v13, v12, :cond_8

    move v11, v12

    :cond_8
    invoke-virtual {v10, v11}, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->handleHardKeyboardStatusChange(Z)V

    goto/16 :goto_0

    .line 4164
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :catch_9
    move-exception v10

    goto/16 :goto_9

    .line 4153
    :catch_a
    move-exception v10

    goto/16 :goto_8

    .line 4123
    :catch_b
    move-exception v10

    goto/16 :goto_6

    .line 4092
    :catch_c
    move-exception v10

    goto/16 :goto_5

    .line 4069
    :catch_d
    move-exception v10

    goto/16 :goto_4

    .line 4056
    :catch_e
    move-exception v10

    goto/16 :goto_3

    .line 4046
    :catch_f
    move-exception v10

    goto/16 :goto_2

    .line 3987
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x3e8 -> :sswitch_4
        0x3f2 -> :sswitch_5
        0x3fc -> :sswitch_6
        0x3fd -> :sswitch_7
        0x3fe -> :sswitch_8
        0x3ff -> :sswitch_1
        0x400 -> :sswitch_a
        0x401 -> :sswitch_b
        0x406 -> :sswitch_9
        0x410 -> :sswitch_c
        0x41a -> :sswitch_d
        0x7d0 -> :sswitch_e
        0x7da -> :sswitch_f
        0xbb8 -> :sswitch_10
        0xbc2 -> :sswitch_11
        0xbcc -> :sswitch_12
        0xbd6 -> :sswitch_13
        0xbe0 -> :sswitch_14
        0xbf4 -> :sswitch_15
        0xfa0 -> :sswitch_16
    .end sparse-switch

    .line 3990
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hideCurrentInput(ILandroid/os/ResultReceiver;)Z
    .locals 1
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 3160
    const/4 v0, 0x0

    return v0
.end method

.method hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    .locals 10
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3167
    new-instance v3, Ljava/lang/Thread;

    new-instance v6, Lcom/android/server/InputMethodManagerService$7;

    invoke-direct {v6, p0}, Lcom/android/server/InputMethodManagerService$7;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-direct {v3, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3176
    .local v3, "t":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 3180
    and-int/lit8 v6, p1, 0x1

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    if-eqz v6, :cond_1

    :cond_0
    move v1, v4

    .line 3262
    :goto_0
    return v1

    .line 3185
    :cond_1
    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    if-eqz v6, :cond_2

    and-int/lit8 v6, p1, 0x2

    if-eqz v6, :cond_2

    move v1, v4

    .line 3187
    goto :goto_0

    .line 3198
    :cond_2
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    if-nez v6, :cond_3

    iget v6, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_6

    :cond_3
    move v2, v5

    .line 3201
    .local v2, "shouldHideSoftInput":Z
    :goto_1
    if-eqz v2, :cond_7

    .line 3206
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v8, 0x406

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v7, v8, v9, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 3208
    const/4 v1, 0x1

    .line 3212
    .local v1, "res":Z
    :goto_2
    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    if-eqz v6, :cond_4

    .line 3214
    :try_start_0
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v6, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3218
    :goto_3
    iput-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    .line 3220
    :cond_4
    iput-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    .line 3221
    iput-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    .line 3222
    iput-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 3223
    iput-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    .line 3224
    iput-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mShowHWR:Z

    .line 3227
    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v6}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->getKeyboardState()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v6, v5, :cond_8

    .line 3228
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v5}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->keyboardPerflockRelease()V

    .line 3229
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v4}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->setKeyboardState(I)V

    .line 3260
    :cond_5
    :goto_4
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    invoke-virtual {v5, v4, v6}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsToDisplayIfNeeded(ZZ)V

    goto :goto_0

    .end local v1    # "res":Z
    .end local v2    # "shouldHideSoftInput":Z
    :cond_6
    move v2, v4

    .line 3198
    goto :goto_1

    .line 3210
    .restart local v2    # "shouldHideSoftInput":Z
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "res":Z
    goto :goto_2

    .line 3215
    :catch_0
    move-exception v0

    .line 3216
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "InputMethodManagerService"

    const-string/jumbo v7, "hideCurrentInputLocked: unbindService is failed due to IllegalArgumentException"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3238
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_8
    iget-boolean v5, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v5}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->getKeyboardState()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 3239
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v4}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->setKeyboardState(I)V

    goto :goto_4
.end method

.method hideInputMethodMenu()V
    .locals 2

    .prologue
    .line 4948
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 4949
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenuLocked()V

    .line 4950
    monitor-exit v1

    .line 4951
    return-void

    .line 4950
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hideInputMethodMenuLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4956
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 4957
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4958
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 4961
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 4962
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 4963
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 4964
    return-void
.end method

.method hideKeyboardDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5867
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 5868
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5869
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardDialog:Landroid/app/AlertDialog;

    .line 5872
    :cond_0
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardBuilder:Landroid/app/AlertDialog$Builder;

    .line 5873
    return-void
.end method

.method public hideMySoftInput(Landroid/os/IBinder;I)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 3924
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3941
    :goto_0
    return-void

    .line 3927
    :cond_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 3928
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3929
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3930
    .local v2, "uid":I
    const-string v3, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring hideInputMethod due to an invalid token. uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " token:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3932
    monitor-exit v4

    goto :goto_0

    .line 3940
    .end local v2    # "uid":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3934
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 3936
    .local v0, "ident":J
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {p0, p2, v3}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3938
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3940
    monitor-exit v4

    goto :goto_0

    .line 3938
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .locals 8
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v4, 0x0

    .line 3092
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3119
    :goto_0
    return v4

    .line 3095
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3096
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3098
    .local v2, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3099
    :try_start_1
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v6, :cond_1

    if-eqz p1, :cond_1

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v6, v6, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v6}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    if-eq v6, v7, :cond_2

    .line 3105
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v6, p1}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    if-nez v6, :cond_2

    .line 3108
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3119
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3110
    :catch_0
    move-exception v0

    .line 3111
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3119
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3116
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_5
    invoke-virtual {p0, p2, p3}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    move-result v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3119
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3117
    :catchall_0
    move-exception v4

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3119
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isAccessoryKeyboard()I
    .locals 1

    .prologue
    .line 6038
    sget v0, Lcom/android/server/InputMethodManagerService;->keyboardState:I

    return v0
.end method

.method public isCurrentInputMethodAsSamsungKeyboard()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 6085
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v3, v4}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 6087
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isChineseRegion()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "com.samsung.inputmethod"

    invoke-direct {p0, v3}, Lcom/android/server/InputMethodManagerService;->isInstalledInputMethod(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6089
    const-string v3, "com.samsung.inputmethod/.SamsungIME"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    .line 6135
    :cond_1
    :goto_0
    return v1

    .line 6095
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->isJapaneseRegion()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    invoke-direct {p0, v3}, Lcom/android/server/InputMethodManagerService;->isInstalledInputMethod(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6096
    const-string v3, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 6097
    goto :goto_0

    .line 6102
    :cond_3
    const-string v3, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 6103
    goto :goto_0
.end method

.method public isInputMethodShown()Z
    .locals 2

    .prologue
    .line 3636
    const/4 v0, 0x0

    .line 3638
    .local v0, "isShown":Z
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->refreshImeWindowVis()V

    .line 3639
    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 3640
    const/4 v0, 0x1

    .line 3643
    :cond_0
    return v0
.end method

.method public isJapaneseRegion()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 5997
    const-string/jumbo v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5998
    .local v0, "cscCode":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, "JP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    const-string v2, "DCM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_1

    .line 6001
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isKeyboardBlockedForInteractionControl()Z
    .locals 1

    .prologue
    .line 6356
    sget-boolean v0, Lcom/android/server/InputMethodManagerService;->mAccessControlEnable:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/InputMethodManagerService;->mAccessControlKeyboardBlockEnable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public minimizeSoftInput(Lcom/android/internal/view/IInputMethodClient;I)Z
    .locals 4
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "height"    # I

    .prologue
    .line 3128
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-nez v0, :cond_0

    .line 3129
    const/4 v0, 0x0

    .line 3133
    :goto_0
    return v0

    .line 3131
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x400

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v1, v2, p2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 3133
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)Z
    .locals 9
    .param p1, "span"    # Landroid/text/style/SuggestionSpan;
    .param p2, "originalString"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    const/4 v6, 0x0

    .line 2760
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2787
    :goto_0
    return v6

    .line 2763
    :cond_0
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 2764
    :try_start_0
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    invoke-virtual {v8, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 2766
    .local v5, "targetImi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v5, :cond_3

    .line 2767
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v4

    .line 2768
    .local v4, "suggestions":[Ljava/lang/String;
    if-ltz p3, :cond_1

    array-length v8, v4

    if-lt p3, v8, :cond_2

    :cond_1
    monitor-exit v7

    goto :goto_0

    .line 2786
    .end local v4    # "suggestions":[Ljava/lang/String;
    .end local v5    # "targetImi":Landroid/view/inputmethod/InputMethodInfo;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 2769
    .restart local v4    # "suggestions":[Ljava/lang/String;
    .restart local v5    # "targetImi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getNotificationTargetClassName()Ljava/lang/String;

    move-result-object v0

    .line 2770
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2773
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2774
    const-string v6, "android.text.style.SUGGESTION_PICKED"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2775
    const-string v6, "before"

    invoke-virtual {v1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2776
    const-string v6, "after"

    aget-object v8, v4, p3

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2777
    const-string/jumbo v6, "hashcode"

    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->hashCode()I

    move-result v8

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2778
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 2780
    .local v2, "ident":J
    :try_start_2
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v1, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2782
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2784
    const/4 v6, 0x1

    monitor-exit v7

    goto :goto_0

    .line 2782
    :catchall_1
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 2786
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "ident":J
    .end local v4    # "suggestions":[Ljava/lang/String;
    :cond_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyUserAction(I)V
    .locals 4
    .param p1, "sequenceNumber"    # I

    .prologue
    .line 3877
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 3878
    :try_start_0
    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    if-eq v1, p1, :cond_0

    .line 3884
    monitor-exit v2

    .line 3891
    :goto_0
    return-void

    .line 3886
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 3887
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_1

    .line 3888
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v1, v0, v3}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 3890
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 2394
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2395
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2396
    invoke-static {p2}, Lcom/android/internal/view/IInputMethod$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethod;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 2397
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 2398
    const-string v0, "InputMethodManagerService"

    const-string v2, "Service connected without a token!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(ZZ)V

    .line 2400
    monitor-exit v1

    .line 2411
    :goto_0
    return-void

    .line 2403
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x410

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2405
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_1

    .line 2406
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    .line 2407
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    .line 2410
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 2525
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2528
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2530
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->clearCurMethodLocked()V

    .line 2533
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    .line 2534
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    .line 2535
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    .line 2536
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_0

    .line 2537
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbb8

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2541
    :cond_0
    monitor-exit v1

    .line 2542
    return-void

    .line 2541
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onSessionCreated(Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V
    .locals 6
    .param p1, "method"    # Lcom/android/internal/view/IInputMethod;
    .param p2, "session"    # Lcom/android/internal/view/IInputMethodSession;
    .param p3, "channel"    # Landroid/view/InputChannel;

    .prologue
    .line 2415
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 2416
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v1, v3, :cond_1

    .line 2418
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_1

    .line 2419
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    .line 2420
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    new-instance v3, Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-direct {v3, v4, p1, p2, p3}, Lcom/android/server/InputMethodManagerService$SessionState;-><init>(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V

    iput-object v3, v1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    .line 2422
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->attachNewInputLocked(Z)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    .line 2423
    .local v0, "res":Lcom/android/internal/view/InputBindResult;
    iget-object v1, v0, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_0

    .line 2424
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0xbc2

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2427
    :cond_0
    monitor-exit v2

    .line 2434
    .end local v0    # "res":Lcom/android/internal/view/InputBindResult;
    :goto_0
    return-void

    .line 2430
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2433
    invoke-virtual {p3}, Landroid/view/InputChannel;->dispose()V

    goto :goto_0

    .line 2430
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1813
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/view/IInputMethodManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1814
    :catch_0
    move-exception v0

    .line 1817
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    .line 1818
    const-string v1, "InputMethodManagerService"

    const-string v2, "Input Method Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1820
    :cond_0
    throw v0
.end method

.method registerSamsungAdditionalReceviers()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 5607
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 5608
    .local v6, "USBkeyboardFilter":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.USBHID_KEYBOARD_EVENT"

    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5609
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/InputMethodManagerService$USBKeyboardReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/InputMethodManagerService$USBKeyboardReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    const-string v10, "android.permission.MANAGE_USB"

    invoke-virtual {v8, v9, v6, v10, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 5612
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 5613
    .local v0, "BTKeyboardFilter":Landroid/content/IntentFilter;
    const-string v8, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5614
    const-string v8, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5615
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v8, v9, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5618
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 5619
    .local v4, "RangeModeFilter":Landroid/content/IntentFilter;
    const-string v8, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5620
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/InputMethodManagerService$RangeModeChangeReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/InputMethodManagerService$RangeModeChangeReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v8, v9, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5624
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 5625
    .local v1, "CarModeFilter":Landroid/content/IntentFilter;
    const-string v8, "com.samsung.android.app.mirrorlink.sip"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5626
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/InputMethodManagerService$CarModeReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/InputMethodManagerService$CarModeReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v8, v9, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5630
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 5631
    .local v5, "SubtypeFilter":Landroid/content/IntentFilter;
    const-string v8, "com.sec.android.inputmethod.Subtype"

    invoke-virtual {v5, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5632
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/InputMethodManagerService$KeyboardSubTypeReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/InputMethodManagerService$KeyboardSubTypeReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v8, v9, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5636
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 5637
    .local v3, "PSSkeyboardFilter":Landroid/content/IntentFilter;
    const-string v8, "com.sec.android.sidesync.action.PSS_KEYBOARD"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5638
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/InputMethodManagerService$PSSKeyboardReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/InputMethodManagerService$PSSKeyboardReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    const-string v10, "com.sec.android.permission.SIDESYNC_RECEIVER_PERMISSION"

    invoke-virtual {v8, v9, v3, v10, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 5639
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 5640
    .local v2, "KMSkeyboardFilter":Landroid/content/IntentFilter;
    const-string v8, "com.sec.android.sidesync.action.KMS_KEYBOARD"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5641
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/InputMethodManagerService$KMSKeyboardReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/InputMethodManagerService$KMSKeyboardReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    const-string v10, "com.sec.android.permission.SIDESYNC_RECEIVER_PERMISSION"

    invoke-virtual {v8, v9, v2, v10, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 5644
    const-string v8, "VZW"

    const-string/jumbo v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 5645
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 5646
    .local v7, "VZWResetSettingFilter":Landroid/content/IntentFilter;
    const-string v8, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5647
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/InputMethodManagerService$VZWResetSettingReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/InputMethodManagerService$VZWResetSettingReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v8, v9, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5650
    .end local v7    # "VZWResetSettingFilter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "universal_switch_enabled"

    invoke-static {v9}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mUniversalSwitchChangeObserver:Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;

    invoke-virtual {v8, v9, v11, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5656
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "mobile_keyboard"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mMobileKeyboardChangeObserver:Lcom/android/server/InputMethodManagerService$MobileKeyboardChangeObserver;

    invoke-virtual {v8, v9, v11, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5661
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "access_control_enabled"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mAccessControlEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;

    invoke-virtual {v8, v9, v11, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5663
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "access_control_keyboard_block"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mAccessControlKeyboardEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;

    invoke-virtual {v8, v9, v11, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5671
    return-void
.end method

.method public registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V
    .locals 6
    .param p1, "spans"    # [Landroid/text/style/SuggestionSpan;

    .prologue
    .line 2744
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2756
    :goto_0
    return-void

    .line 2747
    :cond_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 2748
    :try_start_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 2749
    .local v0, "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 2750
    aget-object v2, p1, v1

    .line 2751
    .local v2, "ss":Landroid/text/style/SuggestionSpan;
    invoke-virtual {v2}, Landroid/text/style/SuggestionSpan;->getNotificationTargetClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2752
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    invoke-virtual {v3, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2749
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2755
    .end local v2    # "ss":Landroid/text/style/SuggestionSpan;
    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v0    # "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public removeClient(Lcom/android/internal/view/IInputMethodClient;)V
    .locals 4
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .prologue
    .line 2108
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2117
    :goto_0
    return-void

    .line 2111
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 2112
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 2113
    .local v0, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    if-eqz v0, :cond_1

    .line 2114
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    .line 2116
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method requestClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V
    .locals 9
    .param p1, "cs"    # Lcom/android/server/InputMethodManagerService$ClientState;

    .prologue
    const/4 v5, 0x1

    .line 2474
    iget-boolean v1, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    if-nez v1, :cond_0

    .line 2476
    invoke-virtual {p1}, Lcom/android/server/InputMethodManagerService$ClientState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 2477
    .local v0, "channels":[Landroid/view/InputChannel;
    iput-boolean v5, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 2478
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x41a

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    aget-object v5, v0, v5

    new-instance v6, Lcom/android/server/InputMethodManagerService$MethodCallback;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    const/4 v8, 0x0

    aget-object v8, v0, v8

    invoke-direct {v6, p0, v7, v8}, Lcom/android/server/InputMethodManagerService$MethodCallback;-><init>(Lcom/android/server/InputMethodManagerService;Lcom/android/internal/view/IInputMethod;Landroid/view/InputChannel;)V

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2482
    .end local v0    # "channels":[Landroid/view/InputChannel;
    :cond_0
    return-void
.end method

.method public setAccessControlEnable(Z)V
    .locals 0
    .param p1, "enabledChanged"    # Z

    .prologue
    .line 6347
    sput-boolean p1, Lcom/android/server/InputMethodManagerService;->mAccessControlEnable:Z

    .line 6348
    return-void
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 11
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "subtypes"    # [Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 3831
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v7

    if-nez v7, :cond_1

    .line 3864
    :cond_0
    :goto_0
    return-void

    .line 3836
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz p2, :cond_0

    array-length v7, p2

    if-eqz v7, :cond_0

    .line 3837
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 3838
    :try_start_0
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 3839
    .local v4, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v4, :cond_2

    monitor-exit v8

    goto :goto_0

    .line 3863
    .end local v4    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 3842
    .restart local v4    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-interface {v7, v9}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 3847
    .local v5, "packageInfos":[Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 3848
    :try_start_2
    array-length v6, v5

    .line 3849
    .local v6, "packageNum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_4

    .line 3850
    aget-object v7, v5, v1

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3851
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    invoke-virtual {v7, v4, p2}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->addInputMethodSubtypes(Landroid/view/inputmethod/InputMethodInfo;[Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 3852
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v2

    .line 3854
    .local v2, "ident":J
    :try_start_3
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    const/4 v10, 0x0

    invoke-virtual {p0, v7, v9, v10}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3857
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3859
    monitor-exit v8

    goto :goto_0

    .line 3843
    .end local v1    # "i":I
    .end local v2    # "ident":J
    .end local v5    # "packageInfos":[Ljava/lang/String;
    .end local v6    # "packageNum":I
    :catch_0
    move-exception v0

    .line 3844
    .local v0, "e":Landroid/os/RemoteException;
    const-string v7, "InputMethodManagerService"

    const-string v9, "Failed to get package infos"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3845
    monitor-exit v8

    goto :goto_0

    .line 3857
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "i":I
    .restart local v2    # "ident":J
    .restart local v5    # "packageInfos":[Ljava/lang/String;
    .restart local v6    # "packageNum":I
    :catchall_1
    move-exception v7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 3849
    .end local v2    # "ident":J
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3863
    .end local v1    # "i":I
    .end local v6    # "packageNum":I
    :cond_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .locals 6
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    const/4 v2, 0x0

    .line 5277
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5289
    :goto_0
    return v2

    .line 5280
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 5281
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 5282
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 5283
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v1

    .line 5284
    .local v1, "subtypeId":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 5285
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 5286
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 5290
    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v1    # "subtypeId":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5289
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method setDefaultIMEForKeyboard()V
    .locals 6

    .prologue
    .line 5945
    sget-object v4, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 5962
    :cond_0
    return-void

    .line 5947
    :cond_1
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v1

    .line 5948
    .local v1, "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 5949
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 5950
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 5951
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 5954
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5956
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    .line 5950
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method setDefaultIMEforChineseKeyboard()V
    .locals 1

    .prologue
    .line 5969
    const-string v0, "com.samsung.inputmethod/.SamsungIME"

    sput-object v0, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    .line 5970
    return-void
.end method

.method setDefaultIMEforJapaneseKeyboard()V
    .locals 1

    .prologue
    .line 5965
    const-string v0, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    sput-object v0, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    .line 5966
    return-void
.end method

.method setEnabledSessionInMainThread(Lcom/android/server/InputMethodManagerService$SessionState;)V
    .locals 3
    .param p1, "session"    # Lcom/android/server/InputMethodManagerService$SessionState;

    .prologue
    .line 3965
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    if-eq v0, p1, :cond_1

    .line 3966
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v0, :cond_0

    .line 3969
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethod;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3973
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    .line 3974
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v0, :cond_1

    .line 3977
    :try_start_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethod;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3982
    :cond_1
    :goto_1
    return-void

    .line 3978
    :catch_0
    move-exception v0

    goto :goto_1

    .line 3970
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;II)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    .prologue
    .line 2660
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2661
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2662
    .local v0, "uid":I
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring setImeWindowStatus due to an invalid token. uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " token:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2672
    .end local v0    # "uid":I
    :goto_0
    return-void

    .line 2667
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 2668
    :try_start_0
    iput p2, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    .line 2669
    iput p3, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    .line 2670
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 2671
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 3649
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3653
    :goto_0
    return-void

    .line 3652
    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeId(Landroid/os/IBinder;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 3657
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3669
    :goto_0
    return-void

    .line 3660
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3661
    if-eqz p3, :cond_1

    .line 3662
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 3668
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3666
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setInputMethodEnabled(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 4971
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4972
    const/4 v2, 0x0

    .line 4987
    :goto_0
    return v2

    .line 4974
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 4975
    :try_start_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 4978
    new-instance v2, Ljava/lang/SecurityException;

    const-string v4, "Requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4989
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 4983
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 4985
    .local v0, "ident":J
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    .line 4987
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    .locals 9
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 4994
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 4995
    .local v3, "imm":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v3, :cond_0

    .line 4996
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4999
    :cond_0
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v1

    .line 5002
    .local v1, "enabledInputMethodsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    if-eqz p2, :cond_3

    .line 5003
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 5004
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    .line 5028
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :goto_0
    return v6

    .line 5010
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6, p1, v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    move v6, v8

    .line 5012
    goto :goto_0

    .line 5014
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5015
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6, v0, v1, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildAndPutEnabledInputMethodsStrRemovingIdLocked(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 5018
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v5

    .line 5019
    .local v5, "selId":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v6

    if-nez v6, :cond_4

    .line 5020
    const-string v6, "InputMethodManagerService"

    const-string v8, "Can\'t find new IME, unsetting the current input method."

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5021
    const-string v6, ""

    invoke-direct {p0, v6}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    :cond_4
    move v6, v7

    .line 5024
    goto :goto_0

    .end local v5    # "selId":Ljava/lang/String;
    :cond_5
    move v6, v8

    .line 5028
    goto :goto_0
.end method

.method setInputMethodLocked(Ljava/lang/String;I)V
    .locals 13
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "subtypeId"    # I

    .prologue
    const/4 v10, 0x1

    .line 2871
    iget-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v8, :cond_0

    if-eqz p1, :cond_0

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_0

    .line 2872
    iput-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mNeedToExplicitallyCall:Z

    .line 2875
    :cond_0
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 2876
    .local v1, "info":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v1, :cond_1

    .line 2877
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2880
    :cond_1
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v8, :cond_3

    .line 2883
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/SystemConfig;->getFixedImeApps()Landroid/util/ArraySet;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v9, v9, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2949
    :cond_2
    :goto_0
    return-void

    .line 2889
    :cond_3
    if-eqz p1, :cond_7

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2890
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v7

    .line 2891
    .local v7, "subtypeCount":I
    if-lez v7, :cond_2

    .line 2894
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 2896
    .local v6, "oldSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-ltz p2, :cond_5

    if-ge p2, v7, :cond_5

    .line 2897
    invoke-virtual {v1, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    .line 2903
    .local v5, "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_1
    if-eqz v5, :cond_4

    if-nez v6, :cond_6

    .line 2904
    :cond_4
    const-string v8, "InputMethodManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal subtype state: old subtype = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", new subtype = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2901
    .end local v5    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_5
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    .restart local v5    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_1

    .line 2908
    :cond_6
    if-eq v5, v6, :cond_2

    .line 2909
    invoke-direct {p0, v1, p2, v10}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 2910
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v8, :cond_2

    .line 2912
    :try_start_0
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget v9, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    iget v10, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 2913
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-interface {v8, v5}, Lcom/android/internal/view/IInputMethod;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2914
    :catch_0
    move-exception v0

    .line 2915
    .local v0, "e":Landroid/os/RemoteException;
    const-string v8, "InputMethodManagerService"

    const-string v9, "Failed to call changeInputMethodSubtype"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2923
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v5    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v6    # "oldSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v7    # "subtypeCount":I
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2927
    .local v2, "ident":J
    const/4 v8, 0x0

    :try_start_1
    invoke-direct {p0, v1, p2, v8}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 2931
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 2933
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2934
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.INPUT_METHOD_CHANGED"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2935
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v8, 0x20000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2936
    const-string/jumbo v8, "input_method_id"

    invoke-virtual {v4, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2937
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8, v4, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2939
    const-string v8, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "com.samsung.inputmethod/.SamsungIME"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_8
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v8, :cond_9

    .line 2940
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v10, 0xbf4

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2945
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2947
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method public setScreenBrightness(I)V
    .locals 0
    .param p1, "direction"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6035
    return-void
.end method

.method public setWACOMPen(Z)V
    .locals 0
    .param p1, "bValue"    # Z

    .prologue
    .line 413
    sput-boolean p1, Lcom/android/server/InputMethodManagerService;->mbWACOMPen:Z

    .line 414
    return-void
.end method

.method public setisAccessControlKeyboardBlockEnable(Z)V
    .locals 0
    .param p1, "enabledChanged"    # Z

    .prologue
    .line 6351
    sput-boolean p1, Lcom/android/server/InputMethodManagerService;->mAccessControlKeyboardBlockEnable:Z

    .line 6352
    return-void
.end method

.method public shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v3, 0x0

    .line 3784
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 3799
    :goto_0
    return v2

    .line 3787
    :cond_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 3788
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3789
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3790
    .local v1, "uid":I
    const-string v2, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring shouldOfferSwitchingToNextInputMethod due to an invalid token. uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " token:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3792
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 3794
    .end local v1    # "uid":I
    :cond_1
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v5, v6, v2, v7}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object v0

    .line 3796
    .local v0, "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-nez v0, :cond_2

    .line 3797
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 3799
    :cond_2
    const/4 v2, 0x1

    monitor-exit v4

    goto :goto_0

    .line 3800
    .end local v0    # "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    .locals 11
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 2987
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->isKeyboardBlockedForInteractionControl()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2988
    const-string v3, "InputMethodManagerService"

    const-string v4, "Interaction Control Keyboard block is enabled, so not show keyboard"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 3086
    :cond_0
    :goto_0
    return v1

    .line 2993
    :cond_1
    iput-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    .line 2994
    and-int/lit8 v3, p1, 0x1

    if-nez v3, :cond_2

    .line 2995
    iput-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 2997
    :cond_2
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_3

    .line 2998
    iput-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 2999
    iput-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    .line 3001
    :cond_3
    and-int/lit8 v3, p1, 0x10

    if-eqz v3, :cond_5

    .line 3002
    iput-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mShowHWR:Z

    .line 3009
    :goto_1
    const/4 v0, 0x0

    .line 3010
    .local v0, "currentShowExplicitlyRequested":Z
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mNeedToExplicitallyCall:Z

    if-eqz v3, :cond_4

    .line 3011
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 3012
    iput-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 3016
    :cond_4
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v3, :cond_6

    move v1, v2

    .line 3017
    goto :goto_0

    .line 3004
    .end local v0    # "currentShowExplicitlyRequested":Z
    :cond_5
    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mShowHWR:Z

    goto :goto_1

    .line 3020
    .restart local v0    # "currentShowExplicitlyRequested":Z
    :cond_6
    const/4 v1, 0x0

    .line 3021
    .local v1, "res":Z
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v3, :cond_a

    .line 3023
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v5, 0x3fc

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getImeShowFlags()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 3029
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mNeedToExplicitallyCall:Z

    if-eqz v3, :cond_7

    .line 3030
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 3031
    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mNeedToExplicitallyCall:Z

    .line 3035
    :cond_7
    iput-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    .line 3036
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    if-nez v2, :cond_8

    .line 3037
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    const v4, 0xc000001

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/InputMethodManagerService;->bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 3041
    iput-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    .line 3045
    :cond_8
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->getKeyboardState()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_9

    .line 3046
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->keyboardPerflockAcquire()V

    .line 3047
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v10}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->setKeyboardState(I)V

    .line 3050
    :cond_9
    const/4 v1, 0x1

    goto :goto_0

    .line 3051
    :cond_a
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    const-wide/16 v8, 0xbb8

    add-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 3057
    const/16 v3, 0x7d00

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v10

    const/4 v2, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3059
    const-string v2, "InputMethodManagerService"

    const-string v3, "Force disconnect/connect to the IME in showCurrentInputLocked()"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3060
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3061
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const v3, 0x40000001    # 2.0000002f

    invoke-direct {p0, v2, p0, v3}, Lcom/android/server/InputMethodManagerService;->bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto/16 :goto_0
.end method

.method public showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V
    .locals 4
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputMethodId"    # Ljava/lang/String;

    .prologue
    .line 3674
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3685
    :goto_0
    return-void

    .line 3677
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3678
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v0, v2, :cond_2

    .line 3680
    :cond_1
    const-string v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring showInputMethodAndSubtypeEnablerFromClient of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3682
    :cond_2
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 3684
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V
    .locals 5
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "auxiliarySubtypeMode"    # I

    .prologue
    .line 3588
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3616
    :goto_0
    return-void

    .line 3594
    :cond_0
    invoke-static {}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getInstance()Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-result-object v0

    .line 3595
    .local v0, "proKioskManager":Landroid/app/enterprise/knoxcustom/ProKioskManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3596
    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getInputMethodRestrictionState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3597
    const-string v1, "InputMethodManagerService"

    const-string v2, "Input method restricted by Knox Customization"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3604
    :cond_1
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 3605
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-eq v1, v3, :cond_3

    .line 3607
    :cond_2
    const-string v1, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring showInputMethodPickerFromClient of uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3613
    :cond_3
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3615
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method showKeyboardNotiDailog(I)V
    .locals 3
    .param p1, "which"    # I

    .prologue
    .line 5830
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x104085c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/InputMethodManagerService$14;

    invoke-direct {v1, p0}, Lcom/android/server/InputMethodManagerService$14;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/server/InputMethodManagerService$13;

    invoke-direct {v2, p0}, Lcom/android/server/InputMethodManagerService$13;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardBuilder:Landroid/app/AlertDialog$Builder;

    .line 5851
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 5852
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x104085b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 5857
    :goto_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardDialog:Landroid/app/AlertDialog;

    .line 5858
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7dc

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 5860
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 5862
    return-void

    .line 5854
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x1040858

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public showMySoftInput(Landroid/os/IBinder;I)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 3945
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3962
    :goto_0
    return-void

    .line 3948
    :cond_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 3949
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3950
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3951
    .local v2, "uid":I
    const-string v3, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring showMySoftInput due to an invalid token. uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " token:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3953
    monitor-exit v4

    goto :goto_0

    .line 3961
    .end local v2    # "uid":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3955
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 3957
    .local v0, "ident":J
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {p0, p2, v3}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3959
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3961
    monitor-exit v4

    goto :goto_0

    .line 3959
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .locals 9
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v4, 0x0

    .line 2954
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2981
    :goto_0
    return v4

    .line 2957
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2958
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2960
    .local v2, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2961
    :try_start_1
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v6, :cond_2

    if-eqz p1, :cond_2

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v6, v6, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v6}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    if-ne v6, v7, :cond_2

    .line 2978
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    move-result v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2981
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2968
    :cond_2
    :try_start_2
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v6, p1}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2969
    const-string v6, "InputMethodManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring showSoftInput of uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2970
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2981
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2972
    :catch_0
    move-exception v0

    .line 2973
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2981
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2979
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2981
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public showtoastkeyboardconnected()V
    .locals 5

    .prologue
    .line 6018
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 6019
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 6021
    .local v1, "show_duration":I
    sget v3, Lcom/android/server/InputMethodManagerService;->keyboardState:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 6022
    const v2, 0x104085d

    .line 6027
    .local v2, "toast_msg_resId":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 6029
    return-void

    .line 6024
    .end local v2    # "toast_msg_resId":I
    :cond_0
    const v2, 0x104085e

    .restart local v2    # "toast_msg_resId":I
    goto :goto_0
.end method

.method public startInput(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    .locals 4
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p4, "controlFlags"    # I

    .prologue
    .line 2375
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2376
    const/4 v2, 0x0

    .line 2383
    :goto_0
    return-object v2

    .line 2378
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 2379
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 2381
    .local v0, "ident":J
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/InputMethodManagerService;->startInputLocked(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 2383
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3

    goto :goto_0

    .line 2385
    .end local v0    # "ident":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2383
    .restart local v0    # "ident":J
    :catchall_1
    move-exception v2

    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 2325
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2326
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    .line 2369
    :goto_0
    return-object v0

    .line 2329
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v0, :cond_1

    .line 2332
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    move-object v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    goto :goto_0

    .line 2336
    :cond_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 2337
    .local v6, "info":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v6, :cond_2

    .line 2338
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2341
    :cond_2
    invoke-virtual {p0, v7, v8}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(ZZ)V

    .line 2343
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.view.InputMethod"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    .line 2344
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2345
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.client_label"

    const v3, 0x1040442

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2347
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.client_intent"

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v7, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2349
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const v2, 0x60000005

    invoke-direct {p0, v0, p0, v2}, Lcom/android/server/InputMethodManagerService;->bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2352
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    .line 2353
    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    .line 2354
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    .line 2355
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    .line 2357
    :try_start_0
    const-string v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding window token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    const/16 v3, 0x7db

    invoke-interface {v0, v2, v3}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2362
    :goto_1
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    move-object v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 2365
    :cond_3
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    .line 2366
    const-string v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure connecting to input method service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 2369
    goto/16 :goto_0

    .line 2360
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method startInputLocked(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    .locals 4
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p4, "controlFlags"    # I

    .prologue
    .line 2202
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2203
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    .line 2243
    :goto_0
    return-object v1

    .line 2206
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 2207
    .local v0, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    if-nez v0, :cond_1

    .line 2208
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2213
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2219
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting input on non-focused client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-ne v1, v0, :cond_2

    .line 2234
    const-string v1, "InputMethodManagerService"

    const-string v2, " Starting startInputUncheckedLocked "

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 2238
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 2240
    :catch_0
    move-exception v1

    .line 2243
    :cond_3
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v1

    goto/16 :goto_0
.end method

.method startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    .locals 10
    .param p1, "cs"    # Lcom/android/server/InputMethodManagerService$ClientState;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p4, "controlFlags"    # I

    .prologue
    .line 2249
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2250
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    .line 2320
    :goto_0
    return-object v0

    .line 2253
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, p1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    iget-object v2, p3, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2255
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rejecting this client as it reported an invalid package name. uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    goto :goto_0

    .line 2260
    :cond_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eq v0, p1, :cond_2

    .line 2262
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isKeyguardLocked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClientInKeyguard:Z

    .line 2265
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked()V

    .line 2270
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v0, :cond_2

    .line 2271
    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbcc

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v3, v0, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2277
    :cond_2
    iget v0, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    .line 2278
    iget v0, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    .line 2279
    :cond_3
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 2280
    iput-object p2, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    .line 2281
    iput-object p3, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 2284
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2285
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    if-eqz v0, :cond_6

    .line 2288
    and-int/lit16 v0, p4, 0x100

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->attachNewInputLocked(Z)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    goto/16 :goto_0

    .line 2271
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 2288
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 2291
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v0, :cond_9

    .line 2292
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_7

    .line 2295
    invoke-virtual {p0, p1}, Lcom/android/server/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    .line 2296
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 2298
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_8

    .line 2307
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 2310
    :cond_8
    const/16 v0, 0x7d00

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v8, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2317
    :cond_9
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 2318
    :catch_0
    move-exception v6

    .line 2319
    .local v6, "e":Ljava/lang/RuntimeException;
    const-string v0, "InputMethodManagerService"

    const-string v1, "Unexpected exception."

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2320
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public switchToLastInputMethod(Landroid/os/IBinder;)Z
    .locals 22
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 3689
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v17

    if-nez v17, :cond_0

    .line 3690
    const/16 v17, 0x0

    .line 3754
    :goto_0
    return v17

    .line 3692
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 3693
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;

    move-result-object v11

    .line 3695
    .local v11, "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v11, :cond_4

    .line 3696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    .line 3700
    .local v12, "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    const/16 v16, 0x0

    .line 3701
    .local v16, "targetLastImiId":Ljava/lang/String;
    const/4 v15, -0x1

    .line 3702
    .local v15, "subtypeId":I
    if-eqz v11, :cond_2

    if-eqz v12, :cond_2

    .line 3703
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 3704
    .local v9, "imiIdIsSame":Z
    iget-object v0, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 3705
    .local v13, "lastSubtypeHash":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    move-object/from16 v17, v0

    if-nez v17, :cond_5

    const/4 v5, -0x1

    .line 3709
    .local v5, "currentSubtypeHash":I
    :goto_2
    if-eqz v9, :cond_1

    if-eq v13, v5, :cond_2

    .line 3710
    :cond_1
    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v0

    .end local v16    # "targetLastImiId":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 3711
    .restart local v16    # "targetLastImiId":Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v15

    .line 3715
    .end local v5    # "currentSubtypeHash":I
    .end local v9    # "imiIdIsSame":Z
    .end local v13    # "lastSubtypeHash":I
    :cond_2
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/inputmethod/InputMethodUtils;->canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 3720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v6

    .line 3721
    .local v6, "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v6, :cond_3

    .line 3722
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 3723
    .local v4, "N":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    move-object/from16 v17, v0

    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v14

    .line 3726
    .local v14, "locale":Ljava/lang/String;
    :goto_3
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    if-ge v7, v4, :cond_3

    .line 3727
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 3728
    .local v8, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v17

    if-lez v17, :cond_7

    invoke-static {v8}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 3729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    invoke-static {v8}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v19

    const-string/jumbo v20, "keyboard"

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v14, v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v10

    .line 3733
    .local v10, "keyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v10, :cond_7

    .line 3734
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v16

    .line 3735
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v8, v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v15

    .line 3737
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 3746
    .end local v4    # "N":I
    .end local v6    # "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v7    # "i":I
    .end local v8    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v10    # "keyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v14    # "locale":Ljava/lang/String;
    :cond_3
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 3751
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v15}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 3752
    const/16 v17, 0x1

    monitor-exit v18

    goto/16 :goto_0

    .line 3756
    .end local v11    # "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v15    # "subtypeId":I
    .end local v16    # "targetLastImiId":Ljava/lang/String;
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 3698
    .restart local v11    # "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    const/4 v12, 0x0

    .restart local v12    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    goto/16 :goto_1

    .line 3705
    .restart local v9    # "imiIdIsSame":Z
    .restart local v13    # "lastSubtypeHash":I
    .restart local v15    # "subtypeId":I
    .restart local v16    # "targetLastImiId":Ljava/lang/String;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v5

    goto/16 :goto_2

    .line 3723
    .end local v9    # "imiIdIsSame":Z
    .end local v13    # "lastSubtypeHash":I
    .restart local v4    # "N":I
    .restart local v6    # "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    .line 3726
    .restart local v7    # "i":I
    .restart local v8    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v14    # "locale":Ljava/lang/String;
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 3754
    .end local v4    # "N":I
    .end local v6    # "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v7    # "i":I
    .end local v8    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v14    # "locale":Ljava/lang/String;
    :cond_8
    const/16 v17, 0x0

    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public switchToNextInputMethod(Landroid/os/IBinder;Z)Z
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "onlyCurrentIme"    # Z

    .prologue
    const/4 v3, 0x0

    .line 3761
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 3778
    :goto_0
    return v2

    .line 3764
    :cond_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 3765
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3766
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3767
    .local v1, "uid":I
    const-string v2, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring switchToNextInputMethod due to an invalid token. uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " token:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3769
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 3771
    .end local v1    # "uid":I
    :cond_1
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v5, p2, v2, v6}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object v0

    .line 3773
    .local v0, "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-nez v0, :cond_2

    .line 3774
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 3776
    :cond_2
    iget-object v2, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 3778
    const/4 v2, 0x1

    monitor-exit v4

    goto :goto_0

    .line 3779
    .end local v0    # "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public systemRunning(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .locals 8
    .param p1, "statusBar"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1825
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 1829
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v2, :cond_2

    .line 1830
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    .line 1831
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "keyguard"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1833
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "notification"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1835
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 1836
    const-string/jumbo v2, "ime"

    const/4 v6, 0x0

    invoke-virtual {p1, v2, v6}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1837
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget v6, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    iget v7, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v2, v6, v7}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 1838
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v6, 0x112000a

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    .line 1840
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    if-eqz v2, :cond_0

    .line 1841
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    invoke-virtual {v2, v6}, Lcom/android/server/wm/WindowManagerService;->setOnHardKeyboardStatusChangeListener(Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;)V

    .line 1844
    :cond_0
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    if-nez v2, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {p0, v6, v7, v2}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;Z)V

    .line 1846
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    if-nez v2, :cond_1

    .line 1847
    const-string v2, "InputMethodManagerService"

    const-string v3, "Reset the default IME as \"Resource\" is ready here."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->resetStateIfCurrentLocaleChangedLocked()V

    .line 1849
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v6}, Lcom/android/internal/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V

    .line 1853
    :cond_1
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocale:Ljava/util/Locale;

    .line 1866
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getDeviceThemeFromSystemProperties()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/InputMethodManagerService;->mDeviceDefaultThemeType:Ljava/lang/String;

    .line 1868
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Sip_SupportKcmForHwKeyboard"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/InputMethodManagerService;->mEnabledKCMFeatureForHWKeyboard:Z

    .line 1873
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getPersonaService()Landroid/os/PersonaManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1875
    .local v1, "mPersona":Landroid/os/PersonaManager;
    if-eqz v1, :cond_2

    .line 1876
    :try_start_1
    new-instance v2, Lcom/android/server/InputMethodManagerService$6;

    invoke-direct {v2, p0}, Lcom/android/server/InputMethodManagerService$6;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v1, v2}, Landroid/os/PersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1911
    .end local v1    # "mPersona":Landroid/os/PersonaManager;
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v5

    .line 1912
    return-void

    :cond_3
    move v2, v4

    .line 1844
    goto :goto_0

    .line 1906
    .restart local v1    # "mPersona":Landroid/os/PersonaManager;
    :catch_0
    move-exception v0

    .line 1907
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1911
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mPersona":Landroid/os/PersonaManager;
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method unbindCurrentClientLocked()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2129
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_1

    .line 2132
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    if-eqz v0, :cond_0

    .line 2133
    iput-boolean v5, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    .line 2134
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_0

    .line 2135
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x3e8

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2140
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xbcc

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2142
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xbb8

    iget v3, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2144
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iput-boolean v5, v0, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 2145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 2147
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenuLocked()V

    .line 2149
    :cond_1
    return-void
.end method

.method unbindCurrentMethodLocked(ZZ)V
    .locals 4
    .param p1, "resetCurrentMethodAndClient"    # Z
    .param p2, "savePosition"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2437
    if-eqz p1, :cond_0

    .line 2438
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 2441
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    if-eqz v0, :cond_1

    .line 2442
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2443
    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    .line 2446
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v0, :cond_2

    .line 2447
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2448
    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    .line 2451
    :cond_2
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eqz v0, :cond_4

    .line 2454
    :try_start_0
    iget v0, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 2456
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->saveLastInputMethodWindowForTransition()V

    .line 2458
    :cond_3
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V

    .line 2459
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setImeWindowStatus(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2462
    :goto_0
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    .line 2465
    :cond_4
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    .line 2466
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->clearCurMethodLocked()V

    .line 2468
    if-eqz p1, :cond_5

    .line 2469
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked()V

    .line 2471
    :cond_5
    return-void

    .line 2460
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public undoMinimizeSoftInput()V
    .locals 5

    .prologue
    .line 3141
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-nez v0, :cond_0

    .line 3146
    :goto_0
    return-void

    .line 3144
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x401

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    goto :goto_0
.end method

.method updateCurrentProfileIds()V
    .locals 5

    .prologue
    .line 1784
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 1786
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [I

    .line 1787
    .local v0, "currentProfileIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 1788
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    aput v3, v0, v1

    .line 1787
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1790
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3, v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->setCurrentProfileIds([I)V

    .line 1791
    return-void
.end method

.method updateFromSettingsLocked(Z)V
    .locals 0
    .param p1, "enabledMayChange"    # Z

    .prologue
    .line 2791
    invoke-virtual {p0, p1}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 2792
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->updateKeyboardFromSettingsLocked()V

    .line 2793
    return-void
.end method

.method updateInputMethodsFromSettingsLocked(Z)V
    .locals 14
    .param p1, "enabledMayChange"    # Z

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 2796
    if-eqz p1, :cond_1

    .line 2797
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v8

    .line 2798
    .local v8, "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 2801
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodInfo;

    .line 2803
    .local v11, "imm":Landroid/view/inputmethod/InputMethodInfo;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x8000

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 2806
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v6, :cond_0

    iget v0, v6, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2812
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2798
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2825
    .end local v8    # "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v9    # "i":I
    .end local v11    # "imm":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v10

    .line 2827
    .local v10, "id":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2828
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v10

    .line 2830
    :cond_2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2832
    :try_start_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0, v10}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v10, v0}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2837
    :goto_2
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2846
    :goto_3
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    .line 2848
    return-void

    .line 2833
    :catch_0
    move-exception v7

    .line 2834
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown input method from prefs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2835
    invoke-virtual {p0, v13, v12}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(ZZ)V

    goto :goto_2

    .line 2840
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    invoke-virtual {p0, v13, v12}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(ZZ)V

    goto :goto_3

    .line 2817
    .end local v10    # "id":Ljava/lang/String;
    .restart local v8    # "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v9    # "i":I
    .restart local v11    # "imm":Landroid/view/inputmethod/InputMethodInfo;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public updateKeyboardFromSettingsLocked()V
    .locals 4

    .prologue
    .line 2852
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    .line 2853
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2856
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    const v2, 0x10203ec

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 2860
    .local v0, "hardKeySwitch":Landroid/widget/Switch;
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HARDWARE_KEYBOARD] mShowImeWithHardKeyboard = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 2865
    .end local v0    # "hardKeySwitch":Landroid/widget/Switch;
    :cond_0
    return-void
.end method

.method public updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "iconId"    # I

    .prologue
    .line 2546
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2548
    .local v8, "ident":J
    :try_start_0
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2549
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2550
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 2551
    .local v10, "uid":I
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring updateStatusIcon due to an invalid token. uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2553
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2581
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2583
    .end local v10    # "uid":I
    :goto_0
    return-void

    .line 2555
    :cond_0
    if-nez p3, :cond_2

    .line 2557
    :try_start_2
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v0, :cond_1

    .line 2558
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    const-string/jumbo v1, "ime"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2579
    :cond_1
    :goto_1
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2581
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2560
    :cond_2
    if-eqz p2, :cond_1

    .line 2562
    const/4 v6, 0x0

    .line 2565
    .local v6, "contentDescription":Ljava/lang/CharSequence;
    :try_start_3
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 2566
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-interface {v0, p2, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 2572
    .end local v7    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_2
    :try_start_4
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v0, :cond_1

    .line 2573
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    const-string/jumbo v1, "ime"

    const/4 v4, 0x0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 2576
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    const-string/jumbo v1, "ime"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 2579
    .end local v6    # "contentDescription":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2581
    :catchall_1
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2573
    .restart local v6    # "contentDescription":Ljava/lang/CharSequence;
    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    .line 2569
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public windowGainedFocus(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;)Lcom/android/internal/view/InputBindResult;
    .locals 32
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "controlFlags"    # I
    .param p4, "softInputMode"    # I
    .param p5, "windowFlags"    # I
    .param p6, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p7, "inputContext"    # Lcom/android/internal/view/IInputContext;

    .prologue
    .line 3287
    const/16 v21, 0x1

    .line 3290
    .local v21, "isNeedSetCurrentInputMethod":Z
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/InputMethodManagerService;->mSecureKeypadEnabled:Z

    .line 3291
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v27

    invoke-static/range {v27 .. v27}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 3293
    .local v9, "destinationUserId":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->knoxV2Enabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    const/16 v27, 0x64

    move/from16 v0, v27

    if-lt v9, v0, :cond_0

    const/16 v27, 0xc8

    move/from16 v0, v27

    if-gt v9, v0, :cond_0

    .line 3294
    new-instance v13, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v13, v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Z)V

    .line 3295
    .local v13, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v13}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/enterprise/RestrictionPolicy;->isUseSecureKeypadEnabled()Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/InputMethodManagerService;->mSecureKeypadEnabled:Z

    .line 3298
    .end local v13    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_0
    const/16 v26, 0x0

    .line 3299
    .local v26, "userSwitched":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 3300
    .local v18, "identity":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 3301
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v7

    .line 3303
    .local v7, "currentUserId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v29, "default_input_method"

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 3305
    .local v8, "defaultIME":Ljava/lang/String;
    if-nez v7, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/InputMethodManagerService;->isKnoxId(I)Z

    move-result v27

    if-nez v27, :cond_3

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/InputMethodManagerService;->isKnoxId(I)Z

    move-result v27

    if-eqz v27, :cond_2

    if-eqz v9, :cond_3

    :cond_2
    if-eq v7, v9, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/InputMethodManagerService;->isKnoxId(I)Z

    move-result v27

    if-eqz v27, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/InputMethodManagerService;->isKnoxId(I)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 3309
    :cond_3
    const-string v27, "InputMethodManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "windowGainedFocus: destinationUserId (getCallingUid) = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3310
    const-string v27, "InputMethodManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "windowGainedFocus: currentUserId="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3311
    const-string v27, "InputMethodManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "windowGainedFocus: mCurrentFocusedUserId="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3313
    const-string v27, "InputMethodManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "windowGainedFocus: Current user = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " Destination user = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " - So switch user"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3314
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I

    .line 3315
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/InputMethodManagerService;->switchUserLocked(I)V

    .line 3316
    const/16 v26, 0x1

    .line 3318
    :cond_4
    monitor-exit v28
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3319
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3320
    if-eqz v26, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/InputMethodManagerService;->switchSpellChecker(I)V

    .line 3322
    :cond_5
    const-string v27, "InputMethodManagerService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "windowGainedFocus mCurrentFocusedUserId - "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " and mSecureKeypadEnabled-"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mSecureKeypadEnabled:Z

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3325
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v4

    .line 3328
    .local v4, "calledFromValidUser":Z
    const/16 v25, 0x0

    .line 3329
    .local v25, "res":Lcom/android/internal/view/InputBindResult;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 3331
    .local v16, "ident":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v28, v0

    monitor-enter v28
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3337
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 3338
    .local v5, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    if-nez v5, :cond_6

    .line 3339
    new-instance v27, Ljava/lang/IllegalArgumentException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "unknown client "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 3577
    .end local v5    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    :catchall_0
    move-exception v27

    monitor-exit v28
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v27
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3579
    :catchall_1
    move-exception v27

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v27

    .line 3318
    .end local v4    # "calledFromValidUser":Z
    .end local v7    # "currentUserId":I
    .end local v8    # "defaultIME":Ljava/lang/String;
    .end local v16    # "ident":J
    .end local v25    # "res":Lcom/android/internal/view/InputBindResult;
    :catchall_2
    move-exception v27

    :try_start_4
    monitor-exit v28
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v27

    .line 3344
    .restart local v4    # "calledFromValidUser":Z
    .restart local v5    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .restart local v7    # "currentUserId":I
    .restart local v8    # "defaultIME":Ljava/lang/String;
    .restart local v16    # "ident":J
    .restart local v25    # "res":Lcom/android/internal/view/InputBindResult;
    :cond_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    move-object/from16 v27, v0

    iget-object v0, v5, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v27

    if-nez v27, :cond_c

    .line 3350
    const-string v27, "InputMethodManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Focus gain on non-focused client "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget-object v0, v5, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " (uid="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget v0, v5, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " pid="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget v0, v5, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3355
    const-string v29, "InputMethodManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "calledFromValidUser : "

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v30, ", (mCurFocusedWindow == windowToken) : "

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_7

    const/16 v27, 0x1

    :goto_0
    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v30, ", (attribute != null) : "

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    if-eqz p6, :cond_8

    const/16 v27, 0x1

    :goto_1
    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3356
    const-string v29, "InputMethodManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "(mCurClient != cs) : "

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    if-eq v0, v5, :cond_9

    const/16 v27, 0x1

    :goto_2
    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v30, ", mCurFocusedWindow : "

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    move-object/from16 v30, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v30, ", windowToken : "

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3357
    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_a

    if-eqz p6, :cond_a

    .line 3360
    const-string v27, "InputMethodManagerService"

    const-string v29, "Focus gain on non-focused client, executed a startInputUncheckedLocked()!!"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3361
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    move/from16 v3, p3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v27

    :try_start_6
    monitor-exit v28
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3579
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3582
    :goto_3
    return-object v27

    .line 3355
    :cond_7
    const/16 v27, 0x0

    goto/16 :goto_0

    :cond_8
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 3356
    :cond_9
    const/16 v27, 0x0

    goto :goto_2

    .line 3363
    :cond_a
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    if-eq v0, v5, :cond_b

    .line 3364
    const-string v27, "InputMethodManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Focus gain on non-focused client mCurClient info is "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3365
    iget-object v0, v5, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    move-object/from16 v27, v0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/android/internal/view/IInputMethodClient;->setActive(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3367
    :cond_b
    const/16 v27, 0x0

    :try_start_8
    monitor-exit v28
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3579
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .line 3369
    :catch_0
    move-exception v27

    .line 3372
    :cond_c
    if-nez v4, :cond_d

    .line 3373
    :try_start_9
    const-string v27, "InputMethodManagerService"

    const-string v29, "A background user is requesting window. Hiding IME."

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3374
    const-string v27, "InputMethodManagerService"

    const-string v29, "If you want to interect with IME, you need android.permission.INTERACT_ACROSS_USERS_FULL"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3376
    const/16 v27, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 3377
    const/16 v27, 0x0

    monitor-exit v28
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 3579
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .line 3380
    :cond_d
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_10

    .line 3381
    const-string v27, "InputMethodManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Window already focused, ignoring focus gain of: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " attribute="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", token = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3383
    if-eqz p6, :cond_e

    .line 3384
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    move/from16 v3, p3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v27

    monitor-exit v28
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 3579
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    .line 3386
    :cond_e
    :try_start_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mIsScreenPinnedState:Z

    move/from16 v27, v0

    if-nez v27, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z

    move/from16 v27, v0

    if-nez v27, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isInputMethodShown()Z

    move-result v27

    if-eqz v27, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isHWAccessoryKeyboard()Z

    move-result v27

    if-nez v27, :cond_f

    .line 3390
    :cond_f
    const/16 v27, 0x0

    monitor-exit v28
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 3579
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    .line 3392
    :cond_10
    :try_start_c
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    .line 3395
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->knoxV2Enabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mIsPersona:Z

    move/from16 v27, v0

    if-eqz v27, :cond_11

    .line 3396
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mSecureKeypadEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_18

    .line 3397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v6

    .line 3398
    .local v6, "currentImeId":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/InputMethodManagerService;->isSecureIMEKnox(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_11

    .line 3402
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->getSecureDefaultIMELocked()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v20

    .line 3403
    .local v20, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v20, :cond_11

    invoke-virtual/range {v20 .. v20}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_11

    .line 3407
    invoke-virtual/range {v20 .. v20}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v29, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 3411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v29, "last_used_input_method"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v30

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v6, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 3442
    .end local v6    # "currentImeId":Ljava/lang/String;
    .end local v20    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_11
    :goto_4
    move/from16 v0, p4

    and-int/lit16 v0, v0, 0xf0

    move/from16 v27, v0

    const/16 v29, 0x10

    move/from16 v0, v27

    move/from16 v1, v29

    if-eq v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v27

    const/16 v29, 0x3

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v27

    if-eqz v27, :cond_1b

    :cond_12
    const/4 v12, 0x1

    .line 3447
    .local v12, "doAutoShow":Z
    :goto_5
    and-int/lit8 v27, p3, 0x2

    if-eqz v27, :cond_1c

    const/16 v22, 0x1

    .line 3451
    .local v22, "isTextEditor":Z
    :goto_6
    const/high16 v27, 0x10000

    and-int v27, v27, p3

    if-eqz v27, :cond_1d

    const/16 v23, 0x1

    .line 3460
    .local v23, "isWritingBuddyShown":Z
    :goto_7
    const-string/jumbo v27, "ro.build.characteristics"

    invoke-static/range {v27 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3461
    .local v10, "deviceType":Ljava/lang/String;
    if-eqz v10, :cond_14

    const-string/jumbo v27, "phone"

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_14

    .line 3462
    move/from16 v0, p4

    and-int/lit16 v0, v0, 0xf0

    move/from16 v27, v0

    const/16 v29, 0x10

    move/from16 v0, v27

    move/from16 v1, v29

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v27

    const/16 v29, 0x4

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v27

    if-eqz v27, :cond_1e

    :cond_13
    const/4 v12, 0x1

    .line 3474
    :cond_14
    :goto_8
    const/4 v11, 0x0

    .line 3476
    .local v11, "didStart":Z
    and-int/lit8 v27, p4, 0xf

    packed-switch v27, :pswitch_data_0

    .line 3554
    :cond_15
    :goto_9
    :pswitch_0
    if-nez v11, :cond_17

    .line 3555
    if-eqz p6, :cond_17

    .line 3558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v27, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    if-eq v0, v5, :cond_16

    .line 3559
    const/16 v21, 0x0

    .line 3561
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    move/from16 v3, p3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v25

    .line 3577
    :cond_17
    monitor-exit v28
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 3579
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v27, v25

    .line 3582
    goto/16 :goto_3

    .line 3416
    .end local v10    # "deviceType":Ljava/lang/String;
    .end local v11    # "didStart":Z
    .end local v12    # "doAutoShow":Z
    .end local v22    # "isTextEditor":Z
    .end local v23    # "isWritingBuddyShown":Z
    :cond_18
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v29, "last_used_input_method"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v30

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 3418
    .local v24, "lastImeId":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_11

    .line 3419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v14

    .line 3420
    .local v14, "enabledList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v14, :cond_1a

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_1a

    .line 3421
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_a
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v15, v0, :cond_1a

    .line 3422
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/inputmethod/InputMethodInfo;

    .line 3423
    .restart local v20    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v20, :cond_19

    invoke-virtual/range {v20 .. v20}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_19

    .line 3424
    invoke-virtual/range {v20 .. v20}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v29, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 3421
    :cond_19
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 3428
    .end local v15    # "i":I
    .end local v20    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v29, "last_used_input_method"

    const-string v30, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v31

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_4

    .line 3442
    .end local v14    # "enabledList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v24    # "lastImeId":Ljava/lang/String;
    :cond_1b
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 3447
    .restart local v12    # "doAutoShow":Z
    :cond_1c
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 3451
    .restart local v22    # "isTextEditor":Z
    :cond_1d
    const/16 v23, 0x0

    goto/16 :goto_7

    .line 3462
    .restart local v10    # "deviceType":Ljava/lang/String;
    .restart local v23    # "isWritingBuddyShown":Z
    :cond_1e
    const/4 v12, 0x0

    goto/16 :goto_8

    .line 3478
    .restart local v11    # "didStart":Z
    :pswitch_1
    if-eqz v22, :cond_1f

    if-nez v12, :cond_20

    .line 3479
    :cond_1f
    invoke-static/range {p5 .. p5}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v27

    if-eqz v27, :cond_15

    .line 3485
    const/16 v21, 0x0

    .line 3486
    const/16 v27, 0x2

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_9

    .line 3488
    :cond_20
    if-eqz v22, :cond_15

    if-eqz v12, :cond_15

    move/from16 v0, p4

    and-int/lit16 v0, v0, 0x100

    move/from16 v27, v0

    if-eqz v27, :cond_15

    .line 3498
    if-eqz p6, :cond_22

    .line 3501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v27, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    if-eq v0, v5, :cond_21

    .line 3502
    const/16 v21, 0x0

    .line 3504
    :cond_21
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    move/from16 v3, p3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v25

    .line 3506
    const/4 v11, 0x1

    .line 3508
    :cond_22
    if-nez v23, :cond_15

    .line 3509
    const/16 v27, 0x1

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_9

    .line 3517
    :pswitch_2
    move/from16 v0, p4

    and-int/lit16 v0, v0, 0x100

    move/from16 v27, v0

    if-eqz v27, :cond_15

    .line 3520
    const/16 v27, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_9

    .line 3525
    :pswitch_3
    const/16 v27, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_9

    .line 3528
    :pswitch_4
    move/from16 v0, p4

    and-int/lit16 v0, v0, 0x100

    move/from16 v27, v0

    if-eqz v27, :cond_15

    .line 3531
    if-eqz p6, :cond_23

    .line 3532
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    move/from16 v3, p3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v25

    .line 3534
    const/4 v11, 0x1

    .line 3536
    :cond_23
    if-nez v23, :cond_15

    .line 3537
    const/16 v27, 0x1

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_9

    .line 3543
    :pswitch_5
    if-eqz p6, :cond_24

    .line 3544
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    move/from16 v3, p3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v25

    .line 3546
    const/4 v11, 0x1

    .line 3548
    :cond_24
    if-nez v23, :cond_15

    .line 3549
    const/16 v27, 0x1

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_9

    .line 3476
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

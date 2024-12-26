.class Lcom/android/server/policy/GlobalActions;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;,
        Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;,
        Lcom/android/server/policy/GlobalActions$SilentModeAction;,
        Lcom/android/server/policy/GlobalActions$ToggleAction;,
        Lcom/android/server/policy/GlobalActions$SinglePressAction;,
        Lcom/android/server/policy/GlobalActions$LongPressAction;,
        Lcom/android/server/policy/GlobalActions$Action;,
        Lcom/android/server/policy/GlobalActions$MyAdapter;,
        Lcom/android/server/policy/GlobalActions$RebootAction;,
        Lcom/android/server/policy/GlobalActions$PowerAction;
    }
.end annotation


# static fields
.field private static final ACTION_CLEAR_COVER_STATE_CHANGE:Ljava/lang/String; = "com.samsung.cover.STATE_CHANGE"

.field public static final ACTION_NETWORK_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.NETWORK_MODE_CHANGED"

.field public static final ACTION_SHOW_GLOBAL_ACTIONS:Ljava/lang/String; = "android.intent.action.SHOW_GLOBAL_ACTIONS"

.field private static final ACTION_STATUS_EXPAND:Ljava/lang/String; = "com.android.systemui.statusbar.EXPANDED"

.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final FORCE_RESTART_TIME:I = 0x7

.field private static final GLOBAL_ACTION_KEY_AIRPLANE:Ljava/lang/String; = "airplane"

.field private static final GLOBAL_ACTION_KEY_ASSIST:Ljava/lang/String; = "assist"

.field private static final GLOBAL_ACTION_KEY_BUGREPORT:Ljava/lang/String; = "bugreport"

.field private static final GLOBAL_ACTION_KEY_DATAMODE:Ljava/lang/String; = "datamode"

.field private static final GLOBAL_ACTION_KEY_EMERGENCYMODE:Ljava/lang/String; = "emergencymode"

.field private static final GLOBAL_ACTION_KEY_LOCKDOWN:Ljava/lang/String; = "lockdown"

.field private static final GLOBAL_ACTION_KEY_POWER:Ljava/lang/String; = "power"

.field private static final GLOBAL_ACTION_KEY_REBOOT:Ljava/lang/String; = "reboot"

.field private static final GLOBAL_ACTION_KEY_RESTART:Ljava/lang/String; = "restart"

.field private static final GLOBAL_ACTION_KEY_SETTINGS:Ljava/lang/String; = "settings"

.field private static final GLOBAL_ACTION_KEY_SILENT:Ljava/lang/String; = "silent"

.field private static final GLOBAL_ACTION_KEY_SUBSCREEN:Ljava/lang/String; = "subscreen"

.field private static final GLOBAL_ACTION_KEY_USERS:Ljava/lang/String; = "users"

.field private static final GLOBAL_ACTION_KEY_VOICEASSIST:Ljava/lang/String; = "voiceassist"

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_HIDE_CONFIRM_LANDSCAPE:I = 0x9

.field private static final MESSAGE_HIDE_CONFIRM_PORTRAIT:I = 0x8

.field private static final MESSAGE_HIDE_QUICKPANEL:I = 0x4

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_REFRESH_AIRPLANEMODE:I = 0x3

.field private static final MESSAGE_REFRESH_RINGER:I = 0x5

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final MESSAGE_SHOW_CONFIRM_LANDSCAPE:I = 0x7

.field private static final MESSAGE_SHOW_CONFIRM_PORTRAIT:I = 0x6

.field static final SAFE_DEBUG:Z

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final SIM_CDMA:I = 0x0

.field private static final SIM_GSM:I = 0x1

.field private static final SURVEY_LOG:Z

.field static SelectedItem:Landroid/view/View; = null

.field private static final TAG:Ljava/lang/String; = "GlobalActions"

.field private static final TW_GLOBALACTIONS_MSG_DELAY:I = 0x96

.field private static final isForceRestartSupport:Z

.field static mAccessibiltyShortcutEnabled:Z

.field private static mClearCoverWidth:I

.field private static mCountyCode:Ljava/lang/String;

.field private static mCoverViewListView:Landroid/widget/ListView;

.field private static mHasVibrator:Z

.field private static mIsAirplaneConfirmDialogExist:Z

.field private static mIsBugReportEnable:Z

.field private static mIsCancelEnable:Z

.field private static mIsClearCover:Z

.field private static mIsConfirmDlg:Z

.field private static mIsConfirmLandDlg:Z

.field private static mIsCoverOpen:Z

.field private static mIsFirstCreated:Z

.field private static mIsMiniCoverOpened:Z

.field private static mIsMiniDialogMode:Z

.field private static mIsSafemodeSupport:Z

.field private static mNewFeatureForM:Z

.field private static mNewFeatureForMListView:Landroid/widget/ListView;

.field private static mPasscodeEditText:Landroid/widget/EditText;

.field private static mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private static mProKioskMenuPosition:I

.field private static mProKioskOptionShown:Z

.field private static final mProductName:Ljava/lang/String;

.field private static mSCoverRequestStatus:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSViewCoverAppLevel:I

.field private static mSViewCoverHeight:I

.field private static mSViewCoverWidth:I

.field private static final mSalesCode:Ljava/lang/String;

.field private static final mScafe:Ljava/lang/String;

.field private static final mScafeShot:Ljava/lang/String;

.field public static mSilentModeView:Landroid/view/View;

.field private static mStatusHeight:I

.field private static sIsConfirming:Z

.field private static sIsConfirmingGuard:Ljava/lang/Object;

.field private static sIsSecondConfirming:Z


# instance fields
.field final DO_NOT_MOVE:I

.field final INTERVAL_SCOVER_TRANSITION:I

.field private cm:Landroid/net/ConnectivityManager;

.field current_x:F

.field current_x_land:F

.field current_y:F

.field current_y_land:F

.field displayheight:I

.field displaywidth:I

.field private isDataToggleSupport:Z

.field isShopDemo:Z

.field private isVZWOperatorAirplaneModeONReasonUSB3:Z

.field private mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

.field mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

.field mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field private mAirplaneMsg:Landroid/widget/TextView;

.field private mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field mAirplaneStringId:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field private mBikeModeDialog:Landroid/app/AlertDialog;

.field mBikeModeIconResId:I

.field private mBikeModeObserver:Landroid/database/ContentObserver;

.field mBikeModeStringId:I

.field mBottomViewDoubleItemWidth:I

.field mBottomViewSingleCancelItemWidth:I

.field mBottomViewSingleItemHeight:I

.field mBottomViewSingleItemWidth:I

.field private mBottomlayout:Landroid/widget/LinearLayout;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBugReport:Landroid/widget/Button;

.field private mCancelButton:Landroid/widget/Button;

.field private mConfirmDialog:Landroid/app/AlertDialog;

.field private mConfirmDialogReceiver:Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

.field private mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

.field mConfirmPowerOffIconResId:I

.field mConfirmRestartIconResId:I

.field private final mContext:Landroid/content/Context;

.field private mCoverColor:I

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field mDataNetworkIconResId:I

.field private mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field mDataNetworkStringId:I

.field private mDescriptionlayout:Landroid/widget/LinearLayout;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

.field private mDisplayConfirm:Z

.field private mDontShowCheckbox:Landroid/widget/CheckBox;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field mEmergencyIconResId:I

.field private mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field mEmergencyStringId:I

.field private mForceRestartlayout:Landroid/widget/LinearLayout;

.field private mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

.field private mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

.field private mHandler:Landroid/os/Handler;

.field private mHasTelephony:Z

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private mIsDisableConfirm:Z

.field private mIsScreenOFF:Z

.field private mIsSecureKeyguard:Z

.field private mIsSetAirplaneOnMessageCHINA:Z

.field private mIsSetAirplaneOnMessageVZW:Z

.field mIsSupportedBlur:Z

.field private mIsWaitingForEcmExit:Z

.field mItemConfirmMessageWidth:I

.field mItemDivider:I

.field mItemDividerLand:I

.field mItemHeight:I

.field mItemHeightWithStatus:I

.field mItemLandscapeDivider:I

.field mItemMaxWidth:I

.field mItemMaxWidthLand:I

.field mItemPortraitDivider:I

.field mItemPortraitDividerOverFour:I

.field mItemPortraitDividerSViewCover:I

.field mItemWidth:I

.field mItemWidthLand:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKeyguardShowing:Z

.field private mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

.field private mLDUWarning:Ljava/lang/String;

.field private mLandscapeLinearLayout:Landroid/widget/LinearLayout;

.field private mLayout:Landroid/widget/LinearLayout;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mMSimServiceState:[I

.field mMessageViewPaddingBottom:I

.field mMessageViewPaddingTop:I

.field private mPhoneCount:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

.field mPowerOffIconResId:I

.field private mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

.field private mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field private mRestart:Lcom/android/server/policy/GlobalActions$SinglePressAction;

.field mRestartIconResId:I

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mScrollview:Landroid/widget/ScrollView;

.field private mSecondAnimatedText:Landroid/widget/TextView;

.field private mShowOnAirplaneConfirm:Z

.field private final mShowSilentToggle:Z

.field private mSilentModeAction:Lcom/android/server/policy/GlobalActions$SilentModeAction;

.field mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mSubScreenOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field private mSubScreenState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field private mTempStringArray:[Ljava/lang/String;

.field private mUnableAirplanemode:Ljava/lang/String;

.field private mUnableEmergencyforFMM:Ljava/lang/String;

.field private mUnablePowerOff:Ljava/lang/String;

.field private mUnablePowerOffForFMM:Ljava/lang/String;

.field private mUnableRestartForFMM:Ljava/lang/String;

.field private mUnableSbikeforFMM:Ljava/lang/String;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mViewCoverParentLayout:Landroid/widget/ImageView;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field private powermanager:Landroid/os/PowerManager;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 212
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    .line 256
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    .line 257
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    .line 258
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    .line 259
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCancelEnable:Z

    .line 260
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Framework_SupportRebootWithSafemode"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsSafemodeSupport:Z

    .line 287
    sput v1, Lcom/android/server/policy/GlobalActions;->mProKioskMenuPosition:I

    .line 289
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mProKioskOptionShown:Z

    .line 290
    sput-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 291
    sput-object v4, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    .line 297
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z

    .line 298
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    .line 299
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    .line 305
    sput-object v4, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    .line 308
    sput-object v4, Lcom/android/server/policy/GlobalActions;->mNewFeatureForMListView:Landroid/widget/ListView;

    .line 325
    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    .line 326
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    .line 328
    sput v1, Lcom/android/server/policy/GlobalActions;->mSViewCoverAppLevel:I

    .line 330
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z

    .line 331
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsMiniCoverOpened:Z

    .line 334
    sput-object v4, Lcom/android/server/policy/GlobalActions;->mSilentModeView:Landroid/view/View;

    .line 335
    sput v1, Lcom/android/server/policy/GlobalActions;->mSViewCoverWidth:I

    .line 336
    sput v1, Lcom/android/server/policy/GlobalActions;->mSViewCoverHeight:I

    .line 337
    sput v1, Lcom/android/server/policy/GlobalActions;->mClearCoverWidth:I

    .line 338
    sput v1, Lcom/android/server/policy/GlobalActions;->mStatusHeight:I

    .line 340
    const-string/jumbo v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;

    .line 341
    const-string/jumbo v0, "ro.build.scafe.shot"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/GlobalActions;->mScafeShot:Ljava/lang/String;

    .line 342
    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/GlobalActions;->mProductName:Ljava/lang/String;

    .line 343
    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;

    .line 344
    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/GlobalActions;->mCountyCode:Ljava/lang/String;

    .line 354
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Framework_SupportForceRestartGlobalAction"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/GlobalActions;->isForceRestartSupport:Z

    .line 359
    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsFirstCreated:Z

    .line 372
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsAirplaneConfirmDialogExist:Z

    .line 375
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/GlobalActions;->SURVEY_LOG:Z

    .line 389
    const-string v0, "americano"

    sget-object v3, Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "mocha"

    sget-object v3, Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    .line 427
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    .line 428
    sput-object v4, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    .line 5118
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/policy/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    return-void

    :cond_0
    move v0, v2

    .line 212
    goto/16 :goto_0

    :cond_1
    move v2, v1

    .line 389
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    .line 254
    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    .line 262
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 264
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 265
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mSubScreenState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 271
    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    .line 278
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mDisplayConfirm:Z

    .line 285
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    .line 286
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    .line 288
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 301
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 306
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    .line 309
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    .line 310
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    .line 311
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 312
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    .line 313
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    .line 314
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    .line 315
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    .line 316
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mSecondAnimatedText:Landroid/widget/TextView;

    .line 317
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    .line 318
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 319
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mCancelButton:Landroid/widget/Button;

    .line 320
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    .line 322
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mViewCoverParentLayout:Landroid/widget/ImageView;

    .line 323
    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mCoverColor:I

    .line 327
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 346
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v4, "CscFeature_Framework_SupportDataModeSwitchGlobalAction"

    invoke-virtual {v1, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->isDataToggleSupport:Z

    .line 347
    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    .line 348
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 358
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 366
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mShowOnAirplaneConfirm:Z

    .line 367
    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    .line 368
    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    .line 369
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    .line 370
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneMsg:Landroid/widget/TextView;

    .line 371
    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v4, "temp"

    aput-object v4, v1, v3

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    .line 378
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 379
    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsSecureKeyguard:Z

    .line 380
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOff:Ljava/lang/String;

    .line 381
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mUnableAirplanemode:Ljava/lang/String;

    .line 382
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mLDUWarning:Ljava/lang/String;

    .line 383
    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->isShopDemo:Z

    .line 385
    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    .line 390
    iput v3, p0, Lcom/android/server/policy/GlobalActions;->displayheight:I

    .line 391
    iput v3, p0, Lcom/android/server/policy/GlobalActions;->displaywidth:I

    .line 392
    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemWidth:I

    .line 393
    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleCancelItemWidth:I

    .line 394
    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewDoubleItemWidth:I

    .line 395
    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemHeight:I

    .line 396
    iput v6, p0, Lcom/android/server/policy/GlobalActions;->current_x:F

    .line 397
    iput v6, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    .line 398
    iput v6, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    .line 399
    iput v6, p0, Lcom/android/server/policy/GlobalActions;->current_y_land:F

    .line 400
    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemWidth:I

    .line 401
    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    .line 402
    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemHeight:I

    .line 403
    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemHeightWithStatus:I

    .line 404
    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidth:I

    .line 405
    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidthLand:I

    .line 406
    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingTop:I

    .line 407
    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingBottom:I

    .line 408
    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDivider:I

    .line 409
    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerOverFour:I

    .line 410
    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemLandscapeDivider:I

    .line 411
    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerSViewCover:I

    .line 412
    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    .line 413
    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemDividerLand:I

    .line 414
    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemConfirmMessageWidth:I

    .line 415
    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    .line 416
    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mConfirmPowerOffIconResId:I

    .line 417
    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyIconResId:I

    .line 418
    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    .line 419
    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mConfirmRestartIconResId:I

    .line 420
    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkIconResId:I

    .line 421
    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeIconResId:I

    .line 422
    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyStringId:I

    .line 423
    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneStringId:I

    .line 424
    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkStringId:I

    .line 425
    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeStringId:I

    .line 426
    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    .line 429
    const/16 v1, -0x3e8

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->DO_NOT_MOVE:I

    .line 430
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 431
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOffForFMM:Ljava/lang/String;

    .line 432
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mUnableRestartForFMM:Ljava/lang/String;

    .line 433
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mUnableEmergencyforFMM:Ljava/lang/String;

    .line 434
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mUnableSbikeforFMM:Ljava/lang/String;

    .line 435
    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsScreenOFF:Z

    .line 436
    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsDisableConfirm:Z

    .line 866
    new-instance v1, Lcom/android/server/policy/GlobalActions$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$1;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 3318
    new-instance v1, Lcom/android/server/policy/GlobalActions$32;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$32;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3324
    new-instance v1, Lcom/android/server/policy/GlobalActions$33;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$33;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3341
    new-instance v1, Lcom/android/server/policy/GlobalActions$34;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$34;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 4294
    new-instance v1, Lcom/android/server/policy/GlobalActions$35;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$35;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 4341
    new-instance v1, Lcom/android/server/policy/GlobalActions$36;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$36;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    .line 4361
    new-instance v1, Lcom/android/server/policy/GlobalActions$37;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$37;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 4404
    new-instance v1, Lcom/android/server/policy/GlobalActions$38;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$38;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 4418
    new-instance v1, Lcom/android/server/policy/GlobalActions$39;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v4}, Lcom/android/server/policy/GlobalActions$39;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 4425
    new-instance v1, Lcom/android/server/policy/GlobalActions$40;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v4}, Lcom/android/server/policy/GlobalActions$40;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeObserver:Landroid/database/ContentObserver;

    .line 4471
    new-instance v1, Lcom/android/server/policy/GlobalActions$41;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$41;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    .line 5129
    const/16 v1, 0xc8

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->INTERVAL_SCOVER_TRANSITION:I

    .line 442
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v4, 0x103012b

    invoke-direct {v1, p1, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    .line 444
    iput-object p2, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 445
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 446
    const-string v1, "dreams"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 451
    invoke-static {}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getInstance()Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    .line 452
    invoke-static {}, Landroid/app/enterprise/knoxcustom/SystemManager;->getInstance()Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    .line 459
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    .line 461
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    .line 463
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->powermanager:Landroid/os/PowerManager;

    .line 465
    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 467
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/policy/GlobalActions;->registerPhoneStateListener(Landroid/content/Context;)V

    .line 471
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v1, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 472
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "airplane_mode_on"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 475
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v4, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v1, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "bikemode"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v4, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v1, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "globalaction"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "isBikeMode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 479
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v4, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v1, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "ltn"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x1040aa1

    :goto_0
    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeStringId:I

    .line 481
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "vibrator"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 482
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mHasVibrator:Z

    .line 484
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1120084

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_2
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    .line 489
    const-string v1, "TMB"

    sget-object v2, Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 490
    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mDisplayConfirm:Z

    .line 495
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->initCoverManager(Landroid/content/Context;)V

    .line 497
    return-void

    .line 479
    .end local v0    # "vibrator":Landroid/os/Vibrator;
    :cond_2
    const v1, 0x1040a96

    goto :goto_0

    .restart local v0    # "vibrator":Landroid/os/Vibrator;
    :cond_3
    move v1, v3

    .line 482
    goto :goto_1

    :cond_4
    move v2, v3

    .line 484
    goto :goto_2
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 208
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 208
    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    return p0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/policy/GlobalActions;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$10100(Lcom/android/server/policy/GlobalActions;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # I

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$10200(Lcom/android/server/policy/GlobalActions;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mMSimServiceState:[I

    return-object v0
.end method

.method static synthetic access$10300(Lcom/android/server/policy/GlobalActions;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    return v0
.end method

.method static synthetic access$10400(Lcom/android/server/policy/GlobalActions;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # I

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->isSimCardInserted(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->isDataToggleSupport:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isTSafeLock()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSecureKeyguard:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnableAirplanemode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLDUWarning:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isMSim()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/policy/GlobalActions;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/server/policy/GlobalActions;Landroid/hardware/usb/UsbManager;)Landroid/hardware/usb/UsbManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Landroid/hardware/usb/UsbManager;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isVoiceCapable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 208
    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isCHINA()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isUSA()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic access$2600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/policy/GlobalActions;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 208
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsMiniCoverOpened:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mSubScreenState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 208
    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->mIsMiniCoverOpened:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isFMMlocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnableEmergencyforFMM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/policy/GlobalActions;)Landroid/app/enterprise/knoxcustom/ProKioskManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/policy/GlobalActions;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 208
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700()Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnableRestartForFMM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mDisplayConfirm:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mDisplayConfirm:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnableSbikeforFMM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/android/server/policy/GlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$4500()Z
    .locals 1

    .prologue
    .line 208
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    return v0
.end method

.method static synthetic access$4502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 208
    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    return p0
.end method

.method static synthetic access$4600()Z
    .locals 1

    .prologue
    .line 208
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    return v0
.end method

.method static synthetic access$4602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 208
    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    return p0
.end method

.method static synthetic access$4700(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    return-object p1
.end method

.method static synthetic access$4800()Z
    .locals 1

    .prologue
    .line 208
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z

    return v0
.end method

.method static synthetic access$4802(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 208
    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z

    return p0
.end method

.method static synthetic access$4900(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->virtualDismissInSCover(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5000()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic access$5200()Z
    .locals 1

    .prologue
    .line 208
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mProKioskOptionShown:Z

    return v0
.end method

.method static synthetic access$5202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 208
    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->mProKioskOptionShown:Z

    return p0
.end method

.method static synthetic access$5300(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Lcom/android/server/policy/GlobalActions$Action;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 208
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/GlobalActions;->makeActionsItem(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$5700()I
    .locals 1

    .prologue
    .line 208
    sget v0, Lcom/android/server/policy/GlobalActions;->mProKioskMenuPosition:I

    return v0
.end method

.method static synthetic access$5800(Lcom/android/server/policy/GlobalActions;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/server/policy/GlobalActions;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->onClickForHidePortraitConfirmDialog(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isSimReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOff:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOffForFMM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/server/policy/GlobalActions;Landroid/view/View;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->isSingleActionItem(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsDisableConfirm:Z

    return v0
.end method

.method static synthetic access$6400(Lcom/android/server/policy/GlobalActions;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 208
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/GlobalActions;->onClickForPortraitConfirmDialog(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/policy/GlobalActions;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 208
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/GlobalActions;->onClickForLandscapeConfirmDialog(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$6600()Z
    .locals 1

    .prologue
    .line 208
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    return v0
.end method

.method static synthetic access$6700()Z
    .locals 1

    .prologue
    .line 208
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    return v0
.end method

.method static synthetic access$6800(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsFrameLayoutSViewCover;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsFrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 208
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    return v0
.end method

.method static synthetic access$7000(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$7100()Z
    .locals 1

    .prologue
    .line 208
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsSafemodeSupport:Z

    return v0
.end method

.method static synthetic access$7200(Lcom/android/server/policy/GlobalActions;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->onClickForHideLandscapeConfirmDialog(Z)V

    return-void
.end method

.method static synthetic access$7302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 208
    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->mIsAirplaneConfirmDialogExist:Z

    return p0
.end method

.method static synthetic access$7400(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->clearSCoverRequestStatus()V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$7600(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$7700()Z
    .locals 1

    .prologue
    .line 208
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mHasVibrator:Z

    return v0
.end method

.method static synthetic access$7800(Lcom/android/server/policy/GlobalActions;)Landroid/app/KeyguardManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsScreenOFF:Z

    return v0
.end method

.method static synthetic access$7902(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsScreenOFF:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->onToggleDatamode()V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->unregisterPhoneStateListener()V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/server/policy/GlobalActions;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->registerPhoneStateListener(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/android/server/policy/GlobalActions;ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .prologue
    .line 208
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$8902(Lcom/android/server/policy/GlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Lcom/android/server/policy/GlobalActions$ToggleAction;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 208
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/GlobalActions;->confirmDialog(Lcom/android/server/policy/GlobalActions$ToggleAction;III)V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isGlobalActionConfirming()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9100(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsSViewCoverDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->handleShow()V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$SilentModeAction;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$SilentModeAction;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->initLandscapeAddView()V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->initPortraitAddView()V

    return-void
.end method

.method static synthetic access$9900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/android/server/policy/GlobalActions;->mCountyCode:Ljava/lang/String;

    return-object v0
.end method

.method private addCustomDialogItems(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Landroid/content/Intent;ILjava/util/ArrayList;)Z
    .locals 8
    .param p1, "iconDraw"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p2, "messageChars"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/BitmapDrawable;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2742
    .local p5, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/GlobalActions$Action;>;"
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    monitor-enter v6

    .line 2743
    :try_start_0
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/policy/GlobalActions$25;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$25;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ILandroid/content/Intent;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v6

    return v0

    .line 2785
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z
    .locals 2
    .param p1, "valueToCheck"    # I
    .param p2, "actionToAdd"    # Lcom/android/server/policy/GlobalActions$Action;
    .param p4, "ifEnabledMoveIncrementPosition"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/policy/GlobalActions$Action;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 2729
    .local p3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/GlobalActions$Action;>;"
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 2730
    const-string v0, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    const-string/jumbo v1, "getSealedPowerDialogItems"

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/GlobalActions;->isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_1

    .line 2731
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2732
    if-eqz p4, :cond_0

    .line 2733
    sget v0, Lcom/android/server/policy/GlobalActions;->mProKioskMenuPosition:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/policy/GlobalActions;->mProKioskMenuPosition:I

    .line 2735
    :cond_0
    const/4 v0, 0x1

    .line 2738
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addUsersToMenu(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/GlobalActions$Action;>;"
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 3121
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserManager;

    .line 3122
    .local v9, "um":Landroid/os/UserManager;
    invoke-virtual {v9}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3123
    invoke-virtual {v9}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    .line 3124
    .local v10, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 3125
    .local v6, "currentUser":Landroid/content/pm/UserInfo;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 3126
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3127
    if-nez v6, :cond_2

    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_1

    move v8, v11

    .line 3129
    .local v8, "isCurrentUser":Z
    :goto_1
    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3131
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    :goto_2
    new-instance v0, Lcom/android/server/policy/GlobalActions$31;

    const v2, 0x1080461

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v8, :cond_6

    const-string v1, " \u2714"

    :goto_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$31;-><init>(Lcom/android/server/policy/GlobalActions;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    .line 3157
    .local v0, "switchToUser":Lcom/android/server/policy/GlobalActions$SinglePressAction;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "switchToUser":Lcom/android/server/policy/GlobalActions$SinglePressAction;
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "isCurrentUser":Z
    :cond_1
    move v8, v12

    .line 3127
    goto :goto_1

    :cond_2
    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    iget v2, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v2, :cond_3

    move v8, v11

    goto :goto_1

    :cond_3
    move v8, v12

    goto :goto_1

    .line 3129
    .restart local v8    # "isCurrentUser":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 3131
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_5
    const-string v1, "Primary"

    goto :goto_3

    :cond_6
    const-string v1, ""

    goto :goto_4

    .line 3161
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "isCurrentUser":Z
    .end local v10    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_7
    return-void
.end method

.method private adjustForceRestartView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 5526
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->isForceRestartSupport:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v2, :cond_1

    .line 5527
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v3, 0x10203ad

    invoke-virtual {v2, v3}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    .line 5528
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v3, 0x10203ae

    invoke-virtual {v2, v3}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 5529
    .local v1, "tvForceRestartMessage":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v3, 0x1040125

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5530
    .local v0, "forceRestartString":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5531
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5533
    .end local v0    # "forceRestartString":Ljava/lang/String;
    .end local v1    # "tvForceRestartMessage":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method private awakenIfNecessary()V
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_0

    .line 662
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 665
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    .line 4744
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4750
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 4751
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4752
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4753
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4754
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/GlobalActions$42;

    invoke-direct {v2, p0}, Lcom/android/server/policy/GlobalActions$42;-><init>(Lcom/android/server/policy/GlobalActions;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4769
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    if-nez v1, :cond_0

    .line 4770
    if-eqz p1, :cond_3

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_2
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 4772
    :cond_0
    return-void

    .line 4744
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 4763
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4764
    .restart local v0    # "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4765
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4766
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 4770
    :cond_3
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_2
.end method

.method private checkAirplaneModeOnOff()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4727
    const-string v2, "GlobalActions"

    const-string v3, "===== Start checkAirplaneModeOnOff ====="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4729
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 4733
    .local v0, "airplaneModeOn":Z
    :goto_0
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAirplaneModeOnOff : airplaneModeOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4734
    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_1
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 4736
    const-string v1, "GlobalActions"

    const-string v2, "checkAirplaneModeOnOff : sendEmptyMessageDelayed MESSAGE_REFRESH_AIRPLANEMODE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4737
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4738
    return-void

    .end local v0    # "airplaneModeOn":Z
    :cond_0
    move v0, v1

    .line 4729
    goto :goto_0

    .line 4734
    .restart local v0    # "airplaneModeOn":Z
    :cond_1
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method private clearCustomDialogItems()Z
    .locals 4

    .prologue
    .line 2789
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2790
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2791
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/policy/GlobalActions$Action;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2792
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/GlobalActions$Action;

    .line 2793
    .local v1, "obj":Lcom/android/server/policy/GlobalActions$Action;
    instance-of v2, v1, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    if-eqz v2, :cond_0

    .line 2794
    check-cast v1, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    .end local v1    # "obj":Lcom/android/server/policy/GlobalActions$Action;
    iget-boolean v2, v1, Lcom/android/server/policy/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    if-eqz v2, :cond_0

    .line 2795
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2799
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/policy/GlobalActions$Action;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/policy/GlobalActions$Action;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2800
    const/4 v2, 0x1

    return v2
.end method

.method private clearSCoverRequestStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 5131
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5132
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5133
    :cond_0
    sget-object v2, Lcom/android/server/policy/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5134
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5136
    .local v1, "sender":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/policy/GlobalActions;->restoreQuickpanelBackground(Ljava/lang/String;)V

    goto :goto_0

    .line 5138
    .end local v1    # "sender":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/android/server/policy/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 5139
    return-void
.end method

.method private confirmDialog(Lcom/android/server/policy/GlobalActions$ToggleAction;III)V
    .locals 20
    .param p1, "action"    # Lcom/android/server/policy/GlobalActions$ToggleAction;
    .param p2, "resTitle"    # I
    .param p3, "resON"    # I
    .param p4, "resOFF"    # I

    .prologue
    .line 3365
    const/4 v4, 0x0

    .line 3366
    .local v4, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/4 v14, 0x0

    .line 3368
    .local v14, "positiveButtonClickListener":Landroid/content/DialogInterface$OnClickListener;
    const/4 v13, 0x0

    .line 3369
    .local v13, "mConfirmDialogSViewCover":Landroid/app/GlobalActionsSViewCoverDialog;
    const/4 v6, 0x0

    .line 3370
    .local v6, "dialog":Landroid/app/AlertDialog;
    const/4 v15, 0x0

    .line 3371
    .local v15, "positiveButtonStringId":I
    const/4 v2, 0x0

    .line 3372
    .local v2, "abuilder":Landroid/app/AlertDialog$Builder;
    const/4 v12, 0x0

    .line 3373
    .local v12, "isStateOff":Z
    const/4 v8, 0x0

    .line 3374
    .local v8, "isActionAirplaneModeOn":Z
    const/4 v11, 0x0

    .line 3375
    .local v11, "isSetAirplaneOnMessageVZW":Z
    const/4 v10, 0x0

    .line 3376
    .local v10, "isSetAirplaneOnMessageCHINA":Z
    const/4 v9, 0x0

    .line 3377
    .local v9, "isRunnigWithoutConfirmMessage":Z
    const/16 v16, 0x1

    sput-boolean v16, Lcom/android/server/policy/GlobalActions;->mIsAirplaneConfirmDialogExist:Z

    .line 3378
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 3379
    const v15, 0x104082c

    .line 3380
    const/4 v12, 0x1

    .line 3385
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_4

    .line 3386
    const/4 v8, 0x1

    .line 3387
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3394
    :goto_1
    sget-boolean v16, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v16, :cond_8

    sget-boolean v16, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-nez v16, :cond_8

    .line 3395
    new-instance v16, Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setTitle(I)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v16, v0

    sget-object v18, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_6

    move/from16 v16, p3

    :goto_2
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setMessage(I)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    move/from16 v16, v0

    if-eqz v16, :cond_7

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v16, v0

    sget-object v18, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_7

    const v16, 0x10409b3

    :goto_3
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v16

    const v17, 0x1040009

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->create()Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v13

    .line 3449
    :goto_4
    new-instance v16, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/GlobalActions;->mConfirmDialogReceiver:Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

    .line 3451
    sget-boolean v16, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v16, :cond_12

    sget-boolean v16, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-nez v16, :cond_12

    .line 3452
    if-eqz v13, :cond_1

    .line 3453
    invoke-virtual {v13}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x833

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->setType(I)V

    .line 3455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x1120014

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    if-nez v16, :cond_0

    .line 3457
    invoke-virtual {v13}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->addFlags(I)V

    .line 3460
    :cond_0
    invoke-virtual {v13}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 3462
    .local v3, "attributes":Landroid/view/WindowManager$LayoutParams;
    const/16 v16, 0x1

    move/from16 v0, v16

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3463
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 3464
    invoke-virtual {v13}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3465
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/app/GlobalActionsSViewCoverDialog;->setCanceledOnTouchOutside(Z)V

    .line 3466
    invoke-virtual {v13}, Landroid/app/GlobalActionsSViewCoverDialog;->show()V

    .line 3467
    const-string v16, "GlobalActions$ConfirmDialog"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/policy/GlobalActions;->hideQuickpanelBackground(Ljava/lang/String;)V

    .line 3468
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

    .line 3510
    .end local v3    # "attributes":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_5
    if-nez v9, :cond_2

    .line 3511
    sget-object v17, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v17

    .line 3512
    const/16 v16, 0x1

    :try_start_0
    sput-boolean v16, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z

    .line 3513
    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3515
    :cond_2
    return-void

    .line 3382
    :cond_3
    const v15, 0x104082b

    goto/16 :goto_0

    .line 3388
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_5

    .line 3389
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/GlobalActions;->mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    goto/16 :goto_1

    .line 3391
    :cond_5
    const-string v16, "GlobalActions"

    const-string v17, "Cannot find ClickListener."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    move/from16 v16, p4

    .line 3395
    goto/16 :goto_2

    :cond_7
    move/from16 v16, v15

    goto/16 :goto_3

    .line 3404
    :cond_8
    sget-boolean v16, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v16, :cond_b

    sget-boolean v16, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v16, :cond_b

    .line 3405
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .end local v2    # "abuilder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x10304e4

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v2, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 3409
    .restart local v2    # "abuilder":Landroid/app/AlertDialog$Builder;
    :goto_6
    move/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3410
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    move/from16 v16, v0

    if-nez v16, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    move/from16 v16, v0

    if-eqz v16, :cond_d

    :cond_9
    if-eqz v8, :cond_d

    if-eqz v12, :cond_d

    .line 3411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string/jumbo v17, "layout_inflater"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 3413
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const v16, 0x1090128

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 3414
    .local v5, "content":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    move/from16 v16, v0

    if-eqz v16, :cond_c

    .line 3415
    const/4 v11, 0x1

    .line 3416
    const-string v16, "GlobalActions"

    const-string v17, "confirmDialog : set airplane mode on message for VZW"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3421
    :cond_a
    :goto_7
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 3422
    const v16, 0x10204de

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/CheckBox;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/GlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    .line 3423
    const v16, 0x102000b

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/GlobalActions;->mAirplaneMsg:Landroid/widget/TextView;

    .line 3424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneMsg:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3430
    .end local v5    # "content":Landroid/view/View;
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    move/from16 v16, v0

    if-eqz v16, :cond_f

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_f

    .line 3431
    const v15, 0x10409b3

    .line 3445
    :goto_9
    invoke-virtual {v2, v15, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3446
    const v16, 0x1040009

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3447
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    goto/16 :goto_4

    .line 3407
    :cond_b
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .end local v2    # "abuilder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v2    # "abuilder":Landroid/app/AlertDialog$Builder;
    goto/16 :goto_6

    .line 3417
    .restart local v5    # "content":Landroid/view/View;
    .restart local v7    # "inflater":Landroid/view/LayoutInflater;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    move/from16 v16, v0

    if-eqz v16, :cond_a

    .line 3418
    const/4 v10, 0x1

    .line 3419
    const-string v16, "GlobalActions"

    const-string v17, "confirmDialog : set airplane mode on message for CHINA"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 3427
    .end local v5    # "content":Landroid/view/View;
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_e

    move/from16 v16, p3

    :goto_a
    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_8

    :cond_e
    move/from16 v16, p4

    goto :goto_a

    .line 3433
    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_11

    .line 3434
    const-string v16, "VZW"

    sget-object v17, Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    .line 3435
    const v15, 0x104000a

    goto :goto_9

    .line 3437
    :cond_10
    const v15, 0x104082c

    goto :goto_9

    .line 3440
    :cond_11
    const v15, 0x104082b

    goto :goto_9

    .line 3471
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mConfirmDialogReceiver:Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;->dialog:Landroid/app/AlertDialog;

    .line 3472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mConfirmDialogReceiver:Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3473
    sget-boolean v16, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v16, :cond_16

    sget-boolean v16, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v16, :cond_16

    .line 3474
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x833

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->setType(I)V

    .line 3481
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x1120014

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    if-nez v16, :cond_13

    .line 3482
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->addFlags(I)V

    .line 3484
    :cond_13
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3486
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->checkOnAirplaneConfirmShow()V

    .line 3487
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mShowOnAirplaneConfirm:Z

    move/from16 v16, v0

    if-nez v16, :cond_17

    if-nez v11, :cond_14

    if-eqz v10, :cond_17

    .line 3488
    :cond_14
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions;->airplaneModeClickAction(Z)V

    .line 3489
    const/4 v9, 0x1

    .line 3494
    :goto_c
    sget-boolean v16, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v16, :cond_15

    .line 3495
    const-string v16, "GlobalActions"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "in confirmDialog action = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " resON = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "resOFF = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " config_sf_slowBlur = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x1120014

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " resTitle = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " mAirplaneModeOn = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " mDataModeToggle = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3507
    :cond_15
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    goto/16 :goto_5

    .line 3478
    :cond_16
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x7de

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_b

    .line 3491
    :cond_17
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_c

    .line 3513
    :catchall_0
    move-exception v16

    :try_start_1
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v16
.end method

.method private createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .locals 35

    .prologue
    .line 933
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mProKioskOptionShown:Z

    .line 937
    new-instance v4, Lcom/android/server/policy/GlobalActions$SilentModeAction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5, v6}, Lcom/android/server/policy/GlobalActions$SilentModeAction;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$SilentModeAction;

    .line 939
    new-instance v4, Lcom/android/server/policy/GlobalActions$2;

    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v5, :cond_4

    const v6, 0x1080999

    :goto_0
    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v5, :cond_5

    const v7, 0x1080999

    :goto_1
    const v8, 0x10409d0

    const v9, 0x10409d1

    const v10, 0x10409d2

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GlobalActions$2;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 1065
    new-instance v4, Lcom/android/server/policy/GlobalActions$3;

    const v6, 0x10809a1

    const v7, 0x10809a2

    const v8, 0x1040129

    const v9, 0x104012a

    const v10, 0x104012b

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GlobalActions$3;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 1236
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->onAirplaneModeChanged()V

    .line 1238
    new-instance v4, Lcom/android/server/policy/GlobalActions$4;

    const v6, 0x10809aa

    const v7, 0x10809a9

    const v8, 0x10409a7

    const v9, 0x10409a8

    const v10, 0x10409a9

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GlobalActions$4;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mSubScreenOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 1294
    new-instance v4, Lcom/android/server/policy/GlobalActions$5;

    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v5, :cond_6

    const v6, 0x108099a

    :goto_2
    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v5, :cond_7

    const v7, 0x108099a

    :goto_3
    const v8, 0x10409bc

    const v9, 0x10409ba

    const v10, 0x10409bb

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GlobalActions$5;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 1402
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 1403
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v5, 0x1040ad7

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1404
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v5, 0x1040ad8

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1406
    new-instance v4, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    .line 1407
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    const/16 v5, 0x81

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 1408
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1409
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    const/16 v5, 0x50

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    .line 1410
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setGravity(I)V

    .line 1411
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    sget-object v5, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1412
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v5, 0x104000a

    new-instance v6, Lcom/android/server/policy/GlobalActions$6;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/policy/GlobalActions$6;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1438
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/server/policy/GlobalActions$7;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/policy/GlobalActions$7;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1447
    new-instance v4, Lcom/android/server/policy/GlobalActions$8;

    const v6, 0x1080410

    const v7, 0x1080410

    const v8, 0x1040ad4

    const v9, 0x1040ad5

    const v10, 0x1040ad5

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GlobalActions$8;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 1538
    new-instance v5, Lcom/android/server/policy/GlobalActions$99;

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v4, :cond_8

    const v4, 0x108099e

    :goto_4
    const v6, 0x10408ea

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4, v6}, Lcom/android/server/policy/GlobalActions$99;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/policy/GlobalActions;->mRestart:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    .line 1586
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bikemode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "globalaction"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1588
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ltn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    .line 1589
    .local v11, "isLatinSBike":Z
    new-instance v4, Lcom/android/server/policy/GlobalActions$10;

    const v6, 0x10809a3

    const v7, 0x10809a3

    if-eqz v11, :cond_9

    const v8, 0x1040aa1

    :goto_5
    const v9, 0x1040a97

    const v10, 0x1040a98

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lcom/android/server/policy/GlobalActions$10;-><init>(Lcom/android/server/policy/GlobalActions;IIIIIZ)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 1653
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1654
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 1658
    .end local v11    # "isLatinSBike":Z
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    .line 1662
    const/4 v13, 0x1

    .line 1664
    .local v13, "add":Z
    const/4 v4, 0x0

    sput v4, Lcom/android/server/policy/GlobalActions;->mProKioskMenuPosition:I

    .line 1665
    const-string v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v5, "getSealedState"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1668
    const/4 v4, 0x4

    new-instance v5, Lcom/android/server/policy/GlobalActions$PowerAction;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/android/server/policy/GlobalActions$PowerAction;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$1;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    .line 1671
    const/16 v4, 0x40

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mRestart:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    .line 1672
    const/16 v4, 0x80

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    .line 1673
    const/16 v4, 0x100

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getBugReportAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    .line 1675
    const-string v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v5, "getSealedPowerDialogOptionMode"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/policy/GlobalActions;->isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1676
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    if-eqz v4, :cond_1

    .line 1677
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1682
    :cond_1
    const/4 v13, 0x0

    .line 1685
    :cond_2
    if-eqz v13, :cond_1d

    .line 1687
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107003a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    .line 1690
    .local v21, "defaultActions":[Ljava/lang/String;
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    .line 1692
    .local v14, "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_6
    move-object/from16 v0, v21

    array-length v4, v0

    move/from16 v0, v24

    if-ge v0, v4, :cond_1c

    .line 1693
    aget-object v12, v21, v24

    .line 1694
    .local v12, "actionKey":Ljava/lang/String;
    invoke-virtual {v14, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1692
    :cond_3
    :goto_7
    add-int/lit8 v24, v24, 0x1

    goto :goto_6

    .line 939
    .end local v12    # "actionKey":Ljava/lang/String;
    .end local v13    # "add":Z
    .end local v14    # "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v21    # "defaultActions":[Ljava/lang/String;
    .end local v24    # "i":I
    :cond_4
    const v6, 0x10809a5

    goto/16 :goto_0

    :cond_5
    const v7, 0x10809a4

    goto/16 :goto_1

    .line 1294
    :cond_6
    const v6, 0x10809ac

    goto/16 :goto_2

    :cond_7
    const v7, 0x10809ad

    goto/16 :goto_3

    .line 1538
    :cond_8
    const v4, 0x10809a8

    goto/16 :goto_4

    .line 1589
    .restart local v11    # "isLatinSBike":Z
    :cond_9
    const v8, 0x1040a96

    goto/16 :goto_5

    .line 1698
    .end local v11    # "isLatinSBike":Z
    .restart local v12    # "actionKey":Ljava/lang/String;
    .restart local v13    # "add":Z
    .restart local v14    # "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v21    # "defaultActions":[Ljava/lang/String;
    .restart local v24    # "i":I
    :cond_a
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_b

    .line 1699
    const-string v4, "emergencymode"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "users"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "settings"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1706
    :cond_b
    invoke-static {}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->isEmergencyModeSupported()Z

    move-result v4

    if-nez v4, :cond_c

    .line 1707
    const-string v4, "emergencymode"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1708
    const-string v4, "GlobalActions"

    const-string v5, "Removed Emergency mode button because of Knox creation."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1713
    :cond_c
    const-string/jumbo v4, "power"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1714
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/policy/GlobalActions$PowerAction;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/android/server/policy/GlobalActions$PowerAction;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$1;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1762
    :cond_d
    :goto_8
    invoke-virtual {v14, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1715
    :cond_e
    const-string v4, "airplane"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1716
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1717
    :cond_f
    const-string/jumbo v4, "subscreen"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1721
    const-string v4, "datamode"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1722
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1723
    :cond_10
    const-string v4, "bugreport"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1724
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "bugreport_in_power_menu"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->isCurrentUserOwner()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1726
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v4, :cond_12

    .line 1727
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-eqz v4, :cond_11

    .line 1728
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    goto :goto_8

    .line 1730
    :cond_11
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    goto :goto_8

    .line 1733
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getBugReportAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1736
    :cond_13
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    goto :goto_8

    .line 1738
    :cond_14
    const-string/jumbo v4, "restart"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1739
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mRestart:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 1740
    :cond_15
    const-string v4, "emergencymode"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1741
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 1742
    :cond_16
    const-string/jumbo v4, "silent"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1743
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    if-eqz v4, :cond_d

    .line 1744
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$SilentModeAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 1746
    :cond_17
    const-string/jumbo v4, "users"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1747
    const-string/jumbo v4, "fw.power_user_switcher"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1748
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/policy/GlobalActions;->addUsersToMenu(Ljava/util/ArrayList;)V

    goto/16 :goto_8

    .line 1750
    :cond_18
    const-string/jumbo v4, "settings"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1751
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getSettingsAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 1754
    :cond_19
    const-string/jumbo v4, "voiceassist"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1755
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getVoiceAssistAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 1756
    :cond_1a
    const-string v4, "assist"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1757
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getAssistAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 1759
    :cond_1b
    const-string v4, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid global action key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1764
    .end local v12    # "actionKey":Ljava/lang/String;
    :cond_1c
    new-instance v4, Lcom/android/server/policy/GlobalActions$SilentModeAction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5, v6}, Lcom/android/server/policy/GlobalActions$SilentModeAction;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/policy/GlobalActions$SilentModeAction;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v4

    sput-object v4, Lcom/android/server/policy/GlobalActions;->mSilentModeView:Landroid/view/View;

    .line 1767
    .end local v14    # "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v21    # "defaultActions":[Ljava/lang/String;
    .end local v24    # "i":I
    :cond_1d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bikemode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "globalaction"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1769
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1771
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    if-eqz v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v4}, Landroid/app/enterprise/knoxcustom/SystemManager;->getPowerDialogCustomItemsState()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1772
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->clearCustomDialogItems()Z

    .line 1773
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v4}, Landroid/app/enterprise/knoxcustom/SystemManager;->getPowerDialogCustomItems()Ljava/util/List;

    move-result-object v23

    .line 1774
    .local v23, "fromDB":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    if-eqz v23, :cond_1f

    .line 1775
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;

    .line 1776
    .local v26, "item":Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    invoke-virtual/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->getIcon()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->getIntentAction()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/policy/GlobalActions;->addCustomDialogItems(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Landroid/content/Intent;ILjava/util/ArrayList;)Z

    goto :goto_9

    .line 1786
    .end local v23    # "fromDB":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v26    # "item":Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    :cond_1f
    new-instance v4, Lcom/android/server/policy/GlobalActions$MyAdapter;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/server/policy/GlobalActions$MyAdapter;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$1;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    .line 1788
    new-instance v29, Lcom/android/internal/app/AlertController$AlertParams;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 1790
    .local v29, "params":Lcom/android/internal/app/AlertController$AlertParams;
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_20

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v4, :cond_29

    .line 1791
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-object/from16 v0, v29

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 1792
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1793
    const/4 v4, 0x1

    move-object/from16 v0, v29

    iput-boolean v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 1806
    :goto_a
    new-instance v22, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-direct {v0, v4, v1, v5}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;Landroid/os/Handler;)V

    .line 1807
    .local v22, "dialog":Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    const-string v4, "GlobalActions"

    const-string v5, "Create GlobalActionsDialog"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v4, :cond_2e

    .line 1810
    const/16 v31, 0x0

    .line 1811
    .local v31, "tvBugReportMessage":Landroid/widget/TextView;
    const/16 v32, 0x0

    .line 1812
    .local v32, "tvBugReportStatus":Landroid/widget/TextView;
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 1813
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_21

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_2a

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v4, :cond_2a

    .line 1814
    :cond_21
    new-instance v4, Landroid/app/GlobalActionsFrameLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v6}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5, v6, v7}, Landroid/app/GlobalActionsFrameLayout;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    .line 1815
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v5, 0x10203af

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    .line 1816
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v5, 0x1020062

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mCancelButton:Landroid/widget/Button;

    .line 1817
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v5, 0x10203b4

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    .line 1818
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v5, 0x10203b5

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v31

    .end local v31    # "tvBugReportMessage":Landroid/widget/TextView;
    check-cast v31, Landroid/widget/TextView;

    .line 1819
    .restart local v31    # "tvBugReportMessage":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v5, 0x10203b6

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v32

    .end local v32    # "tvBugReportStatus":Landroid/widget/TextView;
    check-cast v32, Landroid/widget/TextView;

    .line 1820
    .restart local v32    # "tvBugReportStatus":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v5, 0x10203a8

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 1821
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v5, 0x10203aa

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    .line 1822
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v5, 0x10203ab

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    .line 1823
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v5, 0x10203ac

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mSecondAnimatedText:Landroid/widget/TextView;

    .line 1835
    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1836
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mCancelButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/server/policy/GlobalActions$11;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/GlobalActions$11;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1845
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v5, 0x1040122

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1846
    .local v19, "bugReportString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v5, 0x1040124

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 1848
    .local v18, "bugReportStatus":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1849
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1851
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    new-instance v5, Lcom/android/server/policy/GlobalActions$12;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/GlobalActions$12;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1907
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    if-nez v4, :cond_2b

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCancelEnable:Z

    if-nez v4, :cond_2b

    .line 1908
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1913
    :goto_c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->adjustForceRestartView()V

    .line 1915
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->createPortraitGlobalActionsDialog()V

    .line 1917
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_22

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_2c

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v4, :cond_2c

    .line 1918
    :cond_22
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->createLandscapeGlobalActionsDialog()V

    .line 1919
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_23

    .line 1920
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1922
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_24

    .line 1923
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 1925
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v5, 0x10203a6

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 1926
    .local v15, "backgroundLayout":Landroid/widget/LinearLayout;
    new-instance v28, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, v28

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1927
    .local v28, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1928
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    if-eqz v4, :cond_25

    .line 1929
    const v4, 0x1060148

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1930
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 1931
    .local v16, "backgroundalpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x12c

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 1933
    .end local v16    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setContentView(Landroid/view/View;)V

    .line 2028
    .end local v15    # "backgroundLayout":Landroid/widget/LinearLayout;
    .end local v18    # "bugReportStatus":Ljava/lang/String;
    .end local v19    # "bugReportString":Ljava/lang/String;
    .end local v28    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v31    # "tvBugReportMessage":Landroid/widget/TextView;
    .end local v32    # "tvBugReportStatus":Landroid/widget/TextView;
    :goto_d
    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 2032
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_26

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v4, :cond_28

    .line 2033
    :cond_26
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-nez v4, :cond_27

    .line 2034
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 2035
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 2036
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10501d7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 2037
    .local v17, "bottomPadding":I
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v7

    move/from16 v0, v17

    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 2038
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    new-instance v5, Lcom/android/server/policy/GlobalActions$16;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/GlobalActions$16;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 2049
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7de

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 2050
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2055
    .end local v17    # "bottomPadding":I
    :cond_27
    const-string v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v5, "getSealedPowerDialogOptionMode"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/policy/GlobalActions;->isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_28

    .line 2056
    new-instance v4, Lcom/android/server/policy/GlobalActions$17;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/policy/GlobalActions$17;-><init>(Lcom/android/server/policy/GlobalActions;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2083
    :cond_28
    return-object v22

    .line 1795
    .end local v22    # "dialog":Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    :cond_29
    new-instance v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    .line 1796
    new-instance v28, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, v28

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1797
    .restart local v28    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1798
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_a

    .line 1825
    .end local v28    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v22    # "dialog":Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .restart local v31    # "tvBugReportMessage":Landroid/widget/TextView;
    .restart local v32    # "tvBugReportStatus":Landroid/widget/TextView;
    :cond_2a
    new-instance v4, Landroid/app/GlobalActionsFrameLayoutSViewCover;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v6}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5, v6, v7}, Landroid/app/GlobalActionsFrameLayoutSViewCover;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    .line 1826
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203af

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    .line 1827
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x1020062

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mCancelButton:Landroid/widget/Button;

    .line 1828
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203b4

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    .line 1829
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203b5

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v31

    .end local v31    # "tvBugReportMessage":Landroid/widget/TextView;
    check-cast v31, Landroid/widget/TextView;

    .line 1830
    .restart local v31    # "tvBugReportMessage":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203b6

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v32

    .end local v32    # "tvBugReportStatus":Landroid/widget/TextView;
    check-cast v32, Landroid/widget/TextView;

    .line 1831
    .restart local v32    # "tvBugReportStatus":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203a8

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 1832
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203ab

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    .line 1833
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203ac

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mSecondAnimatedText:Landroid/widget/TextView;

    goto/16 :goto_b

    .line 1910
    .restart local v18    # "bugReportStatus":Ljava/lang/String;
    .restart local v19    # "bugReportString":Ljava/lang/String;
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->adjustBottomView()V

    goto/16 :goto_c

    .line 1935
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203a6

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 1936
    .restart local v15    # "backgroundLayout":Landroid/widget/LinearLayout;
    new-instance v28, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, v28

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1937
    .restart local v28    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1938
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    if-eqz v4, :cond_2d

    .line 1939
    const v4, 0x1060148

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1940
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 1941
    .restart local v16    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x12c

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 1943
    .end local v16    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setContentView(Landroid/view/View;)V

    goto/16 :goto_d

    .line 1945
    .end local v15    # "backgroundLayout":Landroid/widget/LinearLayout;
    .end local v18    # "bugReportStatus":Ljava/lang/String;
    .end local v19    # "bugReportString":Ljava/lang/String;
    .end local v28    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v31    # "tvBugReportMessage":Landroid/widget/TextView;
    .end local v32    # "tvBugReportStatus":Landroid/widget/TextView;
    :cond_2e
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_37

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-nez v4, :cond_37

    .line 1946
    const-string v4, "GlobalActions"

    const-string/jumbo v5, "mIsCoverOpen  is false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 1948
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x833

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1949
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-virtual {v4, v5, v6}, Landroid/view/Window;->setLayout(II)V

    .line 1950
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/LayoutInflater;

    .line 1951
    .local v27, "lf":Landroid/view/LayoutInflater;
    const/16 v33, 0x0

    .line 1952
    .local v33, "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v4, :cond_2f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2f

    .line 1953
    const v4, 0x1090074

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v33

    .line 1954
    new-instance v4, Lcom/android/server/policy/GlobalActions$13;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/policy/GlobalActions$13;-><init>(Lcom/android/server/policy/GlobalActions;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2017
    :goto_e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->isMiniCoverClosed()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 2018
    new-instance v34, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    move-object/from16 v0, v34

    invoke-direct {v0, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2019
    .local v34, "vglp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v22

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_d

    .line 1965
    .end local v34    # "vglp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2f
    const v4, 0x1090075

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v33

    .line 1966
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-nez v4, :cond_32

    .line 1967
    const-string v4, "americano"

    sget-object v5, Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    const-string/jumbo v4, "mocha"

    sget-object v5, Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 1968
    :cond_30
    const v4, 0x1020383

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 1973
    .local v20, "crossBtn":Landroid/view/View;
    :goto_f
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    if-eqz v4, :cond_31

    .line 1974
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1975
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    const/16 v5, 0x5153

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 1979
    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1980
    new-instance v4, Lcom/android/server/policy/GlobalActions$14;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/policy/GlobalActions$14;-><init>(Lcom/android/server/policy/GlobalActions;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1995
    .end local v20    # "crossBtn":Landroid/view/View;
    :cond_32
    const v4, 0x102035d

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mViewCoverParentLayout:Landroid/widget/ImageView;

    .line 1996
    const v4, 0x10203bf

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    sput-object v4, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    .line 1997
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1998
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_33

    .line 1999
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 2001
    :cond_33
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    new-instance v5, Lcom/android/server/policy/GlobalActions$15;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/GlobalActions$15;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2009
    const v4, 0x1020016

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 2010
    .local v30, "titleView":Landroid/widget/TextView;
    const-string v4, "VZW"

    sget-object v5, Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 2011
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040105

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 1970
    .end local v30    # "titleView":Landroid/widget/TextView;
    :cond_34
    const v4, 0x1020062

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .restart local v20    # "crossBtn":Landroid/view/View;
    goto/16 :goto_f

    .line 2013
    .end local v20    # "crossBtn":Landroid/view/View;
    .restart local v30    # "titleView":Landroid/widget/TextView;
    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104011d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 2021
    .end local v30    # "titleView":Landroid/widget/TextView;
    :cond_36
    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setContentView(Landroid/view/View;)V

    goto/16 :goto_d

    .line 2025
    .end local v27    # "lf":Landroid/view/LayoutInflater;
    .end local v33    # "v":Landroid/view/View;
    :cond_37
    const v4, 0x104011d

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setTitle(I)V

    goto/16 :goto_d

    .line 1930
    :array_0
    .array-data 4
        0x0
        0x80
    .end array-data

    .line 1940
    :array_1
    .array-data 4
        0x0
        0x80
    .end array-data
.end method

.method private createLandscapeGlobalActionsDialog()V
    .locals 2

    .prologue
    .line 2354
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 2355
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    .line 2362
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v1, 0x10203a9

    invoke-virtual {v0, v1}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 2364
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/server/policy/GlobalActions$22;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$22;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2408
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/android/server/policy/GlobalActions$23;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$23;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2416
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->initLandscapeAddView()V

    .line 2417
    return-void

    .line 2358
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    goto :goto_0
.end method

.method private createPortraitGlobalActionsDialog()V
    .locals 2

    .prologue
    const v1, 0x10203a7

    .line 2087
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-nez v0, :cond_0

    .line 2088
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    invoke-virtual {v0, v1}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    .line 2092
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/server/policy/GlobalActions$18;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$18;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2135
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    new-instance v1, Lcom/android/server/policy/GlobalActions$19;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$19;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2143
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->initPortraitAddView()V

    .line 2144
    return-void

    .line 2090
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    invoke-virtual {v0, v1}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    goto :goto_0
.end method

.method private doAnimation(Landroid/view/View;FFFIZ)V
    .locals 32
    .param p1, "v"    # Landroid/view/View;
    .param p2, "transX"    # F
    .param p3, "transY"    # F
    .param p4, "scaleXY"    # F
    .param p5, "duration"    # I
    .param p6, "isConfirm"    # Z

    .prologue
    .line 2428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-object/from16 v25, v0

    if-nez v25, :cond_0

    .line 2569
    :goto_0
    return-void

    .line 2429
    :cond_0
    const v25, 0x1020006

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 2430
    .local v11, "imageView":Landroid/widget/ImageView;
    const v25, 0x102000b

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 2431
    .local v15, "messageView":Landroid/widget/TextView;
    const v25, 0x10203b7

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 2432
    .local v21, "statusView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const v26, 0x10203ac

    invoke-virtual/range {v25 .. v26}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 2433
    .local v7, "descriptionView":Landroid/widget/TextView;
    const v25, 0x10203b9

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .line 2435
    .local v10, "imageFrameLayout":Landroid/widget/FrameLayout;
    const/4 v8, 0x0

    .line 2436
    .local v8, "desriptionAlpha":Landroid/animation/ObjectAnimator;
    const/4 v6, 0x0

    .line 2437
    .local v6, "bottomAlpha":Landroid/animation/ObjectAnimator;
    const/4 v9, 0x0

    .line 2439
    .local v9, "forceRestartAlpha":Landroid/animation/ObjectAnimator;
    if-eqz p6, :cond_7

    .line 2440
    invoke-virtual {v11}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    .line 2441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x10409d8

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2446
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const-string v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v29

    aput v29, v27, v28

    const/16 v28, 0x1

    const/high16 v29, 0x3f800000    # 1.0f

    aput v29, v27, v28

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 2447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const-string v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v29

    aput v29, v27, v28

    const/16 v28, 0x1

    const/16 v29, 0x0

    aput v29, v27, v28

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 2448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2

    .line 2449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const-string v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v29

    aput v29, v27, v28

    const/16 v28, 0x1

    const/16 v29, 0x0

    aput v29, v27, v28

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 2451
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setFocusable(Z)V

    .line 2452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setClickable(Z)V

    .line 2463
    :goto_2
    const-wide/16 v26, 0x190

    move-wide/from16 v0, v26

    invoke-virtual {v8, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v24

    .line 2466
    .local v24, "wlp":Landroid/view/WindowManager$LayoutParams;
    const/4 v14, 0x0

    .line 2467
    .local v14, "ll":Landroid/widget/LinearLayout;
    sget-boolean v25, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v25, :cond_9

    sget-boolean v25, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-nez v25, :cond_9

    .line 2468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    move-object/from16 v25, v0

    const v26, 0x10203a6

    invoke-virtual/range {v25 .. v26}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .end local v14    # "ll":Landroid/widget/LinearLayout;
    check-cast v14, Landroid/widget/LinearLayout;

    .line 2474
    .restart local v14    # "ll":Landroid/widget/LinearLayout;
    :goto_3
    const/16 v22, 0x0

    .line 2475
    .local v22, "translateX":Landroid/animation/ObjectAnimator;
    const/16 v23, 0x0

    .line 2476
    .local v23, "translateY":Landroid/animation/ObjectAnimator;
    const/16 v16, 0x0

    .line 2478
    .local v16, "messageViewtranslateY":Landroid/animation/ObjectAnimator;
    if-eqz p6, :cond_a

    .line 2479
    const-string/jumbo v25, "translationX"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput p2, v26, v27

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v22

    .line 2480
    const-string/jumbo v25, "translationY"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput p3, v26, v27

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v23

    .line 2481
    const-string/jumbo v25, "translationY"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-wide v28, 0x3fd999999999999aL    # 0.4

    invoke-virtual {v15}, Landroid/widget/TextView;->getHeight()I

    move-result v30

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingTop:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    aput v28, v26, v27

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v15, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 2489
    :goto_4
    const-string/jumbo v25, "scaleX"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput p4, v26, v27

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    .line 2490
    .local v17, "scaleX":Landroid/animation/ObjectAnimator;
    const-string/jumbo v25, "scaleY"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput p4, v26, v27

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v10, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v19

    .line 2492
    .local v19, "scaleY":Landroid/animation/ObjectAnimator;
    const/16 v18, 0x0

    .line 2493
    .local v18, "scaleXMessageView":Landroid/animation/ObjectAnimator;
    const/16 v20, 0x0

    .line 2495
    .local v20, "scaleYMessageView":Landroid/animation/ObjectAnimator;
    const v25, 0x10203ba

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 2496
    .local v12, "imageViewConfirm":Landroid/widget/ImageView;
    const/high16 v25, 0x3f800000    # 1.0f

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2497
    const/4 v13, 0x0

    .line 2498
    .local v13, "imageViewhide":Landroid/animation/ObjectAnimator;
    if-eqz p6, :cond_b

    .line 2499
    const-string v25, "alpha"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    fill-array-data v26, :array_0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v12, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 2500
    const-string/jumbo v25, "scaleX"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const v28, 0x3f6b851f    # 0.92f

    aput v28, v26, v27

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v15, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .line 2501
    const-string/jumbo v25, "scaleY"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const v28, 0x3f99999a    # 1.2f

    aput v28, v26, v27

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v15, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    .line 2507
    :goto_5
    const-wide/16 v26, 0xc8

    move-wide/from16 v0, v26

    invoke-virtual {v13, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2510
    const/4 v5, 0x0

    .line 2511
    .local v5, "backgroundalpha":Landroid/animation/ObjectAnimator;
    if-eqz p6, :cond_d

    .line 2512
    const v25, 0x1060148

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 2513
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    move/from16 v25, v0

    if-eqz v25, :cond_c

    .line 2514
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    const-string v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    fill-array-data v27, :array_1

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 2526
    :goto_6
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2527
    .local v4, "Aniset":Landroid/animation/AnimatorSet;
    new-instance v25, Lcom/android/server/policy/GlobalActions$24;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/android/server/policy/GlobalActions$24;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/widget/FrameLayout;)V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2554
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2557
    move/from16 v0, p2

    float-to-int v0, v0

    move/from16 v25, v0

    const/16 v26, -0x3e8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_3

    .line 2558
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v22, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2560
    :cond_3
    move/from16 v0, p3

    float-to-int v0, v0

    move/from16 v25, v0

    const/16 v26, -0x3e8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_4

    .line 2561
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v23, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2563
    :cond_4
    if-eqz v9, :cond_5

    .line 2564
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v9, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2566
    :cond_5
    move/from16 v0, p5

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2567
    new-instance v25, Landroid/view/animation/PathInterpolator;

    const v26, 0x3e2e147b    # 0.17f

    const v27, 0x3e2e147b    # 0.17f

    const v28, 0x3e4ccccd    # 0.2f

    const/high16 v29, 0x3f800000    # 1.0f

    invoke-direct/range {v25 .. v29}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2568
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 2442
    .end local v4    # "Aniset":Landroid/animation/AnimatorSet;
    .end local v5    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    .end local v12    # "imageViewConfirm":Landroid/widget/ImageView;
    .end local v13    # "imageViewhide":Landroid/animation/ObjectAnimator;
    .end local v14    # "ll":Landroid/widget/LinearLayout;
    .end local v16    # "messageViewtranslateY":Landroid/animation/ObjectAnimator;
    .end local v17    # "scaleX":Landroid/animation/ObjectAnimator;
    .end local v18    # "scaleXMessageView":Landroid/animation/ObjectAnimator;
    .end local v19    # "scaleY":Landroid/animation/ObjectAnimator;
    .end local v20    # "scaleYMessageView":Landroid/animation/ObjectAnimator;
    .end local v22    # "translateX":Landroid/animation/ObjectAnimator;
    .end local v23    # "translateY":Landroid/animation/ObjectAnimator;
    .end local v24    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_6
    invoke-virtual {v11}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 2443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x10409d9

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2454
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const-string v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v29

    aput v29, v27, v28

    const/16 v28, 0x1

    const/16 v29, 0x0

    aput v29, v27, v28

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 2455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const-string v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v29

    aput v29, v27, v28

    const/16 v28, 0x1

    const/high16 v29, 0x3f800000    # 1.0f

    aput v29, v27, v28

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 2456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8

    .line 2457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const-string v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v29

    aput v29, v27, v28

    const/16 v28, 0x1

    const/high16 v29, 0x3f800000    # 1.0f

    aput v29, v27, v28

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 2459
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setFocusable(Z)V

    .line 2460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setClickable(Z)V

    goto/16 :goto_2

    .line 2470
    .restart local v14    # "ll":Landroid/widget/LinearLayout;
    .restart local v24    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    move-object/from16 v25, v0

    const v26, 0x10203a6

    invoke-virtual/range {v25 .. v26}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .end local v14    # "ll":Landroid/widget/LinearLayout;
    check-cast v14, Landroid/widget/LinearLayout;

    .restart local v14    # "ll":Landroid/widget/LinearLayout;
    goto/16 :goto_3

    .line 2483
    .restart local v16    # "messageViewtranslateY":Landroid/animation/ObjectAnimator;
    .restart local v22    # "translateX":Landroid/animation/ObjectAnimator;
    .restart local v23    # "translateY":Landroid/animation/ObjectAnimator;
    :cond_a
    const-string/jumbo v25, "x"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput p2, v26, v27

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v22

    .line 2484
    const-string/jumbo v25, "y"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput p3, v26, v27

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v23

    .line 2485
    const-string/jumbo v25, "translationY"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput v28, v26, v27

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v15, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    goto/16 :goto_4

    .line 2503
    .restart local v12    # "imageViewConfirm":Landroid/widget/ImageView;
    .restart local v13    # "imageViewhide":Landroid/animation/ObjectAnimator;
    .restart local v17    # "scaleX":Landroid/animation/ObjectAnimator;
    .restart local v18    # "scaleXMessageView":Landroid/animation/ObjectAnimator;
    .restart local v19    # "scaleY":Landroid/animation/ObjectAnimator;
    .restart local v20    # "scaleYMessageView":Landroid/animation/ObjectAnimator;
    :cond_b
    const-string v25, "alpha"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    fill-array-data v26, :array_2

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v12, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 2504
    const-string/jumbo v25, "scaleX"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/high16 v28, 0x3f800000    # 1.0f

    aput v28, v26, v27

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v15, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .line 2505
    const-string/jumbo v25, "scaleY"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/high16 v28, 0x3f800000    # 1.0f

    aput v28, v26, v27

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v15, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    goto/16 :goto_5

    .line 2516
    .restart local v5    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    :cond_c
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    const-string v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    fill-array-data v27, :array_3

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    goto/16 :goto_6

    .line 2519
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    move/from16 v25, v0

    if-eqz v25, :cond_e

    .line 2520
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    const-string v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    fill-array-data v27, :array_4

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    goto/16 :goto_6

    .line 2522
    :cond_e
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    const-string v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    fill-array-data v27, :array_5

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    goto/16 :goto_6

    .line 2499
    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    .line 2514
    :array_1
    .array-data 4
        0x80
        0xbf
    .end array-data

    .line 2503
    :array_2
    .array-data 4
        0xff
        0x0
    .end array-data

    .line 2516
    :array_3
    .array-data 4
        0x0
        0x73
    .end array-data

    .line 2520
    :array_4
    .array-data 4
        0xbf
        0x80
    .end array-data

    .line 2522
    :array_5
    .array-data 4
        0x73
        0x0
    .end array-data
.end method

.method private getAssistAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 3023
    new-instance v0, Lcom/android/server/policy/GlobalActions$28;

    const v1, 0x1080391

    const v2, 0x104012d

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$28;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getBugReportAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 2922
    new-instance v0, Lcom/android/server/policy/GlobalActions$26;

    const v1, 0x1080405

    const v2, 0x1040122

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$26;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getCurrentNW()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5185
    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCurrentNW()] :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "CURRENT_NETWORK"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5186
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "CURRENT_NETWORK"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 2

    .prologue
    .line 3109
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3111
    :goto_0
    return-object v1

    .line 3110
    :catch_0
    move-exception v0

    .line 3111
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getLockdownAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 3077
    new-instance v0, Lcom/android/server/policy/GlobalActions$30;

    const v1, 0x108002f

    const v2, 0x104012f

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$30;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getPhoneId(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 5347
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 5350
    .local v0, "phoneId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5351
    const/4 v0, 0x0

    .line 5353
    .end local v0    # "phoneId":I
    :cond_0
    return v0
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "slotId"    # I

    .prologue
    .line 5360
    new-instance v0, Lcom/android/server/policy/GlobalActions$44;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/GlobalActions$44;-><init>(Lcom/android/server/policy/GlobalActions;I)V

    .line 5409
    .local v0, "mListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private getSCoverState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 844
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_1

    .line 845
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getSviewCoverAppLevel()V

    .line 846
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v1, :cond_0

    .line 847
    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCoverManager.getCoverState() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    .line 855
    :goto_0
    return v0

    .line 850
    :cond_0
    const-string v1, "GlobalActions"

    const-string/jumbo v2, "state is null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 854
    :cond_1
    const-string v1, "GlobalActions"

    const-string/jumbo v2, "mCoverManager is null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSettingsAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 2991
    new-instance v0, Lcom/android/server/policy/GlobalActions$27;

    const v1, 0x10804cc

    const v2, 0x104012c

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$27;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getSviewCoverAppLevel()V
    .locals 4

    .prologue
    .line 859
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 860
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 861
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "this Cover app level is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/policy/GlobalActions;->mSViewCoverAppLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const-string v1, "com.sec.feature.cover.sviewcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/policy/GlobalActions;->mSViewCoverAppLevel:I

    .line 864
    :cond_0
    return-void
.end method

.method private getVoiceAssistAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 3050
    new-instance v0, Lcom/android/server/policy/GlobalActions$29;

    const v1, 0x10804e2

    const v2, 0x104012e

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$29;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private handleShow()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 672
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->awakenIfNecessary()V

    .line 674
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getSCoverState()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isMobileKeyboard()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v4

    :goto_0
    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    .line 675
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isClearCover()Z

    move-result v2

    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    .line 676
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v2, :cond_4

    .line 678
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getModel()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    .line 679
    const-string v2, "GlobalActions"

    const-string v3, "Device is not supported in Global Actions in main view, show panel in cocktail bar"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->notifyCocktailBarGlobalActions()V

    .line 814
    :goto_1
    return-void

    :cond_1
    move v2, v3

    .line 674
    goto :goto_0

    .line 687
    :cond_2
    const-string v2, "americano"

    sget-object v5, Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "double"

    sget-object v5, Lcom/android/server/policy/GlobalActions;->mScafeShot:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 688
    :cond_3
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-nez v2, :cond_4

    .line 689
    sget v2, Lcom/android/server/policy/GlobalActions;->mSViewCoverAppLevel:I

    if-ge v2, v8, :cond_4

    .line 691
    const-string v2, "GlobalActions"

    const-string/jumbo v3, "handleShow() : Device is in SView Cover mode hence GlobalAction dialog will not display "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 701
    :cond_4
    const-string v2, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v5, "getPowerMenuLockedState"

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    invoke-direct {p0, v2, v5, v6}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "false"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    if-eqz v2, :cond_5

    .line 703
    const-string v2, "GlobalActions"

    const-string v3, "Knox Customization: GlobalActions dialog will not display when keyguard is showing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 709
    :cond_5
    const-string v2, "GlobalActions"

    const-string/jumbo v5, "handleShow() : Call createDialog()"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    .line 711
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->prepareDialog()V

    .line 714
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v2

    if-ne v2, v4, :cond_6

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    instance-of v2, v2, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    instance-of v2, v2, Lcom/android/server/policy/GlobalActions$LongPressAction;

    if-nez v2, :cond_6

    .line 717
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->onPress()V

    goto :goto_1

    .line 720
    :cond_6
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v2, :cond_d

    .line 721
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 726
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x104011d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 728
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 729
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10501da

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/server/policy/GlobalActions;->mSViewCoverWidth:I

    .line 730
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10501db

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/server/policy/GlobalActions;->mSViewCoverHeight:I

    .line 731
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10501d8

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/server/policy/GlobalActions;->mClearCoverWidth:I

    .line 732
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x1050017

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/server/policy/GlobalActions;->mStatusHeight:I

    .line 734
    const-string v2, "GlobalActions"

    const-string/jumbo v5, "handleShow() : call mDialog.show()"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->show()V

    .line 736
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/high16 v5, 0x10000

    invoke-virtual {v2, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 738
    sput-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z

    .line 739
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    const/4 v5, 0x6

    if-ne v2, v5, :cond_7

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    if-nez v2, :cond_7

    .line 741
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z

    .line 742
    const-string v2, "GlobalActions"

    const-string/jumbo v4, "handleShow(), mini dialog showed."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_7
    const-string v2, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleShow() : mIsCoverOpen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v2, :cond_8

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-nez v2, :cond_8

    .line 778
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/Window;->clearFlags(I)V

    .line 779
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    sget v4, Lcom/android/server/policy/GlobalActions;->mSViewCoverWidth:I

    sget v5, Lcom/android/server/policy/GlobalActions;->mSViewCoverHeight:I

    sget v6, Lcom/android/server/policy/GlobalActions;->mStatusHeight:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 780
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Landroid/view/Window;->setGravity(I)V

    .line 783
    :cond_8
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v2, :cond_9

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v2, :cond_9

    .line 784
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    sget v4, Lcom/android/server/policy/GlobalActions;->mClearCoverWidth:I

    const/4 v5, -0x2

    invoke-virtual {v2, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 787
    :cond_9
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v2, :cond_b

    .line 788
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 789
    .local v1, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v7, v7}, Landroid/view/Window;->setLayout(II)V

    .line 790
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 791
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x20000

    or-int/2addr v2, v4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 792
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x1000000

    or-int/2addr v2, v4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 793
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 794
    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    if-eqz v2, :cond_c

    .line 795
    const v2, 0x3ecccccd    # 0.4f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 796
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 800
    :goto_2
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v2, :cond_a

    .line 801
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 803
    :cond_a
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 804
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 807
    .end local v1    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_b
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->hideQuickpanelBackground()V

    goto/16 :goto_1

    .line 798
    .restart local v1    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_c
    const/high16 v2, 0x3f400000    # 0.75f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_2

    .line 810
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_d
    const-string v2, "GlobalActions"

    const-string v3, "Can not show dialog as it is not well formed properly"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private hideQuickpanelBackground()V
    .locals 1

    .prologue
    .line 5120
    const-string v0, "GlobalActions"

    invoke-direct {p0, v0}, Lcom/android/server/policy/GlobalActions;->hideQuickpanelBackground(Ljava/lang/String;)V

    .line 5121
    return-void
.end method

.method private hideQuickpanelBackground(Ljava/lang/String;)V
    .locals 4
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    .line 5124
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 5128
    :cond_0
    :goto_0
    return-void

    .line 5125
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5126
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5127
    sget-object v1, Lcom/android/server/policy/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initCoverManager(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 891
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 892
    const-string v0, "GlobalActions"

    const-string/jumbo v1, "initCoverManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    if-eqz v0, :cond_1

    .line 895
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 896
    const-string v0, "GlobalActions"

    const-string/jumbo v1, "mCoverManager.registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_1
    return-void
.end method

.method private initLandscapeAddView()V
    .locals 4

    .prologue
    .line 2420
    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mItemLandscapeDivider:I

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemDividerLand:I

    .line 2422
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2423
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2, v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/policy/GlobalActions;->makeActionsItem(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2422
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2425
    :cond_0
    return-void
.end method

.method private initPortraitAddView()V
    .locals 4

    .prologue
    .line 2338
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-nez v1, :cond_0

    .line 2339
    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerSViewCover:I

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    .line 2348
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2349
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2, v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/policy/GlobalActions;->makeActionsItem(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2348
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2341
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    .line 2342
    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDivider:I

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    goto :goto_0

    .line 2344
    :cond_1
    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerOverFour:I

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    goto :goto_0

    .line 2351
    .restart local v0    # "i":I
    :cond_2
    return-void
.end method

.method private initValueForCreate()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 503
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->displaywidth:I

    .line 504
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "shopdemo"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->isShopDemo:Z

    .line 506
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10501c6

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemWidth:I

    .line 508
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10501c7

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    .line 510
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10501c4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemHeight:I

    .line 512
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10501c5

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemHeightWithStatus:I

    .line 514
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10501ca

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidth:I

    .line 516
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10501cb

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidthLand:I

    .line 518
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10501d5

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingTop:I

    .line 520
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10501d6

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingBottom:I

    .line 522
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10501d0

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDivider:I

    .line 524
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10501d1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerOverFour:I

    .line 526
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10501d2

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemLandscapeDivider:I

    .line 528
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10501d3

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerSViewCover:I

    .line 531
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10501cc

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemWidth:I

    .line 533
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10501cd

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleCancelItemWidth:I

    .line 535
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10501ce

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewDoubleItemWidth:I

    .line 537
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10501cf

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemHeight:I

    .line 540
    const v1, 0x108099c

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    .line 541
    const v1, 0x108099d

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmPowerOffIconResId:I

    .line 542
    const v1, 0x108099e

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    .line 543
    const v1, 0x108099f

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmRestartIconResId:I

    .line 544
    const v1, 0x108099a

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyIconResId:I

    .line 545
    const v1, 0x1080999

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkIconResId:I

    .line 546
    const v1, 0x10809a3

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeIconResId:I

    .line 548
    const v1, 0x10409bc

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyStringId:I

    .line 549
    const v1, 0x1040129

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneStringId:I

    .line 550
    const v1, 0x10409d0

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkStringId:I

    .line 552
    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    .line 553
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 555
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 557
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.sec.feature.dual_lcd"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mIsDisableConfirm:Z

    .line 558
    return-void

    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    move v1, v3

    .line 504
    goto/16 :goto_0

    .restart local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    move v2, v3

    .line 557
    goto :goto_1
.end method

.method private isCHINA()Z
    .locals 3

    .prologue
    .line 5277
    const-string/jumbo v1, "ro.csc.sales_code"

    const-string v2, "NONE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 5280
    .local v0, "SALES_CODE":Ljava/lang/String;
    const-string v1, "CMCC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5282
    :cond_0
    const/4 v1, 0x1

    .line 5284
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isClearCover()Z
    .locals 2

    .prologue
    .line 5289
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 5290
    const/4 v0, 0x1

    .line 5292
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCurrentUserOwner()Z
    .locals 2

    .prologue
    .line 3116
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3117
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDataCapable(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 5318
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5319
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "ProviderURI"    # Ljava/lang/String;
    .param p2, "queryValue"    # Ljava/lang/String;
    .param p3, "Arg"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5215
    const-string v7, ""

    .line 5216
    .local v7, "result":Ljava/lang/String;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5217
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 5218
    .local v6, "cr":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 5219
    const/4 v0, 0x0

    aget-object v0, p3, v0

    const-string/jumbo v3, "temp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5220
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5227
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 5229
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5230
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 5232
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5235
    :cond_1
    return-object v7

    .line 5222
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    .line 5232
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isFMMlocked()Z
    .locals 1

    .prologue
    .line 5453
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled()Z

    move-result v0

    return v0
.end method

.method private isGlobalActionConfirming()Z
    .locals 2

    .prologue
    .line 4776
    sget-object v1, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 4777
    :try_start_0
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z

    monitor-exit v1

    return v0

    .line 4778
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isIntEDM(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "ProviderURI"    # Ljava/lang/String;
    .param p2, "queryValue"    # Ljava/lang/String;

    .prologue
    .line 5239
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5240
    const/4 v0, -0x1

    .line 5242
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private isMSim()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5449
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMiniCoverClosed()Z
    .locals 2

    .prologue
    .line 5297
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5299
    const/4 v0, 0x1

    .line 5301
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMobileKeyboard()Z
    .locals 2

    .prologue
    .line 5306
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 5307
    :cond_0
    const/4 v0, 0x1

    .line 5309
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSimCardInserted(I)Z
    .locals 8
    .param p1, "slotidx"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 5457
    const-string/jumbo v6, "ril.MSIMM"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5458
    .local v3, "simMode":Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5459
    if-nez p1, :cond_1

    .line 5486
    :cond_0
    :goto_0
    return v5

    :cond_1
    move v5, v4

    .line 5462
    goto :goto_0

    .line 5466
    :cond_2
    const-string/jumbo v6, "ril.ICC_TYPE"

    const-string v7, "0,0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5467
    .local v1, "iccTemp":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5468
    .local v0, "iccStatusSlot":[Ljava/lang/String;
    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 5474
    const/4 v2, 0x0

    .line 5475
    .local v2, "key":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 5483
    :goto_1
    if-eqz v2, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 5486
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    :goto_2
    move v5, v4

    goto :goto_0

    .line 5477
    :pswitch_0
    aget-object v2, v0, v5

    .line 5478
    goto :goto_1

    .line 5480
    :pswitch_1
    aget-object v2, v0, v4

    goto :goto_1

    :cond_3
    move v4, v5

    .line 5486
    goto :goto_2

    .line 5475
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isSimReady()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 4783
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 4790
    .local v0, "SimState":I
    const-string/jumbo v7, "ro.config.donot_nosim"

    invoke-static {v7, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 4798
    .local v4, "lSimValue":Z
    if-eqz v0, :cond_0

    if-ne v0, v6, :cond_1

    :cond_0
    move v3, v6

    .line 4802
    .local v3, "finalSimState":Z
    :goto_0
    if-nez v4, :cond_2

    if-eqz v3, :cond_2

    .line 4804
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4805
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const v7, 0x10409c7

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4806
    const v7, 0x10409c8

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 4807
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 4808
    const v7, 0x104000a

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4810
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 4814
    .local v1, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7de

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 4817
    new-instance v7, Lcom/android/server/policy/GlobalActions$43;

    invoke-direct {v7, p0}, Lcom/android/server/policy/GlobalActions$43;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4826
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 4827
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 4829
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    .line 4830
    sget-object v6, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v6

    .line 4831
    const/4 v7, 0x1

    :try_start_0
    sput-boolean v7, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z

    .line 4832
    monitor-exit v6

    .line 4835
    .end local v1    # "alert":Landroid/app/AlertDialog;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_1
    return v5

    .end local v3    # "finalSimState":Z
    :cond_1
    move v3, v5

    .line 4798
    goto :goto_0

    .line 4832
    .restart local v1    # "alert":Landroid/app/AlertDialog;
    .restart local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v3    # "finalSimState":Z
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .end local v1    # "alert":Landroid/app/AlertDialog;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2
    move v5, v6

    .line 4835
    goto :goto_1
.end method

.method private isSingleActionItem(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2718
    const v2, 0x1020006

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2719
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2721
    .local v1, "imageViewTag":I
    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-eq v1, v2, :cond_0

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    if-ne v1, v2, :cond_1

    .line 2722
    :cond_0
    const/4 v2, 0x1

    .line 2724
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isTSafeLock()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5323
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 5327
    :cond_0
    :goto_0
    return v2

    .line 5324
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions;->hasTSafeLock()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5326
    const-string/jumbo v0, "off_menu_setting"

    .line 5327
    .local v0, "OFF_MENU_SETTING":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "off_menu_setting"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private isUSA()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 5247
    const-string/jumbo v2, "ro.csc.sales_code"

    const-string v3, "NONE"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 5249
    .local v0, "SALES_CODE":Ljava/lang/String;
    const-string/jumbo v2, "usa"

    const-string/jumbo v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5258
    :cond_0
    :goto_0
    return v1

    .line 5251
    :cond_1
    const-string v2, "VZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ATT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "TMB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SPR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "VMU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MTR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "USC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "BST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "XAS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "LRA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SPT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CSP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "AIO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "TFN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CRI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5258
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isVoiceCapable()Z
    .locals 3

    .prologue
    .line 5313
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 5314
    .local v0, "mgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    return v1
.end method

.method private makeActionsItem(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;
    .locals 21
    .param p1, "item"    # Lcom/android/server/policy/GlobalActions$Action;
    .param p2, "i"    # I
    .param p3, "isPort"    # Z

    .prologue
    .line 2147
    move-object/from16 v8, p1

    .line 2148
    .local v8, "action":Lcom/android/server/policy/GlobalActions$Action;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v8, v4, v5, v7, v0}, Lcom/android/server/policy/GlobalActions$Action;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v9

    .line 2150
    .local v9, "view":Landroid/view/View;
    const v4, 0x1020006

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 2151
    .local v11, "imageView":Landroid/widget/ImageView;
    const v4, 0x10203ba

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 2153
    .local v12, "imageViewConfirm":Landroid/widget/ImageView;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2154
    invoke-virtual {v11}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-ne v4, v5, :cond_4

    .line 2155
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/GlobalActions;->mConfirmPowerOffIconResId:I

    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2156
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2157
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2164
    :cond_0
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2166
    if-eqz p3, :cond_5

    .line 2167
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidth:I

    const/4 v5, -0x2

    invoke-direct {v13, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2168
    .local v13, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v4}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v4

    add-int/lit8 v5, p2, 0x1

    sub-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 2169
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v13, v4, v5, v7, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2178
    :cond_1
    :goto_1
    invoke-virtual {v9, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2179
    invoke-virtual {v9}, Landroid/view/View;->bringToFront()V

    .line 2180
    const v4, 0x10203b9

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .line 2181
    .local v10, "imageFrameLayout":Landroid/widget/FrameLayout;
    move-object v6, v9

    .line 2182
    .local v6, "tempView":Landroid/view/View;
    if-eqz v10, :cond_3

    .line 2183
    if-eqz p3, :cond_2

    .line 2184
    const v4, 0x10203b7

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 2185
    .local v17, "statusView":Landroid/widget/TextView;
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-nez v4, :cond_2

    .line 2186
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 2187
    .local v14, "lparams":Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move/from16 v16, v0

    .line 2188
    .local v16, "marginTopPixelSize":I
    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/GlobalActions;->isDataToggleSupport:Z

    if-nez v4, :cond_2

    .line 2189
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 2194
    .end local v14    # "lparams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v16    # "marginTopPixelSize":I
    .end local v17    # "statusView":Landroid/widget/TextView;
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 2195
    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 2196
    new-instance v4, Lcom/android/server/policy/GlobalActions$20;

    move-object/from16 v5, p0

    move/from16 v7, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/policy/GlobalActions$20;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/view/View;ZLcom/android/server/policy/GlobalActions$Action;Landroid/view/View;)V

    invoke-virtual {v10, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2308
    new-instance v4, Lcom/android/server/policy/GlobalActions$21;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/policy/GlobalActions$21;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v10, v4}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2326
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string v5, "accessibility"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/accessibility/AccessibilityManager;

    .line 2327
    .local v15, "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2328
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v5, 0x108036b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 2332
    :goto_2
    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v18, 0x258

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v7, 0x3ebd70a4    # 0.37f

    const/16 v18, 0x0

    const v19, 0x3e99999a    # 0.3f

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v5, v7, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2334
    .end local v15    # "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_3
    return-object v9

    .line 2158
    .end local v6    # "tempView":Landroid/view/View;
    .end local v10    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v13    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    invoke-virtual {v11}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    if-ne v4, v5, :cond_0

    .line 2159
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/GlobalActions;->mConfirmRestartIconResId:I

    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2160
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2161
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_0

    .line 2172
    :cond_5
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    const/4 v5, -0x2

    invoke-direct {v13, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2173
    .restart local v13    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v4}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v4

    add-int/lit8 v5, p2, 0x1

    sub-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 2174
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/policy/GlobalActions;->mItemDividerLand:I

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v4, v5, v7, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    .line 2330
    .restart local v6    # "tempView":Landroid/view/View;
    .restart local v10    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .restart local v15    # "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v5, 0x108036c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2
.end method

.method private notifyCocktailBarGlobalActions()V
    .locals 4

    .prologue
    .line 905
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v1

    .line 906
    .local v1, "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    if-eqz v1, :cond_0

    .line 907
    const-string v2, "GlobalActions"

    const-string/jumbo v3, "notifyCocktailBarGlobalActions"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 910
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "show_global_actions"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 911
    invoke-virtual {v1, v0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sendExtraDataToCocktailBar(Landroid/os/Bundle;)V

    .line 913
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private onAirplaneModeChanged()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4713
    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    if-eqz v2, :cond_1

    .line 4724
    :cond_0
    :goto_0
    return-void

    .line 4715
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 4719
    .local v0, "airplaneModeOn":Z
    :goto_1
    if-eqz v0, :cond_3

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_2
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 4720
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 4721
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v1, :cond_0

    .line 4722
    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneStringId:I

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    goto :goto_0

    .end local v0    # "airplaneModeOn":Z
    :cond_2
    move v0, v1

    .line 4715
    goto :goto_1

    .line 4719
    .restart local v0    # "airplaneModeOn":Z
    :cond_3
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_2
.end method

.method private onClickForHideLandscapeConfirmDialog(Z)V
    .locals 12
    .param p1, "isOnClick"    # Z

    .prologue
    const/4 v11, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 2613
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemLandscapeDivider:I

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->mItemDividerLand:I

    .line 2615
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const-string v2, "HideConfirmLandscape"

    invoke-virtual {v0, v2}, Landroid/app/GlobalActionsFrameLayout;->checkOrientation(Ljava/lang/String;)V

    .line 2617
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 2618
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2619
    .local v1, "view":Landroid/view/View;
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2620
    const v0, 0x10203b9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 2621
    .local v8, "imageFrameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 2622
    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 2623
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2624
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2625
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2617
    .end local v8    # "imageFrameLayout":Landroid/widget/FrameLayout;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2630
    :cond_0
    const v0, 0x10203b7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 2631
    .local v10, "statusView":Landroid/widget/TextView;
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2632
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2635
    :cond_1
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    const/4 v2, -0x2

    invoke-direct {v9, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2636
    .local v9, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v0

    add-int/lit8 v2, v7, 0x1

    sub-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 2637
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemDividerLand:I

    invoke-virtual {v9, v6, v6, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2639
    :cond_2
    invoke-virtual {v1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2640
    iget v2, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    iget v3, p0, Lcom/android/server/policy/GlobalActions;->current_y_land:F

    const/16 v5, 0x12c

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_1

    .line 2644
    .end local v1    # "view":Landroid/view/View;
    .end local v9    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "statusView":Landroid/widget/TextView;
    :cond_3
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    if-nez v0, :cond_4

    .line 2645
    sput-boolean v6, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    .line 2647
    :cond_4
    return-void
.end method

.method private onClickForHidePortraitConfirmDialog(Z)V
    .locals 12
    .param p1, "isOnClick"    # Z

    .prologue
    const/4 v11, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 2574
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v0, :cond_1

    .line 2575
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const-string v2, "HideConfirmPortrait"

    invoke-virtual {v0, v2}, Landroid/app/GlobalActionsFrameLayout;->checkOrientation(Ljava/lang/String;)V

    .line 2578
    :cond_1
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 2579
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2580
    .local v1, "view":Landroid/view/View;
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2581
    const v0, 0x10203b9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 2582
    .local v8, "imageFrameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 2583
    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 2584
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2585
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2586
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2578
    .end local v8    # "imageFrameLayout":Landroid/widget/FrameLayout;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2591
    :cond_2
    const v0, 0x10203b7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 2592
    .local v10, "statusView":Landroid/widget/TextView;
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2593
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2596
    :cond_3
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidth:I

    const/4 v2, -0x2

    invoke-direct {v9, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2597
    .local v9, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v0

    add-int/lit8 v2, v7, 0x1

    sub-int/2addr v0, v2

    if-eqz v0, :cond_4

    .line 2598
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    invoke-virtual {v9, v6, v6, v6, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2600
    :cond_4
    invoke-virtual {v1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2601
    const/high16 v2, -0x3b860000    # -1000.0f

    iget v3, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    const/16 v5, 0x12c

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_1

    .line 2605
    .end local v1    # "view":Landroid/view/View;
    .end local v9    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "statusView":Landroid/widget/TextView;
    :cond_5
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    if-nez v0, :cond_6

    .line 2606
    sput-boolean v6, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    .line 2608
    :cond_6
    return-void
.end method

.method private onClickForLandscapeConfirmDialog(Landroid/view/View;Z)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "isOnClick"    # Z

    .prologue
    const/4 v5, 0x0

    const v4, 0x3fa66666    # 1.3f

    const/4 v6, 0x1

    .line 2690
    sput-object p1, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    .line 2691
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 2692
    .local v11, "messageView":Landroid/widget/TextView;
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    const v1, 0x10203b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 2693
    .local v12, "statusView":Landroid/widget/TextView;
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    invoke-virtual {p0, v0}, Lcom/android/server/policy/GlobalActions;->item_yposition(I)I

    move-result v0

    int-to-float v7, v0

    .line 2694
    .local v7, "center_x":F
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v11}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v12}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/GlobalActions;->item_xposition(I)I

    move-result v0

    int-to-float v8, v0

    .line 2695
    .local v8, "center_y":F
    const/4 v0, 0x2

    new-array v10, v0, [I

    .line 2696
    .local v10, "location":[I
    invoke-virtual {p1, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2697
    aget v0, v10, v5

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    .line 2698
    aget v0, v10, v6

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->current_y_land:F

    .line 2700
    const-string/jumbo v0, "ksh current x ="

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2702
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 2703
    .local v9, "imageView":Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/GlobalActionsFrameLayout;->hideAllViewForLand(Landroid/view/View;)V

    .line 2704
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const-string v1, "ConfirmLandscape"

    invoke-virtual {v0, v1}, Landroid/app/GlobalActionsFrameLayout;->checkOrientation(Ljava/lang/String;)V

    .line 2706
    if-eqz p2, :cond_0

    .line 2707
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    sub-float v2, v7, v0

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_y_land:F

    sub-float v3, v8, v0

    const/16 v5, 0x12c

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    .line 2712
    :goto_0
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    .line 2714
    sput-boolean v6, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    .line 2715
    return-void

    .line 2709
    :cond_0
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    sub-float v2, v7, v0

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_y_land:F

    sub-float v3, v8, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_0
.end method

.method private onClickForPortraitConfirmDialog(Landroid/view/View;Z)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;
    .param p2, "isOnClick"    # Z

    .prologue
    .line 2650
    sput-object p1, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    .line 2651
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 2652
    .local v12, "messageView":Landroid/widget/TextView;
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    const v1, 0x10203b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 2653
    .local v13, "statusView":Landroid/widget/TextView;
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v12}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v13}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/GlobalActions;->item_yposition(I)I

    move-result v0

    int-to-float v7, v0

    .line 2654
    .local v7, "center_y":F
    const/4 v0, 0x2

    new-array v10, v0, [I

    .line 2655
    .local v10, "location":[I
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-nez v0, :cond_1

    .line 2656
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2660
    :goto_0
    const/4 v0, 0x1

    aget v0, v10, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    .line 2662
    const-string/jumbo v0, "ksh current y ="

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 2666
    .local v9, "imageView":Landroid/widget/ImageView;
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-nez v0, :cond_2

    .line 2667
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->hideAllView(Landroid/view/View;)V

    .line 2673
    :goto_1
    if-eqz p2, :cond_3

    .line 2674
    const/high16 v2, -0x3b860000    # -1000.0f

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    sub-float v3, v7, v0

    const v4, 0x3fa66666    # 1.3f

    const/16 v5, 0x12c

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    .line 2679
    :goto_2
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    .line 2681
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-nez v0, :cond_0

    .line 2682
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 2683
    .local v8, "fllp":Landroid/widget/FrameLayout$LayoutParams;
    iget v11, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2684
    .local v11, "marginTopPixelSize":I
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    int-to-float v1, v11

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    .line 2686
    .end local v8    # "fllp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "marginTopPixelSize":I
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    .line 2687
    return-void

    .line 2658
    .end local v9    # "imageView":Landroid/widget/ImageView;
    :cond_1
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationInWindow([I)V

    goto/16 :goto_0

    .line 2669
    .restart local v9    # "imageView":Landroid/widget/ImageView;
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/GlobalActionsFrameLayout;->hideAllView(Landroid/view/View;)V

    .line 2670
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const-string v1, "ConfirmPortrait"

    invoke-virtual {v0, v1}, Landroid/app/GlobalActionsFrameLayout;->checkOrientation(Ljava/lang/String;)V

    goto :goto_1

    .line 2676
    :cond_3
    const/high16 v2, -0x3b860000    # -1000.0f

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    sub-float v3, v7, v0

    const v4, 0x3fa66666    # 1.3f

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_2
.end method

.method private onToggleDatamode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3347
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v0, :cond_0

    .line 3348
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    .line 3349
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    .line 3351
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->onPressAction()V

    .line 3352
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_1

    .line 3353
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    if-nez v0, :cond_2

    .line 3354
    sget-object v1, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 3355
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z

    .line 3356
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3360
    :goto_0
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->clearSCoverRequestStatus()V

    .line 3361
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3363
    :cond_1
    return-void

    .line 3356
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3358
    :cond_2
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    goto :goto_0
.end method

.method private prepareDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3188
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    .line 3192
    .local v0, "dataModeOn":Z
    if-eqz v0, :cond_a

    .line 3193
    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 3198
    :goto_0
    const-string/jumbo v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ABSENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3199
    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 3202
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3203
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v2, :cond_1

    .line 3204
    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkStringId:I

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3221
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3222
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v2, :cond_2

    .line 3223
    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneStringId:I

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3228
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    if-eqz v2, :cond_3

    .line 3229
    const-string v2, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v3, "getSealedState"

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3230
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3239
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_2
    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 3240
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3243
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bikemode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "globalaction"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3245
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    if-eqz v2, :cond_4

    .line 3246
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "isBikeMode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 3247
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3248
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v2, :cond_4

    .line 3249
    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeStringId:I

    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3260
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 3261
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v2, :cond_5

    .line 3262
    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyStringId:I

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3269
    :cond_5
    const-string v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepareDialog : mIsCoverOpen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3270
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v2, :cond_6

    .line 3271
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-eqz v2, :cond_e

    .line 3275
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7de

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 3289
    :cond_6
    :goto_4
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v2, :cond_7

    .line 3290
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3294
    :cond_7
    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    if-eqz v2, :cond_8

    .line 3295
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3296
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3300
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_8
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 3301
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3302
    const-string v2, "android.intent.action.SUBSCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3303
    const-string v2, "android.intent.action.SUBSCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3304
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3305
    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3307
    const-string v2, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3308
    const-string v2, "com.samsung.settings.action.talkback_toggled"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3309
    const-string v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3311
    const-string v2, "CTC"

    sget-object v3, Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isMultiSIMDevice()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3312
    const-string v2, "ACTION_DUALMODE_SETTING"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3314
    :cond_9
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3315
    return-void

    .line 3195
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_a
    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto/16 :goto_0

    .line 3232
    :cond_b
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    goto/16 :goto_1

    .line 3239
    :cond_c
    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto/16 :goto_2

    .line 3252
    :cond_d
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3253
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v2, :cond_4

    .line 3254
    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeStringId:I

    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    goto/16 :goto_3

    .line 3278
    :cond_e
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x833

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 3280
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_f

    .line 3281
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 3282
    :cond_f
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-nez v2, :cond_6

    .line 3283
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x1060146

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto/16 :goto_4
.end method

.method private registerPhoneStateListener(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5413
    const-string/jumbo v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 5414
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    .line 5415
    const-string v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerPhoneStateListener: sim# "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5416
    iget v3, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    new-array v3, v3, [Landroid/telephony/PhoneStateListener;

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 5417
    iget v3, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimServiceState:[I

    .line 5418
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    if-ge v0, v3, :cond_3

    .line 5419
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 5421
    .local v2, "subIdtemp":[I
    const-string v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerPhoneStateListener subId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5422
    if-eqz v2, :cond_0

    .line 5423
    aget v1, v2, v6

    .line 5424
    .local v1, "subId":I
    if-lez v1, :cond_1

    .line 5425
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, Lcom/android/server/policy/GlobalActions;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    aput-object v4, v3, v0

    .line 5426
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 5435
    :goto_1
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimServiceState:[I

    aput v6, v3, v0

    .line 5418
    .end local v1    # "subId":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5428
    .restart local v1    # "subId":I
    :cond_1
    invoke-direct {p0, v6}, Lcom/android/server/policy/GlobalActions;->isSimCardInserted(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v7}, Lcom/android/server/policy/GlobalActions;->isSimCardInserted(I)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    .line 5429
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, Lcom/android/server/policy/GlobalActions;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    aput-object v4, v3, v0

    .line 5430
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_1

    .line 5432
    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    goto :goto_1

    .line 5438
    .end local v1    # "subId":I
    .end local v2    # "subIdtemp":[I
    :cond_3
    return-void
.end method

.method private restoreQuickpanelBackground()V
    .locals 1

    .prologue
    .line 5142
    const-string v0, "GlobalActions"

    invoke-direct {p0, v0}, Lcom/android/server/policy/GlobalActions;->restoreQuickpanelBackground(Ljava/lang/String;)V

    .line 5143
    return-void
.end method

.method private restoreQuickpanelBackground(Ljava/lang/String;)V
    .locals 3
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5146
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 5153
    :cond_0
    :goto_0
    return-void

    .line 5147
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5148
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5149
    const-string/jumbo v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5150
    const-string/jumbo v1, "miniModeUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5151
    const-string/jumbo v1, "sender"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5152
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private unregisterPhoneStateListener()V
    .locals 4

    .prologue
    .line 5441
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    .line 5442
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 5443
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 5441
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5446
    :cond_1
    return-void
.end method

.method private updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V
    .locals 13
    .param p1, "whichItem"    # I
    .param p2, "state"    # Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .prologue
    .line 5680
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 5681
    .local v9, "whichItemString":Ljava/lang/String;
    sget-object v10, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-eq p2, v10, :cond_0

    sget-object v10, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-ne p2, v10, :cond_3

    :cond_0
    const/4 v6, 0x1

    .line 5683
    .local v6, "on":Z
    :goto_0
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 5684
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 5689
    .local v0, "actionsLayout":Landroid/view/ViewGroup;
    :goto_1
    if-eqz v0, :cond_c

    .line 5690
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5691
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_c

    .line 5692
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 5694
    .local v8, "view":Landroid/view/View;
    const v10, 0x1020006

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 5695
    .local v4, "imageView":Landroid/widget/ImageView;
    const v10, 0x102000b

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 5696
    .local v5, "messageView":Landroid/widget/TextView;
    const v10, 0x10203b7

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 5697
    .local v7, "statusView":Landroid/widget/TextView;
    const v10, 0x10203b9

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 5700
    .local v3, "imageFrameLayout":Landroid/widget/FrameLayout;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 5702
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 5703
    if-eqz v7, :cond_2

    .line 5704
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyStringId:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 5705
    if-eqz v6, :cond_5

    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_3
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    .line 5716
    :cond_1
    :goto_4
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5717
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10409da

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5691
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 5681
    .end local v0    # "actionsLayout":Landroid/view/ViewGroup;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "messageView":Landroid/widget/TextView;
    .end local v6    # "on":Z
    .end local v7    # "statusView":Landroid/widget/TextView;
    .end local v8    # "view":Landroid/view/View;
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 5686
    .restart local v6    # "on":Z
    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    .restart local v0    # "actionsLayout":Landroid/view/ViewGroup;
    goto/16 :goto_1

    .line 5705
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    .restart local v3    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .restart local v4    # "imageView":Landroid/widget/ImageView;
    .restart local v5    # "messageView":Landroid/widget/TextView;
    .restart local v7    # "statusView":Landroid/widget/TextView;
    .restart local v8    # "view":Landroid/view/View;
    :cond_5
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_3

    .line 5706
    :cond_6
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneStringId:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 5707
    if-eqz v6, :cond_7

    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_5
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_7
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_5

    .line 5708
    :cond_8
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkStringId:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 5709
    if-eqz v6, :cond_9

    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_6
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    :cond_9
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_6

    .line 5710
    :cond_a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "bikemode"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "globalaction"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeStringId:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    if-eqz v10, :cond_1

    .line 5714
    if-eqz v6, :cond_b

    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_7
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    :cond_b
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_7

    .line 5729
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "messageView":Landroid/widget/TextView;
    .end local v7    # "statusView":Landroid/widget/TextView;
    .end local v8    # "view":Landroid/view/View;
    :cond_c
    return-void
.end method

.method private virtualDismissInSCover()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5155
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 5172
    :cond_0
    :goto_0
    return-void

    .line 5156
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5157
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5158
    const-string/jumbo v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5159
    const-string/jumbo v1, "miniModeUI"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5160
    const-string/jumbo v1, "sender"

    const-string v2, "GlobalActions"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5161
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5162
    const-string/jumbo v1, "sender"

    const-string v2, "GlobalActions"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5164
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5165
    const-string/jumbo v1, "sender"

    const-string v2, "GlobalActions$ConfirmDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5167
    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

    invoke-virtual {v1}, Landroid/app/GlobalActionsSViewCoverDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5168
    const-string/jumbo v1, "sender"

    const-string v2, "GlobalActions$ConfirmDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5170
    :cond_4
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5171
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private virtualDismissInSCover(Ljava/lang/String;)V
    .locals 5
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 5174
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 5182
    :cond_0
    :goto_0
    return-void

    .line 5175
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5176
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5177
    const-string/jumbo v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5178
    const-string/jumbo v1, "miniModeUI"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5179
    const-string/jumbo v1, "sender"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5180
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5181
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method adjustBottomView()V
    .locals 11

    .prologue
    const v10, 0x10203b3

    const v9, 0x10203b2

    const v8, 0x10203b0

    const/16 v7, 0x8

    .line 5536
    const/4 v4, 0x0

    .line 5537
    .local v4, "showfl":Landroid/widget/FrameLayout;
    const/4 v2, 0x0

    .line 5538
    .local v2, "hidefl":Landroid/widget/FrameLayout;
    const/4 v1, 0x0

    .line 5539
    .local v1, "dividerfl":Landroid/widget/FrameLayout;
    const/4 v0, 0x0

    .line 5540
    .local v0, "dividerSViewfl":Landroid/widget/FrameLayout;
    const/4 v3, 0x0

    .line 5541
    .local v3, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    if-eqz v5, :cond_1

    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mIsCancelEnable:Z

    if-nez v5, :cond_1

    .line 5542
    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v5, :cond_2

    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v5, :cond_2

    .line 5543
    :cond_0
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemWidth:I

    iget v6, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemHeight:I

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5544
    .restart local v3    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    invoke-virtual {v5, v9}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "dividerfl":Landroid/widget/FrameLayout;
    check-cast v1, Landroid/widget/FrameLayout;

    .line 5545
    .restart local v1    # "dividerfl":Landroid/widget/FrameLayout;
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    invoke-virtual {v5, v8}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "hidefl":Landroid/widget/FrameLayout;
    check-cast v2, Landroid/widget/FrameLayout;

    .line 5546
    .restart local v2    # "hidefl":Landroid/widget/FrameLayout;
    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5547
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    invoke-virtual {v5, v10}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "showfl":Landroid/widget/FrameLayout;
    check-cast v4, Landroid/widget/FrameLayout;

    .line 5548
    .restart local v4    # "showfl":Landroid/widget/FrameLayout;
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5549
    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5598
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/android/server/policy/GlobalActions$45;

    invoke-direct {v6, p0}, Lcom/android/server/policy/GlobalActions$45;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5613
    return-void

    .line 5551
    :cond_2
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleCancelItemWidth:I

    iget v6, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemHeight:I

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5552
    .restart local v3    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    invoke-virtual {v5, v9}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "dividerSViewfl":Landroid/widget/FrameLayout;
    check-cast v0, Landroid/widget/FrameLayout;

    .line 5553
    .restart local v0    # "dividerSViewfl":Landroid/widget/FrameLayout;
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    invoke-virtual {v5, v8}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "hidefl":Landroid/widget/FrameLayout;
    check-cast v2, Landroid/widget/FrameLayout;

    .line 5554
    .restart local v2    # "hidefl":Landroid/widget/FrameLayout;
    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5555
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    invoke-virtual {v5, v10}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "showfl":Landroid/widget/FrameLayout;
    check-cast v4, Landroid/widget/FrameLayout;

    .line 5556
    .restart local v4    # "showfl":Landroid/widget/FrameLayout;
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5557
    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public airplaneModeClickAction(Z)V
    .locals 5
    .param p1, "isShowingConfirmMessage"    # Z

    .prologue
    const/4 v4, 0x0

    .line 3519
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->onPressAction()V

    .line 3520
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_0

    .line 3521
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    if-nez v0, :cond_4

    .line 3522
    sget-object v1, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 3523
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z

    .line 3524
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3528
    :goto_0
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->clearSCoverRequestStatus()V

    .line 3529
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3532
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    if-eqz v0, :cond_1

    .line 3533
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-eqz v0, :cond_5

    .line 3534
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3536
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v4}, Landroid/hardware/usb/UsbManager;->setUsb30Mode(Z)V

    .line 3537
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on_reason_usb3"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3538
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    .line 3539
    const-string v0, "GlobalActions"

    const-string v1, "USB 3.0 is disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3547
    :cond_1
    :goto_1
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    if-eqz v0, :cond_3

    .line 3548
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3549
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tw_globalactions_dont_show_again"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3552
    :cond_3
    return-void

    .line 3524
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3526
    :cond_4
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    goto :goto_0

    .line 3542
    :cond_5
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    .line 3543
    const-string v0, "GlobalActions"

    const-string v1, "USB manager is not created hence USB 3.0 connection can not be terminated."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public bottomViewOnTouch(IZZ)Z
    .locals 3
    .param p1, "action"    # I
    .param p2, "isPortrait"    # Z
    .param p3, "isConfirm"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5624
    if-nez p1, :cond_3

    .line 5625
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    if-eqz v2, :cond_0

    if-nez p3, :cond_0

    .line 5655
    :goto_0
    return v0

    .line 5628
    :cond_0
    if-eqz p3, :cond_2

    .line 5629
    if-eqz p2, :cond_1

    .line 5630
    invoke-direct {p0, v0}, Lcom/android/server/policy/GlobalActions;->onClickForHidePortraitConfirmDialog(Z)V

    goto :goto_0

    .line 5632
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/policy/GlobalActions;->onClickForHideLandscapeConfirmDialog(Z)V

    goto :goto_0

    .line 5635
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 5641
    :cond_3
    if-ne p1, v0, :cond_4

    .line 5642
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    if-eqz v0, :cond_4

    .line 5643
    if-eqz p3, :cond_6

    .line 5644
    if-eqz p2, :cond_5

    .line 5645
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    :cond_4
    :goto_1
    move v0, v1

    .line 5655
    goto :goto_0

    .line 5647
    :cond_5
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    goto :goto_1

    .line 5650
    :cond_6
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    .line 5651
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method calculateDescritionViewHeight(Landroid/view/View;I)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "diff"    # I

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 5512
    const v2, 0x10203b7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 5513
    .local v1, "statusView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 5514
    .local v0, "fllp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, -0x2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 5515
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 5516
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p0, v2}, Lcom/android/server/policy/GlobalActions;->item_yposition(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-double v4, v3

    mul-double/2addr v4, v6

    int-to-double v6, p2

    const-wide v8, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingBottom:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 5517
    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidth:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 5522
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 5523
    return-void

    .line 5519
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/policy/GlobalActions;->item_xposition(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-double v4, v3

    mul-double/2addr v4, v6

    int-to-double v6, p2

    const-wide v8, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingBottom:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 5520
    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidthLand:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0
.end method

.method public checkOnAirplaneConfirmShow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 572
    const-string v0, "GlobalActions"

    const-string v1, "checkOnAirplaneConfirmShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tw_globalactions_dont_show_again"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 574
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mShowOnAirplaneConfirm:Z

    .line 578
    :goto_0
    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkOnAirplaneConfirmShow : mShowOnAirplaneConfirm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mShowOnAirplaneConfirm:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    return-void

    .line 576
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mShowOnAirplaneConfirm:Z

    goto :goto_0
.end method

.method public hasTSafeLock()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 5331
    const/4 v3, 0x0

    .line 5332
    .local v3, "result":Z
    const-string v0, "com.skt.t_smart_charge"

    .line 5334
    .local v0, "TLOCK_PKG_NAME":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 5335
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 5336
    const-string v6, "com.skt.t_smart_charge"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 5337
    .local v4, "tLock":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .end local v4    # "tLock":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    move v5, v3

    .line 5342
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_1
    return v5

    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "tLock":Landroid/content/pm/ApplicationInfo;
    :cond_1
    move v3, v5

    .line 5337
    goto :goto_0

    .line 5339
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "tLock":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 5340
    .local v1, "ex":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public initStrings()V
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x104099d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOff:Ljava/lang/String;

    .line 562
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x104099e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnableAirplanemode:Ljava/lang/String;

    .line 563
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x104099f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLDUWarning:Ljava/lang/String;

    .line 565
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x10409a0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOffForFMM:Ljava/lang/String;

    .line 566
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x10409a1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnableRestartForFMM:Ljava/lang/String;

    .line 567
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x10409a2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnableEmergencyforFMM:Ljava/lang/String;

    .line 568
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x10409a3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnableSbikeforFMM:Ljava/lang/String;

    .line 569
    return-void
.end method

.method public insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    .line 5190
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->SURVEY_LOG:Z

    if-eqz v2, :cond_0

    .line 5191
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 5192
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5193
    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5194
    const-string v2, "extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5197
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5198
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5199
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5200
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5201
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5202
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    .line 5203
    const-string v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insetLog feature="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,extra="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5206
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public isPortrait()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5616
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    .line 5619
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchInside(Landroid/view/View;II)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 5659
    const/4 v5, 0x2

    new-array v0, v5, [I

    .line 5660
    .local v0, "location":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5662
    aget v5, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int v2, v5, v6

    .line 5663
    .local v2, "realRight":I
    aget v5, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int v1, v5, v6

    .line 5664
    .local v1, "realBottom":I
    aget v5, v0, v4

    if-lt p2, v5, :cond_0

    if-gt p2, v2, :cond_0

    aget v5, v0, v3

    if-lt p3, v5, :cond_0

    if-gt p3, v1, :cond_0

    .line 5666
    .local v3, "result":Z
    :goto_0
    return v3

    .end local v3    # "result":Z
    :cond_0
    move v3, v4

    .line 5664
    goto :goto_0
.end method

.method item_xposition(I)I
    .locals 2
    .param p1, "item_width"    # I

    .prologue
    .line 5490
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v0, :cond_0

    .line 5491
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 5492
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->displaywidth:I

    .line 5497
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->displaywidth:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    return v0

    .line 5494
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->displaywidth:I

    goto :goto_0
.end method

.method item_yposition(I)I
    .locals 2
    .param p1, "item_height"    # I

    .prologue
    .line 5501
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v0, :cond_0

    .line 5502
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 5503
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->displayheight:I

    .line 5508
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->displayheight:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    return v0

    .line 5505
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->displayheight:I

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3605
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-nez v0, :cond_1

    .line 3606
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/policy/GlobalActions$SilentModeAction;

    if-nez v0, :cond_0

    .line 3608
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3610
    :cond_0
    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick  which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3611
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->onPress()V

    .line 3613
    :cond_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x0

    .line 3567
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_0

    .line 3569
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3576
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsAirplaneConfirmDialogExist:Z

    if-nez v1, :cond_1

    .line 3578
    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3585
    :cond_1
    :goto_1
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_2

    .line 3586
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    if-nez v1, :cond_3

    .line 3587
    sget-object v2, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 3588
    const/4 v1, 0x0

    :try_start_2
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z

    .line 3589
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3595
    :cond_2
    :goto_2
    sput-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    .line 3596
    sput-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    .line 3597
    return-void

    .line 3570
    :catch_0
    move-exception v0

    .line 3572
    .local v0, "ie":Ljava/lang/IllegalArgumentException;
    const-string v1, "GlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3579
    .end local v0    # "ie":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 3581
    .restart local v0    # "ie":Ljava/lang/IllegalArgumentException;
    const-string v1, "GlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3589
    .end local v0    # "ie":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 3591
    :cond_3
    sput-boolean v3, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    goto :goto_2
.end method

.method public requestUpdateWindowBlur(F)V
    .locals 2
    .param p1, "blurValue"    # F

    .prologue
    .line 5670
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v1, :cond_0

    .line 5671
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 5672
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 5673
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 5675
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public showDialog(ZZ)V
    .locals 7
    .param p1, "keyguardShowing"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .prologue
    const/4 v4, 0x0

    .line 586
    const-string v3, "com.android.service.GlobalAction"

    const-string v5, "0001"

    const-string/jumbo v6, "null"

    invoke-virtual {p0, v3, v5, v6}, Lcom/android/server/policy/GlobalActions;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 594
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isGlobalActionConfirming()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions;->initStrings()V

    .line 602
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->initValueForCreate()V

    .line 605
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v3, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 606
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 607
    .local v0, "emMgr":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isModifying()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 608
    const-string v3, "GlobalActions"

    const-string v4, "Cannot use Global Action. because Emergency mode Entering.."

    invoke-static {v3, v4}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 613
    .end local v0    # "emMgr":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_2
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsAirplaneConfirmDialogExist:Z

    .line 614
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "keyguard"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 615
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsSecureKeyguard:Z

    .line 617
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    .line 619
    iget-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    if-nez v3, :cond_3

    .line 621
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v2

    .line 622
    .local v2, "versionInfo":Landroid/os/Bundle;
    if-eqz v2, :cond_3

    const-string v3, "2.0"

    const-string/jumbo v5, "version"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 623
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "persona"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 624
    .local v1, "pm":Landroid/os/PersonaManager;
    iget-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    invoke-virtual {v1}, Landroid/os/PersonaManager;->getKeyguardShowState()Z

    move-result v5

    or-int/2addr v3, v5

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    .line 625
    const-string v3, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Oring mKeyguardShowing and pm.getKeyguardShowState()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    .end local v1    # "pm":Landroid/os/PersonaManager;
    .end local v2    # "versionInfo":Landroid/os/Bundle;
    :cond_3
    iput-boolean p2, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    .line 632
    const-string v3, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "device provision check : mDeviceProvisioned ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v3, :cond_6

    .line 634
    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v3, :cond_5

    .line 635
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 640
    :goto_2
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    .line 641
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    .line 643
    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-nez v3, :cond_0

    .line 644
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_4
    move v3, v4

    .line 615
    goto/16 :goto_1

    .line 637
    :cond_5
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->dismiss()V

    .line 638
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    goto :goto_2

    .line 649
    :cond_6
    const-string v3, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showDialog() : mIsFirstCreated = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/server/policy/GlobalActions;->mIsFirstCreated:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsFirstCreated:Z

    if-eqz v3, :cond_7

    .line 651
    const-string v3, "GlobalActions"

    const-string/jumbo v5, "showDialog() : call checkAirplaneModeOnOff"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->checkAirplaneModeOnOff()V

    .line 653
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsFirstCreated:Z

    .line 655
    :cond_7
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->handleShow()V

    goto/16 :goto_0
.end method

.method public showErrorMessage(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 5209
    if-eqz p1, :cond_0

    .line 5210
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5212
    :cond_0
    return-void
.end method

.class public Lcom/android/server/smartclip/SpenGestureManagerService;
.super Lcom/samsung/android/smartclip/ISpenGestureService$Stub;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;,
        Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;
    }
.end annotation


# static fields
.field private static ACTIVITY_NAME_FLASH_ANNOTATION:Ljava/lang/String; = null

.field private static ACTIVITY_NAME_RAKEIN_CONTENT:Ljava/lang/String; = null

.field private static ACTIVITY_NAME_RESHAPE_TUTORIAL:Ljava/lang/String; = null

.field private static final EVENT_STATE_PEN_BUTTON_PRESSED:I

.field private static GLOBAL_AIR_COMMAND_SELECTED_FOR_ACTIONMEMO:Ljava/lang/String; = null

.field private static GLOBAL_AIR_COMMAND_SELECTED_FOR_RAKEINSERVICE:Ljava/lang/String; = null

.field private static INTENT_ACTION_AIRCOMMAND_STATE_CHANGE:Ljava/lang/String; = null

.field private static final MAX_META_FILE_COUNT:I = 0x3

.field private static final MAX_SMARTCLIP_REMOTE_REQUEST_DELAY:I = 0xbb8

.field private static final MAX_SYNC_CHECK_AIRBUTTON_DELAY:I = 0x3e8

.field private static final MSG_SEND_HOVER_EXIT_EVENT:I = 0x2

.field private static PERMISSION_EXTRACT_SMARTCLIP_DATA:Ljava/lang/String; = null

.field private static PERMISSION_INJECT_INPUT_EVENT:Ljava/lang/String; = null

.field public static TAG:Ljava/lang/String; = null

.field private static final TYPE_HOVER_EXIT_NORMAL:I = 0x0

.field private static final TYPE_HOVER_EXIT_TOWARD_BACK:I = 0x1

.field private static USE_APP_FEATURE_NAME_SPAT:Ljava/lang/String;

.field private static USE_APP_FEATURE_NAME_SPEN:Ljava/lang/String;

.field private static mAirCommandItemLoggingEnabled:Z

.field private static mContext:Landroid/content/Context;

.field private static mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# instance fields
.field private ALLOWANCE_HOVER_TIME:I

.field private ALLOWANCE_RANGE_X:I

.field private ALLOWANCE_RANGE_Y:I

.field private mAirCMDButtonPressTouchDownTime:J

.field private mAirCMDIsPenButtonPressed:Z

.field private mAirCMDIsTouchDowned:Z

.field private mAirCMDLastStartTime:J

.field private mAirCMDPenButtonPressedTime:J

.field private mAngle:F

.field private mBatteryOnlineStatus:I

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mClearCoverOpened:Z

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mDataExtractionSync:Ljava/lang/Object;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

.field private final mHandler:Landroid/os/Handler;

.field private mHoverListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/samsung/android/smartclip/ISpenGestureHoverListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHoverStayDetectEnabled:Z

.field private mIsAirCMDFirstRun:Z

.field private mIsAirCMDServiceEnabled:Z

.field private mIsEnableLockScreenQuickNote:Z

.field private mIsPenInserted:Z

.field private mIsRequestedToDictionary:Z

.field private mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

.field private mLastMetaFileId:I

.field private mPenDataStructArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;",
            ">;"
        }
    .end annotation
.end field

.field mPenDoubleTap:Ljava/lang/Runnable;

.field private mPenMemoActionIntent:Landroid/content/Intent;

.field private mSPenGestureInputChannel:Landroid/view/InputChannel;

.field private mSPenGestureInputEventReceiver:Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

.field private mShouldTransferEventToAirButton:Z

.field private mShouldTransferTouchDownEventToAirButton:Z

.field private mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

.field private mSpenUsingStartTime:J

.field private mSpenUspLevel:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManager2:Landroid/telephony/TelephonyManager;

.field private mTrackingHoverPathEnabled:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mXVelocity:F

.field private mYVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 147
    const-string v0, "SpenGestureManagerService"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    .line 149
    const-string v0, "com.samsung.android.permission.EXTRACT_SMARTCLIP_DATA"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->PERMISSION_EXTRACT_SMARTCLIP_DATA:Ljava/lang/String;

    .line 150
    const-string v0, "android.permission.INJECT_EVENTS"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->PERMISSION_INJECT_INPUT_EVENT:Ljava/lang/String;

    .line 152
    const-string v0, "com.sec.android.app.SmartClipService.rakein.RakeInContentActivity"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->ACTIVITY_NAME_RAKEIN_CONTENT:Ljava/lang/String;

    .line 153
    const-string v0, "com.sec.spen.flashannotate.FlashAnnotateActivity"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->ACTIVITY_NAME_FLASH_ANNOTATION:Ljava/lang/String;

    .line 154
    const-string v0, "com.sec.android.app.SmartClipService.help.EasyClipTutorialActivity"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->ACTIVITY_NAME_RESHAPE_TUTORIAL:Ljava/lang/String;

    .line 155
    const-string v0, "com.android.server.smartclip.GAC_SELECTED"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->GLOBAL_AIR_COMMAND_SELECTED_FOR_ACTIONMEMO:Ljava/lang/String;

    .line 156
    const-string v0, "com.android.server.smartclip.GAC_RAKEINSERVICE"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->GLOBAL_AIR_COMMAND_SELECTED_FOR_RAKEINSERVICE:Ljava/lang/String;

    .line 157
    const-string v0, "com.samsung.android.aircommand.intent.action.STATE_CHANGE"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->INTENT_ACTION_AIRCOMMAND_STATE_CHANGE:Ljava/lang/String;

    .line 159
    const-string v0, "SPEN"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->USE_APP_FEATURE_NAME_SPEN:Ljava/lang/String;

    .line 160
    const-string v0, "SPAT"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->USE_APP_FEATURE_NAME_SPAT:Ljava/lang/String;

    .line 173
    sput-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 174
    sput-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 213
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCommandItemLoggingEnabled:Z

    .line 231
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    sput v0, Lcom/android/server/smartclip/SpenGestureManagerService;->EVENT_STATE_PEN_BUTTON_PRESSED:I

    return-void

    :cond_0
    const/16 v0, 0x20

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v6, 0xa

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 357
    invoke-direct {p0}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;-><init>()V

    .line 176
    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManager:Landroid/view/WindowManager;

    .line 178
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    .line 180
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    .line 182
    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    .line 183
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferEventToAirButton:Z

    .line 184
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferTouchDownEventToAirButton:Z

    .line 185
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDIsPenButtonPressed:Z

    .line 186
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDIsTouchDowned:Z

    .line 187
    iput-wide v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDButtonPressTouchDownTime:J

    .line 188
    iput-wide v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDPenButtonPressedTime:J

    .line 189
    iput-wide v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDLastStartTime:J

    .line 190
    iput v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBatteryOnlineStatus:I

    .line 191
    iput-boolean v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Z

    .line 192
    iput-boolean v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsAirCMDServiceEnabled:Z

    .line 193
    iput-boolean v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsAirCMDFirstRun:Z

    .line 196
    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 202
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mTrackingHoverPathEnabled:Z

    .line 206
    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputChannel:Landroid/view/InputChannel;

    .line 207
    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputEventReceiver:Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

    .line 209
    iput-boolean v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    .line 211
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    .line 215
    iput v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastMetaFileId:I

    .line 227
    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 229
    iput-wide v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUsingStartTime:J

    .line 234
    new-instance v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-direct {v0}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    .line 236
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$1;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 336
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$2;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 461
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$4;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDoubleTap:Ljava/lang/Runnable;

    .line 737
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$5;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    .line 1151
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsRequestedToDictionary:Z

    .line 1152
    iput v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_X:I

    .line 1153
    iput v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_Y:I

    .line 1154
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_HOVER_TIME:I

    .line 1155
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverStayDetectEnabled:Z

    .line 1156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    .line 358
    sput-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 360
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 362
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v1, "SpenGestureManagerService(Context) "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "Wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/16 v5, 0xa

    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 365
    invoke-direct {p0}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;-><init>()V

    .line 176
    iput-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManager:Landroid/view/WindowManager;

    .line 178
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    .line 180
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    .line 182
    iput-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    .line 183
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferEventToAirButton:Z

    .line 184
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferTouchDownEventToAirButton:Z

    .line 185
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDIsPenButtonPressed:Z

    .line 186
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDIsTouchDowned:Z

    .line 187
    iput-wide v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDButtonPressTouchDownTime:J

    .line 188
    iput-wide v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDPenButtonPressedTime:J

    .line 189
    iput-wide v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDLastStartTime:J

    .line 190
    iput v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBatteryOnlineStatus:I

    .line 191
    iput-boolean v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Z

    .line 192
    iput-boolean v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsAirCMDServiceEnabled:Z

    .line 193
    iput-boolean v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsAirCMDFirstRun:Z

    .line 196
    iput-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 202
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mTrackingHoverPathEnabled:Z

    .line 206
    iput-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputChannel:Landroid/view/InputChannel;

    .line 207
    iput-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputEventReceiver:Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

    .line 209
    iput-boolean v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    .line 211
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    .line 215
    iput v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastMetaFileId:I

    .line 227
    iput-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 229
    iput-wide v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUsingStartTime:J

    .line 234
    new-instance v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-direct {v0}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    .line 236
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$1;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 336
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$2;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 461
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$4;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDoubleTap:Ljava/lang/Runnable;

    .line 737
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$5;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    .line 1151
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsRequestedToDictionary:Z

    .line 1152
    iput v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_X:I

    .line 1153
    iput v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_Y:I

    .line 1154
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_HOVER_TIME:I

    .line 1155
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverStayDetectEnabled:Z

    .line 1156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    .line 366
    sput-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 368
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 370
    sput-object p2, Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 371
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v1, "SpenGestureManagerService(Context context, WindowManagerService Wm)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->initSpenGesture()V

    .line 375
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    const-string v1, "SPenGestureService"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputChannel:Landroid/view/InputChannel;

    .line 380
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputEventReceiver:Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

    .line 382
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCommandItemLoggingEnabled:Z

    .line 384
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSettingCondition()V

    .line 386
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 387
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "com.samsung.pen.INSERT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 388
    const-string v0, "com.samsung.cover.OPEN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 389
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    const-string v0, "com.samsung.android.service.airviewdictionary.set"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 392
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 394
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 395
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/smartclip/SpenGestureManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 146
    iget v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBatteryOnlineStatus:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/smartclip/SpenGestureManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBatteryOnlineStatus:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->getTopMostPackage()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandService(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/app/enterprise/kioskmode/KioskMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/smartclip/SpenGestureManagerService;Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/airbutton/AirButtonImpl;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    return-object p1
.end method

.method static synthetic access$1300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/WindowManager;)Landroid/view/WindowManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Landroid/view/WindowManager;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManager:Landroid/view/WindowManager;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->canStartAirCommand()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverStayDetectEnabled:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverStayDetectEnabled:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsRequestedToDictionary:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->sendAirCommandStateChangeIntent(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/smartclip/SpenGestureManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUsingStartTime:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/smartclip/SpenGestureManagerService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 146
    iput-wide p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUsingStartTime:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->isScreenPinningEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->isHapticFeedbackEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->launchActionMemo()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/smartclip/SpenGestureManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->sendHoverEnterBr(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/smartclip/SpenGestureManagerService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/server/smartclip/SpenGestureManagerService;->broastcastHoverEvent(IZ)V

    return-void
.end method

.method static synthetic access$2900()I
    .locals 1

    .prologue
    .line 146
    sget v0, Lcom/android/server/smartclip/SpenGestureManagerService;->EVENT_STATE_PEN_BUTTON_PRESSED:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/smartclip/SpenGestureManagerService;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/server/smartclip/SpenGestureManagerService;->calculateSpenUsingDuration(J)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/smartclip/SpenGestureManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 146
    iget v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/smartclip/SpenGestureManagerService;->processMotionEventForAirCMD(Landroid/view/MotionEvent;IZ)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkHoverStay(Landroid/view/MotionEvent;IZ)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferEventToAirButton:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mTrackingHoverPathEnabled:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/VelocityTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/smartclip/SpenGestureManagerService;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 146
    iget v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mXVelocity:F

    return v0
.end method

.method static synthetic access$3602(Lcom/android/server/smartclip/SpenGestureManagerService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # F

    .prologue
    .line 146
    iput p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mXVelocity:F

    return p1
.end method

.method static synthetic access$3700(Lcom/android/server/smartclip/SpenGestureManagerService;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 146
    iget v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mYVelocity:F

    return v0
.end method

.method static synthetic access$3702(Lcom/android/server/smartclip/SpenGestureManagerService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # F

    .prologue
    .line 146
    iput p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mYVelocity:F

    return p1
.end method

.method static synthetic access$3800(Lcom/android/server/smartclip/SpenGestureManagerService;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 146
    iget v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAngle:F

    return v0
.end method

.method static synthetic access$3802(Lcom/android/server/smartclip/SpenGestureManagerService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # F

    .prologue
    .line 146
    iput p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAngle:F

    return p1
.end method

.method static synthetic access$3900(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->USE_APP_FEATURE_NAME_SPAT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->broastcastBackPressedEvent()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/smartclip/SpenGestureManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->getTopMostActivityClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->GLOBAL_AIR_COMMAND_SELECTED_FOR_ACTIONMEMO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->GLOBAL_AIR_COMMAND_SELECTED_FOR_RAKEINSERVICE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4500()Z
    .locals 1

    .prologue
    .line 146
    sget-boolean v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCommandItemLoggingEnabled:Z

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->sendLogAirCommandItemSelected(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->isPossibleSmartClip()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->ACTIVITY_NAME_RAKEIN_CONTENT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->isPackageActivated(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/server/smartclip/SpenGestureManagerService;->sendLogSpenInsertInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->isPossibleCapture()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->ACTIVITY_NAME_FLASH_ANNOTATION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->ACTIVITY_NAME_RESHAPE_TUTORIAL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->USE_APP_FEATURE_NAME_SPEN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsAirCMDServiceEnabled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    return p1
.end method

.method private allocateMetaTagFilePath()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1646
    const-string v1, "/data/clipboard/smartclip"

    .line 1647
    .local v1, "baseDirPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1648
    .local v0, "baseDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1649
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1650
    invoke-virtual {v0, v6, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1651
    invoke-virtual {v0, v6, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1654
    :cond_0
    iget v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastMetaFileId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastMetaFileId:I

    .line 1655
    iget v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastMetaFileId:I

    rem-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastMetaFileId:I

    .line 1656
    const-string v3, "%s/SC%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    iget v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastMetaFileId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1657
    .local v2, "filePathName":Ljava/lang/String;
    return-object v2
.end method

.method private broastcastBackPressedEvent()V
    .locals 2

    .prologue
    .line 1833
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    if-nez v1, :cond_0

    .line 1848
    :goto_0
    return-void

    .line 1837
    :cond_0
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1838
    .local v0, "i":I
    :goto_1
    if-lez v0, :cond_1

    .line 1839
    add-int/lit8 v0, v0, -0x1

    .line 1841
    :try_start_0
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/smartclip/ISpenGestureHoverListener;

    invoke-interface {v1}, Lcom/samsung/android/smartclip/ISpenGestureHoverListener;->onBackPressed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1842
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1847
    :cond_1
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_0
.end method

.method private broastcastHoverEvent(IZ)V
    .locals 4
    .param p1, "action"    # I
    .param p2, "towardBack"    # Z

    .prologue
    .line 1800
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    if-nez v1, :cond_0

    .line 1830
    :goto_0
    return-void

    .line 1803
    :cond_0
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1804
    .local v0, "i":I
    :cond_1
    :goto_1
    if-lez v0, :cond_4

    .line 1805
    add-int/lit8 v0, v0, -0x1

    .line 1807
    const/16 v1, 0x9

    if-ne p1, v1, :cond_2

    .line 1808
    :try_start_0
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/smartclip/ISpenGestureHoverListener;

    invoke-interface {v1}, Lcom/samsung/android/smartclip/ISpenGestureHoverListener;->onHoverEnter()V

    goto :goto_1

    .line 1816
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1809
    :cond_2
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 1810
    if-eqz p2, :cond_3

    .line 1811
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/smartclip/ISpenGestureHoverListener;

    invoke-interface {v1}, Lcom/samsung/android/smartclip/ISpenGestureHoverListener;->onHoverExitTowardBack()V

    goto :goto_1

    .line 1813
    :cond_3
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/smartclip/ISpenGestureHoverListener;

    invoke-interface {v1}, Lcom/samsung/android/smartclip/ISpenGestureHoverListener;->onHoverExit()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1821
    :cond_4
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1823
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 1824
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mTrackingHoverPathEnabled:Z

    .line 1827
    :cond_5
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mHoverListeners.getRegisteredCallbackCount() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- mTrackingHoverPathEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mTrackingHoverPathEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private broastcastHoverStayEvent(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1851
    iget-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverStayDetectEnabled:Z

    if-nez v1, :cond_1

    .line 1870
    :cond_0
    :goto_0
    return-void

    .line 1855
    :cond_1
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    if-eqz v1, :cond_0

    .line 1859
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1860
    .local v0, "i":I
    :goto_1
    if-lez v0, :cond_2

    .line 1861
    add-int/lit8 v0, v0, -0x1

    .line 1863
    :try_start_0
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/smartclip/ISpenGestureHoverListener;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/smartclip/ISpenGestureHoverListener;->onHoverStay(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1864
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1869
    :cond_2
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_0
.end method

.method private calculateSpenUsingDuration(J)V
    .locals 5
    .param p1, "elapsedTime"    # J

    .prologue
    const/high16 v4, 0x42700000    # 60.0f

    .line 1917
    const/4 v0, 0x0

    .line 1918
    .local v0, "duration":Ljava/lang/String;
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1920
    .local v1, "usingMin":F
    const-wide/16 v2, 0x3e8

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    .line 1921
    long-to-float v2, p1

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    div-float v1, v2, v4

    .line 1924
    :cond_0
    cmpl-float v2, v1, v4

    if-lez v2, :cond_1

    .line 1925
    const-string v0, "MoreThan1Hour"

    .line 1938
    :goto_0
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->USE_APP_FEATURE_NAME_SPEN:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->sendLogSpenInsertInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    return-void

    .line 1926
    :cond_1
    const/high16 v2, 0x41f00000    # 30.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    .line 1927
    const-string v0, "30to60Minutes"

    goto :goto_0

    .line 1928
    :cond_2
    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    .line 1929
    const-string v0, "10to30Minutes"

    goto :goto_0

    .line 1930
    :cond_3
    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_4

    .line 1931
    const-string v0, "5to10Minutes"

    goto :goto_0

    .line 1932
    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_5

    .line 1933
    const-string v0, "1to5Minutes"

    goto :goto_0

    .line 1935
    :cond_5
    const-string v0, "1MinuteOrLess"

    goto :goto_0
.end method

.method private canStartAirCommand()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1119
    sget-object v4, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_provisioned"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    .line 1121
    .local v1, "setupWizardRunning":Z
    :goto_0
    const/4 v0, 0x0

    .line 1123
    .local v0, "errorMsg":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1124
    const-string/jumbo v0, "setupWizard on"

    .line 1129
    :cond_0
    :goto_1
    if-nez v0, :cond_3

    .line 1134
    :goto_2
    return v2

    .end local v0    # "errorMsg":Ljava/lang/String;
    .end local v1    # "setupWizardRunning":Z
    :cond_1
    move v1, v3

    .line 1119
    goto :goto_0

    .line 1125
    .restart local v0    # "errorMsg":Ljava/lang/String;
    .restart local v1    # "setupWizardRunning":Z
    :cond_2
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1126
    const-string v0, "factory mode"

    goto :goto_1

    .line 1133
    :cond_3
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to start AirCommand."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1134
    goto :goto_2
.end method

.method private checkHoverStay(Landroid/view/MotionEvent;IZ)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "action"    # I
    .param p3, "isButtonPressed"    # Z

    .prologue
    .line 1159
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 1199
    :cond_0
    :goto_0
    return-void

    .line 1162
    :cond_1
    const/4 v5, 0x7

    if-ne p2, v5, :cond_2

    .line 1163
    new-instance v4, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService$1;)V

    .line 1164
    .local v4, "penDataStruct":Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawX:I

    .line 1165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawY:I

    .line 1166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->EnterTime:J

    .line 1167
    iget-object v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1168
    iget-object v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x2

    .local v0, "chkIndex":I
    move v1, v0

    .line 1169
    .end local v0    # "chkIndex":I
    .local v1, "chkIndex":I
    :goto_1
    if-ltz v1, :cond_0

    .line 1170
    new-instance v2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService$1;)V

    .line 1171
    .local v2, "chkPenDataStruct":Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;
    iget-object v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    add-int/lit8 v0, v1, -0x1

    .end local v1    # "chkIndex":I
    .restart local v0    # "chkIndex":I
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "chkPenDataStruct":Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;
    check-cast v2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;

    .line 1172
    .restart local v2    # "chkPenDataStruct":Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;
    iget v5, v2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawX:I

    iget v6, v4, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawX:I

    iget v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_X:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_0

    iget v5, v2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawX:I

    iget v6, v4, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawX:I

    iget v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_X:I

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_0

    .line 1174
    iget v5, v2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawY:I

    iget v6, v4, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawY:I

    iget v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_Y:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_0

    iget v5, v2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawY:I

    iget v6, v4, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawY:I

    iget v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_Y:I

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_0

    .line 1176
    iget-wide v6, v2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->EnterTime:J

    iget-wide v8, v4, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->EnterTime:J

    iget v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_HOVER_TIME:I

    int-to-long v10, v5

    sub-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-gez v5, :cond_3

    .line 1177
    iget-object v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1178
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1179
    .local v3, "extras":Landroid/os/Bundle;
    const-string v5, "RawX"

    iget v6, v4, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawX:I

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1180
    const-string v5, "RawY"

    iget v6, v4, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawY:I

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1181
    sget-object v5, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dictionary service start : hover time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_HOVER_TIME:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_X:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " y = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_Y:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    iget v5, v4, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawX:I

    iget v6, v4, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawY:I

    invoke-direct {p0, v5, v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->broastcastHoverStayEvent(II)V

    goto/16 :goto_0

    .line 1196
    .end local v0    # "chkIndex":I
    .end local v2    # "chkPenDataStruct":Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v4    # "penDataStruct":Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;
    :cond_2
    iget-object v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .restart local v0    # "chkIndex":I
    .restart local v2    # "chkPenDataStruct":Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;
    .restart local v4    # "penDataStruct":Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;
    :cond_3
    move v1, v0

    .end local v0    # "chkIndex":I
    .restart local v1    # "chkIndex":I
    goto/16 :goto_1
.end method

.method private checkInputEventInjectionPermission()V
    .locals 1

    .prologue
    .line 522
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->PERMISSION_INJECT_INPUT_EVENT:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkPermission(Ljava/lang/String;)V

    .line 523
    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 526
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 528
    .local v0, "havePermission":Z
    :goto_0
    if-nez v0, :cond_1

    .line 529
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requires "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " permission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 526
    .end local v0    # "havePermission":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 533
    .restart local v0    # "havePermission":Z
    :cond_1
    return-void
.end method

.method private checkSettingCondition()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 732
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 733
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "lock_screen_quick_note"

    const/4 v4, -0x2

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    .line 734
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSettingCondition, LOCK_SCREEN_QUICK_NOTE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    return-void

    :cond_0
    move v1, v2

    .line 733
    goto :goto_0
.end method

.method private checkSmartClipMetaExtractionPermission()V
    .locals 1

    .prologue
    .line 518
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->PERMISSION_EXTRACT_SMARTCLIP_DATA:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkPermission(Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "srcPathName"    # Ljava/lang/String;
    .param p2, "destPathName"    # Ljava/lang/String;

    .prologue
    .line 1692
    const/4 v2, 0x0

    .line 1693
    .local v2, "in":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 1694
    .local v4, "out":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 1697
    .local v7, "ret":Z
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1698
    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v3, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1700
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    const/16 v8, 0x1400

    :try_start_2
    new-array v0, v8, [B

    .line 1702
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .local v6, "read":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    .line 1703
    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 1707
    .end local v0    # "buffer":[B
    .end local v6    # "read":I
    :catch_0
    move-exception v1

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 1708
    .end local v3    # "in":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "copyFile : Exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1709
    const/4 v7, 0x0

    .line 1712
    if-eqz v2, :cond_0

    .line 1713
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 1715
    :cond_0
    if-eqz v4, :cond_1

    .line 1716
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1721
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return v7

    .line 1705
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "read":I
    :cond_2
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1706
    const/4 v7, 0x1

    .line 1712
    if-eqz v3, :cond_3

    .line 1713
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 1715
    :cond_3
    if-eqz v5, :cond_4

    .line 1716
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 1719
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_2

    .line 1718
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 1720
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_2

    .line 1711
    .end local v0    # "buffer":[B
    .end local v6    # "read":I
    :catchall_0
    move-exception v8

    .line 1712
    :goto_3
    if-eqz v2, :cond_5

    .line 1713
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 1715
    :cond_5
    if-eqz v4, :cond_6

    .line 1716
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 1719
    :cond_6
    :goto_4
    throw v8

    .line 1718
    :catch_2
    move-exception v9

    goto :goto_4

    .line 1711
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .line 1718
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v8

    goto :goto_2

    .line 1707
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    goto :goto_1

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private getFullScreenRect()Landroid/graphics/Rect;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 723
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 724
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 725
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 727
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 728
    .local v2, "screenRect":Landroid/graphics/Rect;
    return-object v2
.end method

.method private getTopMostActivityClassName()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1874
    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1875
    .local v0, "am":Landroid/app/ActivityManager;
    const/16 v6, 0x64

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 1876
    .local v4, "runningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 1878
    .local v3, "runningTaskCount":I
    if-lez v3, :cond_0

    .line 1879
    const/4 v2, 0x0

    .local v2, "i":I
    if-ge v2, v3, :cond_0

    .line 1880
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1881
    .local v5, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 1885
    .end local v2    # "i":I
    .end local v5    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private getTopMostPackage()Landroid/content/ComponentName;
    .locals 4

    .prologue
    .line 1889
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1890
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 1891
    .local v1, "runningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1892
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getTopMostPackage : Failed to get running task info"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    const/4 v2, 0x0

    .line 1896
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private initCoverState()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 446
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_1

    .line 447
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 448
    .local v0, "state":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_0

    .line 449
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initCoverState() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    .line 458
    .end local v0    # "state":Lcom/samsung/android/cover/CoverState;
    :goto_0
    return v1

    .line 452
    .restart local v0    # "state":Lcom/samsung/android/cover/CoverState;
    :cond_0
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "initCoverState() : state is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 456
    .end local v0    # "state":Lcom/samsung/android/cover/CoverState;
    :cond_1
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "initCoverState() : mCoverManager is null!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initSpenGesture()V
    .locals 4

    .prologue
    .line 399
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 400
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 401
    const-string v1, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    .line 402
    iget v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsAirCMDServiceEnabled:Z

    .line 405
    :cond_0
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 410
    new-instance v1, Lcom/samsung/android/cover/CoverManager;

    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 411
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->initCoverState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    .line 412
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_2

    .line 413
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 418
    :goto_1
    new-instance v1, Landroid/view/GestureDetector;

    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/smartclip/SpenGestureManagerService$3;

    invoke-direct {v3, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$3;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGestureDetector:Landroid/view/GestureDetector;

    .line 443
    return-void

    .line 402
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 415
    :cond_2
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "initSpenGesture() : mCoverManager is null!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isHapticFeedbackEnabled()Z
    .locals 3

    .prologue
    .line 1952
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1953
    .local v0, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v0}, Landroid/os/Vibrator;->isEnableIntensity()Z

    move-result v1

    return v1
.end method

.method private isPackageActivated(Ljava/lang/String;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1757
    const/4 v2, 0x0

    .line 1759
    .local v2, "isActivated":Z
    sget-object v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1760
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 1761
    .local v6, "userId":I
    if-eqz v5, :cond_2

    .line 1762
    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v0

    .line 1763
    .local v0, "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1764
    .local v1, "appInfoSize":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1765
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 1766
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1767
    const/4 v2, 0x1

    .line 1774
    .end local v0    # "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v1    # "appInfoSize":I
    .end local v3    # "j":I
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_1
    sget-object v7, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isPackageActivated : activated="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " user="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    return v2

    .line 1764
    .restart local v0    # "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v1    # "appInfoSize":I
    .restart local v3    # "j":I
    .restart local v4    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1772
    .end local v0    # "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v1    # "appInfoSize":I
    .end local v3    # "j":I
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    :cond_2
    sget-object v7, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "isPackageActivated : Could not get package manager!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isPossibleCapture()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1301
    const-string v0, "RestrictionPolicy3"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1302
    .local v1, "uri":Landroid/net/Uri;
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isScreenCaptureEnabled"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1304
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1306
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1307
    const-string/jumbo v0, "isScreenCaptureEnabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1310
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v2, "MDM: Screen Capture Disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1312
    const/4 v0, 0x0

    .line 1315
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1318
    :goto_0
    return v0

    .line 1315
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1318
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1315
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isPossibleSmartClip()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1322
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy3"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1323
    .local v1, "uri":Landroid/net/Uri;
    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v0, "true"

    aput-object v0, v4, v7

    .line 1324
    .local v4, "selectionArgsTrue":[Ljava/lang/String;
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isSmartClipModeAllowed"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1326
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1328
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1329
    const-string/jumbo v0, "isSmartClipModeAllowed"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1332
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v2, "MDM: SmartClip Disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1337
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 1340
    :goto_0
    return v0

    .line 1337
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    .line 1340
    goto :goto_0

    .line 1337
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isScreenPinningEnabled()Z
    .locals 4

    .prologue
    .line 1942
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1943
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v1

    .line 1944
    .local v1, "isWindowPinned":Z
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1945
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isScreenPinningEnabled : Screen pinning mode enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    :cond_0
    return v1
.end method

.method private launchActionMemo()V
    .locals 7

    .prologue
    .line 1613
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v3

    .line 1614
    .local v3, "version":Landroid/os/PersonaManager$KnoxContainerVersion;
    const-string/jumbo v4, "true"

    const-string v5, "dev.knoxapp.running"

    const-string/jumbo v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v3, v4}, Landroid/os/PersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-ltz v4, :cond_1

    :cond_0
    sget-object v4, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1643
    :cond_1
    :goto_0
    return-void

    .line 1618
    :cond_2
    iget v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    const/16 v5, 0x14

    if-lt v4, v5, :cond_3

    .line 1619
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.samsung.action.ACTION_MEMO_DOUBLETAB"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1620
    .local v0, "actionMemoIntent":Landroid/content/Intent;
    const-string v4, "com.samsung.android.app.notes"

    const-string v5, "com.samsung.android.app.notes.actionmemo.ActionMemoService"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1622
    sget-object v4, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1623
    sget-object v4, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "launchActionMemo : Trying to launch Samsung notes action memo"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1625
    .end local v0    # "actionMemoIntent":Landroid/content/Intent;
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1626
    .local v2, "snoteIntent":Landroid/content/Intent;
    const-string v4, "com.samsung.android.snote"

    const-string v5, "com.samsung.android.snote.control.ui.quickmemo.service.QuickMemo_Service"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1629
    sget-object v4, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "launchActionMemo : Trying to launch Snote aciton memo.."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    sget-object v4, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1631
    sget-object v4, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "launchActionMemo : Snote action memo launch failed. Trying to launch diotek PenMemo..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1634
    .local v1, "diotekIntent":Landroid/content/Intent;
    const-string v4, "com.diotek.mini_penmemo"

    const-string v5, "com.diotek.mini_penmemo.Mini_PenMemo_Service"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1637
    sget-object v4, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1638
    sget-object v4, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "launchActionMemo : Diotek PenMemo launch failed. Sending legacy quick memo broadcasting"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    sget-object v4, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.QUICKMEMO_LAUNCH"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private moveFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "srcPathName"    # Ljava/lang/String;
    .param p2, "destPathName"    # Ljava/lang/String;

    .prologue
    .line 1726
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1727
    .local v0, "destFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1728
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1731
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/smartclip/SpenGestureManagerService;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1732
    .local v1, "ret":Z
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1733
    .local v2, "srcFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1734
    const/4 v1, 0x0

    .line 1736
    :cond_1
    return v1
.end method

.method private moveMetaFilesToLocalStorage(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Z
    .locals 2
    .param p1, "repository"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .prologue
    .line 1661
    if-nez p1, :cond_0

    .line 1662
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "moveMetaFilesToLocalStorage : Empty repository!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    const/4 v0, 0x0

    .line 1688
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private processMotionEventForAirCMD(Landroid/view/MotionEvent;IZ)V
    .locals 24
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "action"    # I
    .param p3, "isButtonPressed"    # Z

    .prologue
    .line 932
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsAirCMDServiceEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 934
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 1097
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 938
    :cond_1
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 942
    :sswitch_0
    if-eqz p3, :cond_2

    .line 943
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDButtonPressTouchDownTime:J

    goto :goto_0

    .line 945
    :cond_2
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDButtonPressTouchDownTime:J

    goto :goto_0

    .line 950
    :sswitch_1
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDIsPenButtonPressed:Z

    .line 952
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDButtonPressTouchDownTime:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-lez v19, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDButtonPressTouchDownTime:J

    move-wide/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v22

    cmp-long v19, v20, v22

    if-nez v19, :cond_3

    const/16 v19, 0x1

    :goto_1
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDIsTouchDowned:Z

    .line 957
    :sswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDIsTouchDowned:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 961
    if-eqz p3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDIsPenButtonPressed:Z

    move/from16 v19, v0

    if-nez v19, :cond_4

    .line 963
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDIsPenButtonPressed:Z

    .line 964
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDPenButtonPressedTime:J

    goto :goto_0

    .line 952
    :cond_3
    const/16 v19, 0x0

    goto :goto_1

    .line 965
    :cond_4
    if-nez p3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDIsPenButtonPressed:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 967
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDIsPenButtonPressed:Z

    .line 970
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDPenButtonPressedTime:J

    move-wide/from16 v22, v0

    sub-long v12, v20, v22

    .line 971
    .local v12, "pressedTime":J
    const-wide/16 v20, 0x0

    cmp-long v19, v12, v20

    if-lez v19, :cond_0

    const-wide/16 v20, 0x320

    cmp-long v19, v12, v20

    if-gtz v19, :cond_0

    .line 976
    const-string/jumbo v5, "right"

    .line 977
    .local v5, "direction":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v15, v0

    .line 978
    .local v15, "x":I
    sget-object v19, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    if-ge v15, v0, :cond_5

    .line 979
    const-string/jumbo v5, "left"

    .line 983
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 984
    sget-object v19, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v20, "Can not start AirCommand. #2"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 989
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 990
    .local v10, "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDLastStartTime:J

    move-wide/from16 v20, v0

    sub-long v16, v10, v20

    .line 991
    .local v16, "startInterval":J
    const-wide/16 v20, 0x0

    cmp-long v19, v16, v20

    if-lez v19, :cond_7

    const-wide/16 v20, 0x190

    cmp-long v19, v16, v20

    if-gez v19, :cond_7

    .line 992
    sget-object v19, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Can not start AirCommand. #3."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 995
    :cond_7
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDLastStartTime:J

    .line 998
    sget-object v19, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v20, "Start AirCommand. #2"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1001
    .local v6, "extras":Landroid/os/Bundle;
    const-string v19, "cause"

    const-string v20, "button_pressed"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    const-string v19, "direction"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandService(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1015
    .end local v5    # "direction":Ljava/lang/String;
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v10    # "now":J
    .end local v12    # "pressedTime":J
    .end local v15    # "x":I
    .end local v16    # "startInterval":J
    :cond_8
    const/4 v8, 0x0

    .line 1016
    .local v8, "needsToProcessEvent":Z
    if-eqz p3, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 1017
    const/4 v8, 0x1

    .line 1018
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferEventToAirButton:Z

    .line 1052
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferTouchDownEventToAirButton:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    if-nez p2, :cond_b

    .line 1053
    sget-object v19, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v20, "onInputEvent : Send touch down event to AirCommand"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v19, v0

    if-nez v19, :cond_a

    .line 1055
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    .line 1057
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/airbutton/AirButtonImpl;->onTouchDownForGA(I)V

    .line 1058
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferTouchDownEventToAirButton:Z

    .line 1061
    :cond_b
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_0

    .line 1062
    packed-switch p2, :pswitch_data_0

    :pswitch_1
    goto/16 :goto_0

    .line 1064
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v19, v0

    if-nez v19, :cond_c

    .line 1065
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    .line 1067
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/airbutton/AirButtonImpl;->onTouchDownForGA(I)V

    goto/16 :goto_0

    .line 1021
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferEventToAirButton:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 1022
    sget-object v19, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v20, "onInputEvent : Side button has released"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    const/4 v9, 0x0

    .line 1025
    .local v9, "result":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v19, v0

    if-nez v19, :cond_e

    .line 1026
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    .line 1029
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/airbutton/AirButtonImpl;->isShowing()Z

    move-result v19

    if-nez v19, :cond_f

    .line 1030
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v15, v0

    .line 1031
    .restart local v15    # "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    .line 1033
    .local v18, "y":I
    sget-object v19, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v20, "spengestureservice"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/smartclip/SpenGestureManager;

    .line 1035
    .local v14, "spenGestureManager":Lcom/samsung/android/smartclip/SpenGestureManager;
    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v14, v0, v15, v1}, Lcom/samsung/android/smartclip/SpenGestureManager;->getAirButtonHitTest(III)I

    move-result v9

    .line 1038
    .end local v14    # "spenGestureManager":Lcom/samsung/android/smartclip/SpenGestureManager;
    .end local v15    # "x":I
    .end local v18    # "y":I
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->keyguardOn()Z

    move-result v7

    .line 1039
    .local v7, "isKeyguardActivated":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->canStartAirCommand()Z

    move-result v4

    .line 1040
    .local v4, "canShowAirCommand":Z
    sget-object v19, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "onInputEvent : keyguard="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", canStartAirCMD ="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", hitResult="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v9, v0, :cond_10

    if-nez v7, :cond_10

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_10

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 1048
    :goto_3
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferEventToAirButton:Z

    goto/16 :goto_2

    .line 1046
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/airbutton/AirButtonImpl;->initSideButtonState()V

    goto :goto_3

    .line 1076
    .end local v4    # "canShowAirCommand":Z
    .end local v7    # "isKeyguardActivated":Z
    .end local v9    # "result":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v19, v0

    if-nez v19, :cond_11

    .line 1077
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    .line 1079
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 1083
    :pswitch_4
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferTouchDownEventToAirButton:Z

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v19, v0

    if-nez v19, :cond_12

    .line 1085
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    .line 1087
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/airbutton/AirButtonImpl;->onTouchUpForGA(I)V

    goto/16 :goto_0

    .line 938
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
        0x7 -> :sswitch_2
        0x9 -> :sswitch_1
    .end sparse-switch

    .line 1062
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private sendAirCommandStateChangeIntent(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1139
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->INTENT_ACTION_AIRCOMMAND_STATE_CHANGE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1140
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.samsung.android.service.aircommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1141
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1142
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1143
    return-void
.end method

.method private sendHoverEnterBr(I)V
    .locals 3
    .param p1, "action"    # I

    .prologue
    .line 920
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v2, "[HOVER] send hover br"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.service.pentastic.shown"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 923
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.samsung.android.service.pentastic"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 924
    const-string/jumbo v1, "penHoverDown"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 925
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 926
    return-void
.end method

.method private sendLogAirCommandItemSelected(Ljava/lang/String;)V
    .locals 4
    .param p1, "selectedItem"    # Ljava/lang/String;

    .prologue
    .line 1741
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1742
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.samsung.android.airbutton"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    const-string/jumbo v2, "feature"

    const-string v3, "AC02"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    const-string v2, "extra"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1748
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1749
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1751
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1753
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1754
    return-void
.end method

.method private sendLogSpenInsertInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "extra"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 1901
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1902
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.android.server.smartclip"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    const-string v2, "extra"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1908
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1909
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1911
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1913
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1914
    return-void
.end method

.method private startAirCommandService(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1101
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->canStartAirCommand()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1116
    :goto_0
    return-void

    .line 1105
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1106
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "com.samsung.android.service.aircommand"

    const-string v3, "com.samsung.android.service.aircommand.AirCommandService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1108
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1109
    const-string/jumbo v2, "firstRun"

    iget-boolean v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsAirCMDFirstRun:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1110
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1112
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsAirCMDFirstRun:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1113
    .end local v1    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1114
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to start AirCommand. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startAirViewDictionaryService(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1218
    :try_start_0
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startAirViewDictionaryService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1220
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "com.samsung.android.service.airviewdictionary"

    const-string v3, "com.samsung.android.service.airviewdictionary.AirViewDictionaryService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1222
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1223
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1227
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1224
    :catch_0
    move-exception v0

    .line 1225
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to start AirCommand. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;
    .locals 3

    .prologue
    .line 1345
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl;

    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/airbutton/AirButtonImpl;-><init>(Landroid/content/Context;Z)V

    .line 1347
    .local v0, "airButtonWidget":Lcom/samsung/android/airbutton/AirButtonImpl;
    new-instance v1, Lcom/android/server/smartclip/SpenGestureManagerService$6;

    invoke-direct {v1, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$6;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->setOnItemSelectedListener(Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;)V

    .line 1607
    return-object v0
.end method

.method public getAirButtonHitTest(III)I
    .locals 12
    .param p1, "id"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 686
    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getAirButtonHitTest() : id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :try_start_0
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    :try_start_1
    const-string/jumbo v8, "window"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v7

    .line 691
    .local v7, "windowManager":Landroid/view/IWindowManager;
    iget-object v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    move-result v2

    .line 693
    .local v2, "reqId":I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 694
    .local v3, "requestData":Landroid/os/Bundle;
    const-string/jumbo v8, "id"

    invoke-virtual {v3, v8, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 695
    const-string/jumbo v8, "x"

    invoke-virtual {v3, v8, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 696
    const-string/jumbo v8, "y"

    invoke-virtual {v3, v8, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 698
    new-instance v4, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    const/4 v8, 0x2

    invoke-direct {v4, v2, v8, v3}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;-><init>(IILandroid/os/Parcelable;)V

    .line 703
    .local v4, "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    const/4 v8, 0x0

    invoke-interface {v7, p2, p3, v4, v8}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    .line 705
    iget-object v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/16 v10, 0x3e8

    invoke-virtual {v8, v2, v10}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(II)Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    move-result-object v5

    .line 706
    .local v5, "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    const/4 v1, -0x1

    .line 707
    .local v1, "hitTestResult":I
    if-eqz v5, :cond_0

    .line 708
    iget-object v6, v5, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    check-cast v6, Landroid/os/Bundle;

    .line 709
    .local v6, "resultBundle":Landroid/os/Bundle;
    const-string/jumbo v8, "result"

    invoke-virtual {v6, v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 710
    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getAirButtonHitTest : Result = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    .end local v6    # "resultBundle":Landroid/os/Bundle;
    :goto_0
    monitor-exit v9

    .line 718
    .end local v1    # "hitTestResult":I
    .end local v2    # "reqId":I
    .end local v3    # "requestData":Landroid/os/Bundle;
    .end local v4    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .end local v5    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .end local v7    # "windowManager":Landroid/view/IWindowManager;
    :goto_1
    return v1

    .line 712
    .restart local v1    # "hitTestResult":I
    .restart local v2    # "reqId":I
    .restart local v3    # "requestData":Landroid/os/Bundle;
    .restart local v4    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .restart local v5    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .restart local v7    # "windowManager":Landroid/view/IWindowManager;
    :cond_0
    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "getAirButtonHitTest : Result is null!!"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 715
    .end local v1    # "hitTestResult":I
    .end local v2    # "reqId":I
    .end local v3    # "requestData":Landroid/os/Bundle;
    .end local v4    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .end local v5    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .end local v7    # "windowManager":Landroid/view/IWindowManager;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 716
    :catch_0
    move-exception v0

    .line 717
    .local v0, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception e : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getScrollableAreaInfo(Landroid/graphics/Rect;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 9
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "skipWindowToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v6, 0x0

    .line 584
    sget-object v5, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getScrollableRect()"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 588
    :try_start_0
    const-string/jumbo v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 590
    .local v4, "windowManager":Landroid/view/IWindowManager;
    iget-object v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    move-result v1

    .line 592
    .local v1, "reqId":I
    new-instance v2, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    const/4 v5, 0x4

    const/4 v7, 0x0

    invoke-direct {v2, v1, v5, v7}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;-><init>(IILandroid/os/Parcelable;)V

    .line 597
    .local v2, "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    iget v5, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    iget v7, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    invoke-interface {v4, v5, v7, v2, p2}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    .line 602
    iget-object v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/16 v7, 0xbb8

    invoke-virtual {v5, v1, v7}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(II)Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    move-result-object v3

    .line 603
    .local v3, "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    if-eqz v3, :cond_0

    .line 604
    sget-object v5, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getScrollableRect : Result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v5, v3, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    check-cast v5, Landroid/os/Bundle;

    .line 612
    .end local v1    # "reqId":I
    .end local v2    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .end local v3    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .end local v4    # "windowManager":Landroid/view/IWindowManager;
    :goto_0
    return-object v5

    .line 607
    .restart local v1    # "reqId":I
    .restart local v2    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .restart local v3    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .restart local v4    # "windowManager":Landroid/view/IWindowManager;
    :cond_0
    sget-object v5, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getScrollableRect : Result is null!!"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    .line 608
    goto :goto_0

    .line 610
    .end local v1    # "reqId":I
    .end local v2    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .end local v3    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .end local v4    # "windowManager":Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .line 611
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception e : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 612
    goto :goto_0
.end method

.method public getScrollableViewInfo(Landroid/graphics/Rect;ILandroid/os/IBinder;)Landroid/os/Bundle;
    .locals 10
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "viewHash"    # I
    .param p3, "skipWindowToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v7, 0x0

    .line 618
    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "getScrollableViewInfo()"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 622
    :try_start_0
    const-string/jumbo v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    .line 624
    .local v5, "windowManager":Landroid/view/IWindowManager;
    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    move-result v2

    .line 625
    .local v2, "reqId":I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 626
    .local v1, "reqData":Landroid/os/Bundle;
    const-string/jumbo v6, "hashCode"

    invoke-virtual {v1, v6, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 628
    new-instance v3, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    const/4 v6, 0x5

    invoke-direct {v3, v2, v6, v1}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;-><init>(IILandroid/os/Parcelable;)V

    .line 633
    .local v3, "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    iget v8, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    invoke-interface {v5, v6, v8, v3, p3}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    .line 638
    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/16 v8, 0xbb8

    invoke-virtual {v6, v2, v8}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(II)Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    move-result-object v4

    .line 639
    .local v4, "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    if-eqz v4, :cond_0

    .line 640
    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getScrollableViewInfo : Result="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v6, v4, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    check-cast v6, Landroid/os/Bundle;

    .line 648
    .end local v1    # "reqData":Landroid/os/Bundle;
    .end local v2    # "reqId":I
    .end local v3    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .end local v4    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .end local v5    # "windowManager":Landroid/view/IWindowManager;
    :goto_0
    return-object v6

    .line 643
    .restart local v1    # "reqData":Landroid/os/Bundle;
    .restart local v2    # "reqId":I
    .restart local v3    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .restart local v4    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .restart local v5    # "windowManager":Landroid/view/IWindowManager;
    :cond_0
    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "getScrollableViewInfo : Result is null!!"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    .line 644
    goto :goto_0

    .line 646
    .end local v1    # "reqData":Landroid/os/Bundle;
    .end local v2    # "reqId":I
    .end local v3    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .end local v4    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .end local v5    # "windowManager":Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .line 647
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception e : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 648
    goto :goto_0
.end method

.method public getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .locals 12
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "skipWindowToken"    # Landroid/os/IBinder;
    .param p3, "extractionMode"    # I

    .prologue
    .line 538
    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "getSmartClipDataByScreenRect"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 542
    :try_start_0
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    if-nez p1, :cond_0

    .line 544
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->getFullScreenRect()Landroid/graphics/Rect;

    move-result-object p1

    .line 547
    :cond_0
    const-string/jumbo v8, "window"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v7

    .line 548
    .local v7, "windowManager":Landroid/view/IWindowManager;
    iget-object v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    move-result v3

    .line 550
    .local v3, "reqId":I
    new-instance v4, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    invoke-direct {v4, v3, p1, p3}, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;-><init>(ILandroid/graphics/Rect;I)V

    .line 551
    .local v4, "requestData":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    new-instance v5, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    const/4 v8, 0x1

    invoke-direct {v5, v3, v8, v4}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;-><init>(IILandroid/os/Parcelable;)V

    .line 556
    .local v5, "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    invoke-interface {v7, v8, v10, v5, p2}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    .line 561
    iget-object v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/16 v10, 0xbb8

    invoke-virtual {v8, v3, v10}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(II)Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    move-result-object v6

    .line 562
    .local v6, "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    if-eqz v6, :cond_2

    .line 563
    iget-object v2, v6, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    check-cast v2, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;

    .line 564
    .local v2, "metaDataResponse":Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;
    const/4 v1, 0x0

    .line 565
    .local v1, "extractedRepository":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    if-eqz v2, :cond_1

    .line 566
    iget-object v1, v2, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 567
    invoke-direct {p0, v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->moveMetaFilesToLocalStorage(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Z

    .line 569
    :cond_1
    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getSmartClipDataByScreenRect : wait is unlocked. Repository = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    monitor-exit v9

    .line 578
    .end local v1    # "extractedRepository":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .end local v2    # "metaDataResponse":Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;
    .end local v3    # "reqId":I
    .end local v4    # "requestData":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    .end local v5    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .end local v6    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .end local v7    # "windowManager":Landroid/view/IWindowManager;
    :goto_0
    return-object v1

    .line 572
    .restart local v3    # "reqId":I
    .restart local v4    # "requestData":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    .restart local v5    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .restart local v6    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .restart local v7    # "windowManager":Landroid/view/IWindowManager;
    :cond_2
    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "getSmartClipDataByScreenRect : result is null!!"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const/4 v1, 0x0

    monitor-exit v9

    goto :goto_0

    .line 575
    .end local v3    # "reqId":I
    .end local v4    # "requestData":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    .end local v5    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .end local v6    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .end local v7    # "windowManager":Landroid/view/IWindowManager;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getSmartClipDataByScreenRect : Exception e : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public injectInputEvent(II[Landroid/view/InputEvent;ZLandroid/os/IBinder;)V
    .locals 10
    .param p1, "targetX"    # I
    .param p2, "targetY"    # I
    .param p3, "inputEvents"    # [Landroid/view/InputEvent;
    .param p4, "waitUntilConsume"    # Z
    .param p5, "skipWindowToken"    # Landroid/os/IBinder;

    .prologue
    .line 653
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkInputEventInjectionPermission()V

    .line 656
    :try_start_0
    iget-object v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    :try_start_1
    const-string/jumbo v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    .line 658
    .local v5, "windowManager":Landroid/view/IWindowManager;
    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-virtual {v6, p4}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    move-result v2

    .line 660
    .local v2, "reqId":I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 661
    .local v1, "reqData":Landroid/os/Bundle;
    const-string v6, "events"

    invoke-virtual {v1, v6, p3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 662
    const-string/jumbo v6, "waitUntilConsume"

    invoke-virtual {v1, v6, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 664
    new-instance v3, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    const/4 v6, 0x3

    invoke-direct {v3, v2, v6, v1}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;-><init>(IILandroid/os/Parcelable;)V

    .line 669
    .local v3, "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    invoke-interface {v5, p1, p2, v3, p5}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    .line 671
    const/4 v6, 0x1

    if-ne p4, v6, :cond_0

    .line 672
    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/16 v8, 0xbb8

    invoke-virtual {v6, v2, v8}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(II)Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    move-result-object v4

    .line 673
    .local v4, "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    if-eqz v4, :cond_1

    .line 674
    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "injectInputEvent : Result="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    .end local v4    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    :cond_0
    :goto_0
    monitor-exit v7

    .line 683
    .end local v1    # "reqData":Landroid/os/Bundle;
    .end local v2    # "reqId":I
    .end local v3    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .end local v5    # "windowManager":Landroid/view/IWindowManager;
    :goto_1
    return-void

    .line 676
    .restart local v1    # "reqData":Landroid/os/Bundle;
    .restart local v2    # "reqId":I
    .restart local v3    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .restart local v4    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .restart local v5    # "windowManager":Landroid/view/IWindowManager;
    :cond_1
    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "injectInputEvent : Result is null!!"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 679
    .end local v1    # "reqData":Landroid/os/Bundle;
    .end local v2    # "reqId":I
    .end local v3    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .end local v4    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .end local v5    # "windowManager":Landroid/view/IWindowManager;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 680
    :catch_0
    move-exception v0

    .line 681
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "injectInputEvent : Exception thrown! e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public keyguardOn()Z
    .locals 3

    .prologue
    .line 1230
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1231
    .local v0, "kgm":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    .line 1232
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1233
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v2, "SpenGestureManagerService :isKeyguardLocked : true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    const/4 v1, 0x1

    .line 1237
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyguardSecureOn()Z
    .locals 3

    .prologue
    .line 1241
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1242
    .local v0, "kgm":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    .line 1243
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1244
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v2, "SpenGestureManagerService :isKeyguardSecure : true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    const/4 v1, 0x1

    .line 1248
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerHoverListener(Lcom/samsung/android/smartclip/ISpenGestureHoverListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/smartclip/ISpenGestureHoverListener;

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    .line 1782
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    .line 1785
    :cond_0
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1786
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mTrackingHoverPathEnabled:Z

    .line 1787
    return-void
.end method

.method public sendSmartClipRemoteRequestResult(Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;)V
    .locals 3
    .param p1, "result"    # Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    .prologue
    .line 509
    if-eqz p1, :cond_0

    .line 510
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSmartClipRemoteRequestResult : requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mRequestId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requestType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mRequestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-virtual {v0, p1}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->notifyResult(Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;)V

    .line 515
    :goto_0
    return-void

    .line 513
    :cond_0
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendSmartClipRemoteRequestResult : result is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setFocusWindow(I)V
    .locals 0
    .param p1, "focusSurfaceLayer"    # I

    .prologue
    .line 505
    return-void
.end method

.method public setHoverStayDetectEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1203
    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverStayDetectEnabled:Z

    .line 1204
    return-void
.end method

.method public setHoverStayValues(III)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "hoverTime"    # I

    .prologue
    .line 1207
    if-lez p1, :cond_0

    .line 1208
    iput p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_X:I

    .line 1209
    :cond_0
    if-lez p2, :cond_1

    .line 1210
    iput p2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_Y:I

    .line 1211
    :cond_1
    if-lez p3, :cond_2

    .line 1212
    iput p3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_HOVER_TIME:I

    .line 1213
    :cond_2
    return-void
.end method

.method public unregisterHoverListener(Lcom/samsung/android/smartclip/ISpenGestureHoverListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/smartclip/ISpenGestureHoverListener;

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_0

    .line 1791
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1792
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1793
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mTrackingHoverPathEnabled:Z

    .line 1794
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTrackingHoverPathEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mTrackingHoverPathEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    :cond_0
    return-void
.end method

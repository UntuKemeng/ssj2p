.class public Lcom/samsung/android/camera/iris/SemIrisManager;
.super Ljava/lang/Object;
.source "SemIrisManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;,
        Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;,
        Lcom/samsung/android/camera/iris/SemIrisManager$LockoutResetCallback;,
        Lcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;,
        Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;,
        Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;,
        Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;,
        Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;,
        Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;,
        Lcom/samsung/android/camera/iris/SemIrisManager$OnAuthenticationCancelListener;,
        Lcom/samsung/android/camera/iris/SemIrisManager$OnEnrollCancelListener;
    }
.end annotation


# static fields
.field public static final CLIENT_KEY_PRIVILEGED_ATTR:Ljava/lang/String; = "privileged_attr"

.field public static final IRIS_ACQUIRED_CAPTURE_COMPLETED:I = 0x2713

.field public static final IRIS_ACQUIRED_CAPTURE_FAILED:I = 0x2716

.field public static final IRIS_ACQUIRED_CAPTURE_IRIS_LEAVE:I = 0x2714

.field public static final IRIS_ACQUIRED_CAPTURE_IRIS_LEAVE_TIMEOUT:I = 0x2717

.field public static final IRIS_ACQUIRED_CAPTURE_READY:I = 0x2711

.field public static final IRIS_ACQUIRED_CAPTURE_STARTED:I = 0x2712

.field public static final IRIS_ACQUIRED_CAPTURE_SUCCESS:I = 0x2715

.field public static final IRIS_ACQUIRED_CHANGE_YOUR_POSITION:I = 0xc

.field public static final IRIS_ACQUIRED_DUPLICATED_SCANNED_IMAGE:I = 0x3ea

.field public static final IRIS_ACQUIRED_EYE_NOT_PRESENT:I = 0xa

.field public static final IRIS_ACQUIRED_FACTORY_TEST_SNSR_TEST_SCRIPT_END:I = 0x2719

.field public static final IRIS_ACQUIRED_FACTORY_TEST_SNSR_TEST_SCRIPT_START:I = 0x2718

.field public static final IRIS_ACQUIRED_GOOD:I = 0x0

.field public static final IRIS_ACQUIRED_INSUFFICIENT:I = 0x2

.field public static final IRIS_ACQUIRED_MOVE_CLOSER:I = 0x3

.field public static final IRIS_ACQUIRED_MOVE_DOWN:I = 0x8

.field public static final IRIS_ACQUIRED_MOVE_FARTHER:I = 0x4

.field public static final IRIS_ACQUIRED_MOVE_LEFT:I = 0x5

.field public static final IRIS_ACQUIRED_MOVE_RIGHT:I = 0x6

.field public static final IRIS_ACQUIRED_MOVE_SOMEWHERE_DARKER:I = 0xb

.field public static final IRIS_ACQUIRED_MOVE_UP:I = 0x7

.field public static final IRIS_ACQUIRED_OPEN_EYES_WIDER:I = 0x9

.field public static final IRIS_ACQUIRED_PARTIAL:I = 0x1

.field public static final IRIS_ACQUIRED_VENDOR_BASE:I = 0x3e8

.field public static final IRIS_ACQUIRED_VENDOR_EVENT_BASE:I = 0x2710

.field public static final IRIS_AUTH_TYPE_NONE:I = 0x0

.field public static final IRIS_AUTH_TYPE_PREVIEW_CALLBACK:I = 0x1

.field public static final IRIS_AUTH_TYPE_UI_NO_PREVIEW:I = 0x3

.field public static final IRIS_AUTH_TYPE_UI_WITH_PREVIEW:I = 0x2

.field public static final IRIS_DISABLE_PREVIEW_CALLBACK:I = 0x7

.field public static final IRIS_ENABLE_PREVIEW_CALLBACK:I = 0x6

.field public static final IRIS_ERROR_AUTH_VIEW_SIZE:I = 0xa

.field public static final IRIS_ERROR_AUTH_WINDOW_TOKEN:I = 0xb

.field public static final IRIS_ERROR_CANCELED:I = 0x4

.field public static final IRIS_ERROR_DEVICE_NEED_RECAL:I = 0x3e9

.field public static final IRIS_ERROR_EVICTED:I = 0xd

.field public static final IRIS_ERROR_EYE_SAFETY_TIMEOUT:I = 0x9

.field public static final IRIS_ERROR_HW_UNAVAILABLE:I = 0x0

.field public static final IRIS_ERROR_IDENTIFY_FAILURE_BROKEN_DATABASE:I = 0x3ec

.field public static final IRIS_ERROR_IDENTIFY_FAILURE_SENSOR_CHANGED:I = 0x3ed

.field public static final IRIS_ERROR_IDENTIFY_FAILURE_SERVICE_FAILURE:I = 0x3eb

.field public static final IRIS_ERROR_IDENTIFY_FAILURE_SYSTEM_FAILURE:I = 0x3ea

.field public static final IRIS_ERROR_LOCKOUT:I = 0x6

.field public static final IRIS_ERROR_NO_SPACE:I = 0x3

.field public static final IRIS_ERROR_OPEN_IR_CAMERA_FAIL:I = 0x8

.field public static final IRIS_ERROR_PROXIMITY_TIMEOUT:I = 0xc

.field public static final IRIS_ERROR_START_IR_CAMERA_PREVIEW_FAIL:I = 0x7

.field public static final IRIS_ERROR_TIMEOUT:I = 0x2

.field public static final IRIS_ERROR_UNABLE_TO_PROCESS:I = 0x1

.field public static final IRIS_ERROR_UNABLE_TO_REMOVE:I = 0x5

.field public static final IRIS_ERROR_VENDOR_BASE:I = 0x3e8

.field public static final IRIS_INVISIBLE_PREVIEW:I = 0x4

.field public static final IRIS_ONE_EYE:I = 0x9c40

.field public static final IRIS_REQUEST_ENROLL_SESSION:I = 0x3ea

.field public static final IRIS_REQUEST_ENUMERATE:I = 0xb

.field public static final IRIS_REQUEST_FACTORY_TEST_ALWAYS_LED_ON:I = 0x7d1

.field public static final IRIS_REQUEST_FACTORY_TEST_CAMERA_VERSION:I = 0x7d4

.field public static final IRIS_REQUEST_FACTORY_TEST_CAPTURE:I = 0x7d2

.field public static final IRIS_REQUEST_FACTORY_TEST_FULL_PREVIEW:I = 0x7d0

.field public static final IRIS_REQUEST_FACTORY_TEST_PREVIEW_MODE:I = 0x7d3

.field public static final IRIS_REQUEST_GET_SENSOR_INFO:I = 0x5

.field public static final IRIS_REQUEST_GET_SENSOR_STATUS:I = 0x6

.field public static final IRIS_REQUEST_GET_UNIQUE_ID:I = 0x7

.field public static final IRIS_REQUEST_GET_USERIDS:I = 0xc

.field public static final IRIS_REQUEST_GET_VERSION:I = 0x4

.field public static final IRIS_REQUEST_LOCKOUT:I = 0x3e9

.field public static final IRIS_REQUEST_PAUSE:I = 0x0

.field public static final IRIS_REQUEST_PROCESS_FIDO:I = 0x9

.field public static final IRIS_REQUEST_REMOVE_IRIS:I = 0x3e8

.field public static final IRIS_REQUEST_RESUME:I = 0x1

.field public static final IRIS_REQUEST_SENSOR_TEST_NORMALSCAN:I = 0x3

.field public static final IRIS_REQUEST_SESSION_OPEN:I = 0x2

.field public static final IRIS_REQUEST_SET_ACTIVE_GROUP:I = 0x8

.field public static final IRIS_REQUEST_UPDATE_SID:I = 0xa

.field public static final IRIS_TWO_EYES:I = 0x9c41

.field public static final IRIS_VISIBLE_PREVIEW:I = 0x5

.field private static final MANAGE_IRIS:Ljava/lang/String; = "com.samsung.android.camera.iris.permission.MANAGE_IRIS"

.field private static final MSG_ACQUIRED:I = 0x65

.field private static final MSG_AUTHENTICATION_FAILED:I = 0x67

.field private static final MSG_AUTHENTICATION_SUCCEEDED:I = 0x66

.field private static final MSG_AUTHENTICATION_SUCCEEDED_FIDO_RESULT_DATA:I = 0x6b

.field private static final MSG_ENROLL_RESULT:I = 0x64

.field private static final MSG_ERROR:I = 0x68

.field private static final MSG_IR_IMAGE:I = 0x6a

.field private static final MSG_REMOVED:I = 0x69

.field public static final PRIVILEGED_ATTR_EXCLUSIVE_IDENTIFY:I = 0x4

.field public static final PRIVILEGED_ATTR_IRIS_DETECTION:I = 0x8

.field public static final PRIVILEGED_ATTR_NO_LOCKOUT:I = 0x2

.field public static final PRIVILEGED_ATTR_NO_VIBRATION:I = 0x1

.field public static final PRIVILEGED_TYPE_KEYGUARD:I = -0x80000000

.field public static final SENSOR_STATUS_ERROR:I = 0x186ca

.field public static final SENSOR_STATUS_LED_OFF:I = 0x7531

.field public static final SENSOR_STATUS_LED_ON:I = 0x7530

.field public static final SENSOR_STATUS_OK:I = 0x186c8

.field public static final SENSOR_STATUS_SECURE_DISABLE:I = 0x4e21

.field public static final SENSOR_STATUS_SECURE_ENALBE:I = 0x4e20

.field public static final SENSOR_STATUS_WORKING:I = 0x186c9

.field private static final SYSTEM_FEATURE_IRIS:Ljava/lang/String; = "com.samsung.android.camera.iris"

.field private static final TAG:Ljava/lang/String; = "SemIrisManager"

.field private static final USE_IRIS:Ljava/lang/String; = "com.samsung.android.camera.iris.permission.USE_IRIS"

.field private static mSemIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;


# instance fields
.field private mAuthBegin:J

.field private mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

.field private mContext:Landroid/content/Context;

.field private mCryptoObject:Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

.field private mEnrollmentCallback:Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

.field private mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

.field private mHandler:Landroid/os/Handler;

.field private mRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

.field private mRemovalIris:Lcom/samsung/android/camera/iris/Iris;

.field private mRequestCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;

.field private mService:Lcom/samsung/android/camera/iris/IIrisService;

.field private mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

.field private mToken:Landroid/os/IBinder;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 467
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mSemIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    .line 480
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthBegin:J

    .line 481
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    invoke-direct {v0}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    .line 1948
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/iris/SemIrisManager$4;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;)V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    .line 2003
    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    .line 2005
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/content/Context;Lcom/samsung/android/camera/iris/SemIrisManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    .line 2007
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    .line 2008
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/camera/iris/IIrisService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/camera/iris/IIrisService;

    .prologue
    .line 1804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    .line 480
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthBegin:J

    .line 481
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    invoke-direct {v0}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    .line 1948
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/iris/SemIrisManager$4;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;)V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    .line 1805
    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    .line 1806
    iput-object p2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    .line 1807
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-nez v0, :cond_0

    .line 1808
    const-string v0, "SemIrisManager"

    const-string v1, "SemIrisManagerService was null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    :cond_0
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/content/Context;Lcom/samsung/android/camera/iris/SemIrisManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    .line 1811
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/camera/iris/SemIrisManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->cancelEnrollment()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/camera/iris/SemIrisManager;Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;
    .param p1, "x1"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->cancelAuthentication(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/Iris;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mRemovalIris:Lcom/samsung/android/camera/iris/Iris;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/camera/iris/SemIrisManager;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mCryptoObject:Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mRequestCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/camera/iris/SemIrisManager;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getAcquiredString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/camera/iris/SemIrisManager;Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;
    .param p1, "x1"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
    .param p2, "x2"    # Landroid/os/CancellationSignal;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    .param p5, "x5"    # Landroid/os/Handler;
    .param p6, "x6"    # I
    .param p7, "x7"    # Landroid/os/Bundle;
    .param p8, "x8"    # Landroid/view/View;
    .param p9, "x9"    # J
    .param p11, "x10"    # [B

    .prologue
    .line 69
    invoke-direct/range {p0 .. p11}, Lcom/samsung/android/camera/iris/SemIrisManager;->checkAuthViewWindowToken(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/camera/iris/SemIrisManager;[BLandroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Landroid/os/CancellationSignal;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;
    .param p5, "x5"    # Landroid/os/Bundle;
    .param p6, "x6"    # Landroid/view/View;

    .prologue
    .line 69
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/camera/iris/SemIrisManager;->checkEnrollViewWindowToken([BLandroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mEnrollmentCallback:Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    return-object v0
.end method

.method private static byteArrayToHex([B)Ljava/lang/String;
    .locals 9
    .param p0, "byteArray"    # [B

    .prologue
    .line 2058
    if-nez p0, :cond_0

    .line 2059
    const/4 v5, 0x0

    .line 2066
    :goto_0
    return-object v5

    .line 2062
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2063
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-byte v1, v0, v2

    .line 2064
    .local v1, "b":B
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    and-int/lit16 v8, v1, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2063
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2066
    .end local v1    # "b":B
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private static bytesToString([BI)Ljava/lang/String;
    .locals 6
    .param p0, "a"    # [B
    .param p1, "len"    # I

    .prologue
    .line 1485
    array-length v2, p0

    if-gt p1, v2, :cond_0

    if-gez p1, :cond_1

    .line 1486
    :cond_0
    const/4 v2, 0x0

    .line 1492
    :goto_0
    return-object v2

    .line 1488
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p1, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1489
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 1490
    const-string v2, "%c"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1489
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1492
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private cancelAuthentication(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;)V
    .locals 4
    .param p1, "cryptoObject"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    .prologue
    .line 1837
    const-string v1, "SemIrisManager"

    const-string v2, "cancelAuthentication"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1847
    :cond_0
    :goto_0
    return-void

    .line 1841
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_0

    .line 1843
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/camera/iris/IIrisService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1844
    :catch_0
    move-exception v0

    .line 1845
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Remote exception while canceling authentication"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private cancelEnrollment()V
    .locals 3

    .prologue
    .line 1823
    const-string v1, "SemIrisManager"

    const-string v2, "cancelEnrollment"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1834
    :cond_0
    :goto_0
    return-void

    .line 1827
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_0

    .line 1829
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/samsung/android/camera/iris/IIrisService;->cancelEnrollment(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1830
    :catch_0
    move-exception v0

    .line 1831
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Remote exception while canceling enrollment"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkAuthViewWindowToken(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V
    .locals 21
    .param p1, "crypto"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I
    .param p7, "attr"    # Landroid/os/Bundle;
    .param p8, "irisView"    # Landroid/view/View;
    .param p9, "sessionId"    # J
    .param p11, "fidoRequestData"    # [B

    .prologue
    .line 913
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    if-nez v2, :cond_0

    .line 914
    new-instance v2, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    invoke-direct {v2}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    .line 916
    :cond_0
    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_3

    .line 917
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthBegin:J

    sub-long/2addr v2, v6

    const-wide/16 v6, 0xbb8

    cmp-long v2, v2, v6

    if-ltz v2, :cond_2

    .line 918
    const-string v2, "SemIrisManager"

    const-string v3, "checkAuthViewWindowToken is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    invoke-virtual {v2}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;->removeAllGetterCallbacks()V

    .line 920
    if-eqz p4, :cond_1

    .line 921
    const/16 v2, 0xb

    const/16 v3, 0xb

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 960
    :cond_1
    :goto_0
    return-void

    .line 925
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    new-instance v2, Lcom/samsung/android/camera/iris/SemIrisManager$1;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-wide/from16 v12, p9

    move-object/from16 v14, p11

    invoke-direct/range {v2 .. v14}, Lcom/samsung/android/camera/iris/SemIrisManager$1;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V

    invoke-virtual {v15, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;->postGetterCallback(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 932
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    invoke-virtual {v2}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;->removeAllGetterCallbacks()V

    .line 934
    :try_start_0
    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    .line 936
    .local v5, "mWindowToken":Landroid/os/IBinder;
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v20, v0

    .line 937
    .local v20, "position":[I
    move-object/from16 v0, p8

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 938
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    if-nez v2, :cond_4

    .line 939
    const-string v2, "SemIrisManager"

    const-string/jumbo v3, "mToken null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getMinimumIrisViewSize()Landroid/util/Size;

    move-result-object v19

    .line 943
    .local v19, "mAuthViewSize":Landroid/util/Size;
    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-lt v2, v3, :cond_5

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 944
    :cond_5
    if-eqz p4, :cond_6

    .line 945
    const/16 v2, 0xa

    const/16 v3, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 949
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    aget v6, v20, v2

    const/4 v2, 0x1

    aget v7, v20, v2

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getHeight()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v10, p9

    move/from16 v12, p6

    move/from16 v14, p3

    move-object/from16 v16, p7

    move-object/from16 v17, p11

    invoke-interface/range {v3 .. v17}, Lcom/samsung/android/camera/iris/IIrisService;->authenticate(Landroid/os/IBinder;Landroid/os/IBinder;IIIIJILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 951
    .end local v5    # "mWindowToken":Landroid/os/IBinder;
    .end local v19    # "mAuthViewSize":Landroid/util/Size;
    .end local v20    # "position":[I
    :catch_0
    move-exception v18

    .line 952
    .local v18, "e":Landroid/os/RemoteException;
    const-string v2, "SemIrisManager"

    const-string v3, "Remote exception while authenticating"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    if-eqz p4, :cond_1

    .line 956
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private checkEnrollViewWindowToken([BLandroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 15
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;
    .param p5, "attr"    # Landroid/os/Bundle;
    .param p6, "irisView"    # Landroid/view/View;

    .prologue
    .line 1065
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    if-nez v1, :cond_0

    .line 1066
    new-instance v1, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    invoke-direct {v1}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    .line 1068
    :cond_0
    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1069
    iget-object v9, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    new-instance v1, Lcom/samsung/android/camera/iris/SemIrisManager$2;

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/camera/iris/SemIrisManager$2;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;[BLandroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V

    invoke-virtual {v9, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;->postGetterCallback(Ljava/lang/Runnable;)V

    .line 1094
    :cond_1
    :goto_0
    return-void

    .line 1076
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    invoke-virtual {v1}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;->removeAllGetterCallbacks()V

    .line 1078
    :try_start_0
    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .line 1080
    .local v3, "mWindowToken":Landroid/os/IBinder;
    const/4 v1, 0x2

    new-array v14, v1, [I

    .line 1081
    .local v14, "position":[I
    move-object/from16 v0, p6

    invoke-virtual {v0, v14}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1082
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_3

    .line 1083
    const-string v1, "SemIrisManager"

    const-string/jumbo v2, "mToken null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    aget v4, v14, v4

    const/4 v5, 0x1

    aget v5, v14, v5

    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getCurrentUserId()I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-object/from16 v8, p1

    move/from16 v11, p3

    move-object/from16 v12, p5

    invoke-interface/range {v1 .. v12}, Lcom/samsung/android/camera/iris/IIrisService;->enroll(Landroid/os/IBinder;Landroid/os/IBinder;IIII[BILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1085
    .end local v3    # "mWindowToken":Landroid/os/IBinder;
    .end local v14    # "position":[I
    :catch_0
    move-exception v13

    .line 1086
    .local v13, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Remote exception in enroll"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    if-eqz p4, :cond_1

    .line 1090
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private declared-synchronized ensureServiceConnected()Z
    .locals 5

    .prologue
    .line 2011
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2014
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/camera/iris/IIrisService;->isHardwareDetected(JLjava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2022
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-nez v1, :cond_1

    .line 2023
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->startIrisService()V

    .line 2024
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->waitForService()V

    .line 2027
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    monitor-exit p0

    return v1

    .line 2015
    :catch_0
    move-exception v0

    .line 2016
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    instance-of v1, v0, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_0

    .line 2017
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2011
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2027
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getAcquiredString(I)Ljava/lang/String;
    .locals 7
    .param p1, "acquireInfo"    # I

    .prologue
    const/4 v3, 0x0

    .line 1904
    iget-object v4, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1905
    .local v1, "mPm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 1908
    .local v2, "mRes":Landroid/content/res/Resources;
    :try_start_0
    const-string v4, "com.samsung.android.server.iris"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1914
    :goto_0
    if-nez v2, :cond_0

    .line 1915
    const-string v4, "SemIrisManager"

    const-string/jumbo v5, "mRes is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    :goto_1
    return-object v3

    .line 1909
    :catch_0
    move-exception v0

    .line 1910
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SemIrisManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAcquiredString, Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    const/4 v2, 0x0

    goto :goto_0

    .line 1920
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 1922
    :pswitch_1
    :try_start_1
    const-string v4, "iris_acquired_move_closer"

    const-string/jumbo v5, "string"

    const-string v6, "com.samsung.android.server.iris"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1924
    :pswitch_2
    const-string v4, "iris_acquired_move_farther"

    const-string/jumbo v5, "string"

    const-string v6, "com.samsung.android.server.iris"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1926
    :pswitch_3
    const-string v4, "iris_acquired_open_wider"

    const-string/jumbo v5, "string"

    const-string v6, "com.samsung.android.server.iris"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1928
    :pswitch_4
    const-string v4, "iris_acquired_move_somewhere_darker"

    const-string/jumbo v5, "string"

    const-string v6, "com.samsung.android.server.iris"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1930
    :pswitch_5
    const-string v4, "iris_acquired_change_your_position"

    const-string/jumbo v5, "string"

    const-string v6, "com.samsung.android.server.iris"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_1

    .line 1942
    :catch_1
    move-exception v0

    .line 1943
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v4, "SemIrisManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAcquiredString, NotFoundException = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1920
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getCurrentUserId()I
    .locals 3

    .prologue
    .line 1815
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1818
    :goto_0
    return v1

    .line 1816
    :catch_0
    move-exception v0

    .line 1817
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Failed to get current user id\n"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    const/16 v1, -0x2710

    goto :goto_0
.end method

.method private getErrorString(I)Ljava/lang/String;
    .locals 8
    .param p1, "errMsg"    # I

    .prologue
    const/4 v3, 0x0

    .line 1850
    iget-object v4, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1851
    .local v1, "mPm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 1853
    .local v2, "mRes":Landroid/content/res/Resources;
    :try_start_0
    const-string v4, "com.samsung.android.server.iris"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1858
    :goto_0
    if-nez v2, :cond_0

    .line 1859
    const-string v4, "SemIrisManager"

    const-string/jumbo v5, "mRes is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    :goto_1
    return-object v3

    .line 1854
    :catch_0
    move-exception v0

    .line 1855
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SemIrisManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getErrorString, Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    const/4 v2, 0x0

    goto :goto_0

    .line 1864
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1894
    :pswitch_0
    :try_start_1
    const-string v4, "iris_error_unable_to_process"

    const-string/jumbo v5, "string"

    const-string v6, "com.samsung.android.server.iris"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1866
    :pswitch_1
    const-string v4, "iris_error_unable_to_process"

    const-string/jumbo v5, "string"

    const-string v6, "com.samsung.android.server.iris"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1868
    :pswitch_2
    const-string v4, "iris_error_sensor_no_response"

    const-string/jumbo v5, "string"

    const-string v6, "com.samsung.android.server.iris"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1870
    :pswitch_3
    const-string v4, "iris_error_no_space"

    const-string/jumbo v5, "string"

    const-string v6, "com.samsung.android.server.iris"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1872
    :pswitch_4
    const-string v4, "iris_error_timeout"

    const-string/jumbo v5, "string"

    const-string v6, "com.samsung.android.server.iris"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1874
    :pswitch_5
    const-string v4, "iris_error_canceled"

    const-string/jumbo v5, "string"

    const-string v6, "com.samsung.android.server.iris"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1876
    :pswitch_6
    const-string v4, "iris_error_lockout"

    const-string/jumbo v5, "string"

    const-string v6, "com.samsung.android.server.iris"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1878
    :pswitch_7
    const-string v4, "iris_error_unable_to_remove"

    const-string/jumbo v5, "string"

    const-string v6, "com.samsung.android.server.iris"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1880
    :pswitch_8
    const-string v3, ""

    goto/16 :goto_1

    .line 1882
    :pswitch_9
    const-string v3, ""

    goto/16 :goto_1

    .line 1884
    :pswitch_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iris_error_eye_safety_timeout"

    const-string/jumbo v6, "string"

    const-string v7, "com.samsung.android.server.iris"

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "iris_error_eye_safety_timeout_2nd"

    const-string/jumbo v6, "string"

    const-string v7, "com.samsung.android.server.iris"

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1887
    :pswitch_b
    const-string v4, "iris_error_auth_view_size"

    const-string/jumbo v5, "string"

    const-string v6, "com.samsung.android.server.iris"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1889
    :pswitch_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iris_error_proximity_timeout"

    const-string/jumbo v6, "string"

    const-string v7, "com.samsung.android.server.iris"

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "iris_error_proximity_timeout_2nd"

    const-string/jumbo v6, "string"

    const-string v7, "com.samsung.android.server.iris"

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1892
    :pswitch_d
    const-string v4, "iris_error_evicted"

    const-string/jumbo v5, "string"

    const-string v6, "com.samsung.android.server.iris"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto/16 :goto_1

    .line 1896
    :catch_1
    move-exception v0

    .line 1897
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v4, "SemIrisManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getErrorString, NotFoundException = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1864
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static declared-synchronized getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1991
    const-class v1, Lcom/samsung/android/camera/iris/SemIrisManager;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.samsung.android.camera.iris"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1992
    sget-object v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mSemIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-nez v0, :cond_0

    .line 1993
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/iris/SemIrisManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mSemIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    .line 1995
    :cond_0
    sget-object v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mSemIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1997
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1991
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private requestGetUniqueID(ILjava/lang/String;)[B
    .locals 11
    .param p1, "irisId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 1433
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v10

    .line 1449
    :goto_0
    return-object v0

    .line 1436
    :cond_0
    const/16 v0, 0x100

    new-array v4, v0, [B

    .line 1437
    .local v4, "outBuf":[B
    const/4 v9, 0x0

    .line 1439
    .local v9, "size":I
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v0, :cond_1

    .line 1441
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x7

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move v5, p1

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/camera/iris/IIrisService;->request(Landroid/os/IBinder;I[B[BIILcom/samsung/android/camera/iris/IIrisServiceReceiver;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 1446
    :cond_1
    :goto_1
    if-gtz v9, :cond_2

    move-object v0, v10

    .line 1447
    goto :goto_0

    .line 1442
    :catch_0
    move-exception v8

    .line 1443
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "SemIrisManager"

    const-string v1, "Remote exception in request()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1449
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_2
    invoke-static {v4, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_0
.end method

.method private startIrisService()V
    .locals 5

    .prologue
    .line 2032
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2033
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.server.iris"

    const-string v4, "com.samsung.android.server.iris.IrisService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2034
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2038
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 2035
    :catch_0
    move-exception v0

    .line 2036
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SemIrisManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting startIrisService failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private useHandler(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    .line 854
    if-eqz p1, :cond_1

    .line 855
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/os/Looper;Lcom/samsung/android/camera/iris/SemIrisManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    .line 859
    :cond_0
    :goto_0
    return-void

    .line 856
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 857
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/os/Looper;Lcom/samsung/android/camera/iris/SemIrisManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private waitForService()V
    .locals 4

    .prologue
    .line 2042
    const/4 v0, 0x1

    .local v0, "count":I
    :goto_0
    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    .line 2043
    const-string/jumbo v1, "samsung.iris"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    .line 2045
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    .line 2046
    const-string v1, "SemIrisManager"

    const-string v2, "Service connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    :cond_0
    return-void

    .line 2050
    :cond_1
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2042
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2052
    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public addLockoutResetCallback(Lcom/samsung/android/camera/iris/SemIrisManager$LockoutResetCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$LockoutResetCallback;

    .prologue
    .line 1632
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1662
    :goto_0
    return-void

    .line 1635
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v2, :cond_1

    .line 1637
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1638
    .local v1, "powerManager":Landroid/os/PowerManager;
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    new-instance v3, Lcom/samsung/android/camera/iris/SemIrisManager$3;

    invoke-direct {v3, p0, v1, p1}, Lcom/samsung/android/camera/iris/SemIrisManager$3;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/os/PowerManager;Lcom/samsung/android/camera/iris/SemIrisManager$LockoutResetCallback;)V

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/iris/IIrisService;->addLockoutResetCallback(Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1656
    .end local v1    # "powerManager":Landroid/os/PowerManager;
    :catch_0
    move-exception v0

    .line 1657
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SemIrisManager"

    const-string v3, "Remote exception in addLockoutResetCallback()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1660
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v2, "SemIrisManager"

    const-string v3, "addLockoutResetCallback(): Service not connected!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public authenticate(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V
    .locals 31
    .param p1, "crypto"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I
    .param p7, "attr"    # Landroid/os/Bundle;
    .param p8, "irisView"    # Landroid/view/View;

    .prologue
    .line 867
    if-nez p4, :cond_0

    .line 868
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Must supply an authentication callback"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 871
    :cond_0
    if-eqz p2, :cond_3

    .line 872
    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 873
    const-string v3, "SemIrisManager"

    const-string v4, "authentication already canceled"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_1
    :goto_0
    return-void

    .line 876
    :cond_2
    new-instance v3, Lcom/samsung/android/camera/iris/SemIrisManager$OnAuthenticationCancelListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$OnAuthenticationCancelListener;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 880
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 883
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v3, :cond_1

    .line 885
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->useHandler(Landroid/os/Handler;)V

    .line 886
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mEnrollmentCallback:Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    .line 887
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    .line 888
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/camera/iris/SemIrisManager;->mCryptoObject:Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    .line 889
    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->getOpId()J

    move-result-wide v10

    .line 890
    .local v10, "sessionId":J
    :goto_1
    if-eqz p1, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mCryptoObject:Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    invoke-virtual {v3}, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->getFidoRequestData()[B

    move-result-object v17

    .line 891
    .local v17, "fidoRequestData":[B
    :goto_2
    if-nez p8, :cond_6

    .line 892
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v15

    move/from16 v12, p6

    move/from16 v14, p3

    move-object/from16 v16, p7

    invoke-interface/range {v3 .. v17}, Lcom/samsung/android/camera/iris/IIrisService;->authenticate(Landroid/os/IBinder;Landroid/os/IBinder;IIIIJILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 897
    .end local v10    # "sessionId":J
    .end local v17    # "fidoRequestData":[B
    :catch_0
    move-exception v2

    .line 898
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SemIrisManager"

    const-string v4, "Remote exception while authenticating"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 889
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4
    const-wide/16 v10, 0x0

    goto :goto_1

    .line 890
    .restart local v10    # "sessionId":J
    :cond_5
    const/16 v17, 0x0

    goto :goto_2

    .line 894
    .restart local v17    # "fidoRequestData":[B
    :cond_6
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthBegin:J

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, p2

    move/from16 v22, p3

    move-object/from16 v23, p4

    move-object/from16 v24, p5

    move/from16 v25, p6

    move-object/from16 v26, p7

    move-object/from16 v27, p8

    move-wide/from16 v28, v10

    move-object/from16 v30, v17

    .line 895
    invoke-direct/range {v19 .. v30}, Lcom/samsung/android/camera/iris/SemIrisManager;->checkAuthViewWindowToken(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public authenticate(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;)V
    .locals 9
    .param p1, "crypto"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "irisView"    # Landroid/view/View;

    .prologue
    .line 846
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/camera/iris/SemIrisManager;->authenticate(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V

    .line 847
    return-void
.end method

.method public enableIRImageCallback(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 1305
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1316
    :cond_0
    :goto_0
    return-void

    .line 1307
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_0

    .line 1309
    if-eqz p1, :cond_2

    .line 1310
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/camera/iris/IIrisService;->enableIRImageCallback(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1313
    :catch_0
    move-exception v0

    .line 1314
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Remote exception in enableIRImageCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1312
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/camera/iris/IIrisService;->enableIRImageCallback(ILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public enroll([BLandroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 14
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;
    .param p5, "attr"    # Landroid/os/Bundle;
    .param p6, "irisView"    # Landroid/view/View;

    .prologue
    .line 1024
    if-nez p4, :cond_0

    .line 1025
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must supply an enrollment callback"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1028
    :cond_0
    if-eqz p2, :cond_3

    .line 1029
    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1030
    const-string v1, "SemIrisManager"

    const-string v2, "enrollment already canceled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :cond_1
    :goto_0
    return-void

    .line 1033
    :cond_2
    new-instance v1, Lcom/samsung/android/camera/iris/SemIrisManager$OnEnrollCancelListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$OnEnrollCancelListener;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Lcom/samsung/android/camera/iris/SemIrisManager$1;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 1037
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1040
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    .line 1042
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    .line 1043
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mEnrollmentCallback:Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    .line 1044
    if-nez p6, :cond_4

    .line 1045
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getCurrentUserId()I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-object v8, p1

    move/from16 v11, p3

    move-object/from16 v12, p5

    invoke-interface/range {v1 .. v12}, Lcom/samsung/android/camera/iris/IIrisService;->enroll(Landroid/os/IBinder;Landroid/os/IBinder;IIII[BILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1049
    :catch_0
    move-exception v13

    .line 1050
    .local v13, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Remote exception in enroll"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 1047
    .end local v13    # "e":Landroid/os/RemoteException;
    :cond_4
    :try_start_1
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/camera/iris/SemIrisManager;->checkEnrollViewWindowToken([BLandroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public enroll([BLandroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/view/View;)V
    .locals 7
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;
    .param p5, "irisView"    # Landroid/view/View;

    .prologue
    .line 1018
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/camera/iris/SemIrisManager;->enroll([BLandroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V

    .line 1019
    return-void
.end method

.method public enroll([BLandroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/view/View;I)V
    .locals 7
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;
    .param p5, "irisView"    # Landroid/view/View;
    .param p6, "irisViewType"    # I

    .prologue
    .line 998
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/camera/iris/SemIrisManager;->enroll([BLandroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V

    .line 999
    return-void
.end method

.method public getAuthenticatorId()J
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 1591
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1603
    :goto_0
    return-wide v2

    .line 1594
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    .line 1596
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v4, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/samsung/android/camera/iris/IIrisService;->getAuthenticatorId(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 1597
    :catch_0
    move-exception v0

    .line 1598
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v4, "Remote exception in getAuthenticatorId()"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1601
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "SemIrisManager"

    const-string v4, "getAuthenticatorId(): Service not connected!"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEnrolledIrisUniqueID()Landroid/util/SparseArray;
    .locals 9

    .prologue
    .line 1324
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1325
    const/4 v5, 0x0

    .line 1347
    :cond_0
    :goto_0
    return-object v5

    .line 1327
    :cond_1
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 1328
    .local v5, "localSparseArray":Landroid/util/SparseArray;
    const/4 v4, 0x0

    .line 1329
    .local v4, "irisList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/iris/Iris;>;"
    const/4 v2, 0x1

    .line 1331
    .local v2, "index":I
    iget-object v6, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v6, :cond_2

    .line 1333
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/samsung/android/camera/iris/IIrisService;->getEnrolledIrises(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1339
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    if-nez v6, :cond_4

    .line 1340
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 1334
    :catch_0
    move-exception v0

    .line 1335
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "SemIrisManager"

    const-string v7, "Remote exception in getEnrolledIrises"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1342
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/camera/iris/Iris;

    .line 1343
    .local v3, "ir":Lcom/samsung/android/camera/iris/Iris;
    invoke-virtual {v3}, Lcom/samsung/android/camera/iris/Iris;->getIrisId()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/camera/iris/SemIrisManager;->requestGetUniqueID(ILjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/camera/iris/SemIrisManager;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1344
    add-int/lit8 v2, v2, 0x1

    .line 1345
    goto :goto_2
.end method

.method public getEnrolledIrises()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/camera/iris/Iris;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1210
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getEnrolledIrises(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnrolledIrises(I)Ljava/util/List;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/camera/iris/Iris;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1191
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1199
    :cond_0
    :goto_0
    return-object v1

    .line 1193
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v2, :cond_0

    .line 1195
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/samsung/android/camera/iris/IIrisService;->getEnrolledIrises(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1196
    :catch_0
    move-exception v0

    .line 1197
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SemIrisManager"

    const-string v3, "Remote exception in getEnrolledIrises"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMinimumIrisViewSize()Landroid/util/Size;
    .locals 8

    .prologue
    .line 1259
    const/4 v4, 0x0

    .line 1260
    .local v4, "width":I
    const/4 v1, 0x0

    .line 1261
    .local v1, "height":I
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1262
    .local v0, "displaymetrics":Landroid/util/DisplayMetrics;
    iget-object v5, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1263
    const v3, 0x3fe38e39

    .line 1264
    .local v3, "scale":F
    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1266
    .local v2, "roundDensity":I
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v5, v6, :cond_0

    .line 1267
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int v4, v5, v2

    .line 1268
    int-to-float v5, v4

    div-float/2addr v5, v3

    float-to-int v1, v5

    .line 1274
    :goto_0
    new-instance v5, Landroid/util/Size;

    mul-int v6, v4, v2

    mul-int v7, v1, v2

    invoke-direct {v5, v6, v7}, Landroid/util/Size;-><init>(II)V

    return-object v5

    .line 1270
    :cond_0
    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int v4, v5, v2

    .line 1271
    int-to-float v5, v4

    div-float/2addr v5, v3

    float-to-int v1, v5

    goto :goto_0
.end method

.method public hasEnrolledIrises()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1220
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1228
    :cond_0
    :goto_0
    return v1

    .line 1222
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v2, :cond_0

    .line 1224
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/camera/iris/IIrisService;->hasEnrolledIrises(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1225
    :catch_0
    move-exception v0

    .line 1226
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SemIrisManager"

    const-string v3, "Remote exception in getEnrolledIrises"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isEnrollSession()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1378
    const/16 v1, 0x3ea

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v6

    .line 1379
    .local v6, "ret":I
    if-lez v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public isHardwareDetected()Z
    .locals 5

    .prologue
    .line 1238
    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v3, :cond_0

    .line 1240
    const-wide/16 v0, 0x0

    .line 1241
    .local v0, "deviceId":J
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v4, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v1, v4}, Lcom/samsung/android/camera/iris/IIrisService;->isHardwareDetected(JLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1248
    .end local v0    # "deviceId":J
    :goto_0
    return v3

    .line 1242
    .restart local v0    # "deviceId":J
    :catch_0
    move-exception v2

    .line 1243
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SemIrisManager"

    const-string v4, "Remote exception in isIrisHardwareDetected()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.android.camera.iris"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 1247
    .end local v0    # "deviceId":J
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v3, "SemIrisManager"

    const-string v4, "isIrisHardwareDetected(): Service not connected!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.android.camera.iris"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0
.end method

.method public postEnroll()I
    .locals 4

    .prologue
    .line 1122
    const/4 v1, 0x0

    .line 1123
    .local v1, "result":I
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1124
    const/4 v2, 0x0

    .line 1132
    :goto_0
    return v2

    .line 1126
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v2, :cond_1

    .line 1128
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/iris/IIrisService;->postEnroll(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_1
    :goto_1
    move v2, v1

    .line 1132
    goto :goto_0

    .line 1129
    :catch_0
    move-exception v0

    .line 1130
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SemIrisManager"

    const-string v3, "Remote exception in post enroll"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public preEnroll()J
    .locals 6

    .prologue
    .line 1103
    const-wide/16 v2, 0x0

    .line 1104
    .local v2, "result":J
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1105
    const-wide/16 v4, 0x0

    .line 1113
    :goto_0
    return-wide v4

    .line 1107
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    .line 1109
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v4, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v4}, Lcom/samsung/android/camera/iris/IIrisService;->preEnroll(Landroid/os/IBinder;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :cond_1
    :goto_1
    move-wide v4, v2

    .line 1113
    goto :goto_0

    .line 1110
    :catch_0
    move-exception v0

    .line 1111
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v4, "Remote exception in enroll"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public remove(Lcom/samsung/android/camera/iris/Iris;Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;)V
    .locals 7
    .param p1, "ir"    # Lcom/samsung/android/camera/iris/Iris;
    .param p2, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    .prologue
    const/4 v6, 0x1

    .line 1145
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1158
    :cond_0
    :goto_0
    return-void

    .line 1147
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_0

    .line 1149
    :try_start_0
    iput-object p2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    .line 1150
    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mRemovalIris:Lcom/samsung/android/camera/iris/Iris;

    .line 1151
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Lcom/samsung/android/camera/iris/Iris;->getIrisId()I

    move-result v3

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getCurrentUserId()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/samsung/android/camera/iris/IIrisService;->remove(Landroid/os/IBinder;IILcom/samsung/android/camera/iris/IIrisServiceReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1152
    :catch_0
    move-exception v0

    .line 1153
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Remote exception in remove"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    if-eqz p2, :cond_0

    .line 1155
    invoke-direct {p0, v6}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v6, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;->onRemovalError(Lcom/samsung/android/camera/iris/Iris;ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public rename(ILjava/lang/String;)V
    .locals 3
    .param p1, "irId"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 1170
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1181
    :goto_0
    return-void

    .line 1172
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    .line 1174
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getCurrentUserId()I

    move-result v2

    invoke-interface {v1, p1, v2, p2}, Lcom/samsung/android/camera/iris/IIrisService;->rename(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1175
    :catch_0
    move-exception v0

    .line 1176
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Remote exception in rename()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1179
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "SemIrisManager"

    const-string/jumbo v2, "rename(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I
    .locals 9
    .param p1, "cmd"    # I
    .param p2, "inputBuf"    # [B
    .param p3, "outputBuf"    # [B
    .param p4, "inParam"    # I
    .param p5, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;

    .prologue
    const/4 v0, 0x0

    .line 1353
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1372
    :goto_0
    return v0

    .line 1356
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v0, :cond_3

    .line 1358
    if-nez p2, :cond_1

    .line 1359
    const/4 v0, 0x0

    :try_start_0
    new-array p2, v0, [B

    .line 1361
    :cond_1
    if-nez p3, :cond_2

    .line 1362
    const/4 v0, 0x0

    new-array p3, v0, [B

    .line 1364
    :cond_2
    iput-object p5, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mRequestCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;

    .line 1365
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getCurrentUserId()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/camera/iris/IIrisService;->request(Landroid/os/IBinder;I[B[BIILcom/samsung/android/camera/iris/IIrisServiceReceiver;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1366
    :catch_0
    move-exception v8

    .line 1367
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "SemIrisManager"

    const-string v1, "Remote exception in request()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v0, -0x2

    goto :goto_0

    .line 1370
    :cond_3
    const-string v0, "SemIrisManager"

    const-string/jumbo v1, "request(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public requestCameraVersion()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1578
    const/16 v1, 0x7d4

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1581
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public requestCapture()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1570
    const/16 v1, 0x7d2

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1573
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public requestEnumerate()[I
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 1520
    const/16 v0, 0xa

    new-array v4, v0, [B

    .line 1521
    .local v4, "outBuf":[B
    const/4 v13, 0x0

    .line 1522
    .local v13, "size":I
    const/4 v10, 0x0

    .line 1524
    .local v10, "id":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v0, :cond_0

    .line 1526
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    new-array v3, v3, [B

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/camera/iris/IIrisService;->request(Landroid/os/IBinder;I[B[BIILcom/samsung/android/camera/iris/IIrisServiceReceiver;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 1531
    :cond_0
    :goto_0
    if-gtz v13, :cond_1

    .line 1532
    const/4 v0, 0x1

    new-array v11, v0, [I

    .line 1533
    .local v11, "result":[I
    aput v14, v11, v14

    move-object v12, v11

    .line 1541
    .end local v11    # "result":[I
    .local v12, "result":[I
    :goto_1
    return-object v12

    .line 1527
    .end local v12    # "result":[I
    :catch_0
    move-exception v8

    .line 1528
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "SemIrisManager"

    const-string v1, "Remote exception in request()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1536
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_1
    new-array v11, v13, [I

    .line 1537
    .restart local v11    # "result":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v13, :cond_2

    .line 1538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v1, v4, v9

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1539
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v11, v9

    .line 1537
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    move-object v12, v11

    .line 1541
    .end local v11    # "result":[I
    .restart local v12    # "result":[I
    goto :goto_1
.end method

.method public requestFullPreview()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1554
    const/16 v1, 0x7d0

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1557
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public requestGetSensorInfo()[B
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1418
    const/16 v0, 0x100

    new-array v3, v0, [B

    .line 1419
    .local v3, "outBuf":[B
    const/4 v1, 0x5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v6

    .line 1420
    .local v6, "size":I
    if-gtz v6, :cond_0

    .line 1423
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    goto :goto_0
.end method

.method public requestGetSensorStatus()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1429
    const/4 v1, 0x6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    return v0
.end method

.method public requestGetUserIDs()[Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 1497
    const/16 v0, 0x100

    new-array v3, v0, [B

    .line 1498
    .local v3, "outBuf":[B
    const/16 v1, 0xc

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v10

    .line 1499
    .local v10, "size":I
    if-gtz v10, :cond_1

    .line 1513
    :cond_0
    :goto_0
    return-object v2

    .line 1502
    :cond_1
    invoke-static {v3, v10}, Lcom/samsung/android/camera/iris/SemIrisManager;->bytesToString([BI)Ljava/lang/String;

    move-result-object v11

    .line 1503
    .local v11, "src":Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 1504
    new-instance v12, Ljava/util/StringTokenizer;

    const-string v0, ":"

    invoke-direct {v12, v11, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    .local v12, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v6

    .line 1506
    .local v6, "count":I
    new-array v9, v6, [Ljava/lang/String;

    .line 1507
    .local v9, "result":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1508
    .local v7, "i":I
    :goto_1
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1509
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "i":I
    .local v8, "i":I
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    move v7, v8

    .end local v8    # "i":I
    .restart local v7    # "i":I
    goto :goto_1

    :cond_2
    move-object v2, v9

    .line 1511
    goto :goto_0
.end method

.method public requestGetVersion()[B
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1408
    const/16 v0, 0x100

    new-array v3, v0, [B

    .line 1409
    .local v3, "outBuf":[B
    const/4 v1, 0x4

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v6

    .line 1410
    .local v6, "size":I
    if-gtz v6, :cond_0

    .line 1413
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    goto :goto_0
.end method

.method public requestLedOn()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1546
    const/16 v1, 0x7d1

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1549
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public requestPause()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1384
    move-object v0, p0

    move-object v3, v2

    move v4, v1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1387
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public requestPreviewMode()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1562
    const/16 v1, 0x7d3

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1565
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public requestProcessFIDO([B)[B
    .locals 7
    .param p1, "inBuf"    # [B

    .prologue
    const/4 v5, 0x0

    .line 1468
    const/16 v0, 0x2800

    new-array v3, v0, [B

    .line 1469
    .local v3, "outBuf":[B
    const/16 v1, 0x9

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v6

    .line 1470
    .local v6, "size":I
    if-gtz v6, :cond_0

    .line 1473
    :goto_0
    return-object v5

    :cond_0
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    goto :goto_0
.end method

.method public requestResume()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1392
    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1395
    :goto_0
    return v4

    :cond_0
    move v4, v1

    goto :goto_0
.end method

.method public requestSessionOpen()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1400
    const/4 v1, 0x2

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1403
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public requestSetActiveGroup(Ljava/lang/String;)Z
    .locals 10
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x8

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 1454
    if-nez p1, :cond_0

    .line 1455
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getCurrentUserId()I

    move-result v4

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_1

    move v0, v9

    .line 1463
    :goto_0
    return v0

    .line 1459
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getCurrentUserId()I

    move-result v7

    move-object v3, p0

    move v4, v1

    move-object v6, v2

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_1

    move v0, v9

    .line 1460
    goto :goto_0

    .line 1463
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public requestUpdateSID([B)Z
    .locals 6
    .param p1, "sId"    # [B

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1478
    const/16 v1, 0xa

    move-object v0, p0

    move-object v2, p1

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1481
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public resetTimeout([B)V
    .locals 3
    .param p1, "token"    # [B

    .prologue
    .line 1614
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1626
    :goto_0
    return-void

    .line 1617
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    .line 1619
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    invoke-interface {v1, p1}, Lcom/samsung/android/camera/iris/IIrisService;->resetTimeout([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1620
    :catch_0
    move-exception v0

    .line 1621
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Remote exception in resetTimeout()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1624
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "SemIrisManager"

    const-string/jumbo v2, "resetTimeout(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIrisViewType(I)V
    .locals 4
    .param p1, "irisViewType"    # I

    .prologue
    .line 1288
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1296
    :cond_0
    :goto_0
    return-void

    .line 1290
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_0

    .line 1292
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, p1}, Lcom/samsung/android/camera/iris/IIrisService;->setIrisViewType(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1293
    :catch_0
    move-exception v0

    .line 1294
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Remote exception in setIrisViewType"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

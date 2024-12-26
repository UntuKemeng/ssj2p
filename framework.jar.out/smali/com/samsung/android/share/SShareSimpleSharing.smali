.class public Lcom/samsung/android/share/SShareSimpleSharing;
.super Ljava/lang/Object;
.source "SShareSimpleSharing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;,
        Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;,
        Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;
    }
.end annotation


# static fields
.field public static final ACTION_REQ_AUTH:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup.ACTION_REQ_AUTH"

.field private static final DEBUG:Z = false

.field private static final DEV_TYPE_MOBILE:I = 0x1

.field private static final DEV_TYPE_TABLET:I = 0x2

.field public static final INTENT_ACTION_REQUESTSEND:Ljava/lang/String; = "com.samsung.android.coreapps.rshare.action.REQUESTSEND"

.field private static final INTENT_REQUEST_RECENT_GROUP:Ljava/lang/String; = "com.samsung.android.coreapps.rshare.requestrecentgroupcontacts"

.field private static final MAX_FONT_SCALE:F = 1.2f

.field private static final MSG_INIT_RECENTLIST:I = 0x7d0

.field private static final MSG_LIST_UPDATE:I = 0x3e8

.field private static final QUICKCONNECT_PERMISSION:Ljava/lang/String; = "com.samsung.android.sconnect.permission.REQUEST_DISCOVERY_SERIVCE"

.field private static RECENT_CONTACTS_LIST_MAX_COUNT:I = 0x0

.field private static final RECENT_TYPE_CONTACT_GROUP:I = 0x2

.field private static final RECENT_TYPE_CONTACT_PHOTO:I = 0x3

.field private static final RECENT_TYPE_CONTACT_PRIV:I = 0x1

.field private static final RECENT_TYPE_DEFAULT:I = 0x0

.field private static final RECENT_TYPE_DEVICE_MOBILE:I = 0x4

.field private static final RECENT_TYPE_DEVICE_TABLET:I = 0x5

.field private static final REQUEST_CODE_REQUEST_RECENT_CONTACTS:I = 0x1

.field public static final REQUEST_CODE_SIGNUP_REQ_AUTH:I = 0x1

.field public static final SSHARING_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.coreapps.rshare.ui.RelayActivity"

.field public static final SSHARING_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.coreapps"

.field private static final TAG:Ljava/lang/String; = "SShareSimpleSharing"

.field public static final TAG_RECIPIENT_DATAIDS:Ljava/lang/String; = "recipientdataids"

.field private static final WIFIDIRECT_ACTIVITY_NAME:Ljava/lang/String; = "com.sec.android.app.FileShareClient.DeviceSelectActivity"

.field private static mEasySignUpCertificated:Z

.field private static mIsRemoteShareServiceDownloaded:Z

.field private static mRemoteShareServiceEnabled:Z

.field private static mSSharingRecentContactExisted:Z


# instance fields
.field private final ELLIPSIS_NORMAL:[C

.field private final EXTRA_KEY_RECENT_GROUP_CONTACTID:Ljava/lang/String;

.field private final EXTRA_KEY_RECENT_GROUP_COUNT:Ljava/lang/String;

.field private final EXTRA_KEY_RECENT_GROUP_DATAIDS:Ljava/lang/String;

.field private final EXTRA_KEY_RECENT_GROUP_NAMES:Ljava/lang/String;

.field private final EXTRA_KEY_RECENT_GROUP_NAME_LIST:Ljava/lang/String;

.field private final EXTRA_KEY_RECENT_GROUP_PHONENUM:Ljava/lang/String;

.field private final EXTRA_KEY_RECENT_GROUP_THUMBNAILS:Ljava/lang/String;

.field private final REMOTE_SHARE_SERVICE_ID:I

.field private final RESPONSE_RECENT_GROUP_CONTACTS:Ljava/lang/String;

.field private defaultTextSize:F

.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mExtraIntentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mFeature:Lcom/samsung/android/share/SShareCommon;

.field private mGridRecentHistory:Landroid/widget/HorizontalListView;

.field private mGroupNameOldConcept:Z

.field final mHandler:Landroid/os/Handler;

.field private mIsRecentContactsReceiverRegistered:Z

.field private mIsRemoteShareServiceDownloadedChecked:Z

.field private mOrigIntent:Landroid/content/Intent;

.field private mRecentContactsId:[J

.field private mRecentContactsItemContactsCountInGroup:[I

.field private mRecentContactsListCount:I

.field private mRecentContactsListName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentContactsListThumb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

.field private mRecentHistoryIndex:I

.field mRecentHistoryIntent:Landroid/content/Intent;

.field private mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

.field private mRecipientDataId:[Ljava/lang/String;

.field private mTunedMargin:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    sput-boolean v1, Lcom/samsung/android/share/SShareSimpleSharing;->mEasySignUpCertificated:Z

    .line 70
    sput-boolean v1, Lcom/samsung/android/share/SShareSimpleSharing;->mSSharingRecentContactExisted:Z

    .line 71
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRemoteShareServiceEnabled:Z

    .line 72
    sput-boolean v1, Lcom/samsung/android/share/SShareSimpleSharing;->mIsRemoteShareServiceDownloaded:Z

    .line 113
    const/4 v0, 0x5

    sput v0, Lcom/samsung/android/share/SShareSimpleSharing;->RECENT_CONTACTS_LIST_MAX_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lcom/samsung/android/share/SShareCommon;Landroid/content/Intent;ILjava/util/List;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "feature"    # Lcom/samsung/android/share/SShareCommon;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "launchedFromUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Context;",
            "Lcom/samsung/android/share/SShareCommon;",
            "Landroid/content/Intent;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, "extraIntentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v2, 0x0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v2, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    .line 61
    iput-boolean v2, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mIsRecentContactsReceiverRegistered:Z

    .line 62
    iput v2, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListCount:I

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListName:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListThumb:Ljava/util/List;

    .line 66
    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mTunedMargin:F

    .line 68
    iput-boolean v2, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mIsRemoteShareServiceDownloadedChecked:Z

    .line 88
    const-string v0, "com.samsung.android.coreapps.rshare.responserecentgroupcontacts"

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->RESPONSE_RECENT_GROUP_CONTACTS:Ljava/lang/String;

    .line 91
    const-string/jumbo v0, "recentgroupnamelist"

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->EXTRA_KEY_RECENT_GROUP_NAME_LIST:Ljava/lang/String;

    .line 92
    const-string/jumbo v0, "recentgroupnames"

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->EXTRA_KEY_RECENT_GROUP_NAMES:Ljava/lang/String;

    .line 93
    const-string/jumbo v0, "recentgroupthumbnail"

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->EXTRA_KEY_RECENT_GROUP_THUMBNAILS:Ljava/lang/String;

    .line 94
    const-string/jumbo v0, "recentgroupdataids"

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->EXTRA_KEY_RECENT_GROUP_DATAIDS:Ljava/lang/String;

    .line 95
    const-string/jumbo v0, "recentgroupcontactids"

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->EXTRA_KEY_RECENT_GROUP_CONTACTID:Ljava/lang/String;

    .line 96
    const-string/jumbo v0, "recentgroupcount"

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->EXTRA_KEY_RECENT_GROUP_COUNT:Ljava/lang/String;

    .line 97
    const-string/jumbo v0, "recentphonenumbers"

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->EXTRA_KEY_RECENT_GROUP_PHONENUM:Ljava/lang/String;

    .line 98
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/16 v1, 0x2026

    aput-char v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->ELLIPSIS_NORMAL:[C

    .line 114
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->REMOTE_SHARE_SERVICE_ID:I

    .line 119
    new-instance v0, Lcom/samsung/android/share/SShareSimpleSharing$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/share/SShareSimpleSharing$1;-><init>(Lcom/samsung/android/share/SShareSimpleSharing;)V

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mHandler:Landroid/os/Handler;

    .line 144
    new-instance v0, Lcom/samsung/android/share/SShareSimpleSharing$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/share/SShareSimpleSharing$2;-><init>(Lcom/samsung/android/share/SShareSimpleSharing;)V

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

    .line 199
    iput-object p1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mActivity:Landroid/app/Activity;

    .line 200
    iput-object p2, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    .line 201
    iput-object p3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mFeature:Lcom/samsung/android/share/SShareCommon;

    .line 202
    iput-object p4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mOrigIntent:Landroid/content/Intent;

    .line 203
    new-instance v0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;-><init>(Lcom/samsung/android/share/SShareSimpleSharing;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;I)V

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    .line 204
    sget v0, Lcom/samsung/android/share/SShareSimpleSharing;->RECENT_CONTACTS_LIST_MAX_COUNT:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecipientDataId:[Ljava/lang/String;

    .line 205
    sget v0, Lcom/samsung/android/share/SShareSimpleSharing;->RECENT_CONTACTS_LIST_MAX_COUNT:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsId:[J

    .line 206
    sget v0, Lcom/samsung/android/share/SShareSimpleSharing;->RECENT_CONTACTS_LIST_MAX_COUNT:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsItemContactsCountInGroup:[I

    .line 207
    iput-object p6, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mExtraIntentList:Ljava/util/List;

    .line 209
    invoke-direct {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->checkEasySignUpCertificated()V

    .line 210
    invoke-direct {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->checkSSharingRecentContactExisted()V

    .line 211
    invoke-direct {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->checkRemoteShareServiceEnabled()V

    .line 212
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/share/SShareSimpleSharing;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->initRecentHistoryList()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/share/SShareSimpleSharing;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->getFontScale()F

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/share/SShareSimpleSharing;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListCount:I

    return p1
.end method

.method static synthetic access$108(Lcom/samsung/android/share/SShareSimpleSharing;)I
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;

    .prologue
    .line 50
    iget v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/share/SShareSimpleSharing;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;

    .prologue
    .line 50
    iget v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->defaultTextSize:F

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/share/SShareSimpleSharing;F)F
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;
    .param p1, "x1"    # F

    .prologue
    .line 50
    iput p1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->defaultTextSize:F

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/share/SShareSimpleSharing;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/share/SShareSimpleSharing;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListThumb:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/share/SShareSimpleSharing;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListName:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/samsung/android/share/SShareSimpleSharing;->RECENT_CONTACTS_LIST_MAX_COUNT:I

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/android/share/SShareSimpleSharing;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mGroupNameOldConcept:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/share/SShareSimpleSharing;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecipientDataId:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/share/SShareSimpleSharing;)[J
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsId:[J

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/share/SShareSimpleSharing;)[I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsItemContactsCountInGroup:[I

    return-object v0
.end method

.method private checkEasySignUpCertificated()V
    .locals 3

    .prologue
    .line 408
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->isJoined(Landroid/content/Context;I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareSimpleSharing;->mEasySignUpCertificated:Z

    .line 409
    const-string v0, "SShareSimpleSharing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isJoined="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/share/SShareSimpleSharing;->mEasySignUpCertificated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return-void
.end method

.method private checkRemoteShareServiceEnabled()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 418
    sget-boolean v1, Lcom/samsung/android/share/SShareSimpleSharing;->mEasySignUpCertificated:Z

    if-eqz v1, :cond_1

    .line 420
    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->getServiceStatus(Landroid/content/Context;I)I

    move-result v0

    .line 421
    .local v0, "retVal":I
    const-string v1, "SShareSimpleSharing"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    if-eq v0, v4, :cond_0

    .line 423
    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/share/SShareSimpleSharing;->mRemoteShareServiceEnabled:Z

    .line 430
    .end local v0    # "retVal":I
    :goto_0
    return-void

    .line 425
    .restart local v0    # "retVal":I
    :cond_0
    sput-boolean v4, Lcom/samsung/android/share/SShareSimpleSharing;->mRemoteShareServiceEnabled:Z

    goto :goto_0

    .line 428
    .end local v0    # "retVal":I
    :cond_1
    sput-boolean v4, Lcom/samsung/android/share/SShareSimpleSharing;->mRemoteShareServiceEnabled:Z

    goto :goto_0
.end method

.method private checkSSharingRecentContactExisted()V
    .locals 3

    .prologue
    .line 413
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/coreapps/sdk/easysignup/SimpleSharingManager;->isRecentContactExisted(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareSimpleSharing;->mSSharingRecentContactExisted:Z

    .line 414
    const-string v0, "SShareSimpleSharing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRecentContactExisted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/share/SShareSimpleSharing;->mSSharingRecentContactExisted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-void
.end method

.method private clearRecentHistoryList(Z)V
    .locals 1
    .param p1, "bClearAll"    # Z

    .prologue
    .line 442
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;
    invoke-static {v0}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->access$900(Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;
    invoke-static {v0}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->access$900(Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 445
    :cond_0
    return-void
.end method

.method private getFontScale()F
    .locals 2

    .prologue
    .line 689
    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 690
    .local v0, "fontScale":F
    const v1, 0x3f99999a    # 1.2f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 691
    const v0, 0x3f99999a    # 1.2f

    .line 693
    :cond_0
    return v0
.end method

.method private getRecentHistoryInfo(I)Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 448
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    return-object v0
.end method

.method private getRecentIconType([BIJI)I
    .locals 3
    .param p1, "contactThumbArray"    # [B
    .param p2, "contactCount"    # I
    .param p3, "contactId"    # J
    .param p5, "devType"    # I

    .prologue
    const/4 v2, 0x1

    .line 636
    const/4 v1, -0x1

    if-eq p5, v1, :cond_2

    .line 638
    if-ne p5, v2, :cond_0

    .line 639
    const/4 v0, 0x4

    .line 656
    .local v0, "iconType":I
    :goto_0
    return v0

    .line 640
    .end local v0    # "iconType":I
    :cond_0
    const/4 v1, 0x2

    if-ne p5, v1, :cond_1

    .line 641
    const/4 v0, 0x5

    .restart local v0    # "iconType":I
    goto :goto_0

    .line 643
    .end local v0    # "iconType":I
    :cond_1
    const/4 v0, 0x4

    .restart local v0    # "iconType":I
    goto :goto_0

    .line 647
    .end local v0    # "iconType":I
    :cond_2
    if-eqz p1, :cond_3

    .line 648
    const/4 v0, 0x3

    .restart local v0    # "iconType":I
    goto :goto_0

    .line 649
    .end local v0    # "iconType":I
    :cond_3
    if-le p2, v2, :cond_4

    .line 650
    const/4 v0, 0x2

    .restart local v0    # "iconType":I
    goto :goto_0

    .line 652
    .end local v0    # "iconType":I
    :cond_4
    const/4 v0, 0x1

    .restart local v0    # "iconType":I
    goto :goto_0
.end method

.method private initRecentHistoryDefault()V
    .locals 5

    .prologue
    .line 433
    iget-object v3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10408d8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 434
    .local v1, "remoteShareDisplayLabel":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10408d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 435
    .local v0, "recentHistoryDefaultIconDisplayLabel":Ljava/lang/CharSequence;
    new-instance v2, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4, v0}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;-><init>(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 436
    .local v2, "remoteShareItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    iget-object v3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;
    invoke-static {v3}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->access$900(Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    invoke-interface {v3, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 437
    iget v3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    .line 438
    iget-object v3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->notifyDataSetChanged()V

    .line 439
    return-void
.end method

.method private initRecentHistoryList()V
    .locals 51

    .prologue
    .line 454
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mGridRecentHistory:Landroid/widget/HorizontalListView;

    if-nez v7, :cond_1

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/samsung/android/share/SShareSimpleSharing;->clearRecentHistoryList(Z)V

    .line 461
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    .line 462
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListCount:I

    const/4 v8, 0x1

    if-lt v7, v8, :cond_17

    .line 463
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050217

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v0, v7

    move/from16 v45, v0

    .line 464
    .local v45, "textWidth":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050218

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v0, v7

    move/from16 v42, v0

    .line 465
    .local v42, "textLandWidth":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e00ee

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-float v0, v7

    move/from16 v27, v0

    .line 466
    .local v27, "maxLineNum":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    const/4 v15, 0x1

    .line 467
    .local v15, "bLandscape":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10408d9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v38

    .line 468
    .local v38, "remoteShareDisplayLabel":Ljava/lang/CharSequence;
    new-instance v39, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;-><init>(Ljava/lang/CharSequence;)V

    .line 469
    .local v39, "remoteShareItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;
    invoke-static {v7}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->access$900(Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    move-object/from16 v0, v39

    invoke-interface {v7, v8, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 470
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    .line 473
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/share/SShareSimpleSharing;->getFontScale()F

    move-result v22

    .line 474
    .local v22, "fontScale":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x105029c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v0, v7

    move/from16 v17, v0

    .line 475
    .local v17, "defaultSize":F
    const/4 v7, 0x0

    mul-float v8, v17, v22

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v44

    .line 477
    .local v44, "textSize":F
    const/16 v41, 0x0

    .local v41, "tempContactsIndex":I
    :goto_2
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListCount:I

    move/from16 v0, v41

    if-ge v0, v7, :cond_18

    sget v7, Lcom/samsung/android/share/SShareSimpleSharing;->RECENT_CONTACTS_LIST_MAX_COUNT:I

    move/from16 v0, v41

    if-ge v0, v7, :cond_18

    .line 478
    const/16 v35, 0x0

    .line 479
    .local v35, "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    const/16 v36, 0x0

    .line 480
    .local v36, "recentHistoryDisplayLabel2":Ljava/lang/CharSequence;
    const-string v24, ""

    .line 481
    .local v24, "groupNameOrg":Ljava/lang/String;
    const-string v23, ""

    .line 482
    .local v23, "groupName":Ljava/lang/String;
    const/16 v34, 0x0

    .line 485
    .local v34, "photoIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsItemContactsCountInGroup:[I

    aget v7, v7, v41

    const/4 v8, 0x1

    if-le v7, v8, :cond_14

    .line 486
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListName:Ljava/util/ArrayList;

    move/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/CharSequence;

    .line 487
    .local v29, "nameStr":Ljava/lang/CharSequence;
    const-string v20, ""

    .line 488
    .local v20, "emptyStr":Ljava/lang/CharSequence;
    const-string v19, ""

    .line 490
    .local v19, "emptyGroupStr":Ljava/lang/String;
    const/16 v48, 0x0

    .line 491
    .local v48, "totalW":F
    const/16 v31, 0x0

    .line 493
    .local v31, "needEllipsis":Z
    new-instance v43, Landroid/text/TextPaint;

    invoke-direct/range {v43 .. v43}, Landroid/text/TextPaint;-><init>()V

    .line 494
    .local v43, "textPaint":Landroid/text/TextPaint;
    invoke-virtual/range {v43 .. v44}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 495
    const-string/jumbo v7, "sec-roboto-light"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 496
    const/4 v7, 0x1

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 497
    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 498
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, v43

    iput v7, v0, Landroid/text/TextPaint;->density:F

    .line 501
    if-eqz v15, :cond_4

    .line 502
    mul-float v7, v42, v27

    sub-float v14, v7, v48

    .line 506
    .local v14, "availNameW":F
    :goto_3
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v29

    move-object/from16 v1, v43

    invoke-static {v0, v1, v14, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v18

    .line 508
    .local v18, "ellipsizedNameStr":Ljava/lang/CharSequence;
    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/share/SShareSimpleSharing;->ELLIPSIS_NORMAL:[C

    const/4 v10, 0x0

    aget-char v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 509
    const/16 v31, 0x1

    .line 513
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mGroupNameOldConcept:Z

    if-eqz v7, :cond_5

    .line 515
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    const v8, 0x10408da

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 516
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v20, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsItemContactsCountInGroup:[I

    aget v9, v9, v41

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, v24

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 524
    :goto_4
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v32

    .line 525
    .local v32, "othersLength":I
    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v33, v0

    .line 526
    .local v33, "othersW":[F
    move-object/from16 v0, v43

    move-object/from16 v1, v19

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    move-result v6

    .line 529
    .local v6, "arrayNum":I
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_5
    move/from16 v0, v25

    if-ge v0, v6, :cond_7

    .line 530
    aget v7, v33, v25

    add-float v48, v48, v7

    .line 529
    add-int/lit8 v25, v25, 0x1

    goto :goto_5

    .line 466
    .end local v6    # "arrayNum":I
    .end local v14    # "availNameW":F
    .end local v15    # "bLandscape":Z
    .end local v17    # "defaultSize":F
    .end local v18    # "ellipsizedNameStr":Ljava/lang/CharSequence;
    .end local v19    # "emptyGroupStr":Ljava/lang/String;
    .end local v20    # "emptyStr":Ljava/lang/CharSequence;
    .end local v22    # "fontScale":F
    .end local v23    # "groupName":Ljava/lang/String;
    .end local v24    # "groupNameOrg":Ljava/lang/String;
    .end local v25    # "i":I
    .end local v29    # "nameStr":Ljava/lang/CharSequence;
    .end local v31    # "needEllipsis":Z
    .end local v32    # "othersLength":I
    .end local v33    # "othersW":[F
    .end local v34    # "photoIcon":Landroid/graphics/drawable/Drawable;
    .end local v35    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    .end local v36    # "recentHistoryDisplayLabel2":Ljava/lang/CharSequence;
    .end local v38    # "remoteShareDisplayLabel":Ljava/lang/CharSequence;
    .end local v39    # "remoteShareItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    .end local v41    # "tempContactsIndex":I
    .end local v43    # "textPaint":Landroid/text/TextPaint;
    .end local v44    # "textSize":F
    .end local v48    # "totalW":F
    :cond_3
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 504
    .restart local v15    # "bLandscape":Z
    .restart local v17    # "defaultSize":F
    .restart local v19    # "emptyGroupStr":Ljava/lang/String;
    .restart local v20    # "emptyStr":Ljava/lang/CharSequence;
    .restart local v22    # "fontScale":F
    .restart local v23    # "groupName":Ljava/lang/String;
    .restart local v24    # "groupNameOrg":Ljava/lang/String;
    .restart local v29    # "nameStr":Ljava/lang/CharSequence;
    .restart local v31    # "needEllipsis":Z
    .restart local v34    # "photoIcon":Landroid/graphics/drawable/Drawable;
    .restart local v35    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    .restart local v36    # "recentHistoryDisplayLabel2":Ljava/lang/CharSequence;
    .restart local v38    # "remoteShareDisplayLabel":Ljava/lang/CharSequence;
    .restart local v39    # "remoteShareItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    .restart local v41    # "tempContactsIndex":I
    .restart local v43    # "textPaint":Landroid/text/TextPaint;
    .restart local v44    # "textSize":F
    .restart local v48    # "totalW":F
    :cond_4
    mul-float v7, v45, v27

    sub-float v7, v7, v48

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mTunedMargin:F

    sub-float v14, v7, v8

    .restart local v14    # "availNameW":F
    goto/16 :goto_3

    .line 519
    .restart local v18    # "ellipsizedNameStr":Ljava/lang/CharSequence;
    :cond_5
    if-eqz v31, :cond_6

    .line 520
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsItemContactsCountInGroup:[I

    aget v8, v8, v41

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 522
    :cond_6
    move-object/from16 v19, v24

    goto :goto_4

    .line 533
    .restart local v6    # "arrayNum":I
    .restart local v25    # "i":I
    .restart local v32    # "othersLength":I
    .restart local v33    # "othersW":[F
    :cond_7
    if-eqz v15, :cond_b

    .line 534
    mul-float v7, v42, v27

    sub-float v14, v7, v48

    .line 542
    :goto_6
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v29

    move-object/from16 v1, v43

    invoke-static {v0, v1, v14, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v18

    .line 544
    if-eqz v15, :cond_d

    .line 545
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mGroupNameOldConcept:Z

    if-eqz v7, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/share/SShareSimpleSharing;->ELLIPSIS_NORMAL:[C

    const/4 v9, 0x0

    aget-char v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 546
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, v29

    invoke-interface {v0, v8, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/share/SShareSimpleSharing;->ELLIPSIS_NORMAL:[C

    const/4 v9, 0x0

    aget-char v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 548
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 600
    .end local v6    # "arrayNum":I
    .end local v14    # "availNameW":F
    .end local v18    # "ellipsizedNameStr":Ljava/lang/CharSequence;
    .end local v19    # "emptyGroupStr":Ljava/lang/String;
    .end local v20    # "emptyStr":Ljava/lang/CharSequence;
    .end local v25    # "i":I
    .end local v29    # "nameStr":Ljava/lang/CharSequence;
    .end local v31    # "needEllipsis":Z
    .end local v32    # "othersLength":I
    .end local v33    # "othersW":[F
    .end local v43    # "textPaint":Landroid/text/TextPaint;
    .end local v48    # "totalW":F
    :cond_9
    :goto_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListThumb:Ljava/util/List;

    move/from16 v0, v41

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsItemContactsCountInGroup:[I

    aget v9, v7, v41

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsId:[J

    aget-wide v10, v7, v41

    const/4 v12, -0x1

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/share/SShareSimpleSharing;->getRecentIconType([BIJI)I

    move-result v26

    .line 602
    .local v26, "iconType":I
    const/4 v7, 0x3

    move/from16 v0, v26

    if-ne v0, v7, :cond_15

    .line 603
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListThumb:Ljava/util/List;

    move/from16 v0, v41

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/samsung/android/share/SShareSimpleSharing;->makeContactPhotoImage([B)Landroid/graphics/drawable/Drawable;

    move-result-object v34

    .line 614
    :cond_a
    :goto_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsItemContactsCountInGroup:[I

    aget v7, v7, v41

    const/4 v8, 0x1

    if-le v7, v8, :cond_16

    .line 615
    new-instance v37, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    move/from16 v2, v26

    move-object/from16 v3, v34

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;-><init>(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 619
    .local v37, "recentHistoryItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    :goto_9
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;
    invoke-static {v7}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->access$900(Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    move-object/from16 v0, v37

    invoke-interface {v7, v8, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 620
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    .line 477
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_2

    .line 536
    .end local v26    # "iconType":I
    .end local v37    # "recentHistoryItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    .restart local v6    # "arrayNum":I
    .restart local v14    # "availNameW":F
    .restart local v18    # "ellipsizedNameStr":Ljava/lang/CharSequence;
    .restart local v19    # "emptyGroupStr":Ljava/lang/String;
    .restart local v20    # "emptyStr":Ljava/lang/CharSequence;
    .restart local v25    # "i":I
    .restart local v29    # "nameStr":Ljava/lang/CharSequence;
    .restart local v31    # "needEllipsis":Z
    .restart local v32    # "othersLength":I
    .restart local v33    # "othersW":[F
    .restart local v43    # "textPaint":Landroid/text/TextPaint;
    .restart local v48    # "totalW":F
    :cond_b
    if-eqz v31, :cond_c

    .line 537
    mul-float v7, v45, v27

    sub-float v7, v7, v48

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mTunedMargin:F

    sub-float v14, v7, v8

    goto/16 :goto_6

    .line 539
    :cond_c
    mul-float v7, v45, v27

    sub-float v14, v7, v48

    goto/16 :goto_6

    .line 553
    :cond_d
    invoke-interface/range {v29 .. v29}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v28

    .line 554
    .local v28, "nameLength":I
    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v30, v0

    .line 555
    .local v30, "nameW":[F
    invoke-interface/range {v29 .. v29}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v43

    move-object/from16 v1, v30

    invoke-virtual {v0, v7, v1}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    move-result v13

    .line 556
    .local v13, "arrayNum1":I
    const/16 v49, 0x0

    .line 557
    .local v49, "totalW1":F
    const/16 v50, 0x0

    .line 558
    .local v50, "totalW2":F
    const/16 v21, 0x0

    .line 559
    .local v21, "firstLineCount":I
    const-string v46, ""

    .line 560
    .local v46, "tmpStr":Ljava/lang/String;
    const-string v47, ""

    .line 562
    .local v47, "tmpStr2":Ljava/lang/String;
    const/16 v25, 0x0

    :goto_a
    move/from16 v0, v25

    if-ge v0, v13, :cond_e

    .line 563
    aget v7, v30, v25

    add-float v49, v49, v7

    .line 564
    cmpl-float v7, v49, v45

    if-ltz v7, :cond_10

    .line 565
    move/from16 v21, v25

    .line 570
    :cond_e
    move-object/from16 v35, v46

    .line 572
    if-lez v21, :cond_9

    .line 574
    if-eqz v31, :cond_11

    .line 575
    sub-float v7, v45, v48

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mTunedMargin:F

    sub-float v40, v7, v8

    .line 579
    .local v40, "secondLineWidth":F
    :goto_b
    move/from16 v25, v21

    :goto_c
    move/from16 v0, v25

    if-ge v0, v13, :cond_f

    .line 580
    aget v7, v30, v25

    add-float v50, v50, v7

    .line 581
    cmpl-float v7, v50, v40

    if-ltz v7, :cond_12

    .line 587
    :cond_f
    if-eqz v31, :cond_13

    .line 588
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v47

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/share/SShareSimpleSharing;->ELLIPSIS_NORMAL:[C

    const/4 v9, 0x0

    aget-char v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    .line 593
    :goto_d
    move-object/from16 v36, v47

    goto/16 :goto_7

    .line 568
    .end local v40    # "secondLineWidth":F
    :cond_10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v46

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    .line 562
    add-int/lit8 v25, v25, 0x1

    goto :goto_a

    .line 577
    :cond_11
    sub-float v40, v45, v48

    .restart local v40    # "secondLineWidth":F
    goto :goto_b

    .line 584
    :cond_12
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v47

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    .line 579
    add-int/lit8 v25, v25, 0x1

    goto :goto_c

    .line 590
    :cond_13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v47

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    goto :goto_d

    .line 597
    .end local v6    # "arrayNum":I
    .end local v13    # "arrayNum1":I
    .end local v14    # "availNameW":F
    .end local v18    # "ellipsizedNameStr":Ljava/lang/CharSequence;
    .end local v19    # "emptyGroupStr":Ljava/lang/String;
    .end local v20    # "emptyStr":Ljava/lang/CharSequence;
    .end local v21    # "firstLineCount":I
    .end local v25    # "i":I
    .end local v28    # "nameLength":I
    .end local v29    # "nameStr":Ljava/lang/CharSequence;
    .end local v30    # "nameW":[F
    .end local v31    # "needEllipsis":Z
    .end local v32    # "othersLength":I
    .end local v33    # "othersW":[F
    .end local v40    # "secondLineWidth":F
    .end local v43    # "textPaint":Landroid/text/TextPaint;
    .end local v46    # "tmpStr":Ljava/lang/String;
    .end local v47    # "tmpStr2":Ljava/lang/String;
    .end local v48    # "totalW":F
    .end local v49    # "totalW1":F
    .end local v50    # "totalW2":F
    :cond_14
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListName:Ljava/util/ArrayList;

    move/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    .end local v35    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    check-cast v35, Ljava/lang/CharSequence;

    .restart local v35    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    goto/16 :goto_7

    .line 605
    .restart local v26    # "iconType":I
    :cond_15
    const/4 v7, 0x2

    move/from16 v0, v26

    if-eq v0, v7, :cond_a

    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 606
    const/4 v7, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v16

    .line 607
    .local v16, "c":C
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 608
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/samsung/android/share/SShareSimpleSharing;->makeBitmapWithText(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v34

    goto/16 :goto_8

    .line 617
    .end local v16    # "c":C
    :cond_16
    new-instance v37, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    const/4 v7, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    move/from16 v2, v26

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;-><init>(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .restart local v37    # "recentHistoryItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    goto/16 :goto_9

    .line 623
    .end local v15    # "bLandscape":Z
    .end local v17    # "defaultSize":F
    .end local v22    # "fontScale":F
    .end local v23    # "groupName":Ljava/lang/String;
    .end local v24    # "groupNameOrg":Ljava/lang/String;
    .end local v26    # "iconType":I
    .end local v27    # "maxLineNum":F
    .end local v34    # "photoIcon":Landroid/graphics/drawable/Drawable;
    .end local v35    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    .end local v36    # "recentHistoryDisplayLabel2":Ljava/lang/CharSequence;
    .end local v37    # "recentHistoryItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    .end local v38    # "remoteShareDisplayLabel":Ljava/lang/CharSequence;
    .end local v39    # "remoteShareItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    .end local v41    # "tempContactsIndex":I
    .end local v42    # "textLandWidth":F
    .end local v44    # "textSize":F
    .end local v45    # "textWidth":F
    :cond_17
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListCount:I

    if-nez v7, :cond_18

    .line 624
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10408d9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v35

    .line 625
    .restart local v35    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    new-instance v37, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;-><init>(Ljava/lang/CharSequence;)V

    .line 626
    .restart local v37    # "recentHistoryItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;
    invoke-static {v7}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->access$900(Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    move-object/from16 v0, v37

    invoke-interface {v7, v8, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 627
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    .line 630
    .end local v35    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    .end local v37    # "recentHistoryItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    :cond_18
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-virtual {v7}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method private makeBitmapWithText(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    .line 660
    const/4 v3, 0x0

    .line 661
    .local v3, "drawableIcon":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1050213

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 662
    .local v4, "iconSize":I
    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1050214

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v7, v8

    .line 664
    .local v7, "textSize":F
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 665
    .local v5, "textBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 667
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 668
    .local v2, "circlePaint":Landroid/graphics/Paint;
    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1060124

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 669
    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 670
    int-to-float v8, v4

    div-float/2addr v8, v11

    int-to-float v9, v4

    div-float/2addr v9, v11

    int-to-float v10, v4

    div-float/2addr v10, v11

    invoke-virtual {v1, v8, v9, v10, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 672
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 673
    .local v6, "textPaint":Landroid/graphics/Paint;
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 674
    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 675
    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1060125

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 677
    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 678
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 679
    .local v0, "bounds":Landroid/graphics/Rect;
    const/4 v8, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, p2, v8, v9, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 681
    int-to-float v8, v4

    div-float/2addr v8, v11

    mul-int/lit8 v9, v4, 0x3

    int-to-float v9, v9

    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v9, v10

    invoke-virtual {v1, p2, v8, v9, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 683
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v3, v8, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 685
    .restart local v3    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    return-object v3
.end method

.method private makeContactPhotoImage([B)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p1, "contactsThumbnailByteArray"    # [B

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 697
    if-nez p1, :cond_0

    move-object v2, v7

    .line 725
    :goto_0
    return-object v2

    .line 701
    :cond_0
    const/4 v3, 0x0

    .line 702
    .local v3, "mask":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 703
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 704
    .local v6, "photo":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 705
    .local v4, "orgThumb":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 707
    .local v2, "drawableIcon":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10804c3

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 710
    const/4 v8, 0x0

    array-length v9, p1

    invoke-static {p1, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 712
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v10, 0x1

    invoke-static {v4, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 714
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 716
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 717
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, v6, v11, v11, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 719
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 720
    .local v5, "paint":Landroid/graphics/Paint;
    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 721
    invoke-virtual {v1, v3, v11, v11, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 722
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 724
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v2, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 725
    .restart local v2    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method


# virtual methods
.method public buildUpSimpleSharingData()V
    .locals 2

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->shouldShowRecentHistoryView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->sendRequestRecentContactsHistoryList()V

    .line 295
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->notifyDataSetChanged()V

    .line 296
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->initRecentHistoryDefault()V

    goto :goto_0
.end method

.method public getRecentHistoryIntent(I)Landroid/content/Intent;
    .locals 8
    .param p1, "position"    # I

    .prologue
    .line 327
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 328
    .local v3, "targetIntent":Landroid/content/Intent;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.android.coreapps.rshare.action.REQUESTSEND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIntent:Landroid/content/Intent;

    .line 329
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIntent:Landroid/content/Intent;

    const/high16 v5, 0x4000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 330
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIntent:Landroid/content/Intent;

    const-string v5, "android.intent.extra.INTENT"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 332
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mExtraIntentList:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 334
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 336
    .local v2, "nSize":I
    new-array v1, v2, [Landroid/content/Intent;

    .line 337
    .local v1, "initialIntents":[Landroid/content/Intent;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 338
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    aput-object v4, v1, v0

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIntent:Landroid/content/Intent;

    const-string v5, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 343
    .end local v0    # "i":I
    .end local v1    # "initialIntents":[Landroid/content/Intent;
    .end local v2    # "nSize":I
    :cond_1
    if-lez p1, :cond_2

    .line 344
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIntent:Landroid/content/Intent;

    const-string/jumbo v5, "recipientdataids"

    iget-object v6, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecipientDataId:[Ljava/lang/String;

    add-int/lit8 v7, p1, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIntent:Landroid/content/Intent;

    return-object v4
.end method

.method public getRecentHistoryListAdapter()Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    return-object v0
.end method

.method public hasExtraIntentUriInfo()Z
    .locals 4

    .prologue
    .line 262
    iget-object v3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mExtraIntentList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 263
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 264
    const/4 v2, 0x0

    .line 265
    .local v2, "uri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 266
    .local v0, "extraBundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_0

    .line 268
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2    # "uri":Landroid/net/Uri;
    check-cast v2, Landroid/net/Uri;

    .line 269
    .restart local v2    # "uri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 270
    const/4 v3, 0x1

    .line 275
    .end local v0    # "extraBundle":Landroid/os/Bundle;
    .end local v1    # "i":I
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_1
    return v3

    .line 263
    .restart local v0    # "extraBundle":Landroid/os/Bundle;
    .restart local v1    # "i":I
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 275
    .end local v0    # "extraBundle":Landroid/os/Bundle;
    .end local v1    # "i":I
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isEasySignUpCertificated()Z
    .locals 1

    .prologue
    .line 313
    sget-boolean v0, Lcom/samsung/android/share/SShareSimpleSharing;->mEasySignUpCertificated:Z

    return v0
.end method

.method public isRemoteShareServiceEnabled()Z
    .locals 1

    .prologue
    .line 320
    sget-boolean v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRemoteShareServiceEnabled:Z

    return v0
.end method

.method public recentHistoryDefaultGridItemClick(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 387
    packed-switch p1, :pswitch_data_0

    .line 405
    :goto_0
    return-void

    .line 389
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.coreapps.easysignup.ACTION_REQ_AUTH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 390
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 391
    const-string v2, "fromOOBE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 392
    const-string v2, "agreeMarketing"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 393
    const-string v2, "AuthRequestFrom"

    const-string/jumbo v3, "shareVia"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SShareSimpleSharing"

    const-string v3, "Easy signUp agent is not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public recentHistoryGridItemClick(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->getRecentHistoryListAdapter()Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    move-result-object v4

    if-nez v4, :cond_0

    .line 381
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v4}, Lcom/samsung/android/share/SShareCommon;->getSupportLogging()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 361
    new-instance v3, Lcom/samsung/android/share/SShareLogging;

    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mOrigIntent:Landroid/content/Intent;

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/share/SShareLogging;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 362
    .local v3, "sshareLogging":Lcom/samsung/android/share/SShareLogging;
    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareSimpleSharing;->getRecentHistoryInfo(I)Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    move-result-object v4

    iget v2, v4, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->iconType:I

    .line 364
    .local v2, "iconType":I
    packed-switch v2, :pswitch_data_0

    .line 369
    const-string/jumbo v0, "personal"

    .line 373
    .local v0, "detailInfo":Ljava/lang/String;
    :goto_1
    const-string v4, "EASY"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/share/SShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .end local v0    # "detailInfo":Ljava/lang/String;
    .end local v2    # "iconType":I
    .end local v3    # "sshareLogging":Lcom/samsung/android/share/SShareLogging;
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/samsung/android/share/SShareSimpleSharing;->getRecentHistoryIntent(I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 378
    :catch_0
    move-exception v1

    .line 379
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string v4, "SShareSimpleSharing"

    const-string v5, "RecentHistoryGridItemClick : startActivity failed!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 366
    .end local v1    # "ex":Landroid/content/ActivityNotFoundException;
    .restart local v2    # "iconType":I
    .restart local v3    # "sshareLogging":Lcom/samsung/android/share/SShareLogging;
    :pswitch_0
    const-string v0, "group"

    .line 367
    .restart local v0    # "detailInfo":Ljava/lang/String;
    goto :goto_1

    .line 364
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public registerRecentContactsReceiver()V
    .locals 3

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->checkEasySignUpCertificated()V

    .line 236
    invoke-direct {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->checkSSharingRecentContactExisted()V

    .line 237
    invoke-direct {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->checkRemoteShareServiceEnabled()V

    .line 239
    invoke-virtual {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->shouldShowRecentHistoryView()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/share/SShareSimpleSharing;->mRemoteShareServiceEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mIsRecentContactsReceiverRegistered:Z

    if-nez v1, :cond_0

    .line 240
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 241
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.coreapps.rshare.responserecentgroupcontacts"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 243
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mIsRecentContactsReceiverRegistered:Z

    .line 246
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public sendRequestRecentContactsHistoryList()V
    .locals 2

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->registerRecentContactsReceiver()V

    .line 227
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.coreapps.rshare.requestrecentgroupcontacts"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 229
    return-void
.end method

.method public setSimpleSharingView(Landroid/widget/HorizontalListView;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/HorizontalListView;
    .param p2, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mGridRecentHistory:Landroid/widget/HorizontalListView;

    .line 283
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mGridRecentHistory:Landroid/widget/HorizontalListView;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mGridRecentHistory:Landroid/widget/HorizontalListView;

    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 285
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mGridRecentHistory:Landroid/widget/HorizontalListView;

    invoke-virtual {v0, p2}, Landroid/widget/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 287
    :cond_0
    return-void
.end method

.method public shouldShowRecentHistoryView()Z
    .locals 1

    .prologue
    .line 306
    sget-boolean v0, Lcom/samsung/android/share/SShareSimpleSharing;->mEasySignUpCertificated:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/share/SShareSimpleSharing;->mSSharingRecentContactExisted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unregisterRecentContactsReceiver()V
    .locals 2

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mIsRecentContactsReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mIsRecentContactsReceiverRegistered:Z

    .line 256
    :cond_0
    return-void
.end method

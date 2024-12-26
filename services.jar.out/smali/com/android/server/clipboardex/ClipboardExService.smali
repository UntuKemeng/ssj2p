.class public Lcom/android/server/clipboardex/ClipboardExService;
.super Landroid/sec/clipboard/IClipboardService$Stub;
.source "ClipboardExService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;,
        Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;,
        Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;
    }
.end annotation


# static fields
.field private static SEC_FLOATING_FEATURE_VIEWSYSTEM_CLIPBOARD_UI_SERVICE:Z = false

.field private static final TAG:Ljava/lang/String; = "ClipboardExService"

.field private static final mHasKnox:Z

.field private static sService:Landroid/content/IClipboard;


# instance fields
.field private final CLIPS_INFO:Ljava/lang/String;

.field private final CLIP_ADD_DELETED_ITEM_BROADCAST:Ljava/lang/String;

.field private KNOX_PASTE_FLAG:Z

.field private final KNOX_VERSION:Ljava/lang/String;

.field private final MSG_COPY_URI:I

.field private final MSG_DELETE_TEMP_FILE:I

.field private final MSG_DISMISS_DIALOG:I

.field private final MSG_SHOW_DIALOG:I

.field private final MSG_START_SERVICE:I

.field private final MSG_UPDATE_DIALOG:I

.field private clipPickerDataList:Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;

.field private mCallingId:I

.field private mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

.field private mClipBoardDataUiEventImp:Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;

.field private mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

.field private mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

.field private mClipboardFormatList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClipboardFormatListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/IClipboardFormatListener;",
            ">;"
        }
    .end annotation
.end field

.field private mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserContext:Landroid/content/Context;

.field private mEnableFormatId:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsCalledPasteApp:Z

.field private mIsLogging:Z

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mRCPManager:Landroid/os/RCPManager;

.field private mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

.field private mUm:Landroid/os/IUserManager;

.field private mWorkingUiInterfaceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 137
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/clipboardex/ClipboardExService;->sService:Landroid/content/IClipboard;

    .line 138
    const-string/jumbo v0, "ro.config.knox"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "v30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/clipboardex/ClipboardExService;->mHasKnox:Z

    .line 168
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/clipboardex/ClipboardExService;->SEC_FLOATING_FEATURE_VIEWSYSTEM_CLIPBOARD_UI_SERVICE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 677
    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardService$Stub;-><init>()V

    .line 143
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    .line 144
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    .line 149
    new-instance v2, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;

    invoke-direct {v2, p0, v4}, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;-><init>(Lcom/android/server/clipboardex/ClipboardExService;Lcom/android/server/clipboardex/ClipboardExService$1;)V

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->clipPickerDataList:Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;

    .line 150
    const-string v2, "2.0"

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->KNOX_VERSION:Ljava/lang/String;

    .line 151
    iput-boolean v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->KNOX_PASTE_FLAG:Z

    .line 152
    const-string v2, "com.samsung.knox.clipboard.clipremoved"

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->CLIP_ADD_DELETED_ITEM_BROADCAST:Ljava/lang/String;

    .line 153
    const-string v2, "clips.info"

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->CLIPS_INFO:Ljava/lang/String;

    .line 156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    .line 157
    new-instance v2, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;

    invoke-direct {v2, p0, v4}, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;-><init>(Lcom/android/server/clipboardex/ClipboardExService;Lcom/android/server/clipboardex/ClipboardExService$1;)V

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipBoardDataUiEventImp:Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;

    .line 158
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mIsLogging:Z

    .line 160
    iput-boolean v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mIsCalledPasteApp:Z

    .line 161
    iput v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mCallingId:I

    .line 164
    iput-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService;->mUm:Landroid/os/IUserManager;

    .line 165
    iput-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Landroid/os/PersonaManager;

    .line 166
    iput-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService;->mRCPManager:Landroid/os/RCPManager;

    .line 1746
    iput v6, p0, Lcom/android/server/clipboardex/ClipboardExService;->MSG_SHOW_DIALOG:I

    .line 1747
    iput v7, p0, Lcom/android/server/clipboardex/ClipboardExService;->MSG_START_SERVICE:I

    .line 1748
    iput v8, p0, Lcom/android/server/clipboardex/ClipboardExService;->MSG_UPDATE_DIALOG:I

    .line 1749
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->MSG_DISMISS_DIALOG:I

    .line 1750
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->MSG_DELETE_TEMP_FILE:I

    .line 1751
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->MSG_COPY_URI:I

    .line 1840
    new-instance v2, Lcom/android/server/clipboardex/ClipboardExService$4;

    invoke-direct {v2, p0}, Lcom/android/server/clipboardex/ClipboardExService$4;-><init>(Lcom/android/server/clipboardex/ClipboardExService;)V

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mHandler:Landroid/os/Handler;

    .line 678
    iput-object p1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    .line 679
    new-instance v2, Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/16 v3, 0x14

    invoke-direct {v2, v3, p1, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;-><init>(ILandroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    .line 680
    new-instance v2, Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/16 v3, 0x14

    invoke-direct {v2, v3, p1, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;-><init>(ILandroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    .line 682
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Text"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Bitmap"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "HTMLFlagment"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    const-string/jumbo v2, "user"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Landroid/os/IUserManager;

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mUm:Landroid/os/IUserManager;

    .line 687
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Landroid/os/PersonaManager;

    .line 688
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "rcp"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RCPManager;

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mRCPManager:Landroid/os/RCPManager;

    .line 690
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 691
    .local v0, "knoxFilter":Landroid/content/IntentFilter;
    const-string v2, "enterprise.container.remove.progress"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 693
    const-string v2, "com.samsung.knox.clipboard.sync"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 695
    const-string v2, "enterprise.container.uninstalled"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 696
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 697
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;-><init>(Lcom/android/server/clipboardex/ClipboardExService;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 700
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 701
    .local v1, "userFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 702
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 703
    const-string v2, "android.intent.action.SECONTAINER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 704
    const-string v2, "android.intent.action.SECONTAINER_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 705
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/clipboardex/ClipboardExService$1;

    invoke-direct {v3, p0}, Lcom/android/server/clipboardex/ClipboardExService$1;-><init>(Lcom/android/server/clipboardex/ClipboardExService;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 729
    return-void
.end method

.method private ListChange(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 2267
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 2268
    const/4 v4, 0x0

    .line 2269
    .local v4, "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2270
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 2271
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    check-cast v4, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 2273
    .restart local v4    # "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    :try_start_0
    invoke-interface {v4, p1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataListChange(I)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2270
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2274
    :catch_0
    move-exception v0

    .line 2275
    .local v0, "de":Landroid/os/DeadObjectException;
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 2276
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2277
    add-int/lit8 v1, v1, -0x1

    .line 2278
    add-int/lit8 v3, v3, -0x1

    .line 2281
    goto :goto_1

    .line 2279
    .end local v0    # "de":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v2

    .line 2280
    .local v2, "re":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 2284
    .end local v1    # "i":I
    .end local v2    # "re":Landroid/os/RemoteException;
    .end local v3    # "size":I
    .end local v4    # "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/os/PersonaManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Landroid/os/PersonaManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/clipboardex/ClipboardExService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;
    .param p1, "x1"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/clipboardex/ClipboardExService;->doSyncForFota(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/clipboardex/ClipboardExService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isKioskEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mCurrentUserContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/clipboardex/ClipboardExService;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mCurrentUserContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/clipboardex/ClipboardExService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 134
    iget v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mCallingId:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;
    .param p1, "x1"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/clipboardex/ClipboardExService;->updateDataListChange(Landroid/sec/clipboard/data/ClipboardData;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/clipboardex/ClipboardExService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboardex/ClipboardExService;->deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/ClipboardUIManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardUIManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;
    .param p1, "x1"    # Landroid/sec/clipboard/ClipboardUIManager;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/clipboardex/ClipboardExService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 134
    iget v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mEnableFormatId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    return-object v0
.end method

.method static synthetic access$2100()Z
    .locals 1

    .prologue
    .line 134
    sget-boolean v0, Lcom/android/server/clipboardex/ClipboardExService;->SEC_FLOATING_FEATURE_VIEWSYSTEM_CLIPBOARD_UI_SERVICE:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/clipboardex/ClipboardExService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->KNOX_PASTE_FLAG:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/clipboardex/ClipboardExService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/android/server/clipboardex/ClipboardExService;->KNOX_PASTE_FLAG:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/clipboardex/ClipboardExService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;
    .param p1, "x1"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/clipboardex/ClipboardExService;->ListChange(I)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/server/clipboardex/ClipboardExService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mIsCalledPasteApp:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/clipboardex/ClipboardExService;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboardex/ClipboardExService;->sendLoggingForCB(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/ClipboardConverter;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/ClipboardConverter;)Landroid/sec/clipboard/ClipboardConverter;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;
    .param p1, "x1"    # Landroid/sec/clipboard/ClipboardConverter;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/clipboardex/ClipboardExService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaManager()Z

    move-result v0

    return v0
.end method

.method private addData(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 12
    .param p1, "format"    # I
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v8, 0x0

    .line 1280
    sget-boolean v9, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 1281
    const-string v9, "ClipboardExService"

    const-string v10, "addData.."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v7

    .line 1285
    .local v7, "userId":I
    const/16 v9, 0x64

    if-lt v7, v9, :cond_1

    const/16 v9, 0xc2

    if-le v7, v9, :cond_2

    .line 1286
    :cond_1
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->loadSEContainer()V

    .line 1288
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/clipboardex/ClipboardExService;->checkEquals(Landroid/sec/clipboard/data/ClipboardData;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1289
    sget-boolean v9, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v9, :cond_3

    .line 1290
    const-string v9, "ClipboardExService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The data are the same.:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    :cond_3
    const/4 v9, 0x5

    if-ne p1, v9, :cond_6

    move-object v6, p2

    .line 1294
    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 1295
    .local v6, "uriData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    invoke-direct {p0, v6}, Lcom/android/server/clipboardex/ClipboardExService;->deleteSameClipboardDataUri(Landroid/sec/clipboard/data/list/ClipboardDataUri;)V

    .line 1318
    .end local v6    # "uriData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :cond_4
    invoke-virtual {p2, p1}, Landroid/sec/clipboard/data/ClipboardData;->GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 1319
    .local v0, "addItem":Landroid/sec/clipboard/data/ClipboardData;
    if-eqz v0, :cond_8

    .line 1320
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/android/server/clipboardex/ClipboardExService$3;

    invoke-direct {v9, p0, v0, p1, p2}, Lcom/android/server/clipboardex/ClipboardExService$3;-><init>(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/data/ClipboardData;ILandroid/sec/clipboard/data/ClipboardData;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 1403
    const/4 v8, 0x1

    .line 1408
    .end local v0    # "addItem":Landroid/sec/clipboard/data/ClipboardData;
    :cond_5
    :goto_0
    return v8

    .line 1297
    :cond_6
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object v5, p2

    .line 1299
    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 1300
    .local v5, "trgData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->getBitmapPath()Ljava/lang/String;

    move-result-object v4

    .line 1301
    .local v4, "imagePath":Ljava/lang/String;
    const-string v1, ""

    .line 1302
    .local v1, "extraFilePath":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->HasExtraData()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1303
    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->getExtraDataPath()Ljava/lang/String;

    move-result-object v1

    .line 1305
    :cond_7
    invoke-direct {p0, v4, v1}, Lcom/android/server/clipboardex/ClipboardExService;->deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "extraFilePath":Ljava/lang/String;
    .end local v4    # "imagePath":Ljava/lang/String;
    .end local v5    # "trgData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    :pswitch_1
    move-object v3, p2

    .line 1308
    check-cast v3, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    .line 1309
    .local v3, "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getFirstImgPath()Ljava/lang/String;

    move-result-object v2

    .line 1310
    .local v2, "firstImagePath":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-direct {p0, v2, v9}, Lcom/android/server/clipboardex/ClipboardExService;->deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1405
    .end local v2    # "firstImagePath":Ljava/lang/String;
    .end local v3    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    .restart local v0    # "addItem":Landroid/sec/clipboard/data/ClipboardData;
    :cond_8
    sget-boolean v9, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v9, :cond_5

    .line 1406
    const-string v9, "ClipboardExService"

    const-string v10, "data is null"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1297
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private canReadAcrossProfiles()Z
    .locals 7

    .prologue
    .line 2159
    const/4 v1, 0x1

    .line 2161
    .local v1, "canCrossCopyPaste":Z
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2163
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v3

    .line 2164
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService;->mUm:Landroid/os/IUserManager;

    invoke-interface {v4, v3}, Landroid/os/IUserManager;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 2165
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v4, "no_cross_profile_copy_paste"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v1, 0x1

    .line 2166
    :goto_0
    const-string v4, "ClipboardExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canReadAcrossProfiles : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2171
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v3    # "userId":I
    :cond_0
    :goto_1
    return v1

    .line 2165
    .restart local v0    # "b":Landroid/os/Bundle;
    .restart local v3    # "userId":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2167
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v3    # "userId":I
    :catch_0
    move-exception v2

    .line 2168
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private checkEquals(Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 6
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 965
    const/4 v1, 0x0

    .line 967
    .local v1, "result":Z
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/clipboardex/ClipboardExService;->getLatestItemInternal(Z)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 968
    .local v0, "latestData":Landroid/sec/clipboard/data/ClipboardData;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v3

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v4

    if-eq v3, v4, :cond_1

    :cond_0
    move v2, v1

    .line 980
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_0
    return v2

    .line 972
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_1
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 974
    if-eqz v1, :cond_2

    .line 975
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->replaceWithTargetForUser(Landroid/sec/clipboard/data/ClipboardDataMgr;I)V

    .line 976
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v3, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->reAddForKnox(Landroid/sec/clipboard/data/ClipboardData;)V

    .line 977
    const-string v3, "ClipboardExService"

    const-string v4, "completed reAddForKnox method"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v2, v1

    .line 980
    .restart local v2    # "result":I
    goto :goto_0
.end method

.method private clearDataList()V
    .locals 5

    .prologue
    .line 1991
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v1

    .line 1992
    .local v1, "userId":I
    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    const/16 v2, 0xc2

    if-le v1, v2, :cond_1

    .line 1993
    :cond_0
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->loadSEContainer()V

    .line 1996
    :cond_1
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    if-eqz v2, :cond_2

    .line 1997
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeAll()Z

    move-result v0

    .line 1998
    .local v0, "bRes":Z
    const-string v2, "ClipboardExService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearDataList "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    .end local v0    # "bRes":Z
    :goto_0
    return-void

    .line 2000
    :cond_2
    const-string v2, "ClipboardExService"

    const-string v3, "clearDataList"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private copyFileToOwner(ILjava/lang/String;)Ljava/io/File;
    .locals 6
    .param p1, "persId"    # I
    .param p2, "personaPath"    # Ljava/lang/String;

    .prologue
    .line 600
    const/4 v1, 0x0

    .line 601
    .local v1, "tempFile":Ljava/io/File;
    const-string v3, "ClipboardExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyFileToUserZero : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :try_start_0
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mRCPManager:Landroid/os/RCPManager;

    if-nez v3, :cond_0

    .line 604
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "rcp"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RCPManager;

    iput-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mRCPManager:Landroid/os/RCPManager;

    .line 606
    :cond_0
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mRCPManager:Landroid/os/RCPManager;

    const/4 v4, 0x0

    const-string v5, "/data/clipboard/deletedClips.xml"

    invoke-virtual {v3, p1, p2, v4, v5}, Landroid/os/RCPManager;->copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I

    .line 607
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/clipboard/deletedClips.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "tempFile":Ljava/io/File;
    .local v2, "tempFile":Ljava/io/File;
    move-object v1, v2

    .line 611
    .end local v2    # "tempFile":Ljava/io/File;
    .restart local v1    # "tempFile":Ljava/io/File;
    :goto_0
    return-object v1

    .line 608
    :catch_0
    move-exception v0

    .line 609
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ClipboardExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "inside file copy exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private copyUriFromClipboardSaveService(Ljava/lang/String;)V
    .locals 3
    .param p1, "uriPath"    # Ljava/lang/String;

    .prologue
    .line 1448
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 1449
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1450
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1451
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1452
    const-string/jumbo v2, "uriPath"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1454
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1455
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1458
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private deleteSameClipboardDataUri(Landroid/sec/clipboard/data/list/ClipboardDataUri;)V
    .locals 7
    .param p1, "uriData"    # Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .prologue
    .line 1413
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getDataSize()I

    move-result v0

    .line 1415
    .local v0, "count":I
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1416
    const-string v4, "ClipboardExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteSameClipboardDataUri :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    :cond_0
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 1419
    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 1420
    .local v2, "data":Landroid/sec/clipboard/data/ClipboardData;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 1421
    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1418
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 1424
    check-cast v1, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 1425
    .local v1, "currentDataUri":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1426
    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    goto :goto_1

    .line 1431
    .end local v1    # "currentDataUri":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    .end local v2    # "data":Landroid/sec/clipboard/data/ClipboardData;
    :cond_3
    return-void
.end method

.method private deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "extraFilePath"    # Ljava/lang/String;

    .prologue
    .line 1434
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    const-string v2, "com.samsung.clipboardsaveservice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1435
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1436
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1437
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1438
    const-string v2, "deletePath"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    const-string v2, "extraDataPath"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1441
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1442
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1445
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private doSyncForFota(I)V
    .locals 9
    .param p1, "id"    # I

    .prologue
    .line 577
    const/4 v2, 0x0

    .line 578
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/clipboard"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/shared/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 579
    .local v4, "sharedPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 580
    .local v3, "sharedFolder":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 581
    const-string v6, "ClipboardExService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doSyncForFota : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/user/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/com.sec.knox.bridge/shared_prefs/deletedClips.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 583
    .local v1, "deletedClipsPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 584
    .local v0, "delClipsFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 585
    invoke-direct {p0, p1, v1}, Lcom/android/server/clipboardex/ClipboardExService;->copyFileToOwner(ILjava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 586
    .local v5, "tempFile":Ljava/io/File;
    if-eqz v5, :cond_2

    .line 587
    invoke-direct {p0, v5}, Lcom/android/server/clipboardex/ClipboardExService;->parseXML(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v2

    .line 588
    invoke-virtual {p0, v5}, Lcom/android/server/clipboardex/ClipboardExService;->deleteDir(Ljava/io/File;)V

    .line 589
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v6, p1, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->updateFotaClips(ILjava/util/ArrayList;)V

    .line 590
    const-string v6, "ClipboardExService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateFotaClips : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    .end local v5    # "tempFile":Ljava/io/File;
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/clipboardex/ClipboardExService;->deleteDir(Ljava/io/File;)V

    .line 597
    .end local v0    # "delClipsFile":Ljava/io/File;
    .end local v1    # "deletedClipsPath":Ljava/lang/String;
    :cond_1
    return-void

    .line 592
    .restart local v0    # "delClipsFile":Ljava/io/File;
    .restart local v1    # "deletedClipsPath":Ljava/lang/String;
    .restart local v5    # "tempFile":Ljava/io/File;
    :cond_2
    const-string v6, "ClipboardExService"

    const-string/jumbo v7, "tempfile is null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dump()V
    .locals 5

    .prologue
    .line 1975
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    .line 1976
    .local v1, "size":I
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1977
    const-string v2, "ClipboardExService"

    const-string v3, "====================================================="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1980
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->INFO_DEBUG:Z

    if-eqz v2, :cond_1

    .line 1981
    const-string v2, "ClipboardExService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1984
    :cond_2
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 1985
    const-string v2, "ClipboardExService"

    const-string v3, "====================================================="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    :cond_3
    return-void
.end method

.method private getLatestItemInternal(Z)Landroid/sec/clipboard/data/ClipboardData;
    .locals 10
    .param p1, "isKnoxMode"    # Z

    .prologue
    const/4 v5, 0x0

    .line 984
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    .line 985
    .local v1, "dataSize":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->sharedSize()I

    move-result v4

    .line 986
    .local v4, "sharedSize":I
    :goto_1
    const-string v6, "ClipboardExService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getLatestItemInternal : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    const/4 v0, 0x0

    .line 988
    .local v0, "data":Landroid/sec/clipboard/data/ClipboardData;
    if-nez p1, :cond_4

    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    if-eqz v6, :cond_4

    .line 989
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v6, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getTopItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 1004
    :cond_0
    :goto_2
    if-eqz v0, :cond_1

    .line 1005
    const-string v5, "ClipboardExService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getLatestItemInternal : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :cond_1
    return-object v0

    .end local v0    # "data":Landroid/sec/clipboard/data/ClipboardData;
    .end local v1    # "dataSize":I
    .end local v4    # "sharedSize":I
    :cond_2
    move v1, v5

    .line 984
    goto :goto_0

    .restart local v1    # "dataSize":I
    :cond_3
    move v4, v5

    .line 985
    goto :goto_1

    .line 991
    .restart local v0    # "data":Landroid/sec/clipboard/data/ClipboardData;
    .restart local v4    # "sharedSize":I
    :cond_4
    if-lez v1, :cond_6

    if-lez v4, :cond_6

    .line 992
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v6, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getSharedItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v3

    .line 993
    .local v3, "sharedData":Landroid/sec/clipboard/data/ClipboardData;
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v6, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 994
    .local v2, "myData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardData;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->getTimestamp()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_5

    move-object v0, v3

    .line 995
    :goto_3
    goto :goto_2

    :cond_5
    move-object v0, v2

    .line 994
    goto :goto_3

    .line 996
    .end local v2    # "myData":Landroid/sec/clipboard/data/ClipboardData;
    .end local v3    # "sharedData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_6
    if-lez v1, :cond_7

    .line 997
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v6, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getTopItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    goto :goto_2

    .line 998
    :cond_7
    if-lez v4, :cond_0

    .line 999
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    iget-object v7, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v6, v7, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->replaceWithTargetForUser(Landroid/sec/clipboard/data/ClipboardDataMgr;I)V

    .line 1000
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v6, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getSharedItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    goto :goto_2
.end method

.method private getPersonaManager()Z
    .locals 2

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Landroid/os/PersonaManager;

    if-nez v0, :cond_0

    .line 2255
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Landroid/os/PersonaManager;

    .line 2258
    :cond_0
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Landroid/os/PersonaManager;

    if-eqz v0, :cond_1

    .line 2259
    const/4 v0, 0x1

    .line 2263
    :goto_0
    return v0

    .line 2262
    :cond_1
    const-string v0, "ClipboardExService"

    const-string/jumbo v1, "personaManager is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSEAMSCategory(Ljava/lang/String;)I
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1090
    const/4 v4, 0x0

    .line 1091
    .local v4, "pm":Landroid/content/pm/IPackageManager;
    const/4 v1, -0x1

    .line 1092
    .local v1, "category":I
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_2

    .line 1093
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 1098
    const/4 v0, 0x0

    .line 1099
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v5, 0x0

    .line 1100
    .local v5, "seinfo":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    .line 1102
    const/16 v6, 0x80

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-interface {v4, p1, v6, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1107
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 1108
    const-string v6, "ClipboardExService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "appInfo is null for packageName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    move v2, v1

    .line 1118
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "category":I
    .end local v5    # "seinfo":Ljava/lang/String;
    .local v2, "category":I
    :goto_2
    return v2

    .line 1095
    .end local v2    # "category":I
    .restart local v1    # "category":I
    :cond_2
    const-string v6, "ClipboardExService"

    const-string v7, "Cannot get context for package manager"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 1096
    .end local v1    # "category":I
    .restart local v2    # "category":I
    goto :goto_2

    .line 1103
    .end local v2    # "category":I
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "category":I
    .restart local v5    # "seinfo":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1104
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1110
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 1111
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 1112
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "ClipboardExService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSEAMSCategory, before checking range, category:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", seinfo:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :cond_4
    const/16 v6, 0x66

    if-eq v1, v6, :cond_5

    const/16 v6, 0xc9

    if-lt v1, v6, :cond_6

    :cond_5
    const/16 v6, 0x1f4

    if-le v1, v6, :cond_7

    .line 1114
    :cond_6
    const/4 v1, 0x0

    .line 1116
    :cond_7
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "ClipboardExService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSEAMSCategory, category:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", seinfo:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static getService()Landroid/content/IClipboard;
    .locals 3

    .prologue
    .line 1959
    sget-object v1, Lcom/android/server/clipboardex/ClipboardExService;->sService:Landroid/content/IClipboard;

    if-eqz v1, :cond_0

    .line 1960
    sget-object v1, Lcom/android/server/clipboardex/ClipboardExService;->sService:Landroid/content/IClipboard;

    .line 1971
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 1962
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "clipboard"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1963
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;

    move-result-object v1

    sput-object v1, Lcom/android/server/clipboardex/ClipboardExService;->sService:Landroid/content/IClipboard;

    .line 1965
    sget-object v1, Lcom/android/server/clipboardex/ClipboardExService;->sService:Landroid/content/IClipboard;

    if-nez v1, :cond_1

    .line 1966
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1967
    const-string v1, "ClipboardExService"

    const-string v2, "Original clipboard service is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    :cond_1
    sget-object v1, Lcom/android/server/clipboardex/ClipboardExService;->sService:Landroid/content/IClipboard;

    goto :goto_0
.end method

.method private getUserId()I
    .locals 4

    .prologue
    .line 172
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 173
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 174
    .local v1, "userId":I
    invoke-static {v1}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    const/4 v1, 0x0

    .line 176
    const-string v2, "ClipboardExService"

    const-string/jumbo v3, "getUserId is BBC"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    return v1
.end method

.method private isClipboardAllowed(ZI)I
    .locals 10
    .param p1, "showToast"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 2177
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move v0, v7

    .line 2196
    :goto_0
    return v0

    .line 2181
    :cond_0
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2182
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 2183
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isClipboardAllowedAsUser"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2184
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 2186
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2187
    const-string/jumbo v0, "isClipboardAllowedAsUser"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 2191
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 2196
    goto :goto_0

    .line 2191
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    move v0, v7

    .line 2194
    goto :goto_0
.end method

.method private isClipboardShareAllowed(I)I
    .locals 10
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 2203
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move v0, v7

    .line 2222
    :goto_0
    return v0

    .line 2207
    :cond_0
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2208
    .local v1, "uri":Landroid/net/Uri;
    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 2209
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isClipboardShareAllowedAsUser"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2210
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 2212
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2213
    const-string/jumbo v0, "isClipboardShareAllowedAsUser"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 2217
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 2222
    goto :goto_0

    .line 2217
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    move v0, v7

    .line 2220
    goto :goto_0
.end method

.method private isEnabled(I)Z
    .locals 14
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v12, -0x1

    .line 2128
    const/4 v6, 0x0

    .line 2129
    .local v6, "result":Z
    const-wide/16 v4, -0x1

    .line 2131
    .local v4, "origId":J
    if-eqz p1, :cond_4

    .line 2132
    :try_start_0
    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService;->mUm:Landroid/os/IUserManager;

    if-nez v8, :cond_0

    .line 2133
    const-string/jumbo v8, "user"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    check-cast v8, Landroid/os/IUserManager;

    iput-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService;->mUm:Landroid/os/IUserManager;

    .line 2135
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2136
    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService;->mUm:Landroid/os/IUserManager;

    invoke-interface {v8, p1}, Landroid/os/IUserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 2137
    .local v7, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    .line 2138
    .local v3, "isManagedProfile":Z
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v2

    .line 2139
    .local v2, "isKnoxWorkspace":Z
    if-eqz v3, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    const/4 v6, 0x1

    .line 2140
    :goto_0
    const-string v8, "ClipboardExService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isEnabled, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2151
    .end local v2    # "isKnoxWorkspace":Z
    .end local v3    # "isManagedProfile":Z
    .end local v7    # "ui":Landroid/content/pm/UserInfo;
    :goto_1
    cmp-long v8, v4, v12

    if-eqz v8, :cond_2

    .line 2152
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2155
    :cond_2
    :goto_2
    return v6

    .line 2139
    .restart local v2    # "isKnoxWorkspace":Z
    .restart local v3    # "isManagedProfile":Z
    .restart local v7    # "ui":Landroid/content/pm/UserInfo;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 2142
    .end local v2    # "isKnoxWorkspace":Z
    .end local v3    # "isManagedProfile":Z
    .end local v7    # "ui":Landroid/content/pm/UserInfo;
    :cond_4
    const/4 v6, 0x1

    goto :goto_1

    .line 2144
    :catch_0
    move-exception v0

    .line 2145
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v8, "ClipboardExService"

    const-string/jumbo v9, "isEnabled() RemoteException!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2151
    cmp-long v8, v4, v12

    if-eqz v8, :cond_2

    .line 2152
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 2147
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2148
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v8, "ClipboardExService"

    const-string/jumbo v9, "isEnabled() Exception!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2151
    cmp-long v8, v4, v12

    if-eqz v8, :cond_2

    .line 2152
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 2151
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    cmp-long v9, v4, v12

    if-eqz v9, :cond_5

    .line 2152
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_5
    throw v8
.end method

.method private isKioskEnabled()Z
    .locals 4

    .prologue
    .line 662
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 663
    .local v0, "bRet":Z
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 664
    const-string v1, "ClipboardExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isKioskEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_0
    return v0
.end method

.method private isKnoxKeyguardShowing()Z
    .locals 6

    .prologue
    .line 255
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 258
    .local v0, "ident":J
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v2

    .line 260
    .local v2, "userId":I
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 261
    const-string v3, "ClipboardExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isKnoxKeyguardShowing getPersonaId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 265
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaManager()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 266
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v3, v2}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v3, v2}, Landroid/os/PersonaManager;->getKeyguardShowState(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 267
    const/4 v3, 0x1

    .line 271
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isSEContainerClipboardEnabled(I)I
    .locals 10
    .param p1, "category"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 2226
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move v0, v7

    .line 2246
    :goto_0
    return v0

    .line 2229
    :cond_0
    const-string v0, "content://com.sec.knox.provider/SeamsPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2230
    .local v1, "uri":Landroid/net/Uri;
    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 2231
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "getSEContainerClipboardMode"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2232
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 2234
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2235
    const-string/jumbo v0, "getSEContainerClipboardMode"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 2239
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2245
    const-string v0, "ClipboardExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSEContainerClipboardEnabled for secontainerid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 2246
    goto :goto_0

    .line 2239
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2242
    :cond_2
    const-string v0, "ClipboardExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSEContainerClipboardEnabled for secontainerid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is -1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2243
    goto/16 :goto_0
.end method

.method private isServiceCallFromOther()Z
    .locals 8

    .prologue
    .line 237
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 238
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 240
    .local v1, "callingUser":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 243
    .local v4, "ident":J
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getCurrentListOwnerUid()I

    move-result v2

    .line 245
    .local v2, "currUser":I
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ClipboardExService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " isServiceCallFromOther getPersonaId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 248
    if-eq v1, v2, :cond_1

    .line 249
    const/4 v3, 0x1

    .line 251
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private loadSEContainer()V
    .locals 10

    .prologue
    .line 1054
    const/4 v0, 0x0

    .line 1056
    .local v0, "callerName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1060
    :goto_0
    const/4 v1, 0x0

    .line 1061
    .local v1, "cat":I
    if-eqz v0, :cond_0

    .line 1062
    invoke-direct {p0, v0}, Lcom/android/server/clipboardex/ClipboardExService;->getSEAMSCategory(Ljava/lang/String;)I

    move-result v1

    .line 1063
    if-gez v1, :cond_1

    .line 1064
    const-string v7, "ClipboardExService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "loadSEContainer, error getting SEAMS category value, cat: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :cond_0
    :goto_1
    return-void

    .line 1057
    .end local v1    # "cat":I
    :catch_0
    move-exception v2

    .line 1058
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "ClipboardExService"

    const-string v8, "Exception in getPackageNameFromAppProcesses"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1065
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "cat":I
    :cond_1
    if-lez v1, :cond_3

    .line 1066
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1067
    .local v4, "ident":J
    invoke-direct {p0, v1}, Lcom/android/server/clipboardex/ClipboardExService;->isSEContainerClipboardEnabled(I)I

    move-result v3

    .line 1068
    .local v3, "status":I
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1069
    const/4 v7, 0x1

    if-ne v3, v7, :cond_2

    .line 1070
    iget-object v7, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v7, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->loadSEContainerDB(I)V

    goto :goto_1

    .line 1072
    :cond_2
    const-string v7, "ClipboardExService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "loadSEContainter, cat:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", doesn\'t have clipboard enabled"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-object v7, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->loadSEContainerDB(I)V

    goto :goto_1

    .line 1076
    .end local v3    # "status":I
    .end local v4    # "ident":J
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v6

    .line 1078
    .local v6, "userId":I
    if-eqz v6, :cond_4

    const/16 v7, 0x64

    if-ge v6, v7, :cond_4

    iget-object v7, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v7, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isManagedProfile(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1079
    const-string v7, "ClipboardExService"

    const-string/jumbo v8, "loadSEContainer, before loadSECOntainerDB, isManagedProfile should have been false, cat :  userId + 1000"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-object v7, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    add-int/lit16 v8, v6, 0x3e8

    invoke-virtual {v7, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->loadSEContainerDB(I)V

    goto :goto_1

    .line 1083
    :cond_4
    iget-object v7, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v7, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->loadSEContainerDB(I)V

    goto :goto_1
.end method

.method private parseXML(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "delClip"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 615
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 616
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 618
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 619
    .local v2, "factoryObject":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v6, 0x0

    .line 620
    .local v6, "myparser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 621
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 622
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    :try_start_1
    invoke-interface {v6, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 625
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 626
    .local v1, "event":I
    :goto_0
    const/4 v9, 0x1

    if-eq v1, v9, :cond_2

    .line 627
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 628
    .local v7, "name":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 640
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 641
    goto :goto_0

    .line 632
    :pswitch_1
    const-string v9, "boolean"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 633
    const/4 v9, 0x0

    const-string/jumbo v10, "name"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 634
    .local v8, "val":Ljava/lang/String;
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    const-string v9, "ClipboardExService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "parseXML : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 642
    .end local v1    # "event":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "val":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 643
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :goto_2
    :try_start_2
    const-string v9, "ClipboardExService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "inside exception for parsexml"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 645
    if-eqz v3, :cond_1

    .line 647
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 653
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    return-object v5

    .line 645
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "event":I
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :cond_2
    if-eqz v4, :cond_4

    .line 647
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v3, v4

    .line 650
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 648
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 649
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v9, "ClipboardExService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "inside exception for Close connection"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 650
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 648
    .end local v1    # "event":I
    :catch_2
    move-exception v0

    .line 649
    const-string v9, "ClipboardExService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "inside exception for Close connection"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 645
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_4
    if-eqz v3, :cond_3

    .line 647
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 650
    :cond_3
    :goto_5
    throw v9

    .line 648
    :catch_3
    move-exception v0

    .line 649
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v10, "ClipboardExService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "inside exception for Close connection"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 645
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 642
    :catch_4
    move-exception v0

    goto/16 :goto_2

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "event":I
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :cond_4
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 628
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private registerKnoxModeChangeObserver()V
    .locals 6

    .prologue
    .line 733
    const-string v3, "ClipboardExService"

    const-string v4, "ClipboardExService.registerKnoxModeChangeObserver() Registered..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :try_start_0
    const-string/jumbo v3, "persona"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 737
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PersonaManagerService;

    .line 738
    .local v2, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-nez v2, :cond_0

    .line 739
    const-string v3, "ClipboardExService"

    const-string v4, "ClipboardExService.onKnoxModeChange() pms == null...  should not happened"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :goto_0
    return-void

    .line 743
    .restart local v0    # "b":Landroid/os/IBinder;
    .restart local v2    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :cond_0
    new-instance v3, Lcom/android/server/clipboardex/ClipboardExService$2;

    invoke-direct {v3, p0}, Lcom/android/server/clipboardex/ClipboardExService$2;-><init>(Lcom/android/server/clipboardex/ClipboardExService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PersonaManagerService;->registerKnoxModeChangeObserver(Landroid/content/pm/IKnoxModeChangeObserver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 761
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :catch_0
    move-exception v1

    .line 762
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "ClipboardExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Error during calling BMS.registerKnoxModeChangeObserver(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private sendLoggingForCB(ILjava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 2287
    iget-boolean v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mIsLogging:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    .line 2288
    const/4 v1, 0x0

    .line 2289
    .local v1, "format":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 2309
    const-string v1, "TEXT"

    .line 2313
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2314
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "app_id"

    const-string v4, "com.android.samsung.clipboarduiservice"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2315
    const-string/jumbo v3, "feature"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2316
    const-string v3, "extra"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2318
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2319
    .local v2, "i":Landroid/content/Intent;
    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2320
    const-string v3, "com.samsung.android.providers.context"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2322
    const-string v3, "ClipboardExService"

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2327
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "format":Ljava/lang/String;
    .end local v2    # "i":Landroid/content/Intent;
    :goto_1
    return-void

    .line 2291
    .restart local v1    # "format":Ljava/lang/String;
    :pswitch_0
    const-string v1, "HTML"

    .line 2292
    goto :goto_0

    .line 2294
    :pswitch_1
    const-string v1, "BITMAP"

    .line 2295
    goto :goto_0

    .line 2297
    :pswitch_2
    const-string v1, "URI"

    .line 2298
    goto :goto_0

    .line 2300
    :pswitch_3
    const-string v1, "INTENT"

    .line 2301
    goto :goto_0

    .line 2303
    :pswitch_4
    const-string v1, "URI_LIST"

    .line 2304
    goto :goto_0

    .line 2306
    :pswitch_5
    const-string v1, "MULTIPLE_TYPE"

    .line 2307
    goto :goto_0

    .line 2325
    .end local v1    # "format":Ljava/lang/String;
    :cond_0
    const-string v3, "ClipboardExService"

    const-string/jumbo v4, "no logging!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2289
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private sendOriginalClipboardData(Landroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;)V
    .locals 13
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1472
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    move-object v8, p1

    .line 1473
    check-cast v8, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 1475
    .local v8, "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :try_start_0
    invoke-static {}, Lcom/android/server/clipboardex/ClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v11

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getClipData()Landroid/content/ClipData;

    move-result-object v12

    invoke-interface {v11, v12, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1476
    sget-boolean v11, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 1477
    const-string v11, "ClipboardExService"

    const-string v12, "String was copied.(Format.TEXT)"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1558
    .end local v8    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_0
    :goto_0
    return-void

    .line 1479
    .restart local v8    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :catch_0
    move-exception v3

    .line 1480
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1482
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v8    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_1
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_2

    .line 1483
    new-instance v8, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v8}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 1484
    .restart local v8    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    const/4 v11, 0x2

    invoke-virtual {p1, v11, v8}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    .line 1486
    :try_start_1
    invoke-static {}, Lcom/android/server/clipboardex/ClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v11

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getClipData()Landroid/content/ClipData;

    move-result-object v12

    invoke-interface {v11, v12, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1487
    sget-boolean v11, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 1488
    const-string v11, "ClipboardExService"

    const-string v12, "String was copied.(Format.HTML)"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1490
    :catch_1
    move-exception v3

    .line 1491
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1493
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v8    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_2
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v12, :cond_3

    move-object v9, p1

    .line 1494
    check-cast v9, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 1496
    .local v9, "uri":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :try_start_2
    invoke-static {}, Lcom/android/server/clipboardex/ClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v11

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getClipData()Landroid/content/ClipData;

    move-result-object v12

    invoke-interface {v11, v12, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1499
    sget-boolean v11, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 1500
    const-string v11, "ClipboardExService"

    const-string v12, "String was copied.(Format.URI)"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1502
    :catch_2
    move-exception v3

    .line 1503
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1505
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v9    # "uri":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :cond_3
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v11

    const/4 v12, 0x6

    if-ne v11, v12, :cond_4

    move-object v5, p1

    .line 1506
    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    .line 1508
    .local v5, "intent":Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    :try_start_3
    invoke-static {}, Lcom/android/server/clipboardex/ClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v11

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getClipData()Landroid/content/ClipData;

    move-result-object v12

    invoke-interface {v11, v12, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1511
    sget-boolean v11, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 1512
    const-string v11, "ClipboardExService"

    const-string v12, "String was copied.(Format.INTENT)"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 1514
    :catch_3
    move-exception v3

    .line 1515
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1517
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "intent":Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    :cond_4
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v11

    const/4 v12, 0x7

    if-ne v11, v12, :cond_8

    move-object v7, p1

    .line 1518
    check-cast v7, Landroid/sec/clipboard/data/list/ClipboardDataUriList;

    .line 1519
    .local v7, "multiUri":Landroid/sec/clipboard/data/list/ClipboardDataUriList;
    invoke-virtual {v7}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->getUriList()Ljava/util/ArrayList;

    move-result-object v10

    .line 1520
    .local v10, "uries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    .line 1521
    .local v0, "N":I
    if-eqz v10, :cond_5

    .line 1522
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1524
    :cond_5
    const/4 v1, 0x0

    .line 1525
    .local v1, "clipData":Landroid/content/ClipData;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_7

    .line 1526
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    .line 1527
    .local v9, "uri":Landroid/net/Uri;
    if-nez v1, :cond_6

    .line 1528
    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12, v9}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v1

    .line 1525
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1530
    :cond_6
    new-instance v11, Landroid/content/ClipData$Item;

    invoke-direct {v11, v9}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v11}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_2

    .line 1534
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_7
    if-eqz v1, :cond_0

    .line 1535
    :try_start_4
    invoke-static {}, Lcom/android/server/clipboardex/ClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v11

    invoke-interface {v11, v1, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1536
    sget-boolean v11, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 1537
    const-string v11, "ClipboardExService"

    const-string v12, "String was copied.(Format.URI_LIST)"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 1540
    :catch_4
    move-exception v3

    .line 1541
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1543
    .end local v0    # "N":I
    .end local v1    # "clipData":Landroid/content/ClipData;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "i":I
    .end local v7    # "multiUri":Landroid/sec/clipboard/data/list/ClipboardDataUriList;
    .end local v10    # "uries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_8
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_0

    move-object v6, p1

    .line 1544
    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;

    .line 1545
    .local v6, "multiType":Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;
    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    .line 1548
    .local v2, "clipdata":Landroid/content/ClipData;
    if-eqz v2, :cond_0

    .line 1549
    :try_start_5
    invoke-static {}, Lcom/android/server/clipboardex/ClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v11

    invoke-interface {v11, v2, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1550
    sget-boolean v11, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 1551
    const-string v11, "ClipboardExService"

    const-string v12, "String was copied.(Format.MULTIPLE_TYPE)"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 1554
    :catch_5
    move-exception v3

    .line 1555
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private updateDataListChange(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 1
    .param p1, "clip"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 1461
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/clipboardex/ClipboardExService;->ListChange(I)V

    .line 1463
    if-eqz p1, :cond_0

    .line 1464
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/clipboardex/ClipboardExService;->ObserverUpdate(ILandroid/sec/clipboard/data/ClipboardData;)V

    .line 1466
    :cond_0
    return-void
.end method


# virtual methods
.method public AddClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .locals 2
    .param p1, "listener"    # Landroid/sec/clipboard/IClipboardFormatListener;

    .prologue
    .line 856
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 857
    .local v0, "Result":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 858
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    :cond_0
    return v0

    .line 856
    .end local v0    # "Result":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetClipboardData(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 14
    .param p1, "format"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 889
    monitor-enter p0

    .line 890
    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v10

    invoke-direct {p0, v9, v10}, Lcom/android/server/clipboardex/ClipboardExService;->isClipboardAllowed(ZI)I

    move-result v5

    .line 891
    .local v5, "isClipboardAllowed":I
    if-nez v5, :cond_0

    .line 892
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->clearDataList()V

    .line 893
    monitor-exit p0

    move-object v0, v8

    .line 960
    :goto_0
    return-object v0

    .line 896
    :cond_0
    const/4 v0, 0x0

    .line 897
    .local v0, "Result":Landroid/sec/clipboard/data/ClipboardData;
    const/4 v4, 0x0

    .line 898
    .local v4, "iClipboardDataCount":I
    iget-object v9, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v9}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v2

    .line 899
    .local v2, "currentClipboardDataCount":I
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v6

    .line 901
    .local v6, "isKnoxTwoMode":Z
    iget-object v9, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    if-eqz v9, :cond_7

    .line 903
    if-eqz v6, :cond_1

    iget-object v9, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    if-eqz v9, :cond_1

    .line 904
    iget-object v9, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v9}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v9

    add-int v4, v2, v9

    .line 910
    :goto_1
    if-lez v4, :cond_7

    .line 911
    const/4 v1, 0x0

    .line 913
    .local v1, "cbData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/server/clipboardex/ClipboardExService;->isClipboardShareAllowed(I)I

    move-result v9

    if-nez v9, :cond_4

    .line 914
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->loadSEContainer()V

    .line 915
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_3

    .line 916
    iget-object v9, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v9, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v9

    invoke-virtual {v9}, Landroid/sec/clipboard/data/ClipboardData;->getCallerUid()J

    move-result-wide v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    int-to-long v12, v9

    cmp-long v9, v10, v12

    if-nez v9, :cond_2

    .line 917
    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v8, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    monitor-exit p0

    goto :goto_0

    .line 961
    .end local v1    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    .end local v2    # "currentClipboardDataCount":I
    .end local v3    # "i":I
    .end local v4    # "iClipboardDataCount":I
    .end local v5    # "isClipboardAllowed":I
    .end local v6    # "isKnoxTwoMode":Z
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 907
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    .restart local v2    # "currentClipboardDataCount":I
    .restart local v4    # "iClipboardDataCount":I
    .restart local v5    # "isClipboardAllowed":I
    .restart local v6    # "isKnoxTwoMode":Z
    :cond_1
    move v4, v2

    goto :goto_1

    .line 915
    .restart local v1    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    .restart local v3    # "i":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 920
    :cond_3
    :try_start_1
    monitor-exit p0

    move-object v0, v8

    goto :goto_0

    .line 926
    .end local v3    # "i":I
    :cond_4
    if-eqz v6, :cond_5

    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isServiceCallFromOther()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 927
    const-string v9, "ClipboardExService"

    const-string v10, "ClipboardExService GetClipboardData() abnormal called!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    monitor-exit p0

    move-object v0, v8

    goto :goto_0

    .line 931
    :cond_5
    if-eqz v6, :cond_8

    .line 932
    invoke-direct {p0, v6}, Lcom/android/server/clipboardex/ClipboardExService;->getLatestItemInternal(Z)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    .line 933
    const-string v8, "ClipboardExService"

    const-string v9, "cbData in Knox"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :goto_3
    if-eqz v1, :cond_7

    .line 949
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v8, :cond_6

    .line 950
    const-string v8, "ClipboardExService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getItem id : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", input id : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_6
    if-eq p1, v11, :cond_c

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v8

    if-eq v8, p1, :cond_c

    .line 953
    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/ClipboardData;->GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 960
    .end local v1    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_7
    :goto_4
    monitor-exit p0

    goto/16 :goto_0

    .line 934
    .restart local v1    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_8
    if-lez v2, :cond_b

    .line 936
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v7

    .line 937
    .local v7, "userId":I
    const/16 v8, 0x64

    if-lt v7, v8, :cond_9

    const/16 v8, 0xc2

    if-le v7, v8, :cond_a

    .line 938
    :cond_9
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->loadSEContainer()V

    .line 940
    :cond_a
    invoke-direct {p0, v6}, Lcom/android/server/clipboardex/ClipboardExService;->getLatestItemInternal(Z)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    .line 941
    const-string v8, "ClipboardExService"

    const-string/jumbo v9, "owner copy and paste cdData"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 943
    .end local v7    # "userId":I
    :cond_b
    const-string v9, "ClipboardExService"

    const-string v10, "KNOX2 SYNC data has not paste item so return null "

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v8

    goto/16 :goto_0

    .line 955
    :cond_c
    move-object v0, v1

    goto :goto_4
.end method

.method public GetClipboardFormatName(I)Ljava/lang/String;
    .locals 3
    .param p1, "format"    # I

    .prologue
    .line 835
    const-string v0, ""

    .line 837
    .local v0, "Result":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 838
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "Result":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 840
    .restart local v0    # "Result":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public IsShowUIClipboardData()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1783
    const/4 v0, 0x0

    .line 1784
    .local v0, "Result":Z
    sget-boolean v1, Lcom/android/server/clipboardex/ClipboardExService;->SEC_FLOATING_FEATURE_VIEWSYSTEM_CLIPBOARD_UI_SERVICE:Z

    if-eqz v1, :cond_0

    .line 1785
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    if-eqz v1, :cond_0

    .line 1786
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/ClipboardUIManager;->isShowing()Z

    move-result v0

    .line 1789
    :cond_0
    return v0
.end method

.method public ObserverUpdate(ILandroid/sec/clipboard/data/ClipboardData;)V
    .locals 4
    .param p1, "format"    # I
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 777
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/IClipboardFormatListener;

    .line 779
    .local v0, "Item":Landroid/sec/clipboard/IClipboardFormatListener;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/sec/clipboard/IClipboardFormatListener;->onNewClipboardData(ILandroid/sec/clipboard/data/ClipboardData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 780
    :catch_0
    move-exception v1

    .line 781
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 784
    .end local v0    # "Item":Landroid/sec/clipboard/IClipboardFormatListener;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public RegistClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V
    .locals 0
    .param p1, "iRegInterface"    # Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2338
    return-void
.end method

.method public RegistClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V
    .locals 5
    .param p1, "iRegInterface"    # Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1569
    monitor-enter p0

    .line 1570
    :try_start_0
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    .line 1571
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1572
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->clipPickerDataList:Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;

    invoke-interface {p1, v3}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataMgr(Landroid/sec/clipboard/data/IClipboardDataList;)V

    .line 1577
    :goto_0
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipBoardDataUiEventImp:Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;

    invoke-interface {p1, v3}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataUiEvent(Landroid/sec/clipboard/IClipboardDataUiEvent;)V

    .line 1578
    const/4 v1, 0x0

    .line 1579
    .local v1, "isExist":Z
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 1580
    .local v2, "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1581
    const/4 v1, 0x1

    .line 1585
    .end local v2    # "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    :cond_1
    if-nez v1, :cond_4

    .line 1586
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1595
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "isExist":Z
    :cond_2
    :goto_1
    monitor-exit p0

    .line 1596
    return-void

    .line 1575
    :cond_3
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-interface {p1, v3}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataMgr(Landroid/sec/clipboard/data/IClipboardDataList;)V

    goto :goto_0

    .line 1595
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1588
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "isExist":Z
    :cond_4
    :try_start_1
    const-string v3, "ClipboardExService"

    const-string v4, "exist uiInterface!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1591
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "isExist":Z
    :cond_5
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 1592
    const-string v3, "ClipboardExService"

    const-string v4, "RegistClipboardWorkingFormUiInterface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public RegisterClipboardFormat(Ljava/lang/String;)I
    .locals 7
    .param p1, "formatName"    # Ljava/lang/String;

    .prologue
    .line 808
    const/4 v1, 0x0

    .line 810
    .local v1, "Result":I
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 811
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    add-int/lit8 v1, v5, 0x2

    .line 812
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    :cond_0
    :goto_0
    return v1

    .line 814
    :cond_1
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 815
    .local v0, "Keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 816
    .local v3, "iVal":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 817
    .local v4, "sValue":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 818
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 819
    goto :goto_0
.end method

.method public RemoveClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .locals 2
    .param p1, "listener"    # Landroid/sec/clipboard/IClipboardFormatListener;

    .prologue
    .line 872
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 873
    .local v0, "Result":Z
    if-eqz v0, :cond_0

    .line 874
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 876
    :cond_0
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 878
    :goto_0
    return v0

    .line 876
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public SetClipboardData(ILandroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;I)Z
    .locals 11
    .param p1, "format"    # I
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callingId"    # I

    .prologue
    .line 1130
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1131
    const-string v8, "ClipboardExService"

    const-string/jumbo v9, "not enabled! SetClipboardData()"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    const/4 v6, 0x0

    .line 1186
    :cond_0
    :goto_0
    return v6

    .line 1135
    :cond_1
    if-nez p2, :cond_2

    .line 1136
    const/4 v6, 0x0

    goto :goto_0

    .line 1138
    :cond_2
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v8, :cond_3

    .line 1139
    const-string v8, "ClipboardExService"

    const-string v9, "==================================================================="

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_3
    const/4 v6, 0x0

    .line 1142
    .local v6, "result":Z
    iput p4, p0, Lcom/android/server/clipboardex/ClipboardExService;->mCallingId:I

    .line 1144
    monitor-enter p0

    .line 1145
    :try_start_0
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v8, :cond_4

    .line 1146
    const-string v8, "ClipboardExService"

    const-string/jumbo v9, "in synchronized"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :cond_4
    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v9

    invoke-direct {p0, v8, v9}, Lcom/android/server/clipboardex/ClipboardExService;->isClipboardAllowed(ZI)I

    move-result v8

    if-nez v8, :cond_5

    .line 1150
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->clearDataList()V

    .line 1151
    const/4 v8, 0x0

    monitor-exit p0

    move v6, v8

    goto :goto_0

    .line 1156
    :cond_5
    if-nez p2, :cond_6

    .line 1157
    const/4 v8, 0x0

    monitor-exit p0

    move v6, v8

    goto :goto_0

    .line 1160
    :cond_6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1161
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1162
    .local v1, "callingUser":I
    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_7

    .line 1164
    :try_start_1
    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, p3, v9, v10}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService;->mCurrentUserContext:Landroid/content/Context;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1170
    :cond_7
    :goto_1
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboardex/ClipboardExService;->addData(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1172
    invoke-direct {p0, p3}, Lcom/android/server/clipboardex/ClipboardExService;->getSEAMSCategory(Ljava/lang/String;)I

    move-result v2

    .line 1173
    .local v2, "cat":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1174
    .local v4, "ident":J
    invoke-direct {p0, v2}, Lcom/android/server/clipboardex/ClipboardExService;->isSEContainerClipboardEnabled(I)I

    move-result v7

    .line 1175
    .local v7, "status":I
    const-string v8, "ClipboardExService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setClipboardData,callingPackage = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "getSEAMSCategory result: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1177
    const/4 v8, 0x1

    if-eq v7, v8, :cond_8

    .line 1178
    invoke-direct {p0, p2, p3}, Lcom/android/server/clipboardex/ClipboardExService;->sendOriginalClipboardData(Landroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;)V

    .line 1180
    :cond_8
    const/4 v6, 0x1

    .line 1182
    .end local v2    # "cat":I
    .end local v4    # "ident":J
    .end local v7    # "status":I
    :cond_9
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1183
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 1184
    const-string v8, "ClipboardExService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "==================================================================="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1165
    :catch_0
    move-exception v3

    .line 1166
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string v8, "ClipboardExService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "callingPackage :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", NameNotFoundException :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1182
    .end local v0    # "callingUid":I
    .end local v1    # "callingUser":I
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8
.end method

.method public SetClipboardDataOriginalToEx(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 3
    .param p1, "format"    # I
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v0, 0x0

    .line 1230
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1231
    const-string v1, "ClipboardExService"

    const-string/jumbo v2, "not enabled! SetClipboardDataOriginalToEx()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/clipboardex/ClipboardExService;->setData(ILandroid/sec/clipboard/data/ClipboardData;ZI)Z

    move-result v0

    goto :goto_0
.end method

.method public SetClipboardDataWithoutSendingOrginalClipboard(ILandroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "format"    # I
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callingId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1190
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1191
    const-string v2, "ClipboardExService"

    const-string/jumbo v3, "not enabled! SetClipboardDataWithoutSendingOrginalClipboard()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1226
    :cond_0
    :goto_0
    return v0

    .line 1195
    :cond_1
    if-nez p2, :cond_2

    move v0, v1

    .line 1196
    goto :goto_0

    .line 1199
    :cond_2
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 1200
    const-string v2, "ClipboardExService"

    const-string v3, "======== SetClipboardDataWithoutSendingOrginalClipboard =========="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    :cond_3
    const/4 v0, 0x0

    .line 1203
    .local v0, "result":Z
    iput p4, p0, Lcom/android/server/clipboardex/ClipboardExService;->mCallingId:I

    .line 1205
    monitor-enter p0

    .line 1206
    :try_start_0
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 1207
    const-string v2, "ClipboardExService"

    const-string v3, "----------------------------------------------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    const-string v2, "ClipboardExService"

    const-string/jumbo v3, "in synchronized"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    :cond_4
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/clipboardex/ClipboardExService;->isClipboardAllowed(ZI)I

    move-result v2

    if-nez v2, :cond_5

    .line 1212
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->clearDataList()V

    .line 1213
    monitor-exit p0

    move v0, v1

    goto :goto_0

    .line 1217
    :cond_5
    if-nez p2, :cond_6

    .line 1218
    monitor-exit p0

    move v0, v1

    goto :goto_0

    .line 1221
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboardex/ClipboardExService;->addData(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 1222
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1223
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1224
    const-string v1, "ClipboardExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==================================================================="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1222
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public SetSyncClipboardData(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 2334
    const/4 v0, 0x0

    return v0
.end method

.method public ShowUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 4
    .param p1, "format"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 1755
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1756
    const-string v1, "ClipboardExService"

    const-string/jumbo v2, "show ui clipboard dialog in service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1778
    :cond_1
    :goto_0
    return-void

    .line 1765
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v0

    .line 1766
    .local v0, "userId":I
    const/16 v1, 0x64

    if-lt v0, v1, :cond_3

    const/16 v1, 0xc2

    if-le v0, v1, :cond_4

    .line 1767
    :cond_3
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->loadSEContainer()V

    .line 1771
    :cond_4
    iput p1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mEnableFormatId:I

    .line 1772
    iput-object p2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 1774
    sget-boolean v1, Lcom/android/server/clipboardex/ClipboardExService;->SEC_FLOATING_FEATURE_VIEWSYSTEM_CLIPBOARD_UI_SERVICE:Z

    if-eqz v1, :cond_1

    .line 1775
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1776
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public UpdateClipboardDB(I)V
    .locals 0
    .param p1, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2331
    return-void
.end method

.method public UpdateUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 2
    .param p1, "format"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    .line 1799
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->IsShowUIClipboardData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1810
    :goto_0
    return-void

    .line 1804
    :cond_0
    iput p1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mEnableFormatId:I

    .line 1805
    iput-object p2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 1807
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1808
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public callPasteMenuFromApp(I)V
    .locals 4
    .param p1, "enabled"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 2108
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2109
    const-string v0, "ClipboardExService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callPasteMenuFromApp() in service. enabled :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    :cond_0
    if-nez p1, :cond_2

    .line 2112
    iput-boolean v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mIsCalledPasteApp:Z

    .line 2120
    :cond_1
    :goto_0
    return-void

    .line 2113
    :cond_2
    if-ne p1, v3, :cond_3

    .line 2114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mIsCalledPasteApp:Z

    goto :goto_0

    .line 2116
    :cond_3
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2117
    const-string v0, "ClipboardExService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrong param in setPastedFromApp() enabled :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteDir(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 657
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    .line 658
    return-void
.end method

.method public dismissUIDataDialog()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x4

    .line 1817
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1818
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1823
    return-void
.end method

.method public getClipedStrings(II)Ljava/util/List;
    .locals 13
    .param p1, "metaType"    # I
    .param p2, "maxCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2006
    monitor-enter p0

    .line 2007
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2008
    .local v6, "metaDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 2011
    .local v1, "clipText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isServiceCallFromOther()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2012
    const-string v11, "ClipboardExService"

    const-string v12, "ClipboardExService getClipedStrings() abnormal called!!!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    monitor-exit p0

    .line 2074
    :goto_0
    return-object v6

    .line 2017
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v11}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v11

    if-ge v4, v11, :cond_1

    .line 2018
    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v11, v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 2019
    .local v2, "clipboardData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_5

    .line 2020
    move-object v0, v2

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    move-object v9, v0

    .line 2021
    .local v9, "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v9}, Landroid/sec/clipboard/data/list/ClipboardDataText;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 2022
    if-nez p1, :cond_2

    .line 2023
    invoke-virtual {v9}, Landroid/sec/clipboard/data/list/ClipboardDataText;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2024
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2025
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ne v11, p2, :cond_3

    .line 2074
    .end local v2    # "clipboardData":Landroid/sec/clipboard/data/ClipboardData;
    .end local v9    # "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_1
    :goto_2
    monitor-exit p0

    goto :goto_0

    .line 2075
    .end local v1    # "clipText":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v6    # "metaDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 2029
    .restart local v1    # "clipText":Ljava/lang/String;
    .restart local v2    # "clipboardData":Landroid/sec/clipboard/data/ClipboardData;
    .restart local v4    # "i":I
    .restart local v6    # "metaDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_2
    :try_start_1
    new-instance v8, Landroid/util/secutil/SmartParser;

    invoke-virtual {v9}, Landroid/sec/clipboard/data/list/ClipboardDataText;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v11, v12}, Landroid/util/secutil/SmartParser;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 2030
    .local v8, "parser":Landroid/util/secutil/SmartParser;
    invoke-virtual {v8}, Landroid/util/secutil/SmartParser;->getTotalData()Landroid/util/secutil/SmartParsingData;

    move-result-object v10

    .line 2031
    .local v10, "totalData":Landroid/util/secutil/SmartParsingData;
    invoke-virtual {v10, p1}, Landroid/util/secutil/SmartParsingData;->getCount(I)I

    move-result v11

    if-lez v11, :cond_3

    .line 2032
    invoke-virtual {v10, p1}, Landroid/util/secutil/SmartParsingData;->getInfo(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 2033
    .local v7, "parseResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v7, :cond_3

    .line 2034
    const/4 v5, 0x0

    .local v5, "idx":I
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_3

    .line 2035
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2036
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ne v11, p2, :cond_4

    .line 2070
    .end local v5    # "idx":I
    .end local v7    # "parseResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "parser":Landroid/util/secutil/SmartParser;
    .end local v9    # "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v10    # "totalData":Landroid/util/secutil/SmartParsingData;
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-eq v11, p2, :cond_1

    .line 2017
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2034
    .restart local v5    # "idx":I
    .restart local v7    # "parseResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "parser":Landroid/util/secutil/SmartParser;
    .restart local v9    # "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    .restart local v10    # "totalData":Landroid/util/secutil/SmartParsingData;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2044
    .end local v5    # "idx":I
    .end local v7    # "parseResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "parser":Landroid/util/secutil/SmartParser;
    .end local v9    # "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v10    # "totalData":Landroid/util/secutil/SmartParsingData;
    :cond_5
    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_3

    .line 2045
    move-object v0, v2

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    move-object v3, v0

    .line 2046
    .local v3, "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getPlainText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 2047
    if-nez p1, :cond_6

    .line 2048
    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getPlainText()Ljava/lang/String;

    move-result-object v1

    .line 2049
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2050
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ne v11, p2, :cond_3

    goto :goto_2

    .line 2054
    :cond_6
    new-instance v8, Landroid/util/secutil/SmartParser;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getPlainText()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v11, v12}, Landroid/util/secutil/SmartParser;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 2055
    .restart local v8    # "parser":Landroid/util/secutil/SmartParser;
    invoke-virtual {v8}, Landroid/util/secutil/SmartParser;->getTotalData()Landroid/util/secutil/SmartParsingData;

    move-result-object v10

    .line 2056
    .restart local v10    # "totalData":Landroid/util/secutil/SmartParsingData;
    invoke-virtual {v10, p1}, Landroid/util/secutil/SmartParsingData;->getCount(I)I

    move-result v11

    if-lez v11, :cond_3

    .line 2057
    invoke-virtual {v10, p1}, Landroid/util/secutil/SmartParsingData;->getInfo(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 2058
    .restart local v7    # "parseResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v7, :cond_3

    .line 2059
    const/4 v5, 0x0

    .restart local v5    # "idx":I
    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_3

    .line 2060
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2061
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v11

    if-eq v11, p2, :cond_3

    .line 2059
    add-int/lit8 v5, v5, 0x1

    goto :goto_4
.end method

.method public getDataSize()I
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 1018
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v4

    .line 1019
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v0

    .line 1021
    .local v0, "dataSize":I
    invoke-direct {p0, v3, v4}, Lcom/android/server/clipboardex/ClipboardExService;->isClipboardAllowed(ZI)I

    move-result v5

    if-nez v5, :cond_0

    .line 1022
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->clearDataList()V

    .line 1044
    :goto_0
    return v3

    .line 1024
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/server/clipboardex/ClipboardExService;->isClipboardShareAllowed(I)I

    move-result v5

    if-nez v5, :cond_3

    .line 1025
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->loadSEContainer()V

    .line 1026
    const/4 v3, 0x0

    .line 1027
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1028
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v5, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v5

    invoke-virtual {v5}, Landroid/sec/clipboard/data/ClipboardData;->getCallerUid()J

    move-result-wide v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    .line 1029
    add-int/lit8 v3, v3, 0x1

    .line 1027
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1032
    :cond_2
    const-string v5, "ClipboardExService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getDataSize : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1038
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1039
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->sharedSize()I

    move-result v2

    .line 1040
    .local v2, "sharedSize":I
    const-string v5, "ClipboardExService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getDataSize : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    add-int v3, v0, v2

    goto :goto_0

    .end local v2    # "sharedSize":I
    :cond_4
    move v3, v0

    .line 1044
    goto :goto_0
.end method

.method public getPersonaId()I
    .locals 2

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/clipboardex/ClipboardExService;->mHasKnox:Z

    if-eqz v1, :cond_1

    .line 184
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaManager()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v1}, Landroid/os/PersonaManager;->getFocusedUser()I

    move-result v0

    .line 192
    :goto_0
    return v0

    .line 187
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    goto :goto_0

    .line 190
    :cond_1
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getUserId()I

    move-result v0

    goto :goto_0
.end method

.method public getScrapDataSize()I
    .locals 2

    .prologue
    .line 1049
    const-string v0, "ClipboardExService"

    const-string/jumbo v1, "getScrapDataSize!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 2124
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/clipboardex/ClipboardExService;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method isKnoxTwoEnabled()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 198
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 199
    .local v1, "versionInfo":Landroid/os/Bundle;
    const-string v5, "2.0"

    const-string/jumbo v6, "version"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 200
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaManager()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 201
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 202
    .local v2, "ident":J
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v0

    .line 203
    .local v0, "currUser":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 205
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 206
    const-string v5, "ClipboardExService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isKnoxTwoEnabled getPersonaId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v5, v0}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 210
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 211
    const-string v5, "ClipboardExService"

    const-string v6, "Current user is a USER, hence return false"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v0    # "currUser":I
    .end local v2    # "ident":J
    :cond_1
    :goto_0
    return v4

    .line 215
    .restart local v0    # "currUser":I
    .restart local v2    # "ident":J
    :cond_2
    invoke-static {v0}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 216
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 217
    const-string v5, "ClipboardExService"

    const-string v6, "Current user is BBC, hence return false"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    :cond_3
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 223
    const-string v4, "ClipboardExService"

    const-string v5, "Current user is a persona, hence return true"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    .line 229
    .end local v0    # "currUser":I
    .end local v2    # "ident":J
    :cond_5
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 230
    const-string v5, "ClipboardExService"

    const-string v6, "\'ro.build.knox.container\' system property is not set to \'2.0\', hence return false"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public iscalledPasteMenuFromApp()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2100
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2101
    const-string v0, "ClipboardExService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "iscalledPasteMenuFromApp() in service : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mIsCalledPasteApp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mIsCalledPasteApp:Z

    return v0
.end method

.method public loadSEClipboard()V
    .locals 2

    .prologue
    .line 1011
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v0

    .line 1012
    .local v0, "userId":I
    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/16 v1, 0xc2

    if-le v0, v1, :cond_1

    .line 1013
    :cond_0
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->loadSEContainer()V

    .line 1015
    :cond_1
    return-void
.end method

.method public multiUserMode(ILjava/lang/String;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "mode"    # Ljava/lang/String;

    .prologue
    .line 2080
    invoke-direct {p0, p1}, Lcom/android/server/clipboardex/ClipboardExService;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2081
    const-string v1, "ClipboardExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not enabled! multiUserMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    :goto_0
    return-void

    .line 2084
    :cond_0
    monitor-enter p0

    .line 2086
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2087
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaManager()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2088
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->getParentId(I)I

    move-result v0

    .line 2089
    .local v0, "parentId":I
    const-string v1, "ClipboardExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "multiUserMode parentId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1, v2, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->replaceWithTargetForUser(Landroid/sec/clipboard/data/ClipboardDataMgr;I)V

    .line 2094
    .end local v0    # "parentId":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1, p1, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->multiUserMode(ILjava/lang/String;)V

    .line 2095
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setData(ILandroid/sec/clipboard/data/ClipboardData;ZI)Z
    .locals 7
    .param p1, "format"    # I
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;
    .param p3, "isCallFromGED"    # Z
    .param p4, "callingId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 1242
    if-eqz p3, :cond_1

    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->canReadAcrossProfiles()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1243
    const-string v3, "ClipboardExService"

    const-string v4, "disallow cross profile copy & paste!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :cond_0
    :goto_0
    return v0

    .line 1247
    :cond_1
    if-eqz p2, :cond_0

    .line 1250
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 1251
    const-string v4, "ClipboardExService"

    const-string v5, "==================================================================="

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    const-string v4, "ClipboardExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setData : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/clipboardex/ClipboardExService;->isClipboardAllowed(ZI)I

    move-result v4

    if-nez v4, :cond_3

    .line 1258
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->clearDataList()V

    goto :goto_0

    .line 1262
    :cond_3
    const/4 v4, 0x5

    if-ne p1, v4, :cond_4

    move-object v2, p2

    .line 1263
    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 1264
    .local v2, "uriData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 1265
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_4

    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->isImagefile()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1266
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/clipboardex/ClipboardExService;->copyUriFromClipboardSaveService(Ljava/lang/String;)V

    move v0, v3

    .line 1267
    goto :goto_0

    .line 1271
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "uriData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :cond_4
    iput p4, p0, Lcom/android/server/clipboardex/ClipboardExService;->mCallingId:I

    .line 1272
    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboardex/ClipboardExService;->addData(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 1273
    .local v0, "ret":Z
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1274
    const-string v3, "ClipboardExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=================================================================== "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showUIDataDialog()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    .line 1827
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1828
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1829
    const-string v0, "ClipboardExService"

    const-string/jumbo v1, "showUIDataDialog : Context is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    :cond_0
    :goto_0
    return-void

    .line 1835
    :cond_1
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1836
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public unRegistClipboardWorkingFormUiInterface()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2341
    return-void
.end method

.method public unRegistClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V
    .locals 5
    .param p1, "iRegInterface"    # Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1602
    monitor-enter p0

    .line 1603
    :try_start_0
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 1604
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 1605
    .local v1, "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1606
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1607
    monitor-exit p0

    .line 1613
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    :goto_0
    return-void

    .line 1610
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v2, "ClipboardExService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to remove "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

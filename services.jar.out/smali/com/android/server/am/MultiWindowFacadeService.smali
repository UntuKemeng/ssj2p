.class public Lcom/android/server/am/MultiWindowFacadeService;
.super Lcom/android/server/SystemService;
.source "MultiWindowFacadeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MultiWindowFacadeService$1;,
        Lcom/android/server/am/MultiWindowFacadeService$BinderService;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LOGGING_REASON_DOCKING:I = 0x1

.field private static final SAFE_DEBUG:Z

.field private static final SHARED_PREFERENCE_MULTI_WINDOW:Ljava/lang/String; = "shared_preference_multi_window"

.field private static final TAG:Ljava/lang/String; = "MultiWindowFacade"

.field private static sSelf:Lcom/android/server/am/MultiWindowFacadeService;


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mCallbackLock:Ljava/lang/Object;

.field private mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLock:Ljava/lang/Object;

.field private mMWOffRequesters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMWOffRequestersLog:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 68
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/MultiWindowFacadeService;->sSelf:Lcom/android/server/am/MultiWindowFacadeService;

    .line 77
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/am/MultiWindowFacadeService;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mCallbackLock:Ljava/lang/Object;

    .line 69
    iput-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 70
    iput-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequesters:Landroid/util/SparseArray;

    .line 72
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    .line 81
    iput-object p1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    .line 82
    sput-object p0, Lcom/android/server/am/MultiWindowFacadeService;->sSelf:Lcom/android/server/am/MultiWindowFacadeService;

    .line 83
    return-void
.end method

.method private getCurrentUser()I
    .locals 4

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowFacadeService;->isContainerOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 423
    .local v0, "mPm":Landroid/os/PersonaManager;
    const/4 v1, 0x0

    .line 424
    .local v1, "personaId":[I
    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {v0}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v1

    .line 427
    :cond_0
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 428
    const/4 v2, 0x0

    aget v2, v1, v2

    .line 432
    .end local v0    # "mPm":Landroid/os/PersonaManager;
    .end local v1    # "personaId":[I
    :goto_0
    return v2

    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    goto :goto_0
.end method

.method private getTopTaskIdByZone(I)I
    .locals 7
    .param p1, "zone"    # I

    .prologue
    .line 566
    const/4 v2, -0x1

    .line 567
    .local v2, "taskId":I
    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 568
    .local v0, "ass":Lcom/android/server/am/ActivityStackSupervisor;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v4

    iget v4, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, p1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 569
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_0

    .line 570
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    .line 571
    .local v3, "topTask":Lcom/android/server/am/TaskRecord;
    if-eqz v3, :cond_0

    .line 572
    iget v2, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 576
    .end local v3    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_0
    const-string v4, "MultiWindowFacade"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getTopTaskIdByZone zone="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " taskId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    return v2
.end method

.method private isContainerOnlyModeEnabled()Z
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private parseActivityInfoMetaData(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "activityMetaData"    # Landroid/os/Bundle;
    .param p2, "metaData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v0, "empty":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 410
    .local v1, "style":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "empty":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 413
    :cond_0
    return-object v0
.end method

.method public static self()Lcom/android/server/am/MultiWindowFacadeService;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/android/server/am/MultiWindowFacadeService;->sSelf:Lcom/android/server/am/MultiWindowFacadeService;

    return-object v0
.end method


# virtual methods
.method public addTab(Landroid/os/IBinder;)V
    .locals 13
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 982
    const/4 v8, -0x1

    .line 984
    .local v8, "stackId":I
    iget-object v11, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 985
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 986
    .local v4, "origId":J
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 987
    .local v6, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v6, :cond_0

    .line 988
    monitor-exit v11

    .line 1019
    :goto_0
    return-void

    .line 989
    :cond_0
    iget-object v10, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v10, v10, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v8

    .line 990
    const/4 v10, -0x1

    if-eq v8, v10, :cond_3

    .line 991
    iget-object v10, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v10, v8}, Lcom/android/server/am/MultiWindowPolicy;->setTabFrontStack(I)V

    .line 992
    iget-object v10, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v10}, Lcom/android/server/am/MultiWindowPolicy;->getTabs()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 993
    iget-object v10, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v12, v6, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10, v8, v12}, Lcom/android/server/am/MultiWindowPolicy;->addTab(ILandroid/content/ComponentName;)V

    .line 994
    iget-object v10, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10, v8, p1}, Lcom/android/server/wm/WindowManagerService;->getStackOriginalBound(ILandroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v1

    .line 996
    .local v1, "bound":Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 997
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 998
    iget-object v10, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v10, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    .line 999
    .local v7, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1000
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topMultiPhoneWindowActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    .line 1001
    .local v9, "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v9, :cond_1

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v12, 0x4

    invoke-virtual {v10, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 997
    .end local v9    # "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1005
    .restart local v9    # "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    :cond_2
    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 1006
    new-instance v3, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v3, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1007
    .local v3, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v8

    .line 1008
    invoke-virtual {v7, v1}, Lcom/android/server/am/ActivityStack;->setStackBoundForAllTaskInStackLocked(Landroid/graphics/Rect;)V

    .line 1009
    const/high16 v10, 0x800000

    const/4 v12, 0x1

    invoke-virtual {v3, v10, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1010
    invoke-virtual {v3, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    .line 1011
    iget-object v10, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v10, v7, v3}, Lcom/android/server/am/MultiWindowPolicy;->setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1012
    iget-object v10, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v12, v9, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10, v8, v12}, Lcom/android/server/am/MultiWindowPolicy;->addTab(ILandroid/content/ComponentName;)V

    .line 1013
    iget-object v10, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10, v8, v1}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V

    goto :goto_2

    .line 1018
    .end local v0    # "N":I
    .end local v1    # "bound":Landroid/graphics/Rect;
    .end local v2    # "i":I
    .end local v3    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v4    # "origId":J
    .end local v6    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v7    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v9    # "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 1017
    .restart local v4    # "origId":J
    .restart local v6    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    :try_start_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1018
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public appMinimizingStarted(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->appMinimizingStarted(Landroid/os/IBinder;)V

    .line 1124
    return-void
.end method

.method public changeTaskToCascade(Landroid/graphics/Point;IZ)Z
    .locals 4
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "zone"    # I
    .param p3, "bMinimize"    # Z

    .prologue
    .line 744
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v1}, Lcom/android/server/am/MultiWindowPolicy;->isEnableMakePenWindow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 745
    const/4 v0, 0x0

    .line 752
    :goto_0
    return v0

    .line 747
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 748
    .local v2, "origId":J
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ActivityStackSupervisor;->changeTypeOfTaskToCascade(Landroid/graphics/Point;IZ)Z

    move-result v0

    .line 751
    .local v0, "bSuccess":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public changeTaskToFull(I)V
    .locals 3
    .param p1, "zone"    # I

    .prologue
    .line 738
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 739
    .local v0, "origId":J
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->changeTypeOfTaskToNormal(I)V

    .line 740
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 741
    return-void
.end method

.method public closeMultiWindowPanel(Z)Z
    .locals 12
    .param p1, "force"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1305
    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    .line 1306
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 1307
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isSplitStack()Z

    move-result v8

    if-nez v8, :cond_1

    if-eqz p1, :cond_0

    .line 1309
    :cond_1
    invoke-virtual {v2, v10, v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 1310
    .local v4, "topRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_3

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v9, 0x4000000

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_3

    move v1, v6

    .line 1312
    .local v1, "isMultiWindowPanel":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1313
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1314
    .local v5, "tr":Lcom/android/server/am/TaskRecord;
    if-eqz v5, :cond_0

    .line 1315
    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v8, v9, v7, v10, v6}, Lcom/android/server/am/ActivityManagerService;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;Z)Z

    .line 1316
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isSplitStack()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1317
    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v10, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const v11, 0x10a0053

    invoke-virtual {v8, v9, v10, v11, v7}, Lcom/android/server/am/ActivityManagerService;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 1326
    .end local v1    # "isMultiWindowPanel":Z
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "topRecord":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_2
    :goto_1
    return v6

    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :cond_3
    move v1, v7

    .line 1310
    goto :goto_0

    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :cond_4
    move v6, v7

    .line 1326
    goto :goto_1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 153
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: can\'t dump MultiWindowFacade from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v6, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 160
    :try_start_0
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    const-string v5, "----------------------------------------------------------------------"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    const-string v5, "MULTIWINDOW SERVICE (dumpsys multiwindow facade service)"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    const-string/jumbo v5, "mCenterBarPoint="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/am/MultiWindowFacadeService;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 165
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 169
    :goto_1
    const-string v5, "----------------------------------------------------------------------"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    const-string/jumbo v5, "mTabFrontStack="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 172
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v5}, Lcom/android/server/am/MultiWindowPolicy;->getTabFrontStack()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 174
    const-string/jumbo v5, "mTabMap :"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v5}, Lcom/android/server/am/MultiWindowPolicy;->getTabs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/multiwindow/MultiWindowTab;

    .line 176
    .local v3, "tab":Lcom/samsung/android/multiwindow/MultiWindowTab;
    const-string v5, "   "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 177
    const-string/jumbo v5, "stackid = "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowTab;->getStackId()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 180
    const-string v5, " ,component = "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowTab;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_2

    .line 193
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "tab":Lcom/samsung/android/multiwindow/MultiWindowTab;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 167
    :cond_1
    :try_start_1
    const-string/jumbo v5, "null"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 184
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v5, "----------------------------------------------------------------------"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    const-string/jumbo v5, "mTaskController :"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v5}, Lcom/android/server/am/MultiWindowPolicy;->getTaskController()Ljava/util/HashMap;

    move-result-object v4

    .line 187
    .local v4, "taskControllers":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/os/IBinder;Lcom/android/server/am/MultiWindowPolicy$TaskController;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 188
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/am/MultiWindowPolicy$TaskController;>;>;"
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 189
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 190
    .local v0, "entryvalue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/am/MultiWindowPolicy$TaskController;>;"
    const-string v5, "   "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_3

    .line 192
    .end local v0    # "entryvalue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/am/MultiWindowPolicy$TaskController;>;"
    :cond_3
    const-string v5, "----------------------------------------------------------------------"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public dumpMultiWindowSetting(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1206
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1207
    const-string v8, "MultiWindow setting"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "current"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1209
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1210
    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1211
    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 1212
    .local v7, "userId":I
    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1213
    .local v4, "offRequester":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1214
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1215
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "u"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " block requester : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    .line 1217
    .end local v6    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1210
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1219
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "offRequester":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "userId":I
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1220
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "history"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1221
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1222
    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    :goto_2
    if-ltz v0, :cond_4

    .line 1223
    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 1224
    .restart local v7    # "userId":I
    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1225
    .local v5, "offRequesterLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 1226
    .local v2, "index":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1227
    .restart local v6    # "str":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1228
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "u"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " history["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    move v2, v3

    .line 1229
    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_3

    .line 1230
    .end local v6    # "str":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1222
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1232
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "index":I
    .end local v5    # "offRequesterLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "userId":I
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1233
    return-void
.end method

.method public exchangeTopTaskToZone(II)Z
    .locals 8
    .param p1, "zone1"    # I
    .param p2, "zone2"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v7, -0x1

    .line 542
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 543
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getTopTaskIdByZone(I)I

    move-result v0

    .line 544
    .local v0, "task1":I
    invoke-direct {p0, p2}, Lcom/android/server/am/MultiWindowFacadeService;->getTopTaskIdByZone(I)I

    move-result v1

    .line 546
    .local v1, "task2":I
    const-string v4, "MultiWindowFacade"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exchangeTopTaskToZone zone1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " task1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " zone2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " task2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    if-eq v0, v7, :cond_0

    if-eq v1, v7, :cond_0

    .line 550
    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v1, v5}, Lcom/android/server/am/ActivityManagerService;->exchangeTaskToStack(IIZ)V

    .line 551
    monitor-exit v3

    .line 553
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 554
    .end local v0    # "task1":I
    .end local v1    # "task2":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public exitByCloseBtn(I)V
    .locals 4
    .param p1, "taskId"    # I

    .prologue
    .line 617
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 618
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 620
    .local v0, "origId":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityManagerService;->exitByCloseBtn(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 622
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 624
    monitor-exit v3

    .line 625
    return-void

    .line 622
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 624
    .end local v0    # "origId":J
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public finishAllTasks(Landroid/os/IBinder;I)V
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 1104
    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 1105
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1107
    .local v2, "origId":J
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1108
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_1

    .line 1109
    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 1110
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 1111
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 1112
    .local v6, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_0

    .line 1113
    iget-object v7, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7, v6}, Lcom/android/server/am/ActivityStack;->finishActivityAffinityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_0

    .line 1119
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "origId":J
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    .end local v5    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v6    # "top":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1118
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "origId":J
    :cond_1
    :try_start_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1119
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1120
    return-void
.end method

.method public forceHideStackFrame(Z)V
    .locals 1
    .param p1, "hide"    # Z

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->forceHideFocusedStackFrame(Z)V

    .line 405
    return-void
.end method

.method public getArrangeState()I
    .locals 15

    .prologue
    .line 628
    iget-object v12, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12

    .line 629
    const/4 v7, 0x0

    .line 630
    .local v7, "result":I
    :try_start_0
    iget-object v11, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v14}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Lcom/android/server/am/ActivityStackSupervisor;->getStackOrder(ZLcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)Ljava/util/ArrayList;

    move-result-object v9

    .line 632
    .local v9, "stackIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 633
    .local v6, "recordOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    if-eqz v9, :cond_2

    .line 634
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 635
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 636
    iget-object v11, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v11, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v13, v11}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 638
    .local v3, "currStack":Lcom/android/server/am/ActivityStack;
    if-eqz v3, :cond_0

    .line 639
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 640
    .local v2, "currRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    iget-boolean v11, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v11, :cond_0

    .line 641
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v11

    if-nez v11, :cond_0

    .line 642
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    .end local v2    # "currRecord":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 647
    .end local v3    # "currStack":Lcom/android/server/am/ActivityStack;
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 648
    .local v8, "splitStackSize":I
    const/4 v11, 0x1

    if-le v8, v11, :cond_2

    .line 649
    packed-switch v8, :pswitch_data_0

    .line 672
    .end local v0    # "N":I
    .end local v4    # "i":I
    .end local v8    # "splitStackSize":I
    :cond_2
    :goto_1
    monitor-exit v12

    return v7

    .line 651
    .restart local v0    # "N":I
    .restart local v4    # "i":I
    .restart local v8    # "splitStackSize":I
    :pswitch_0
    const/4 v7, 0x1

    .line 652
    goto :goto_1

    .line 654
    :pswitch_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 655
    .local v1, "ar":Lcom/android/server/am/ActivityRecord;
    iget-object v11, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v10

    .line 656
    .local v10, "zone":I
    const/4 v11, 0x1

    if-eq v10, v11, :cond_4

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    .line 657
    :cond_4
    const/4 v7, 0x2

    .line 658
    goto :goto_1

    .line 660
    :cond_5
    const/4 v11, 0x4

    if-eq v10, v11, :cond_6

    const/16 v11, 0x8

    if-ne v10, v11, :cond_3

    .line 661
    :cond_6
    const/4 v7, 0x4

    .line 662
    goto :goto_1

    .line 667
    .end local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v10    # "zone":I
    :pswitch_2
    const/16 v7, 0x8

    goto :goto_1

    .line 673
    .end local v0    # "N":I
    .end local v4    # "i":I
    .end local v6    # "recordOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v8    # "splitStackSize":I
    .end local v9    # "stackIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 649
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getAvailableMultiInstanceCnt()I
    .locals 2

    .prologue
    .line 764
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 765
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowPolicy;->getAvailableMultiInstanceCnt()I

    move-result v0

    monitor-exit v1

    return v0

    .line 766
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCenterBarPoint(I)Landroid/graphics/Point;
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 235
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowPolicy;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentOrientation()I
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getForcedAppOrientation()I

    move-result v0

    return v0
.end method

.method public getDragAndDropModeOfStack(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 721
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 722
    .local v2, "origId":J
    const/4 v0, 0x0

    .line 723
    .local v0, "dragAndDropMode":Z
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 724
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 725
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_0

    .line 726
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-boolean v0, v4, Lcom/android/server/am/ActivityStack;->mDragAndDropMode:Z

    .line 728
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 730
    return v0

    .line 728
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public getEnabledFeaturesFlags()J
    .locals 2

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->getEnabledFeaturesFlags(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getExpectedOrientation()I
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getExpectedOrientation()I

    move-result v0

    return v0
.end method

.method public getFocusedStackLayer()I
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getFocusedStackLayer()I

    move-result v0

    return v0
.end method

.method public getFocusedZone()I
    .locals 3

    .prologue
    .line 681
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getNonFloatingFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 683
    .local v1, "focusedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_0

    .line 684
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 685
    .local v0, "activityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 686
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    .line 689
    .end local v0    # "activityRecord":Lcom/android/server/am/ActivityRecord;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 587
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/MultiWindowFacadeService;->getFrontActivityMultiWindowStyle(II)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    return-object v0
.end method

.method public getFrontActivityMultiWindowStyle(II)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 4
    .param p1, "flags"    # I
    .param p2, "displayId"    # I

    .prologue
    .line 591
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 592
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1, p2}, Lcom/android/server/am/ActivityStackSupervisor;->topResumedActivityExceptFloatingLocked(ZI)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 596
    .local v0, "topResumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    .line 597
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    monitor-exit v2

    .line 599
    :goto_1
    return-object v1

    .line 592
    .end local v0    # "topResumedActivity":Lcom/android/server/am/ActivityRecord;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 599
    .restart local v0    # "topResumedActivity":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_1

    .line 600
    .end local v0    # "topResumedActivity":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGlobalSystemUiVisibility()I
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getGlobalSystemUiVisibility()I

    move-result v0

    return v0
.end method

.method public getMultiWindowAppList()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 436
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .local v5, "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v7

    .line 438
    .local v7, "applicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 439
    .local v14, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v17, "package"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v12

    .line 441
    .local v12, "mIPm":Landroid/content/pm/IPackageManager;
    new-instance v10, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    .local v10, "launcherIntent":Landroid/content/Intent;
    const-string v17, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    const/16 v17, 0x40

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MultiWindowFacadeService;->getCurrentUser()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v10, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v11

    .line 445
    .local v11, "launcherlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 446
    .local v15, "r":Landroid/content/pm/ResolveInfo;
    const/4 v4, 0x0

    .line 447
    .local v4, "addInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 449
    :try_start_0
    new-instance v17, Landroid/content/ComponentName;

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x80

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MultiWindowFacadeService;->getCurrentUser()I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v12, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 452
    .local v3, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 453
    .local v6, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v6, :cond_1

    .line 454
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x80

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MultiWindowFacadeService;->getCurrentUser()I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v12, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 457
    :cond_1
    if-eqz v6, :cond_4

    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    iget-object v13, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 460
    .local v13, "metaDataBundle":Landroid/os/Bundle;
    :goto_1
    const/16 v16, 0x0

    .line 461
    .local v16, "style":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 462
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "com.sec.android.multiwindow.activity.STYLE"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MultiWindowFacadeService;->parseActivityInfoMetaData(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 464
    :cond_2
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isHideAppList(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 465
    const-string v17, "MultiWindowFacade"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getMultiWindowAppList() : SKIP package="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 480
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "metaDataBundle":Landroid/os/Bundle;
    .end local v16    # "style":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v8

    .line 481
    .local v8, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 482
    const-string v17, "MultiWindowFacade"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getMultiWindowAppList() : exception occurs! while loading mw app (activityInfo="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 486
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    if-eqz v4, :cond_0

    .line 487
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 457
    .restart local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v6    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_4
    :try_start_1
    iget-object v13, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto :goto_1

    .line 467
    .restart local v13    # "metaDataBundle":Landroid/os/Bundle;
    .restart local v16    # "style":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    if-eqz v16, :cond_6

    const-string/jumbo v17, "hideAppFromMultiWindowList"

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 468
    const-string v17, "MultiWindowFacade"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getMultiWindowAppList() : SKIP WINDOW_STYLE_HIDE_APP_FROM_MULTIWINDOWLIST activity="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 470
    :cond_6
    if-eqz v13, :cond_8

    const-string v17, "com.samsung.android.sdk.multiwindow.enable"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_7

    const-string v17, "com.sec.android.support.multiwindow"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 472
    :cond_7
    move-object v4, v15

    goto :goto_2

    .line 473
    :cond_8
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportApp(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 474
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportPackageList(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportComponentList(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v17

    if-eqz v17, :cond_0

    .line 478
    :cond_9
    move-object v4, v15

    goto/16 :goto_2

    .line 492
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "addInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "metaDataBundle":Landroid/os/Bundle;
    .end local v15    # "r":Landroid/content/pm/ResolveInfo;
    .end local v16    # "style":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "launcherIntent":Landroid/content/Intent;
    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 493
    .restart local v10    # "launcherIntent":Landroid/content/Intent;
    const-string v17, "com.sec.android.intent.category.MULTIWINDOW_LAUNCHER"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    const/16 v17, 0x40

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MultiWindowFacadeService;->getCurrentUser()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v10, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v11

    .line 496
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_b
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 497
    .restart local v15    # "r":Landroid/content/pm/ResolveInfo;
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 498
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    .line 502
    :try_start_2
    new-instance v17, Landroid/content/ComponentName;

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x80

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MultiWindowFacadeService;->getCurrentUser()I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v12, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 505
    .restart local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 506
    .restart local v6    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v6, :cond_c

    .line 507
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x80

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MultiWindowFacadeService;->getCurrentUser()I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v12, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 510
    :cond_c
    if-eqz v6, :cond_d

    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    iget-object v13, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 511
    .restart local v13    # "metaDataBundle":Landroid/os/Bundle;
    :goto_4
    if-eqz v13, :cond_b

    const-string v17, "com.samsung.android.sdk.multiwindow.enable"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 512
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 514
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "metaDataBundle":Landroid/os/Bundle;
    :catch_1
    move-exception v8

    .line 515
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string v17, "MultiWindowFacade"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getMultiWindowAppList() : exception occurs! while loading mw app (activityInfo="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 510
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v6    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_d
    :try_start_3
    iget-object v13, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 520
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "r":Landroid/content/pm/ResolveInfo;
    :cond_e
    return-object v5
.end method

.method public getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 3
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 341
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 342
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 343
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    .line 344
    const/4 v1, 0x0

    monitor-exit v2

    .line 345
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 346
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPreferenceThroughSystemProcess(Ljava/lang/String;)I
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1193
    const-string v4, "do_not_show_help_popup_drag_and_drop"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1194
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPreferenceThroughSystemProcess is not for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1196
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1198
    .local v0, "origId":J
    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "shared_preference_multi_window"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1199
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2, p1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1201
    .local v3, "value":I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1202
    return v3
.end method

.method public getRecentTaskSize(II)I
    .locals 5
    .param p1, "userId"    # I
    .param p2, "maxCount"    # I

    .prologue
    .line 1127
    const/4 v2, 0x0

    .line 1128
    .local v2, "size":I
    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 1129
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1130
    .local v0, "origId":J
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/am/ActivityManagerService;->getRecentTaskSizeLocked(II)I

    move-result v2

    .line 1131
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1132
    monitor-exit v4

    .line 1133
    return v2

    .line 1132
    .end local v0    # "origId":J
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getRunningPenWindowCnt()I
    .locals 2

    .prologue
    .line 889
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 890
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowPolicy;->getRunningPenWindowCnt()I

    move-result v0

    monitor-exit v1

    return v0

    .line 891
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRunningScaleWindows()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1137
    iget-object v6, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 1138
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1139
    .local v1, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    .line 1140
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 1141
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1142
    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-virtual {v2, v5, v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 1143
    .local v4, "topRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_0

    .line 1144
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1146
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1156
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v4    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1147
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .restart local v4    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :cond_1
    :try_start_1
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1150
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1155
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :cond_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public getRunningTasks(II)Ljava/util/List;
    .locals 2
    .param p1, "maxNum"    # I
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 609
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityManagerService;->getTasks(II)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 612
    :goto_0
    return-object v1

    .line 610
    :catch_0
    move-exception v0

    .line 612
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSplitMaxWeight()F
    .locals 1

    .prologue
    .line 885
    const v0, 0x3f4ccccd    # 0.8f

    return v0
.end method

.method public getSplitMinWeight()F
    .locals 1

    .prologue
    .line 881
    const v0, 0x3e4ccccd    # 0.2f

    return v0
.end method

.method public getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 385
    const/4 v1, -0x1

    .line 386
    .local v1, "stackId":I
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 387
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 388
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_1

    .line 389
    monitor-exit v3

    .line 395
    :cond_0
    :goto_0
    return-object v2

    .line 390
    :cond_1
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    .line 391
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 393
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->getStackBound(I)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0

    .line 391
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getStackId(Landroid/os/IBinder;)I
    .locals 4
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 1052
    const/4 v1, -0x1

    .line 1053
    .local v1, "stackId":I
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 1054
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1055
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    .line 1056
    const/4 v2, -0x1

    monitor-exit v3

    .line 1059
    :goto_0
    return v2

    .line 1057
    :cond_0
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    .line 1058
    monitor-exit v3

    move v2, v1

    .line 1059
    goto :goto_0

    .line 1058
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 524
    const/4 v1, -0x1

    .line 525
    .local v1, "stackId":I
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 526
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 527
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_1

    .line 528
    monitor-exit v3

    .line 534
    :cond_0
    :goto_0
    return-object v2

    .line 529
    :cond_1
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    .line 530
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 532
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/wm/WindowManagerService;->getStackOriginalBound(ILandroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0

    .line 530
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getStackPosition(Landroid/os/IBinder;)Landroid/graphics/Point;
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 953
    const/4 v1, -0x1

    .line 954
    .local v1, "stackId":I
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 955
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 956
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_1

    .line 957
    monitor-exit v3

    .line 964
    :cond_0
    :goto_0
    return-object v2

    .line 959
    :cond_1
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    .line 960
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 961
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 962
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/wm/WindowManagerService;->getStackPosition(ILandroid/os/IBinder;)Landroid/graphics/Point;

    move-result-object v2

    goto :goto_0

    .line 960
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getSystemDisplayInfo()Landroid/view/DisplayInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1334
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(ILandroid/os/IBinder;)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1335
    .local v0, "di":Landroid/view/DisplayInfo;
    if-eqz v0, :cond_0

    .line 1336
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1, v0}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    .line 1339
    :cond_0
    return-object v1
.end method

.method public getTabs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/multiwindow/MultiWindowTab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1031
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 1032
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowPolicy;->getTabs()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1033
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getZoneBounds(I)Landroid/graphics/Rect;
    .locals 4
    .param p1, "zone"    # I

    .prologue
    .line 558
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 559
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/am/MultiWindowPolicy;->getBounds(Landroid/graphics/Rect;I)V

    .line 560
    const-string v1, "MultiWindowFacade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getZoneBounds zone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return-object v0
.end method

.method public initMultiWindowApplicationInfo()V
    .locals 2

    .prologue
    .line 941
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 942
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowPolicy;->initMultiWindowApplicationInfo()V

    .line 943
    monitor-exit v1

    .line 944
    return-void

    .line 943
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isEnableMakePenWindow()Z
    .locals 2

    .prologue
    .line 914
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 915
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowPolicy;->isEnableMakePenWindow()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 916
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isEnableMakePenWindow(I)Z
    .locals 2
    .param p1, "notIncludeTaskId"    # I

    .prologue
    .line 920
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 921
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowPolicy;->isEnableMakePenWindow(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 922
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isKnoxDesktopMode()Z
    .locals 2

    .prologue
    .line 1381
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 1382
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isKnoxDesktopModeLocked()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1383
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPenWindowableOnly(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 926
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 927
    const/4 v0, 0x0

    .line 928
    .local v0, "isPenWindowableOnly":Z
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 929
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_1

    .line 930
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v4}, Lcom/android/server/am/MultiWindowPolicy;->isMultiWindowApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v4}, Lcom/android/server/am/MultiWindowPolicy;->isPenWindowOnly(Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v4}, Lcom/android/server/am/MultiWindowPolicy;->isMultiWindowApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v4}, Lcom/android/server/am/MultiWindowPolicy;->isPenWindowOnly(Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 936
    :cond_1
    :goto_0
    monitor-exit v3

    return v0

    .line 930
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 937
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isRotatingCascade(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->isRotatingCascade(I)Z

    move-result v0

    return v0
.end method

.method public isSplitSupportedForTask(Landroid/os/IBinder;)Z
    .locals 7
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v3, 0x0

    .line 895
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 896
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_1

    .line 897
    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 898
    :try_start_0
    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 899
    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 900
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v6}, Lcom/android/server/am/MultiWindowPolicy;->isPenWindowOnly(Landroid/content/pm/ActivityInfo;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v6}, Lcom/android/server/am/MultiWindowPolicy;->isMultiWindowApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 902
    :cond_0
    monitor-exit v4

    .line 910
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v3

    .line 898
    .restart local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 907
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_3
    monitor-exit v4

    .line 908
    const/4 v3, 0x1

    goto :goto_1

    .line 907
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public minimizeAll()V
    .locals 3

    .prologue
    .line 947
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 948
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/am/MultiWindowPolicy;->minimizeAll(Ljava/lang/String;)V

    .line 949
    monitor-exit v1

    .line 950
    return-void

    .line 949
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public minimizeTask(ILandroid/graphics/Point;Z)Z
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "iconLocation"    # Landroid/graphics/Point;
    .param p3, "stayResumed"    # Z

    .prologue
    .line 756
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 757
    .local v2, "origId":J
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ActivityStackSupervisor;->changeTaskToMinimized(ILandroid/graphics/Point;Z)Z

    move-result v0

    .line 759
    .local v0, "bSuccess":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 760
    return v0
.end method

.method public minimizeWindow(Landroid/os/IBinder;)V
    .locals 11
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 197
    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 198
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 199
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_3

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v7, :cond_3

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v7, :cond_3

    .line 200
    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    .line 202
    .local v6, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "taskNdx":I
    :goto_0
    if-ltz v5, :cond_3

    .line 203
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 204
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 206
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_1

    .line 207
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 208
    .local v2, "cr":Lcom/android/server/am/ActivityRecord;
    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v7, :cond_0

    iget-boolean v7, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v7, :cond_0

    .line 209
    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v9, 0x4

    const/4 v10, 0x1

    invoke-virtual {v7, v2, v9, v10}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 206
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 213
    .end local v2    # "cr":Lcom/android/server/am/ActivityRecord;
    :cond_1
    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v4, v7, :cond_2

    .line 215
    monitor-exit v8

    .line 220
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    .end local v5    # "taskNdx":I
    .end local v6    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :goto_2
    return-void

    .line 202
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v4    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "taskNdx":I
    .restart local v6    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 219
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    .end local v5    # "taskNdx":I
    .end local v6    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_3
    monitor-exit v8

    goto :goto_2

    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public moveAllTasksToBack(Landroid/os/IBinder;ILjava/lang/String;)V
    .locals 7
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "taskId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 1356
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1358
    .local v0, "origId":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1359
    const/4 v2, 0x0

    .line 1361
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p1, :cond_2

    .line 1362
    :try_start_1
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 1370
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_1

    .line 1371
    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v6, p3}, Lcom/android/server/am/MultiWindowPolicy;->moveAllTasksToBackLocked(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 1373
    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1375
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1377
    return-void

    .line 1363
    :cond_2
    if-lez p2, :cond_0

    .line 1364
    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, p2}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v3

    .line 1365
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v3, :cond_0

    .line 1366
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    goto :goto_0

    .line 1373
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1375
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public moveOnlySpecificTaskToFront(ILandroid/os/Bundle;ILcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 14
    .param p1, "taskId"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "flags"    # I
    .param p4, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 809
    iget-object v13, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    .line 810
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 811
    .local v8, "origId":J
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v11

    .line 812
    .local v11, "task":Lcom/android/server/am/TaskRecord;
    if-nez v11, :cond_0

    .line 813
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 874
    :goto_0
    return-void

    .line 816
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v11}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 817
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V

    .line 818
    const-string v2, "MultiWindowFacade"

    const-string/jumbo v3, "moveOnlySpecificTaskToFront : Attempt to violate Lock Task Mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 870
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v13

    goto :goto_0

    .line 873
    .end local v8    # "origId":J
    .end local v11    # "task":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v2

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 821
    .restart local v8    # "origId":J
    .restart local v11    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x0

    iget-object v5, v11, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 822
    .local v10, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 823
    const/4 v2, 0x2

    invoke-virtual {v11, v2}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 825
    :cond_2
    if-eqz p4, :cond_b

    .line 826
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    .line 827
    .local v12, "topRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v12, :cond_a

    .line 828
    and-int/lit8 v2, p3, 0x2

    if-nez v2, :cond_3

    .line 829
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 831
    :cond_3
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    .line 833
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v2}, Lcom/android/server/am/MultiWindowPolicy;->isEnableMakePenWindow()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v2

    if-nez v2, :cond_4

    .line 870
    :try_start_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 837
    :cond_4
    :try_start_5
    new-instance v4, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v4, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 838
    .local v4, "newStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 839
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 840
    const/16 v2, 0x800

    const/16 v3, 0x800

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 841
    const/high16 v2, 0x10000

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 842
    const/high16 v2, 0x10000

    const/4 v3, 0x1

    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 844
    :cond_5
    const/high16 v2, 0x2000000

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 845
    const/high16 v2, 0x2000000

    const/4 v3, 0x1

    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 846
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->createMultiWindowFreezeSurface()V

    .line 848
    :cond_6
    const/high16 v2, 0x10000000

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 849
    const/high16 v2, 0x10000000

    const/4 v3, 0x1

    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 851
    :cond_7
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 852
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/MultiWindowPolicy;->adjustStackBound(Landroid/graphics/Rect;)V

    .line 853
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    .line 855
    :cond_8
    const/4 v2, 0x0

    iput-boolean v2, v11, Lcom/android/server/am/TaskRecord;->bHidden:Z

    .line 856
    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v12, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZZLandroid/os/Bundle;)V

    .line 857
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_9

    .line 858
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 860
    :cond_9
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "FIXME"

    invoke-virtual {v2, v12, v3}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 861
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 870
    .end local v4    # "newStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v12    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :goto_1
    :try_start_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 872
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 873
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 864
    .restart local v12    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :cond_a
    :try_start_7
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/MultiWindowFacadeService;->startActivityFromRecentMultiWindow(ILandroid/os/Bundle;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 870
    .end local v10    # "prev":Lcom/android/server/am/ActivityRecord;
    .end local v12    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :catchall_1
    move-exception v2

    :try_start_8
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 867
    .restart local v10    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_b
    :try_start_9
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string v3, "FIXME"

    move/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v2, v11, v0, v1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskToMoveToFrontLocked(Lcom/android/server/am/TaskRecord;ILandroid/os/Bundle;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1
.end method

.method public needHideTrayBar()Z
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->needHideTrayBar()Z

    move-result v0

    return v0
.end method

.method public needMoveOnlySpecificTaskToFront(I)Z
    .locals 4
    .param p1, "taskId"    # I

    .prologue
    .line 798
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 799
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 801
    .local v0, "origId":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->needMoveOnlySpecificTaskToFront(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 803
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 805
    .end local v0    # "origId":J
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public needToExposureTitleBarMenu()Z
    .locals 2

    .prologue
    .line 704
    sget-boolean v0, Lcom/android/server/am/MultiWindowPolicy;->sExposuerTitleBarMenu:Z

    .line 705
    .local v0, "result":Z
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/am/MultiWindowPolicy;->sExposuerTitleBarMenu:Z

    .line 706
    return v0
.end method

.method public notifyMultiWindowStyleChangedLocked(Landroid/content/ComponentName;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 7
    .param p1, "cmp"    # Landroid/content/ComponentName;
    .param p2, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 127
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v5

    .line 128
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v4, :cond_1

    .line 129
    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 130
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 131
    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .local v3, "obs":Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;
    :try_start_1
    invoke-interface {v3, p1, p2}, Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;->onMultiWindowStyleChanged(Landroid/content/ComponentName;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "MultiWindowFacade"

    const-string v6, "Gamemode - notifyMultiWindowStyleChangedLocked() error"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 140
    .end local v0    # "N":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    .end local v3    # "obs":Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 138
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 140
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_1
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 141
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 1696
    const-string/jumbo v0, "multiwindow_facade"

    new-instance v1, Lcom/android/server/am/MultiWindowFacadeService$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/MultiWindowFacadeService$BinderService;-><init>(Lcom/android/server/am/MultiWindowFacadeService;Lcom/android/server/am/MultiWindowFacadeService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/MultiWindowFacadeService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1697
    return-void
.end method

.method public registerMultiWindowStyleChangedCallback(Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;)V
    .locals 5
    .param p1, "observer"    # Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;

    .prologue
    .line 91
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.REAL_GET_TASKS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    .line 93
    .local v0, "allowed":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 94
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v2

    .line 95
    :try_start_0
    sget-boolean v1, Lcom/android/server/am/MultiWindowFacadeService;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    .line 96
    const-string v1, "MultiWindowFacade"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerMultiWindowStyleChangedCallback() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v1, :cond_1

    .line 99
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 102
    monitor-exit v2

    .line 108
    :cond_2
    :goto_1
    return-void

    .line 91
    .end local v0    # "allowed":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 102
    .restart local v0    # "allowed":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 104
    :cond_4
    sget-boolean v1, Lcom/android/server/am/MultiWindowFacadeService;->SAFE_DEBUG:Z

    if-eqz v1, :cond_2

    .line 105
    const-string v1, "MultiWindowFacade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PID("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "):UID("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") does not have the permission REAL_GET_TASKS in registerMultiWindowStyleChangedCallback()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public registerTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V
    .locals 1
    .param p1, "taskController"    # Lcom/samsung/android/multiwindow/ITaskController;

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowPolicy;->registerTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V

    .line 1165
    return-void
.end method

.method public registerTaskControllerWithType(Lcom/samsung/android/multiwindow/ITaskController;I)V
    .locals 1
    .param p1, "taskController"    # Lcom/samsung/android/multiwindow/ITaskController;
    .param p2, "type"    # I

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowPolicy;->registerTaskControllerWithType(Lcom/samsung/android/multiwindow/ITaskController;I)V

    .line 1169
    return-void
.end method

.method public removeAllTasks(Landroid/os/IBinder;IZ)V
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "logging"    # Z

    .prologue
    .line 1083
    iget-object v7, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    .line 1084
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1086
    .local v2, "origId":J
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1087
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    .line 1088
    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 1089
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 1090
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iget-object v6, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget v8, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v6, v8, p2}, Lcom/android/server/am/ActivityManagerService;->removeTask(II)Z

    goto :goto_0

    .line 1095
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "origId":J
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    .end local v5    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1094
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "origId":J
    :cond_0
    :try_start_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1095
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1097
    if-eqz p3, :cond_1

    .line 1098
    iget-object v6, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    const-string v7, "RMMI"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    :cond_1
    return-void
.end method

.method public removeTab(I)Z
    .locals 4
    .param p1, "stackId"    # I

    .prologue
    .line 1022
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 1023
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1024
    .local v0, "origId":J
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/am/MultiWindowPolicy;->removeTab(I)V

    .line 1025
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1026
    const/4 v2, 0x1

    monitor-exit v3

    return v2

    .line 1027
    .end local v0    # "origId":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1298
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1299
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1300
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1301
    monitor-exit v1

    .line 1302
    return-void

    .line 1301
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAcitivityManager(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 145
    return-void
.end method

.method public setAppVisibility(Landroid/os/IBinder;Z)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "visible"    # Z

    .prologue
    .line 1075
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 1076
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1077
    .local v0, "origId":J
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/MultiWindowPolicy;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1078
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1079
    monitor-exit v3

    .line 1080
    return-void

    .line 1079
    .end local v0    # "origId":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setCenterBarPoint(ILandroid/graphics/Point;)V
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "point"    # Landroid/graphics/Point;

    .prologue
    .line 224
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 225
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 227
    .local v0, "origId":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/MultiWindowPolicy;->setCenterBarPoint(ILandroid/graphics/Point;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 231
    monitor-exit v3

    .line 232
    return-void

    .line 229
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 231
    .end local v0    # "origId":J
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public setDragAndDropModeOfStack(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "enable"    # Z

    .prologue
    .line 710
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 711
    .local v0, "origId":J
    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 712
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 713
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_0

    .line 714
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iput-boolean p2, v3, Lcom/android/server/am/ActivityStack;->mDragAndDropMode:Z

    .line 716
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 718
    return-void

    .line 716
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setFocusAppByZone(I)V
    .locals 9
    .param p1, "zone"    # I

    .prologue
    .line 770
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 771
    .local v2, "origId":J
    iget-object v6, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 772
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 773
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isNormalAppStack()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 774
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 775
    .local v4, "topRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_0

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v7, :cond_0

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 777
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v7, v7, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(IZ)V

    .line 782
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 784
    return-void

    .line 782
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public setFocusedStack(IZ)V
    .locals 5
    .param p1, "stackId"    # I
    .param p2, "tapOutSide"    # Z

    .prologue
    .line 1037
    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 1038
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1039
    .local v0, "origId":J
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportTabPenWindow(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1040
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/am/MultiWindowPolicy;->setTabFrontStack(I)V

    .line 1042
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(IZ)V

    .line 1043
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportTabPenWindow(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1044
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 1045
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 1047
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1048
    monitor-exit v4

    .line 1049
    return-void

    .line 1048
    .end local v0    # "origId":J
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 9
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v8, 0x2

    .line 302
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :try_start_1
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 304
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_4

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v5, :cond_4

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v5, :cond_4

    .line 306
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    .line 307
    .local v3, "prevType":I
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyle(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 309
    monitor-exit v6

    .line 338
    .end local v3    # "prevType":I
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_0
    return-void

    .line 311
    .restart local v3    # "prevType":I
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-nez v5, :cond_3

    .line 312
    const/4 v1, 0x0

    .line 313
    .local v1, "isNotSplitZone":Z
    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    const/16 v7, 0xf

    if-ne v5, v7, :cond_2

    .line 315
    :cond_1
    const/4 v1, 0x1

    .line 317
    :cond_2
    if-nez v1, :cond_3

    .line 318
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 321
    .end local v1    # "isNotSplitZone":Z
    :cond_3
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v7, 0x1

    invoke-virtual {v5, p1, p2, v7}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 323
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    .line 325
    .local v2, "nextType":I
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v7, :cond_4

    if-ne v3, v8, :cond_4

    if-nez v2, :cond_4

    .line 328
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->mNeedToIdle:Z

    .line 331
    .end local v2    # "nextType":I
    .end local v3    # "prevType":I
    :cond_4
    monitor-exit v6

    goto :goto_0

    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 332
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "MultiWindowFacade"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMultiWindowStyle is failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setMultiWindowStyleWithLogging(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .locals 15
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p3, "loggingReason"    # I

    .prologue
    .line 242
    const/4 v12, 0x1

    move/from16 v0, p3

    if-ne v0, v12, :cond_3

    const/4 v2, 0x1

    .line 243
    .local v2, "docking":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 244
    iget-object v12, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/server/wm/WindowManagerService;->setCascadeDockingToken(Landroid/os/IBinder;)V

    .line 247
    :cond_0
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/am/MultiWindowFacadeService;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 249
    if-eqz v2, :cond_1

    .line 250
    iget-object v12, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/server/wm/WindowManagerService;->setCascadeDockingToken(Landroid/os/IBinder;)V

    .line 253
    :cond_1
    const/4 v6, 0x0

    .line 254
    .local v6, "packageNameZoneA":Ljava/lang/String;
    const/4 v7, 0x0

    .line 255
    .local v7, "packageNameZoneB":Ljava/lang/String;
    const/4 v5, 0x0

    .line 257
    .local v5, "finalPackageName":Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    .line 298
    :cond_2
    :goto_1
    return-void

    .line 242
    .end local v2    # "docking":Z
    .end local v5    # "finalPackageName":Ljava/lang/String;
    .end local v6    # "packageNameZoneA":Ljava/lang/String;
    .end local v7    # "packageNameZoneB":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 259
    .restart local v2    # "docking":Z
    .restart local v5    # "finalPackageName":Ljava/lang/String;
    .restart local v6    # "packageNameZoneA":Ljava/lang/String;
    .restart local v7    # "packageNameZoneB":Ljava/lang/String;
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 260
    iget-object v13, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    .line 261
    :try_start_0
    iget-object v12, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v12, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 262
    .local v1, "ass":Lcom/android/server/am/ActivityStackSupervisor;
    const/4 v12, 0x3

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v14

    iget v14, v14, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {v1, v12, v14}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    .line 263
    .local v8, "stackZoneA":Lcom/android/server/am/ActivityStack;
    const/16 v12, 0xc

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v14

    iget v14, v14, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {v1, v12, v14}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v9

    .line 265
    .local v9, "stackZoneB":Lcom/android/server/am/ActivityStack;
    if-eqz v8, :cond_4

    .line 266
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 267
    .local v10, "topActivityA":Lcom/android/server/am/ActivityRecord;
    if-eqz v10, :cond_4

    .line 268
    iget-object v6, v10, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 271
    .end local v10    # "topActivityA":Lcom/android/server/am/ActivityRecord;
    :cond_4
    if-eqz v9, :cond_5

    .line 272
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    .line 273
    .local v11, "topActivityB":Lcom/android/server/am/ActivityRecord;
    if-eqz v11, :cond_5

    .line 274
    iget-object v7, v11, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 277
    .end local v11    # "topActivityB":Lcom/android/server/am/ActivityRecord;
    :cond_5
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    .line 280
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " | "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 282
    const/4 v12, 0x2

    new-array v4, v12, [Ljava/lang/String;

    .line 283
    .local v4, "features":[Ljava/lang/String;
    const/4 v12, 0x2

    new-array v3, v12, [Ljava/lang/String;

    .line 285
    .local v3, "extras":[Ljava/lang/String;
    const/4 v12, 0x0

    const-string v13, "POPW"

    aput-object v13, v4, v12

    .line 286
    const/4 v12, 0x0

    const-string v13, "CHANGE-SPLIT"

    aput-object v13, v3, v12

    .line 288
    const/4 v12, 0x1

    const-string v13, "PAIR"

    aput-object v13, v4, v12

    .line 289
    const/4 v12, 0x1

    aput-object v5, v3, v12

    .line 291
    iget-object v12, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-static {v12, v4, v3, v13}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertMultipleStatusLog(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;[J)V

    goto :goto_1

    .line 277
    .end local v1    # "ass":Lcom/android/server/am/ActivityStackSupervisor;
    .end local v3    # "extras":[Ljava/lang/String;
    .end local v4    # "features":[Ljava/lang/String;
    .end local v8    # "stackZoneA":Lcom/android/server/am/ActivityStack;
    .end local v9    # "stackZoneB":Lcom/android/server/am/ActivityStack;
    :catchall_0
    move-exception v12

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setMultiWindowTrayOpenState(Z)V
    .locals 1
    .param p1, "open"    # Z

    .prologue
    .line 700
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->setMultiWindowTrayOpenState(Z)V

    .line 701
    return-void
.end method

.method public setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "bound"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, -0x1

    .line 351
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 353
    .local v2, "origId":J
    const/4 v4, -0x1

    .line 354
    .local v4, "stackId":I
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 355
    :try_start_1
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 356
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_0

    .line 357
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 382
    :goto_0
    return-void

    .line 359
    :cond_0
    :try_start_2
    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 360
    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v4

    .line 361
    if-eq v4, v8, :cond_4

    if-eqz p2, :cond_4

    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowManagerService;->getStackBound(I)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 363
    sget-boolean v5, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v5, :cond_1

    .line 364
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 365
    .local v0, "ass":Lcom/android/server/am/ActivityStackSupervisor;
    const/4 v5, 0x1

    invoke-virtual {v0, v4, p2, v5}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(ILandroid/graphics/Rect;Z)V

    .line 367
    .end local v0    # "ass":Lcom/android/server/am/ActivityStackSupervisor;
    :cond_1
    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, p2}, Lcom/android/server/am/ActivityStack;->setStackBoundForAllTaskInStackLocked(Landroid/graphics/Rect;)V

    .line 368
    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v7, 0x800000

    invoke-virtual {v5, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 369
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v5, p2, v1}, Lcom/android/server/am/MultiWindowPolicy;->setStackBoundTab(Landroid/graphics/Rect;Lcom/android/server/am/ActivityRecord;)V

    .line 375
    :cond_2
    :goto_1
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 376
    if-eq v4, v8, :cond_3

    .line 377
    :try_start_3
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v4, p2}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 380
    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 372
    :cond_4
    const/4 v4, -0x1

    goto :goto_1

    .line 375
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 380
    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public setStackBoundByStackId(ILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "stackId"    # I
    .param p2, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 1063
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 1064
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1065
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1066
    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityStack;->setStackBoundForAllTaskInStackLocked(Landroid/graphics/Rect;)V

    .line 1068
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1069
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 1070
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V

    .line 1072
    :cond_1
    return-void

    .line 1068
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 149
    return-void
.end method

.method public startActivityFromRecentMultiWindow(ILandroid/os/Bundle;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 877
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->startActivityFromRecents(ILandroid/os/Bundle;Lcom/samsung/android/multiwindow/MultiWindowStyle;)I

    .line 878
    return-void
.end method

.method public unregisterMultiWindowStyleChangedCallback(Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;)V
    .locals 5
    .param p1, "observer"    # Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.REAL_GET_TASKS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 113
    .local v0, "allowed":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 114
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v2

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 118
    :cond_0
    monitor-exit v2

    .line 124
    :cond_1
    :goto_1
    return-void

    .line 111
    .end local v0    # "allowed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 118
    .restart local v0    # "allowed":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 120
    :cond_3
    sget-boolean v1, Lcom/android/server/am/MultiWindowFacadeService;->SAFE_DEBUG:Z

    if-eqz v1, :cond_1

    .line 121
    const-string v1, "MultiWindowFacade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PID("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "):UID("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") does not have the permission REAL_GET_TASKS in unregisterMultiWindowStyleChangedCallback()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public unregisterTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V
    .locals 1
    .param p1, "taskController"    # Lcom/samsung/android/multiwindow/ITaskController;

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowPolicy;->unregisterTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V

    .line 1173
    return-void
.end method

.method public updateIsolatedCenterPoint(Landroid/graphics/Point;)V
    .locals 5
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 787
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 788
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 790
    .local v0, "origId":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, p1}, Lcom/android/server/am/MultiWindowPolicy;->setIsolatedPoint(ILandroid/graphics/Point;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 792
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 794
    monitor-exit v3

    .line 795
    return-void

    .line 792
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 794
    .end local v0    # "origId":J
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public updateMinimizeSize(Landroid/os/IBinder;[I)V
    .locals 4
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "size"    # [I

    .prologue
    .line 968
    const/4 v1, -0x1

    .line 969
    .local v1, "stackId":I
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 970
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 971
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_1

    .line 972
    monitor-exit v3

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 974
    :cond_1
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    .line 975
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 976
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 977
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1, p1, p2}, Lcom/android/server/wm/WindowManagerService;->updateMinimizeSize(ILandroid/os/IBinder;[I)V

    goto :goto_0

    .line 975
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public updateMultiWindowSetting(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .param p1, "requester"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    .line 1236
    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1239
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1240
    .local v4, "origId":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 1241
    .local v6, "userId":I
    iget-object v7, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1242
    .local v1, "offRequester":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1243
    .local v2, "offRequesterLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 1244
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "offRequester":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1245
    .restart local v1    # "offRequester":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v7, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1247
    :cond_0
    if-nez v2, :cond_1

    .line 1248
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "offRequesterLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1249
    .restart local v2    # "offRequesterLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v7, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1252
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " reason : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1253
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v9, 0x64

    if-le v7, v9, :cond_2

    .line 1254
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1257
    :cond_2
    iget-object v7, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1258
    if-eqz p3, :cond_3

    .line 1259
    iget-object v7, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "multi_window_enabled"

    const/4 v10, 0x1

    const/4 v11, -0x2

    invoke-static {v7, v9, v10, v11}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1263
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1264
    monitor-exit v8

    .line 1295
    :goto_1
    return-void

    .line 1261
    :cond_3
    iget-object v7, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "multi_window_enabled"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v7, v9, v10, v11}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 1294
    .end local v1    # "offRequester":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "offRequesterLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "origId":J
    .end local v6    # "userId":I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1268
    .restart local v1    # "offRequester":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "offRequesterLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "origId":J
    .restart local v6    # "userId":I
    :cond_4
    if-eqz p3, :cond_6

    .line 1269
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1270
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_5

    .line 1272
    iget-object v7, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "multi_window_enabled"

    const/4 v10, 0x1

    const/4 v11, -0x2

    invoke-static {v7, v9, v10, v11}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1273
    const-string v7, "MultiWindowFacade"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "turn on MW, Requester : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1289
    :cond_5
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1290
    .local v3, "str":Ljava/lang/String;
    const-string v7, "MultiWindowFacade"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateMultiWindowSetting prev requester : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1276
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "str":Ljava/lang/String;
    :cond_6
    :try_start_3
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1282
    iget-object v7, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "multi_window_enabled"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v7, v9, v10, v11}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1283
    iget-object v7, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v7}, Lcom/android/server/am/MultiWindowPolicy;->closePenWindow()V

    .line 1284
    const-string v7, "MultiWindowFacade"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "turn off MW, Requester : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 1289
    :catchall_1
    move-exception v7

    :try_start_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1290
    .restart local v3    # "str":Ljava/lang/String;
    const-string v9, "MultiWindowFacade"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateMultiWindowSetting prev requester : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1292
    .end local v3    # "str":Ljava/lang/String;
    :cond_7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1294
    monitor-exit v8

    goto/16 :goto_1

    .line 1292
    :cond_8
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public updatePreferenceThroughSystemProcess(Ljava/lang/String;I)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 1180
    const-string v4, "do_not_show_help_popup_drag_and_drop"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1181
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updatePreferenceThroughSystemProcess is not for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1183
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1184
    .local v2, "origId":J
    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "shared_preference_multi_window"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1185
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1186
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1187
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1189
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1190
    return-void
.end method

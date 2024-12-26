.class final Lcom/android/server/wm/Session;
.super Landroid/view/IWindowSession$Stub;
.source "Session.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field final mCallback:Landroid/view/IWindowSessionCallback;

.field final mClient:Lcom/android/internal/view/IInputMethodClient;

.field mClientDead:Z

.field final mInputContext:Lcom/android/internal/view/IInputContext;

.field mLastReportedAnimatorScale:F

.field mNumWindow:I

.field final mPid:I

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mStringName:Ljava/lang/String;

.field mSurfaceSession:Landroid/view/SurfaceSession;

.field final mUid:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IWindowSessionCallback;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)V
    .locals 8
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "callback"    # Landroid/view/IWindowSessionCallback;
    .param p3, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p4, "inputContext"    # Lcom/android/internal/view/IInputContext;

    .prologue
    const/4 v5, 0x0

    .line 85
    invoke-direct {p0}, Landroid/view/IWindowSession$Stub;-><init>()V

    .line 80
    iput v5, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    .line 81
    iput-boolean v5, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    .line 86
    iput-object p1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 87
    iput-object p2, p0, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    .line 88
    iput-object p3, p0, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    .line 89
    iput-object p4, p0, Lcom/android/server/wm/Session;->mInputContext:Lcom/android/internal/view/IInputContext;

    .line 90
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    iput v5, p0, Lcom/android/server/wm/Session;->mUid:I

    .line 91
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    iput v5, p0, Lcom/android/server/wm/Session;->mPid:I

    .line 92
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v5

    iput v5, p0, Lcom/android/server/wm/Session;->mLastReportedAnimatorScale:F

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v5, "Session{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget v5, p0, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    iget v5, p0, Lcom/android/server/wm/Session;->mUid:I

    const/16 v6, 0x2710

    if-ge v5, v6, :cond_1

    .line 99
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget v5, p0, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    :goto_0
    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/Session;->mStringName:Ljava/lang/String;

    .line 110
    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 111
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mHaveInputMethods:Z

    if-eqz v5, :cond_0

    .line 112
    const-string/jumbo v5, "input_method"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 114
    .local v0, "b":Landroid/os/IBinder;
    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v7

    iput-object v7, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    .line 116
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 121
    .local v2, "ident":J
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    if-eqz v5, :cond_2

    .line 122
    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    iget v6, p0, Lcom/android/server/wm/Session;->mUid:I

    iget v7, p0, Lcom/android/server/wm/Session;->mPid:I

    invoke-interface {v5, p3, p4, v6, v7}, Lcom/android/internal/view/IInputMethodManager;->addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V

    .line 127
    :goto_1
    invoke-interface {p3}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, p0, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 137
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 139
    :goto_2
    return-void

    .line 102
    .end local v2    # "ident":J
    :cond_1
    const-string v5, ":u"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget v5, p0, Lcom/android/server/wm/Session;->mUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    const/16 v5, 0x61

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    iget v5, p0, Lcom/android/server/wm/Session;->mUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 125
    .restart local v2    # "ident":J
    :cond_2
    const/4 v5, 0x0

    :try_start_3
    invoke-interface {p3, v5}, Lcom/android/internal/view/IInputMethodClient;->setUsingInputMethod(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 128
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4
    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    if-eqz v5, :cond_3

    .line 132
    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v5, p3}, Lcom/android/internal/view/IInputMethodManager;->removeClient(Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 137
    :cond_3
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 134
    .restart local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    goto :goto_3
.end method


# virtual methods
.method public add(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I
    .locals 10
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "seq"    # I
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "viewVisibility"    # I
    .param p5, "outContentInsets"    # Landroid/graphics/Rect;
    .param p6, "outStableInsets"    # Landroid/graphics/Rect;
    .param p7, "outInputChannel"    # Landroid/view/InputChannel;

    .prologue
    .line 175
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/wm/Session;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v0

    return v0
.end method

.method public addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I
    .locals 11
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "seq"    # I
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "viewVisibility"    # I
    .param p5, "displayId"    # I
    .param p6, "outContentInsets"    # Landroid/graphics/Rect;
    .param p7, "outStableInsets"    # Landroid/graphics/Rect;
    .param p8, "outOutsets"    # Landroid/graphics/Rect;
    .param p9, "outInputChannel"    # Landroid/view/InputChannel;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/WindowManagerService;->addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v0

    return v0
.end method

.method public addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 11
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "seq"    # I
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "viewVisibility"    # I
    .param p5, "displayId"    # I
    .param p6, "outContentInsets"    # Landroid/graphics/Rect;
    .param p7, "outStableInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/WindowManagerService;->addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v0

    return v0
.end method

.method public addWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 8
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "seq"    # I
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "viewVisibility"    # I
    .param p5, "outContentInsets"    # Landroid/graphics/Rect;
    .param p6, "outStableInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 190
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/Session;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public binderDied()V
    .locals 3

    .prologue
    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v0, v1}, Lcom/android/internal/view/IInputMethodManager;->removeClient(Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 165
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    .line 167
    invoke-virtual {p0}, Lcom/android/server/wm/Session;->killSessionLocked()V

    .line 168
    monitor-exit v1

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 162
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dragRecipientEntered(Landroid/view/IWindow;)V
    .locals 0
    .param p1, "window"    # Landroid/view/IWindow;

    .prologue
    .line 465
    return-void
.end method

.method public dragRecipientExited(Landroid/view/IWindow;)V
    .locals 0
    .param p1, "window"    # Landroid/view/IWindow;

    .prologue
    .line 471
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 600
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNumWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 601
    const-string v0, " mClientDead="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 602
    const-string v0, " mSurfaceSession="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 603
    return-void
.end method

.method public finishDrawing(Landroid/view/IWindow;)V
    .locals 1
    .param p1, "window"    # Landroid/view/IWindow;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->finishDrawingWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V

    .line 255
    return-void
.end method

.method public getContentFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "outContentFrame"    # Landroid/graphics/Rect;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->getWindowContentFrame(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Rect;)V

    .line 249
    return-void
.end method

.method public getCoverStateSwitch()Z
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getCoverStateSwitch()Z

    move-result v0

    return v0
.end method

.method public getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "outDisplayFrame"    # Landroid/graphics/Rect;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->getWindowDisplayFrame(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Rect;)V

    .line 245
    return-void
.end method

.method public getInTouchMode()Z
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    monitor-exit v1

    return v0

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;
    .locals 1
    .param p1, "window"    # Landroid/os/IBinder;

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v0

    return-object v0
.end method

.method killSessionLocked()V
    .locals 4

    .prologue
    .line 579
    iget v1, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    if-gtz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    if-eqz v1, :cond_0

    .line 580
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 581
    iget-object v1, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-eqz v1, :cond_0

    .line 588
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v1}, Landroid/view/SurfaceSession;->kill()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 597
    :cond_0
    return-void

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown when killing surface session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "rectangle"    # Landroid/graphics/Rect;

    .prologue
    .line 521
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 522
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 524
    .local v0, "identity":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowManagerService;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 526
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 528
    monitor-exit v3

    .line 529
    return-void

    .line 526
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 528
    .end local v0    # "identity":J
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
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
    .line 145
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/IWindowSession$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 146
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    .line 149
    const-string v1, "WindowManager"

    const-string v2, "Window Session Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    :cond_0
    throw v0
.end method

.method public outOfMemory(Landroid/view/IWindow;)Z
    .locals 1
    .param p1, "window"    # Landroid/view/IWindow;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->outOfMemoryWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)Z

    move-result v0

    return v0
.end method

.method public performDeferredDestroy(Landroid/view/IWindow;)V
    .locals 1
    .param p1, "window"    # Landroid/view/IWindow;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->performDeferredDestroyWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V

    .line 227
    return-void
.end method

.method public performDrag(Landroid/view/IWindow;Landroid/os/IBinder;FFFFLandroid/content/ClipData;)Z
    .locals 14
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "dragToken"    # Landroid/os/IBinder;
    .param p3, "touchX"    # F
    .param p4, "touchY"    # F
    .param p5, "thumbCenterX"    # F
    .param p6, "thumbCenterY"    # F
    .param p7, "data"    # Landroid/content/ClipData;

    .prologue
    .line 297
    iget-object v9, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v9, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 298
    :try_start_0
    iget-object v9, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v9, :cond_0

    .line 299
    const-string v9, "WindowManager"

    const-string v11, "No drag prepared"

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string/jumbo v11, "performDrag() without prepareDrag()"

    invoke-direct {v9, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 412
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 303
    :cond_0
    :try_start_1
    iget-object v9, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v9, v9, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    move-object/from16 v0, p2

    if-eq v0, v9, :cond_1

    .line 304
    const-string v9, "WindowManager"

    const-string v11, "Performing mismatched drag"

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string/jumbo v11, "performDrag() does not match prepareDrag()"

    invoke-direct {v9, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 308
    :cond_1
    iget-object v9, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v11, p1, v12}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 309
    .local v2, "callingWin":Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_2

    .line 310
    const-string v9, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad requesting window "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v9, 0x0

    monitor-exit v10

    .line 414
    :goto_0
    return v9

    .line 315
    :cond_2
    iget-boolean v9, v2, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    if-eqz v9, :cond_3

    .line 316
    iget v9, v2, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float p5, p5, v9

    .line 317
    iget v9, v2, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float p6, p6, v9

    .line 325
    :cond_3
    iget-object v9, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v11, 0x14

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 333
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 334
    .local v4, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v4, :cond_4

    .line 335
    const/4 v9, 0x0

    monitor-exit v10

    goto :goto_0

    .line 337
    :cond_4
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v3

    .line 338
    .local v3, "display":Landroid/view/Display;
    iget-object v9, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v9, v3}, Lcom/android/server/wm/DragState;->register(Landroid/view/Display;)V

    .line 339
    iget-object v9, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 340
    iget-object v9, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v11, v2, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    iget-object v12, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v12, v12, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v9, v11, v12}, Lcom/android/server/input/InputManagerService;->transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 342
    const-string v9, "WindowManager"

    const-string v11, "Unable to transfer touch focus"

    invoke-static {v9, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v9, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v9}, Lcom/android/server/wm/DragState;->unregister()V

    .line 344
    iget-object v9, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v11, 0x0

    iput-object v11, v9, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    .line 345
    iget-object v9, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 346
    const/4 v9, 0x0

    monitor-exit v10

    goto :goto_0

    .line 349
    :cond_5
    iget-object v9, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v0, p7

    iput-object v0, v9, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 350
    iget-object v9, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v0, p3

    iput v0, v9, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 351
    iget-object v9, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v0, p4

    iput v0, v9, Lcom/android/server/wm/DragState;->mCurrentY:F

    .line 353
    iget-object v9, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iput-object v2, v9, Lcom/android/server/wm/DragState;->mSourceWindow:Lcom/android/server/wm/WindowState;

    .line 355
    iget-object v9, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v9, v0, v1}, Lcom/android/server/wm/DragState;->broadcastDragStartedLw(FF)V

    .line 358
    iget-object v9, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v0, p5

    iput v0, v9, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 359
    iget-object v9, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v0, p6

    iput v0, v9, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    .line 362
    iget-object v9, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v5, v9, Lcom/android/server/wm/DragState;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 363
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 365
    iget-boolean v9, v2, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    if-eqz v9, :cond_6

    .line 366
    const/high16 v9, 0x3f800000    # 1.0f

    iget v11, v2, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float/2addr v9, v11

    const/high16 v11, 0x3f800000    # 1.0f

    iget v12, v2, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float/2addr v11, v12

    invoke-virtual {v5, v9, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 375
    :cond_6
    sub-float v9, p3, p5

    sub-float v11, p4, p6

    invoke-virtual {v5, v9, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 379
    iget-object v9, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v11

    invoke-virtual {v9, v11}, Lcom/android/server/wm/WindowManagerService;->getEasyOneHandScaleSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v6

    .line 380
    .local v6, "spec":Landroid/view/MagnificationSpec;
    if-eqz v6, :cond_7

    iget v9, v6, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v9, v9, v11

    if-gez v9, :cond_7

    .line 381
    iget v9, v6, Landroid/view/MagnificationSpec;->scale:F

    iget v11, v6, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v5, v9, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 382
    iget v9, v6, Landroid/view/MagnificationSpec;->offsetX:F

    iget v11, v6, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {v5, v9, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 389
    :cond_7
    iget-object v9, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v7, v9, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 392
    .local v7, "surfaceControl":Landroid/view/SurfaceControl;
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    :try_start_2
    iget-object v9, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v9, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    .line 397
    .local v8, "tmpFloats":[F
    invoke-virtual {v5, v8}, Landroid/graphics/Matrix;->getValues([F)V

    .line 398
    const/4 v9, 0x2

    aget v9, v8, v9

    const/4 v11, 0x5

    aget v11, v8, v11

    invoke-virtual {v7, v9, v11}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 399
    const/4 v9, 0x0

    aget v9, v8, v9

    const/4 v11, 0x3

    aget v11, v8, v11

    const/4 v12, 0x1

    aget v12, v8, v12

    const/4 v13, 0x4

    aget v13, v8, v13

    invoke-virtual {v7, v9, v11, v12, v13}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 403
    const v9, 0x3f350481    # 0.7071f

    invoke-virtual {v7, v9}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 404
    iget-object v9, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v9}, Lcom/android/server/wm/DragState;->getDragLayerLw()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 405
    invoke-virtual {v3}, Landroid/view/Display;->getLayerStack()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 406
    invoke-virtual {v7}, Landroid/view/SurfaceControl;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 408
    :try_start_3
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 412
    monitor-exit v10

    .line 414
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 408
    .end local v8    # "tmpFloats":[F
    :catchall_1
    move-exception v9

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public performHapticFeedback(Landroid/view/IWindow;IZ)Z
    .locals 6
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .prologue
    .line 271
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 272
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 274
    .local v0, "ident":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, p0, p1, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v4

    invoke-interface {v2, v4, p2, p3}, Landroid/view/WindowManagerPolicy;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 278
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 280
    .end local v0    # "ident":J
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public pokeDrawLock(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "window"    # Landroid/os/IBinder;

    .prologue
    .line 537
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 539
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0, p1}, Lcom/android/server/wm/WindowManagerService;->pokeDrawLock(Lcom/android/server/wm/Session;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 543
    return-void

    .line 541
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;
    .locals 7
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "flags"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "outSurface"    # Landroid/view/Surface;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WindowManagerService;->prepareDragSurface(Landroid/view/IWindow;Landroid/view/SurfaceSession;IIILandroid/view/Surface;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;Landroid/graphics/PointF;Landroid/graphics/Rect;Landroid/graphics/PointF;)I
    .locals 22
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "seq"    # I
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "requestedWidth"    # I
    .param p5, "requestedHeight"    # I
    .param p6, "viewFlags"    # I
    .param p7, "flags"    # I
    .param p8, "outFrame"    # Landroid/graphics/Rect;
    .param p9, "outOverscanInsets"    # Landroid/graphics/Rect;
    .param p10, "outContentInsets"    # Landroid/graphics/Rect;
    .param p11, "outVisibleInsets"    # Landroid/graphics/Rect;
    .param p12, "outStableInsets"    # Landroid/graphics/Rect;
    .param p13, "outsets"    # Landroid/graphics/Rect;
    .param p14, "outConfig"    # Landroid/content/res/Configuration;
    .param p15, "outSurface"    # Landroid/view/Surface;
    .param p16, "outScale"    # Landroid/graphics/PointF;
    .param p17, "outCocktailBar"    # Landroid/graphics/Rect;
    .param p18, "outTranslate"    # Landroid/graphics/PointF;

    .prologue
    .line 214
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    invoke-virtual/range {v1 .. v20}, Lcom/android/server/wm/WindowManagerService;->relayoutWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;Landroid/graphics/PointF;Landroid/graphics/Rect;Landroid/graphics/PointF;)I

    move-result v21

    .line 222
    .local v21, "res":I
    return v21
.end method

.method public remove(Landroid/view/IWindow;)V
    .locals 1
    .param p1, "window"    # Landroid/view/IWindow;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->removeWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V

    .line 203
    return-void
.end method

.method public reportDropResult(Landroid/view/IWindow;Z)V
    .locals 8
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "consumed"    # Z

    .prologue
    .line 418
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 423
    .local v1, "token":Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 424
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 426
    .local v2, "ident":J
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v4, :cond_0

    .line 429
    const-string v4, "WindowManager"

    const-string v6, "Drop result given but no drag in progress"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 459
    :goto_0
    return-void

    .line 433
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v4, v4, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    if-eq v4, v1, :cond_1

    .line 435
    const-string v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid drop-result claim by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v4, v4, Lcom/android/server/wm/DragState;->mSpec:Landroid/view/MagnificationSpec;

    iget v4, v4, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_1

    .line 438
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "reportDropResult() by non-recipient"

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 456
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 458
    .end local v2    # "ident":J
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 446
    .restart local v2    # "ident":J
    :cond_1
    :try_start_5
    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x15

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 447
    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v6, p1, v7}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 448
    .local v0, "callingWin":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_2

    .line 449
    const-string v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad result-reporting window "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 456
    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 453
    :cond_2
    :try_start_7
    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iput-boolean p2, v4, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 454
    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v4}, Lcom/android/server/wm/DragState;->endDragLw()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 456
    :try_start_8
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 458
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0
.end method

.method public sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 11
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "sync"    # Z

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 505
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v8

    .line 507
    .local v8, "ident":J
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/WindowManagerService;->sendWindowWallpaperCommandLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 511
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v10

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 513
    .end local v8    # "ident":J
    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public setInTouchMode(Z)V
    .locals 2
    .param p1, "mode"    # Z

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean p1, v0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    .line 260
    monitor-exit v1

    .line 261
    return-void

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    .locals 7
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "touchableInsets"    # I
    .param p3, "contentInsets"    # Landroid/graphics/Rect;
    .param p4, "visibleInsets"    # Landroid/graphics/Rect;
    .param p5, "touchableArea"    # Landroid/graphics/Region;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WindowManagerService;->setInsetsWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V

    .line 241
    return-void
.end method

.method public setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    .locals 1
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "region"    # Landroid/graphics/Region;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setTransparentRegionWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Region;)V

    .line 235
    return-void
.end method

.method public setTspDeadzone(Landroid/view/IWindow;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "deadzone"    # Landroid/os/Bundle;

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setTspDeadzone(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/os/Bundle;)V

    .line 556
    return-void
.end method

.method public setWallpaperDisplayOffset(Landroid/os/IBinder;II)V
    .locals 6
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 491
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 492
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 494
    .local v0, "ident":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, p0, p1, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v4

    invoke-virtual {v2, v4, p2, p3}, Lcom/android/server/wm/WindowManagerService;->setWindowWallpaperDisplayOffsetLocked(Lcom/android/server/wm/WindowState;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 497
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 499
    monitor-exit v3

    .line 500
    return-void

    .line 497
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 499
    .end local v0    # "ident":J
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    .locals 9
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "xStep"    # F
    .param p5, "yStep"    # F

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 475
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v6

    .line 477
    .local v6, "ident":J
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->setWindowWallpaperPositionLocked(Lcom/android/server/wm/WindowState;FFFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    :try_start_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 483
    monitor-exit v8

    .line 484
    return-void

    .line 481
    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 483
    .end local v6    # "ident":J
    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/server/wm/Session;->mStringName:Ljava/lang/String;

    return-object v0
.end method

.method public wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "result"    # Landroid/os/Bundle;

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 518
    return-void
.end method

.method public wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "window"    # Landroid/os/IBinder;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V

    .line 488
    return-void
.end method

.method windowAddedLocked()V
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-nez v0, :cond_0

    .line 562
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 565
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 566
    iget v0, p0, Lcom/android/server/wm/Session;->mLastReportedAnimatorScale:F

    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V

    .line 570
    :cond_0
    iget v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    .line 571
    return-void
.end method

.method windowRemovedLocked()V
    .locals 1

    .prologue
    .line 574
    iget v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    .line 575
    invoke-virtual {p0}, Lcom/android/server/wm/Session;->killSessionLocked()V

    .line 576
    return-void
.end method

.class public Lcom/android/server/wm/WindowAnimator;
.super Ljava/lang/Object;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    }
.end annotation


# static fields
.field static final KEYGUARD_ANIMATING_OUT:I = 0x2

.field private static final KEYGUARD_ANIM_TIMEOUT_MS:J = 0x3e8L

.field static final KEYGUARD_NOT_SHOWN:I = 0x0

.field static final KEYGUARD_SHOWN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WindowAnimator"


# instance fields
.field private mAnimTransactionSequence:I

.field mAnimating:Z

.field final mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field mAppWindowAnimating:Z

.field mBulkUpdateParams:I

.field final mContext:Landroid/content/Context;

.field mCurrentTime:J

.field mDisplayContentsAnimators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mDualScreenTransition:Lcom/android/server/wm/DualScreenTransition;

.field mForceHiding:I

.field mHideWindowsByOthers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mInitialized:Z

.field mIsExpandedDisplayAnimating:Z

.field mIsKeyguardServiceConnected:Z

.field mIsVRConnected:Z

.field mKeyguardGoingAway:Z

.field mKeyguardGoingAwayDisableWindowAnimations:Z

.field mKeyguardGoingAwayToNotificationShade:Z

.field mLastWindowFreezeSource:Ljava/lang/Object;

.field private mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

.field final mWindowDetachedWallpapers:Lcom/samsung/android/multidisplay/common/FallbackArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/multidisplay/common/FallbackArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object v3, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 129
    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 132
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    .line 136
    iput-object v3, p0, Lcom/android/server/wm/WindowAnimator;->mDualScreenTransition:Lcom/android/server/wm/DualScreenTransition;

    .line 137
    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mIsExpandedDisplayAnimating:Z

    .line 138
    new-instance v0, Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    invoke-direct {v0}, Lcom/samsung/android/multidisplay/common/FallbackArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpapers:Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    .line 141
    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    .line 154
    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    .line 156
    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mIsVRConnected:Z

    .line 157
    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mIsKeyguardServiceConnected:Z

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mHideWindowsByOthers:Ljava/util/ArrayList;

    .line 171
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 172
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    .line 173
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 182
    new-instance v0, Lcom/android/server/wm/WindowAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowAnimator$1;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 190
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/WindowAnimator;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/WindowAnimator;
    .param p1, "x1"    # J

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowAnimator;->animateLocked(J)V

    return-void
.end method

.method private animateLocked(J)V
    .locals 25
    .param p1, "frameTimeNs"    # J

    .prologue
    .line 1159
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 1401
    :cond_0
    :goto_0
    return-void

    .line 1163
    :cond_1
    const-wide/32 v20, 0xf4240

    div-long v20, p1, v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    .line 1164
    const/16 v20, 0x8

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 1165
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v18, v0

    .line 1166
    .local v18, "wasAnimating":Z
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 1167
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    .line 1168
    sget-boolean v20, Lcom/android/server/wm/WindowManagerService;->DEBUG_WINDOW_TRACE:Z

    if-eqz v20, :cond_2

    .line 1169
    const-string v20, "WindowAnimator"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "!!! animate: entry time="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :cond_2
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 1175
    invoke-static {}, Landroid/view/SurfaceControl;->setAnimationTransaction()V

    .line 1198
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v15

    .line 1200
    .local v15, "numDisplays":I
    add-int/lit8 v13, v15, -0x1

    .local v13, "i":I
    :goto_1
    if-ltz v13, :cond_9

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 1202
    .local v7, "displayId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->updateAppWindowsLocked(I)V

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 1205
    .local v5, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v0, v5, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object/from16 v17, v0

    .line 1207
    .local v17, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1208
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimationLocked(J)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1209
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 1242
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->updateWindowsLocked(I)V

    .line 1243
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->updateWallpaperLocked(I)V

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v19

    .line 1246
    .local v19, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    .line 1247
    .local v4, "N":I
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_3
    if-ge v14, v4, :cond_8

    .line 1264
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V

    .line 1247
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 1211
    .end local v4    # "N":I
    .end local v14    # "j":I
    .end local v19    # "windows":Lcom/android/server/wm/WindowList;
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 1212
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 1213
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v5, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    if-nez v7, :cond_3

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/wm/AccessibilityController;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1356
    .end local v5    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v7    # "displayId":I
    .end local v13    # "i":I
    .end local v15    # "numDisplays":I
    .end local v17    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :catch_0
    move-exception v11

    .line 1357
    .local v11, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v20, "WindowAnimator"

    const-string v21, "Unhandled exception in Window Manager"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1359
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1364
    .end local v11    # "e":Ljava/lang/RuntimeException;
    :goto_4
    const/4 v12, 0x0

    .line 1365
    .local v12, "hasPendingLayoutChanges":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v15

    .line 1366
    .restart local v15    # "numDisplays":I
    const/4 v8, 0x0

    .local v8, "displayNdx":I
    :goto_5
    if-ge v8, v15, :cond_f

    .line 1367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DisplayContent;

    .line 1368
    .local v6, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v16

    .line 1369
    .local v16, "pendingChanges":I
    and-int/lit8 v20, v16, 0x4

    if-eqz v20, :cond_5

    .line 1370
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 1373
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mIsKeyguardServiceConnected:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/view/WindowManagerPolicy;->isKeyguardServiceConnected()Z

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    .line 1374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManagerPolicy;->isKeyguardServiceConnected()Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mIsKeyguardServiceConnected:Z

    .line 1375
    const/16 v20, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 1378
    :cond_6
    if-eqz v16, :cond_7

    .line 1379
    const/4 v12, 0x1

    .line 1366
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1200
    .end local v6    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v8    # "displayNdx":I
    .end local v12    # "hasPendingLayoutChanges":Z
    .end local v16    # "pendingChanges":I
    .restart local v4    # "N":I
    .restart local v5    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .restart local v7    # "displayId":I
    .restart local v13    # "i":I
    .restart local v14    # "j":I
    .restart local v17    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .restart local v19    # "windows":Lcom/android/server/wm/WindowList;
    :cond_8
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_1

    .line 1270
    .end local v4    # "N":I
    .end local v5    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v7    # "displayId":I
    .end local v14    # "j":I
    .end local v17    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v19    # "windows":Lcom/android/server/wm/WindowList;
    :cond_9
    const/4 v10, 0x0

    .line 1305
    .local v10, "dualScreenTransition":Lcom/android/server/wm/DualScreenTransition;
    const/4 v13, 0x0

    :goto_6
    if-ge v13, v15, :cond_c

    .line 1306
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 1308
    .restart local v7    # "displayId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->testTokenMayBeDrawnLocked(I)V

    .line 1310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object/from16 v17, v0

    .line 1312
    .restart local v17    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v17, :cond_a

    .line 1313
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/ScreenRotationAnimation;->updateSurfacesInTransaction()V

    .line 1316
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/DisplayContent;->animateDimLayers()Z

    move-result v21

    or-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 1326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v20, v0

    if-eqz v20, :cond_b

    if-nez v7, :cond_b

    .line 1328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/AccessibilityController;->drawMagnifiedRegionBorderIfNeededLocked()V

    .line 1305
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 1347
    .end local v7    # "displayId":I
    .end local v17    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v20, v0

    if-eqz v20, :cond_d

    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1351
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowManagerService;->setFocusedStackLayer()V

    .line 1353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move-object/from16 v20, v0

    if-eqz v20, :cond_e

    .line 1354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1359
    :cond_e
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto/16 :goto_4

    .end local v10    # "dualScreenTransition":Lcom/android/server/wm/DualScreenTransition;
    .end local v13    # "i":I
    .end local v15    # "numDisplays":I
    :catchall_0
    move-exception v20

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v20

    .line 1383
    .restart local v8    # "displayNdx":I
    .restart local v12    # "hasPendingLayoutChanges":Z
    .restart local v15    # "numDisplays":I
    :cond_f
    const/4 v9, 0x0

    .line 1384
    .local v9, "doRequest":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v20, v0

    if-eqz v20, :cond_10

    .line 1385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowManagerService;->copyAnimToLayoutParamsLocked()Z

    move-result v9

    .line 1388
    :cond_10
    if-nez v12, :cond_11

    if-eqz v9, :cond_12

    .line 1389
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    .line 1392
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v20, v0

    if-nez v20, :cond_13

    if-eqz v18, :cond_13

    .line 1393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    .line 1395
    :cond_13
    sget-boolean v20, Lcom/android/server/wm/WindowManagerService;->DEBUG_WINDOW_TRACE:Z

    if-eqz v20, :cond_0

    .line 1396
    const-string v20, "WindowAnimator"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "!!! animate: exit mAnimating="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " mBulkUpdateParams="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " mPendingLayoutChanges(DEFAULT_DISPLAY)="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method static bulkUpdateParamsToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "bulkUpdateParams"    # I

    .prologue
    .line 1404
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1405
    .local v0, "builder":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 1406
    const-string v1, " UPDATE_ROTATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1408
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 1409
    const-string v1, " WALLPAPER_MAY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1411
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 1412
    const-string v1, " FORCE_HIDING_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1414
    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    .line 1415
    const-string v1, " ORIENTATION_CHANGE_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1417
    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    .line 1418
    const-string v1, " TURN_ON_SCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1420
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private dispatchWallpaperAnimationStartLocked()V
    .locals 10

    .prologue
    .line 443
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v2

    .line 445
    .local v2, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 446
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 447
    .local v1, "win":Lcom/android/server/wm/WindowState;
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 448
    .local v3, "wtoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v4, v4, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v4, :cond_1

    .line 445
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 451
    :cond_1
    iget-object v4, v3, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v4, v4, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v4, v4, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-nez v4, :cond_0

    .line 453
    :try_start_0
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-wide v6, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    const-wide/16 v8, 0xc8

    add-long/2addr v6, v8

    invoke-interface {v4, v6, v7}, Landroid/view/IWindow;->dispatchWallpaperAnimationStart(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 454
    :catch_0
    move-exception v4

    goto :goto_1

    .line 458
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    .end local v3    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_2
    return-void
.end method

.method private forceHidingToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    iget v0, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    packed-switch v0, :pswitch_data_0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEYGUARD STATE UNKNOWN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 163
    :pswitch_0
    const-string v0, "KEYGUARD_NOT_SHOWN"

    goto :goto_0

    .line 164
    :pswitch_1
    const-string v0, "KEYGUARD_SHOWN"

    goto :goto_0

    .line 165
    :pswitch_2
    const-string v0, "KEYGUARD_ANIMATING_OUT"

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 1510
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 1511
    .local v0, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-nez v0, :cond_0

    .line 1512
    new-instance v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .end local v0    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;-><init>(Lcom/android/server/wm/WindowAnimator;Lcom/android/server/wm/WindowAnimator$1;)V

    .line 1513
    .restart local v0    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1515
    :cond_0
    return-object v0
.end method

.method private isinWhitelist(Ljava/lang/String;)Z
    .locals 9
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 461
    const/4 v7, 0x3

    new-array v4, v7, [Ljava/lang/String;

    const-string v7, "MultiWindow"

    aput-object v7, v4, v6

    const-string v7, "MinimizeAnimator"

    aput-object v7, v4, v5

    const/4 v7, 0x2

    const-string v8, "ContainerKeyguard"

    aput-object v8, v4, v7

    .line 462
    .local v4, "whitelist":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 463
    .local v3, "white":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 467
    .end local v3    # "white":Ljava/lang/String;
    :goto_1
    return v5

    .line 462
    .restart local v3    # "white":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "white":Ljava/lang/String;
    :cond_1
    move v5, v6

    .line 467
    goto :goto_1
.end method

.method private shouldForceHide(Lcom/android/server/wm/WindowState;)Z
    .locals 13
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 298
    iget-object v11, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v11, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 299
    .local v4, "imeTarget":Lcom/android/server/wm/WindowState;
    iget-object v11, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v11}, Landroid/view/WindowManagerPolicy;->getWinShowWhenLockedLw()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    .line 300
    .local v10, "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    if-nez v10, :cond_7

    const/4 v1, 0x0

    .line 302
    .local v1, "appShowWhenLocked":Lcom/android/server/wm/AppWindowToken;
    :goto_0
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v12, 0x80000

    and-int/2addr v11, v12

    if-nez v11, :cond_1

    iget-object v11, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v11, :cond_0

    iget-object v11, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v11, v1, :cond_1

    :cond_0
    iget-object v11, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v12, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v11, v4, v12}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v11

    if-nez v11, :cond_8

    :cond_1
    const/4 v8, 0x1

    .line 307
    .local v8, "showImeOverKeyguard":Z
    :goto_1
    const/4 v0, 0x0

    .line 309
    .local v0, "allowWhenLocked":Z
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 312
    .local v3, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v11, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v11, :cond_2

    if-ne v4, p1, :cond_9

    :cond_2
    if-eqz v8, :cond_9

    const/4 v11, 0x1

    :goto_2
    or-int/2addr v0, v11

    .line 314
    iget-object v11, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v12, 0x80000

    and-int/2addr v11, v12

    if-eqz v11, :cond_a

    iget-boolean v11, p1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-eqz v11, :cond_a

    const/4 v11, 0x1

    :goto_3
    or-int/2addr v0, v11

    .line 317
    iget-object v11, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v11}, Landroid/view/WindowManagerPolicy;->getAppsShowWhenLockedLw()Ljava/util/ArrayList;

    move-result-object v2

    .line 318
    .local v2, "appsShowWhenLocked":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IApplicationToken;>;"
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v0, v11

    .line 321
    if-eqz v1, :cond_5

    .line 322
    iget-object v11, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v1, v11, :cond_4

    iget-object v11, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v12, 0x80000

    and-int/2addr v11, v12

    if-eqz v11, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v11

    if-nez v11, :cond_4

    :cond_3
    iget-object v11, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v11, v11, 0x100

    if-eqz v11, :cond_b

    :cond_4
    const/4 v11, 0x1

    :goto_4
    or-int/2addr v0, v11

    .line 330
    :cond_5
    const/4 v7, 0x0

    .line 331
    .local v7, "keyguardState":Z
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getBaseType()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    .line 338
    iget-object v11, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v12, 0x80000

    and-int/2addr v11, v12

    if-eqz v11, :cond_e

    .line 339
    iget v11, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_d

    const/4 v7, 0x1

    .line 348
    :goto_5
    iget-object v11, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v11}, Landroid/view/WindowManagerPolicy;->isKeyguardShowingOrOccluded()Z

    move-result v11

    if-eqz v11, :cond_10

    if-eqz v7, :cond_10

    const/4 v6, 0x1

    .line 352
    .local v6, "keyguardOn":Z
    :goto_6
    iget-object v11, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v11, v11, Lcom/android/server/wm/Session;->mUid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 353
    .local v9, "userId":I
    if-nez v6, :cond_6

    const/16 v11, 0x64

    if-lt v9, v11, :cond_6

    const/16 v11, 0xc8

    if-gt v9, v11, :cond_6

    .line 354
    invoke-virtual {p0}, Lcom/android/server/wm/WindowAnimator;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v11

    if-eqz v11, :cond_11

    invoke-virtual {p0}, Lcom/android/server/wm/WindowAnimator;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v11

    sget-object v12, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v11, v12, v9}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-virtual {p0}, Lcom/android/server/wm/WindowAnimator;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/android/server/pm/PersonaManagerService;->isKnoxKeyguardShown(I)Z

    move-result v11

    if-nez v11, :cond_11

    const/4 v5, 0x1

    .line 357
    .local v5, "isKnoxContainerLocked":Z
    :goto_7
    if-eqz v5, :cond_6

    iget-object v11, p1, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/wm/WindowAnimator;->isinWhitelist(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 358
    iget-object v11, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v12, 0x80000

    and-int/2addr v11, v12

    if-nez v11, :cond_6

    .line 359
    const/4 v6, 0x1

    .line 363
    .end local v5    # "isKnoxContainerLocked":Z
    :cond_6
    if-eqz v6, :cond_12

    if-nez v0, :cond_12

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v11

    if-nez v11, :cond_12

    const/4 v11, 0x1

    :goto_8
    return v11

    .line 300
    .end local v0    # "allowWhenLocked":Z
    .end local v1    # "appShowWhenLocked":Lcom/android/server/wm/AppWindowToken;
    .end local v2    # "appsShowWhenLocked":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IApplicationToken;>;"
    .end local v3    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v6    # "keyguardOn":Z
    .end local v7    # "keyguardState":Z
    .end local v8    # "showImeOverKeyguard":Z
    .end local v9    # "userId":I
    :cond_7
    iget-object v1, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    goto/16 :goto_0

    .line 302
    .restart local v1    # "appShowWhenLocked":Lcom/android/server/wm/AppWindowToken;
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 312
    .restart local v0    # "allowWhenLocked":Z
    .restart local v3    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v8    # "showImeOverKeyguard":Z
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 314
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 322
    .restart local v2    # "appsShowWhenLocked":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IApplicationToken;>;"
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 334
    .restart local v7    # "keyguardState":Z
    :sswitch_0
    iget v11, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c

    const/4 v7, 0x1

    .line 335
    :goto_9
    goto :goto_5

    .line 334
    :cond_c
    const/4 v7, 0x0

    goto :goto_9

    .line 339
    :cond_d
    const/4 v7, 0x0

    goto :goto_5

    .line 341
    :cond_e
    iget v11, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_f

    const/4 v7, 0x1

    :goto_a
    goto :goto_5

    :cond_f
    const/4 v7, 0x0

    goto :goto_a

    .line 348
    :cond_10
    const/4 v6, 0x0

    goto :goto_6

    .line 354
    .restart local v6    # "keyguardOn":Z
    .restart local v9    # "userId":I
    :cond_11
    const/4 v5, 0x0

    goto :goto_7

    .line 363
    :cond_12
    const/4 v11, 0x0

    goto :goto_8

    .line 331
    :sswitch_data_0
    .sparse-switch
        0x7d9 -> :sswitch_0
        0x8b2 -> :sswitch_0
    .end sparse-switch
.end method

.method private shouldForceHideByOthers(Lcom/android/server/wm/WindowState;I)Z
    .locals 7
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "displayId"    # I

    .prologue
    const/4 v3, 0x0

    .line 367
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->isHMTconnected()Z

    move-result v1

    .line 402
    .local v1, "isHMTconnecting":Z
    if-nez p2, :cond_2

    .line 403
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->isForceHideByNightClock()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    if-nez v4, :cond_3

    .line 404
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v4, p1, v5}, Landroid/view/WindowManagerPolicy;->canBeForceHiddenByNightClock(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 405
    invoke-virtual {p1, v3, v3}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 406
    const-string v4, "WindowAnimator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hide by NightClock "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-boolean v4, p1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x80000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 408
    const-string v4, "WindowAnimator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NightClock : turning screen on: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    .line 410
    iget-object v3, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreenPackage:Ljava/lang/String;

    .line 411
    iget v3, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 413
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowAnimator;->mHideWindowsByOthers:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 414
    iget-object v3, p0, Lcom/android/server/wm/WindowAnimator;->mHideWindowsByOthers:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_1
    const/4 v3, 0x1

    .line 439
    :cond_2
    :goto_0
    return v3

    .line 420
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mHideWindowsByOthers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 421
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mHideWindowsByOthers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 422
    .local v2, "tempWin":Lcom/android/server/wm/WindowState;
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v4, v2, v5}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 423
    invoke-virtual {v2, v3, v3}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    .line 424
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_4

    .line 425
    iget v4, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 426
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 428
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v5, "updateWindowsAndWallpaperLocked 4"

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto :goto_1

    .line 433
    .end local v2    # "tempWin":Lcom/android/server/wm/WindowState;
    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mHideWindowsByOthers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private testTokenMayBeDrawnLocked(I)V
    .locals 12
    .param p1, "displayId"    # I

    .prologue
    .line 1105
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 1106
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1107
    .local v2, "numTasks":I
    const/4 v4, 0x0

    .local v4, "taskNdx":I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 1108
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Task;

    iget-object v7, v9, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 1109
    .local v7, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v7}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v3

    .line 1110
    .local v3, "numTokens":I
    const/4 v6, 0x0

    .local v6, "tokenNdx":I
    :goto_1
    if-ge v6, v3, :cond_3

    .line 1111
    invoke-virtual {v7, v6}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    .line 1112
    .local v8, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v1, v8, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 1113
    .local v1, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-boolean v0, v8, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 1114
    .local v0, "allDrawn":Z
    iget-boolean v9, v1, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    if-eq v0, v9, :cond_1

    .line 1115
    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    .line 1116
    if-eqz v0, :cond_1

    .line 1119
    iget-boolean v9, v1, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v9, :cond_2

    .line 1120
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    .line 1121
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v8, v10, v11}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 1122
    sget-boolean v9, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v9, :cond_0

    const-string v9, "WindowAnimator"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Setting mOrientationChangeComplete=true because wtoken "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " numInteresting="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " numDrawn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :cond_0
    const/4 v9, 0x4

    const-string/jumbo v10, "testTokenMayBeDrawnLocked: freezingScreen"

    invoke-virtual {p0, v1, v9, v10, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    .line 1110
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1131
    :cond_2
    const/16 v9, 0x8

    const-string/jumbo v10, "testTokenMayBeDrawnLocked"

    invoke-virtual {p0, v1, v9, v10, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    .line 1143
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1144
    iget-boolean v9, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v10

    or-int/2addr v9, v10

    iput-boolean v9, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    goto :goto_2

    .line 1107
    .end local v0    # "allDrawn":Z
    .end local v1    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1154
    .end local v3    # "numTokens":I
    .end local v6    # "tokenNdx":I
    .end local v7    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_4
    return-void
.end method

.method private updateAppWindowsLocked(I)V
    .locals 14
    .param p1, "displayId"    # I

    .prologue
    .line 233
    iget-object v11, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    move-result-object v6

    .line 234
    .local v6, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v5, v11, -0x1

    .local v5, "stackNdx":I
    :goto_0
    if-ltz v5, :cond_7

    .line 235
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskStack;

    .line 236
    .local v4, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v8

    .line 237
    .local v8, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v7, v11, -0x1

    .local v7, "taskNdx":I
    :goto_1
    if-ltz v7, :cond_3

    .line 238
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/Task;

    iget-object v10, v11, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 239
    .local v10, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v10}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v11

    add-int/lit8 v9, v11, -0x1

    .local v9, "tokenNdx":I
    :goto_2
    if-ltz v9, :cond_2

    .line 240
    invoke-virtual {v10, v9}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v11, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 248
    .local v0, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    iput-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    .line 249
    iget-wide v12, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v0, v12, v13, p1}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JI)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 250
    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 251
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    iput-boolean v11, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 239
    :cond_0
    :goto_3
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 252
    :cond_1
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    if-eqz v11, :cond_0

    .line 254
    const/4 v11, 0x4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "appToken "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " done"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v0, v11, v12, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    .line 257
    sget-boolean v11, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v11, :cond_0

    const-string v11, "WindowAnimator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateWindowsApps...: done animating "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 237
    .end local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 263
    .end local v9    # "tokenNdx":I
    .end local v10    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_3
    iget-object v1, v4, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 264
    .local v1, "exitingAppTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    .line 265
    .local v2, "exitingCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v2, :cond_6

    .line 266
    invoke-virtual {v1, v3}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v11, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 267
    .restart local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    iput-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    .line 268
    iget-wide v12, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v0, v12, v13, p1}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JI)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 269
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    iput-boolean v11, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 265
    :cond_4
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 270
    :cond_5
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    if-eqz v11, :cond_4

    .line 272
    const/4 v11, 0x4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "exiting appToken "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " done"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v0, v11, v12, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    .line 274
    sget-boolean v11, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v11, :cond_4

    const-string v11, "WindowAnimator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateWindowsApps...: done animating exiting "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 234
    .end local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    .line 279
    .end local v1    # "exitingAppTokens":Lcom/android/server/wm/AppTokenList;
    .end local v2    # "exitingCount":I
    .end local v3    # "i":I
    .end local v4    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v7    # "taskNdx":I
    .end local v8    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    :cond_7
    return-void
.end method

.method private updateWallpaperLocked(I)V
    .locals 17
    .param p1, "displayId"    # I

    .prologue
    .line 949
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->resetAnimationBackgroundAnimator()V

    .line 951
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v13

    .line 952
    .local v13, "windows":Lcom/android/server/wm/WindowList;
    const/4 v3, 0x0

    .line 958
    .local v3, "detachedWallpaper":Lcom/android/server/wm/WindowState;
    const/4 v7, 0x0

    .line 959
    .local v7, "lastAnimationBackgroundStack":Lcom/android/server/wm/TaskStack;
    const/4 v6, 0x0

    .line 960
    .local v6, "lastAnimationBackgroundColor":I
    const/4 v8, 0x0

    .line 961
    .local v8, "lastWinAnimator":Lcom/android/server/wm/WindowStateAnimator;
    const/4 v9, 0x0

    .line 964
    .local v9, "lastWinAnimatorCount":I
    invoke-virtual {v13}, Lcom/android/server/wm/WindowList;->size()I

    move-result v14

    add-int/lit8 v5, v14, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_a

    .line 965
    invoke-virtual {v13, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowState;

    .line 966
    .local v11, "win":Lcom/android/server/wm/WindowState;
    iget-object v12, v11, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 967
    .local v12, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v14, v12, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v14, :cond_1

    .line 964
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 971
    :cond_1
    iget-object v14, v11, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v14, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 976
    .local v4, "flags":I
    iget-boolean v14, v12, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v14, :cond_6

    .line 977
    iget-object v14, v12, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v14, :cond_5

    .line 978
    const/high16 v14, 0x100000

    and-int/2addr v14, v4

    if-eqz v14, :cond_2

    iget-object v14, v12, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v14}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 980
    move-object v3, v11

    .line 982
    :cond_2
    const/4 v2, 0x0

    .line 994
    .local v2, "color":I
    iget-object v14, v12, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v14}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v2

    .line 997
    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v10

    .line 998
    .local v10, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v10, :cond_5

    .line 1000
    if-eqz v2, :cond_5

    invoke-virtual {v10}, Lcom/android/server/wm/TaskStack;->isFloatingStack()Z

    move-result v14

    if-nez v14, :cond_5

    iget-object v14, v11, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v14, v14, Landroid/view/WindowManager$LayoutParams;->width:I

    if-nez v14, :cond_3

    iget-object v14, v11, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v14, v14, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eqz v14, :cond_5

    .line 1001
    :cond_3
    if-eqz v8, :cond_4

    iget v14, v12, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v15, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v14, v15, :cond_5

    .line 1002
    :cond_4
    move-object v7, v10

    .line 1003
    move v6, v2

    .line 1004
    move-object v8, v12

    .line 1005
    add-int/lit8 v9, v9, 0x1

    .line 1012
    .end local v2    # "color":I
    .end local v10    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_5
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 1018
    :cond_6
    iget-object v1, v12, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 1019
    .local v1, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v1, :cond_0

    iget-object v14, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v14, :cond_0

    iget-boolean v14, v1, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-eqz v14, :cond_0

    .line 1021
    const/high16 v14, 0x100000

    and-int/2addr v14, v4

    if-eqz v14, :cond_7

    iget-object v14, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v14}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1023
    move-object v3, v11

    .line 1026
    :cond_7
    const/4 v2, 0x0

    .line 1038
    .restart local v2    # "color":I
    iget-object v14, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v14}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v2

    .line 1040
    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v10

    .line 1041
    .restart local v10    # "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v10, :cond_0

    .line 1043
    if-eqz v2, :cond_9

    .line 1044
    invoke-virtual {v10}, Lcom/android/server/wm/TaskStack;->isFloatingStack()Z

    move-result v14

    if-nez v14, :cond_0

    iget-object v14, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v14, v14, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    if-eqz v14, :cond_0

    .line 1045
    if-eqz v8, :cond_8

    iget v14, v12, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v15, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v14, v15, :cond_0

    .line 1046
    :cond_8
    move-object v7, v10

    .line 1047
    move v6, v2

    .line 1048
    move-object v8, v12

    .line 1049
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 1056
    :cond_9
    if-eqz v6, :cond_0

    if-eqz v8, :cond_0

    iget v14, v12, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v15, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v14, v15, :cond_0

    .line 1058
    move-object v8, v12

    goto/16 :goto_1

    .line 1067
    .end local v1    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v2    # "color":I
    .end local v4    # "flags":I
    .end local v10    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v11    # "win":Lcom/android/server/wm/WindowState;
    .end local v12    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_a
    if-eqz v7, :cond_b

    .line 1068
    if-eqz v8, :cond_b

    .line 1069
    const/4 v14, 0x1

    if-ne v9, v14, :cond_e

    iget-object v14, v8, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v14, v14, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-eqz v14, :cond_e

    .line 1070
    const-string v14, "WindowAnimator"

    const-string v15, "Skip setting animation background if there is an exiting window only."

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :cond_b
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eq v14, v3, :cond_d

    .line 1091
    sget-boolean v14, Lcom/android/server/wm/WindowManagerService;->DEBUG_WALLPAPER:Z

    if-eqz v14, :cond_c

    const-string v14, "WindowAnimator"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Detached wallpaper changed from "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_c
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 1095
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 1098
    :cond_d
    return-void

    .line 1072
    :cond_e
    invoke-virtual {v7, v8, v6}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    goto :goto_2
.end method

.method private updateWindowsLocked(I)V
    .locals 42
    .param p1, "displayId"    # I

    .prologue
    .line 471
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v37, v0

    add-int/lit8 v37, v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    .line 484
    .local v22, "mWallpaperTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowToken;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    .line 488
    .local v21, "mWallpaperTarget":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v36

    .line 489
    .local v36, "windows":Lcom/android/server/wm/WindowList;
    const/16 v20, 0x0

    .line 491
    .local v20, "keyguardShow":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    move/from16 v37, v0

    if-eqz v37, :cond_2

    .line 492
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowList;->size()I

    move-result v37

    add-int/lit8 v18, v37, -0x1

    .local v18, "i":I
    :goto_0
    if-ltz v18, :cond_2

    .line 493
    move-object/from16 v0, v36

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/wm/WindowState;

    .line 494
    .local v34, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v37, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v38, v0

    invoke-interface/range {v37 .. v38}, Landroid/view/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v37

    if-nez v37, :cond_0

    .line 492
    add-int/lit8 v18, v18, -0x1

    goto :goto_0

    .line 497
    :cond_0
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v35, v0

    .line 498
    .local v35, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v37, v0

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0x400

    move/from16 v37, v0

    if-eqz v37, :cond_14

    .line 499
    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    move/from16 v37, v0

    if-nez v37, :cond_2

    .line 500
    sget-boolean v37, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-eqz v37, :cond_1

    const-string v37, "WindowAnimator"

    const-string/jumbo v38, "updateWindowsLocked: creating delay animation"

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_1
    new-instance v37, Landroid/view/animation/AlphaAnimation;

    const/high16 v38, 0x3f800000    # 1.0f

    const/high16 v39, 0x3f800000    # 1.0f

    invoke-direct/range {v37 .. v39}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    .line 505
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v37, v0

    const-wide/16 v38, 0x3e8

    invoke-virtual/range {v37 .. v39}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 506
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    .line 507
    const-wide/16 v38, -0x1

    move-wide/from16 v0, v38

    move-object/from16 v2, v35

    iput-wide v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartTime:J

    .line 508
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    .line 520
    .end local v18    # "i":I
    .end local v34    # "win":Lcom/android/server/wm/WindowState;
    .end local v35    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_2
    :goto_1
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    .line 522
    const/16 v31, 0x0

    .line 523
    .local v31, "wallpaperInUnForceHiding":Z
    const/16 v27, 0x0

    .line 524
    .local v27, "startingInUnForceHiding":Z
    const/16 v28, 0x0

    .line 525
    .local v28, "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    const/16 v30, 0x0

    .line 527
    .local v30, "wallpaper":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowList;->size()I

    move-result v37

    add-int/lit8 v18, v37, -0x1

    .restart local v18    # "i":I
    :goto_2
    if-ltz v18, :cond_42

    .line 528
    move-object/from16 v0, v36

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/wm/WindowState;

    .line 529
    .restart local v34    # "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v35, v0

    .line 530
    .restart local v35    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v17, v0

    .line 531
    .local v17, "flags":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v37, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v34

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v37

    if-eqz v37, :cond_16

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v37, v0

    if-eqz v37, :cond_3

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v37, v0

    const/16 v38, 0x832

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_16

    :cond_3
    const/4 v11, 0x1

    .line 535
    .local v11, "canBeForceHidden":Z
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowAnimator;->shouldForceHide(Lcom/android/server/wm/WindowState;)Z

    move-result v24

    .line 536
    .local v24, "shouldBeForceHidden":Z
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v37, v0

    if-eqz v37, :cond_3c

    .line 537
    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    move/from16 v32, v0

    .line 538
    .local v32, "wasAnimating":Z
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v38, v0

    move-object/from16 v0, v35

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimationLocked(J)Z

    move-result v23

    .line 539
    .local v23, "nowAnimating":Z
    move/from16 v0, v23

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    .line 540
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v37, v0

    or-int v37, v37, v23

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 542
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v37, v0

    if-eqz v37, :cond_17

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    move/from16 v37, v0

    if-eqz v37, :cond_17

    const/4 v8, 0x1

    .line 544
    .local v8, "appWindowAnimating":Z
    :goto_4
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v37, v0

    if-eqz v37, :cond_18

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    move/from16 v37, v0

    if-eqz v37, :cond_18

    const/16 v33, 0x1

    .line 546
    .local v33, "wasAppWindowAnimating":Z
    :goto_5
    if-nez v8, :cond_4

    if-eqz v23, :cond_19

    :cond_4
    const/4 v5, 0x1

    .line 547
    .local v5, "anyAnimating":Z
    :goto_6
    if-nez v33, :cond_5

    if-eqz v32, :cond_1a

    :cond_5
    const/4 v6, 0x1

    .line 550
    .local v6, "anyWasAnimating":Z
    :goto_7
    if-eqz v5, :cond_1d

    if-nez v6, :cond_1d

    .line 551
    :try_start_0
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v38, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimatingMove:Z

    move/from16 v37, v0

    if-eqz v37, :cond_1b

    const/16 v37, -0x1

    :goto_8
    move-object/from16 v0, v38

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/view/IWindow;->onAnimationStarted(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :cond_6
    :goto_9
    sget-boolean v37, Lcom/android/server/wm/WindowManagerService;->DEBUG_WALLPAPER:Z

    if-eqz v37, :cond_7

    .line 562
    const-string v37, "WindowAnimator"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ": wasAnimating="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ", nowAnimating="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_7
    if-eqz v32, :cond_8

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    move/from16 v37, v0

    if-nez v37, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_8

    .line 567
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v37, v0

    or-int/lit8 v37, v37, 0x2

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 568
    const/16 v37, 0x0

    const/16 v38, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "d["

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "] updateWindowsAndWallpaperLocked 2"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v39

    invoke-virtual/range {v37 .. v39}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 577
    :cond_8
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, v34

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mHideBySViewCover:Z

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Landroid/view/WindowManagerPolicy;->isForceHideBySViewCover()Z

    move-result v37

    if-eqz v37, :cond_21

    .line 579
    if-nez p1, :cond_e

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v37, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v34

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->canBeForceHiddenBySViewCover(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v37

    if-eqz v37, :cond_1f

    .line 582
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v12

    .line 583
    .local v12, "changedByCover":Z
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, v34

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mHideBySViewCover:Z

    .line 584
    if-eqz v12, :cond_a

    .line 585
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v37, v0

    const/high16 v38, 0x80000

    and-int v37, v37, v38

    if-eqz v37, :cond_1e

    const/16 v25, 0x1

    .line 586
    .local v25, "showWhenLock":Z
    :goto_a
    if-eqz v25, :cond_a

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    move/from16 v37, v0

    if-eqz v37, :cond_a

    .line 587
    sget-boolean v37, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v37, :cond_9

    const-string v37, "WindowAnimator"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Show surface turning screen on: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_9
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, v34

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v37, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreenPackage:Ljava/lang/String;

    .line 591
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v37, v0

    or-int/lit8 v37, v37, 0x10

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 594
    .end local v25    # "showWhenLock":Z
    :cond_a
    sget-boolean v37, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v37, :cond_b

    if-eqz v12, :cond_b

    .line 595
    const-string v37, "WindowAnimator"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "mForceHidingByCover Now policy hidden: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_b
    :goto_b
    if-eqz v12, :cond_e

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 609
    .local v13, "currentFocus":Lcom/android/server/wm/WindowState;
    if-eqz v13, :cond_c

    iget v0, v13, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v37, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_d

    .line 613
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 621
    :cond_d
    const/high16 v37, 0x100000

    and-int v37, v37, v17

    if-eqz v37, :cond_e

    .line 622
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v37, v0

    or-int/lit8 v37, v37, 0x2

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 623
    const/16 v37, 0x0

    const/16 v38, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v37, v0

    const-string/jumbo v38, "updateWindowsAndWallpaperLocked 5"

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v39

    invoke-virtual/range {v37 .. v39}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 828
    .end local v5    # "anyAnimating":Z
    .end local v6    # "anyWasAnimating":Z
    .end local v8    # "appWindowAnimating":Z
    .end local v12    # "changedByCover":Z
    .end local v13    # "currentFocus":Lcom/android/server/wm/WindowState;
    .end local v23    # "nowAnimating":Z
    .end local v32    # "wasAnimating":Z
    .end local v33    # "wasAppWindowAnimating":Z
    :cond_e
    :goto_c
    move-object/from16 v0, v34

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 829
    .local v10, "atoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    move/from16 v37, v0

    const/16 v38, 0x3

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_10

    .line 830
    if-eqz v10, :cond_f

    iget-boolean v0, v10, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    move/from16 v37, v0

    if-eqz v37, :cond_10

    .line 831
    :cond_f
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    move-result v37

    if-eqz v37, :cond_10

    .line 832
    const/16 v37, 0x8

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v37, v0

    const-string/jumbo v38, "updateWindowsAndWallpaperLocked 5"

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v39

    invoke-virtual/range {v37 .. v39}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 841
    :cond_10
    move-object/from16 v0, v35

    iget-object v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 842
    .local v7, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v7, :cond_12

    iget-object v0, v7, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    move-object/from16 v37, v0

    if-eqz v37, :cond_12

    .line 843
    iget v0, v7, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_11

    .line 844
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v37, v0

    move/from16 v0, v37

    iput v0, v7, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    .line 845
    const/16 v37, 0x0

    move/from16 v0, v37

    iput v0, v7, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 847
    :cond_11
    iget v0, v7, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    move/from16 v37, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_12

    .line 848
    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v37, v0

    move/from16 v0, v37

    iput v0, v7, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 851
    :cond_12
    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    move/from16 v37, v0

    if-eqz v37, :cond_3e

    .line 852
    move-object/from16 v30, v34

    .line 527
    .end local v7    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v10    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_13
    :goto_d
    add-int/lit8 v18, v18, -0x1

    goto/16 :goto_2

    .line 511
    .end local v11    # "canBeForceHidden":Z
    .end local v17    # "flags":I
    .end local v24    # "shouldBeForceHidden":Z
    .end local v27    # "startingInUnForceHiding":Z
    .end local v28    # "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    .end local v30    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v31    # "wallpaperInUnForceHiding":Z
    :cond_14
    sget-boolean v37, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-eqz v37, :cond_15

    const-string v37, "WindowAnimator"

    const-string/jumbo v38, "updateWindowsLocked: StatusBar is no longer keyguard"

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_15
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    .line 514
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/wm/WindowStateAnimator;->clearAnimation()V

    goto/16 :goto_1

    .line 531
    .restart local v17    # "flags":I
    .restart local v27    # "startingInUnForceHiding":Z
    .restart local v28    # "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    .restart local v30    # "wallpaper":Lcom/android/server/wm/WindowState;
    .restart local v31    # "wallpaperInUnForceHiding":Z
    :cond_16
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 542
    .restart local v11    # "canBeForceHidden":Z
    .restart local v23    # "nowAnimating":Z
    .restart local v24    # "shouldBeForceHidden":Z
    .restart local v32    # "wasAnimating":Z
    :cond_17
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 544
    .restart local v8    # "appWindowAnimating":Z
    :cond_18
    const/16 v33, 0x0

    goto/16 :goto_5

    .line 546
    .restart local v33    # "wasAppWindowAnimating":Z
    :cond_19
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 547
    .restart local v5    # "anyAnimating":Z
    :cond_1a
    const/4 v6, 0x0

    goto/16 :goto_7

    .line 551
    .restart local v6    # "anyWasAnimating":Z
    :cond_1b
    :try_start_1
    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    move/from16 v37, v0

    if-eqz v37, :cond_1c

    const/16 v37, 0x1

    goto/16 :goto_8

    :cond_1c
    const/16 v37, 0x0

    goto/16 :goto_8

    .line 554
    :cond_1d
    if-nez v5, :cond_6

    if-eqz v6, :cond_6

    .line 555
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Landroid/view/IWindow;->onAnimationStopped()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9

    .line 557
    :catch_0
    move-exception v15

    .line 558
    .local v15, "e":Landroid/os/RemoteException;
    const-string v37, "WindowAnimator"

    const-string v38, "Failed to dispatch window animation state change."

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-static {v0, v1, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 585
    .end local v15    # "e":Landroid/os/RemoteException;
    .restart local v12    # "changedByCover":Z
    :cond_1e
    const/16 v25, 0x0

    goto/16 :goto_a

    .line 598
    .end local v12    # "changedByCover":Z
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->isNeedLayoutCoverApplication(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v37

    if-eqz v37, :cond_20

    .line 599
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v12

    .line 600
    .restart local v12    # "changedByCover":Z
    sget-boolean v37, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v37, :cond_b

    if-eqz v12, :cond_b

    .line 601
    const-string v37, "WindowAnimator"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Now policy shown: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 604
    .end local v12    # "changedByCover":Z
    :cond_20
    const/4 v12, 0x0

    .restart local v12    # "changedByCover":Z
    goto/16 :goto_b

    .line 636
    .end local v12    # "changedByCover":Z
    :cond_21
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->shouldForceHideByOthers(Lcom/android/server/wm/WindowState;I)Z

    move-result v37

    if-nez v37, :cond_e

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v37, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v38, v0

    invoke-interface/range {v37 .. v38}, Landroid/view/WindowManagerPolicy;->isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v37

    if-eqz v37, :cond_2b

    .line 642
    if-nez v32, :cond_27

    if-eqz v23, :cond_27

    .line 643
    sget-boolean v37, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-nez v37, :cond_22

    sget-boolean v37, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-nez v37, :cond_22

    sget-boolean v37, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v37, :cond_23

    .line 644
    :cond_22
    const-string v37, "WindowAnimator"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Animation started that could impact force hide: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v37, v0

    or-int/lit8 v37, v37, 0x4

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 647
    const/16 v37, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v37, v0

    const-string/jumbo v38, "updateWindowsAndWallpaperLocked 3"

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v39

    invoke-virtual/range {v37 .. v39}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 660
    :cond_24
    :goto_e
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v37

    if-eqz v37, :cond_25

    .line 661
    if-eqz v23, :cond_28

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    move/from16 v37, v0

    if-eqz v37, :cond_28

    .line 662
    const/16 v37, 0x2

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    .line 667
    :cond_25
    :goto_f
    sget-boolean v37, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-nez v37, :cond_26

    sget-boolean v37, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v37, :cond_e

    :cond_26
    const-string v37, "WindowAnimator"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Force hide "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowAnimator;->forceHidingToString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " hasSurface="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " policyVis="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " destroying="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " attHidden="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " vis="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " hidden="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->hidden:Z

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " anim="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 654
    :cond_27
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    move/from16 v37, v0

    if-eqz v37, :cond_24

    if-nez v23, :cond_24

    .line 656
    const-string v37, "WindowAnimator"

    const-string v38, "Timeout waiting for animation to startup"

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v37, v0

    const-wide/16 v38, 0x0

    const-wide/16 v40, 0x0

    invoke-interface/range {v37 .. v41}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    .line 658
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    goto/16 :goto_e

    .line 664
    :cond_28
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v37

    if-nez v37, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_2a

    :cond_29
    const/16 v37, 0x1

    :goto_10
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    goto/16 :goto_f

    :cond_2a
    const/16 v37, 0x0

    goto :goto_10

    .line 676
    :cond_2b
    if-eqz v11, :cond_e

    .line 677
    if-eqz v24, :cond_2e

    .line 692
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v37

    if-eqz v37, :cond_13

    .line 696
    sget-boolean v37, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-nez v37, :cond_2c

    sget-boolean v37, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v37, :cond_2d

    :cond_2c
    const-string v37, "WindowAnimator"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Now policy hidden: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_2d
    :goto_11
    const/high16 v37, 0x100000

    and-int v37, v37, v17

    if-eqz v37, :cond_e

    .line 804
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v37, v0

    or-int/lit8 v37, v37, 0x2

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 805
    const/16 v37, 0x0

    const/16 v38, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v37, v0

    const-string/jumbo v38, "updateWindowsAndWallpaperLocked 4"

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v39

    invoke-virtual/range {v37 .. v39}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto/16 :goto_c

    .line 724
    :cond_2e
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v37, v0

    and-int/lit8 v37, v37, 0x40

    if-eqz v37, :cond_2f

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v37, v0

    const/16 v38, -0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_2f

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v37, v0

    const/16 v38, -0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_2f

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/server/wm/WindowList;->size()I

    move-result v37

    if-eqz v37, :cond_2f

    const/16 v26, 0x1

    .line 729
    .local v26, "skipApplyExitingAnimation":Z
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v37, v0

    if-eqz v37, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v37

    if-nez v37, :cond_30

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    move/from16 v37, v0

    if-nez v37, :cond_30

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v37

    if-eqz v37, :cond_30

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v37, v0

    if-nez v37, :cond_30

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v37, v0

    const/16 v38, 0x8b2

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_30

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v37, v0

    const/16 v38, 0x7d9

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_30

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    move/from16 v37, v0

    if-nez v37, :cond_30

    if-nez p1, :cond_30

    if-nez v26, :cond_30

    const/4 v9, 0x1

    .line 754
    .local v9, "applyExistingExitAnimation":Z
    :goto_13
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v37

    if-nez v37, :cond_31

    if-nez v9, :cond_31

    .line 756
    const/high16 v37, 0x100000

    and-int v37, v37, v17

    if-eqz v37, :cond_13

    .line 757
    const/16 v31, 0x1

    goto/16 :goto_d

    .line 724
    .end local v9    # "applyExistingExitAnimation":Z
    .end local v26    # "skipApplyExitingAnimation":Z
    :cond_2f
    const/16 v26, 0x0

    goto :goto_12

    .line 729
    .restart local v26    # "skipApplyExitingAnimation":Z
    :cond_30
    const/4 v9, 0x0

    goto :goto_13

    .line 762
    .restart local v9    # "applyExistingExitAnimation":Z
    :cond_31
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v29

    .line 763
    .local v29, "visibleNow":Z
    if-nez v29, :cond_32

    .line 765
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    goto/16 :goto_d

    .line 768
    :cond_32
    sget-boolean v37, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-nez v37, :cond_33

    sget-boolean v37, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v37, :cond_34

    :cond_33
    const-string v37, "WindowAnimator"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Now policy shown: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_34
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v37, v0

    and-int/lit8 v37, v37, 0x4

    if-eqz v37, :cond_3a

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v37, v0

    if-nez v37, :cond_3a

    if-nez v26, :cond_3a

    .line 772
    if-nez v28, :cond_35

    .line 773
    new-instance v28, Ljava/util/ArrayList;

    .end local v28    # "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 775
    .restart local v28    # "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    :cond_35
    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    const/high16 v37, 0x100000

    and-int v37, v37, v17

    if-eqz v37, :cond_36

    .line 777
    const/16 v31, 0x1

    .line 779
    :cond_36
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v37, v0

    const/16 v38, 0x3

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_37

    .line 780
    const/16 v27, 0x1

    .line 793
    :cond_37
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 794
    .restart local v13    # "currentFocus":Lcom/android/server/wm/WindowState;
    if-eqz v13, :cond_38

    iget v0, v13, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v37, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_2d

    .line 798
    :cond_38
    sget-boolean v37, Lcom/android/server/wm/WindowManagerService;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v37, :cond_39

    const-string v37, "WindowAnimator"

    const-string/jumbo v38, "updateWindowsLocked: setting mFocusMayChange true"

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    goto/16 :goto_11

    .line 782
    .end local v13    # "currentFocus":Lcom/android/server/wm/WindowState;
    :cond_3a
    if-eqz v9, :cond_37

    .line 785
    sget-boolean v37, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-eqz v37, :cond_3b

    const-string v37, "WindowAnimator"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Applying existing Keyguard exit animation to new window: win="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayToNotificationShade:Z

    move/from16 v39, v0

    invoke-interface/range {v37 .. v39}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;

    move-result-object v4

    .line 790
    .local v4, "a":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v38

    move-object/from16 v0, v35

    move-wide/from16 v1, v38

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;J)V

    .line 791
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    goto/16 :goto_14

    .line 820
    .end local v4    # "a":Landroid/view/animation/Animation;
    .end local v5    # "anyAnimating":Z
    .end local v6    # "anyWasAnimating":Z
    .end local v8    # "appWindowAnimating":Z
    .end local v9    # "applyExistingExitAnimation":Z
    .end local v23    # "nowAnimating":Z
    .end local v26    # "skipApplyExitingAnimation":Z
    .end local v29    # "visibleNow":Z
    .end local v32    # "wasAnimating":Z
    .end local v33    # "wasAppWindowAnimating":Z
    :cond_3c
    if-eqz v11, :cond_e

    .line 821
    if-eqz v24, :cond_3d

    .line 822
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    goto/16 :goto_c

    .line 824
    :cond_3d
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    goto/16 :goto_c

    .line 855
    .restart local v7    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .restart local v10    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_3e
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v37, v0

    const/16 v38, 0x7d0

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_40

    .line 856
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v37, v0

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0x400

    move/from16 v37, v0

    if-eqz v37, :cond_3f

    const/16 v20, 0x1

    .line 857
    :goto_15
    if-nez p1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Landroid/view/WindowManagerPolicy;->isForceHideByNightClock()Z

    move-result v37

    if-eqz v37, :cond_13

    .line 858
    const/16 v20, 0x0

    goto/16 :goto_d

    .line 856
    :cond_3f
    const/16 v20, 0x0

    goto :goto_15

    .line 860
    :cond_40
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v37, v0

    const/16 v38, 0x832

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_13

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mHideBySViewCover:Z

    move/from16 v37, v0

    if-nez v37, :cond_13

    .line 861
    if-eqz v20, :cond_41

    .line 862
    const/16 v37, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->showLw(Z)Z

    .line 863
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_13

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/WindowState;

    .line 864
    .local v14, "cw":Lcom/android/server/wm/WindowState;
    const/16 v37, 0x1

    move/from16 v0, v37

    invoke-virtual {v14, v0}, Lcom/android/server/wm/WindowState;->showLw(Z)Z

    goto :goto_16

    .line 867
    .end local v14    # "cw":Lcom/android/server/wm/WindowState;
    .end local v19    # "i$":Ljava/util/Iterator;
    :cond_41
    const/16 v37, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    .line 868
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_13

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/WindowState;

    .line 869
    .restart local v14    # "cw":Lcom/android/server/wm/WindowState;
    const/16 v37, 0x1

    move/from16 v0, v37

    invoke-virtual {v14, v0}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    goto :goto_17

    .line 879
    .end local v7    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v10    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v11    # "canBeForceHidden":Z
    .end local v14    # "cw":Lcom/android/server/wm/WindowState;
    .end local v17    # "flags":I
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v24    # "shouldBeForceHidden":Z
    .end local v34    # "win":Lcom/android/server/wm/WindowState;
    .end local v35    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_42
    if-eqz v28, :cond_4a

    .line 880
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayDisableWindowAnimations:Z

    move/from16 v37, v0

    if-nez v37, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mKeyguardWaitingForActivityDrawn:Z

    move/from16 v37, v0

    if-nez v37, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    move/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_47

    .line 884
    const/16 v16, 0x1

    .line 885
    .local v16, "first":Z
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v37

    add-int/lit8 v18, v37, -0x1

    :goto_18
    if-ltz v18, :cond_48

    .line 886
    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/wm/WindowStateAnimator;

    .line 887
    .restart local v35    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v38, v0

    if-eqz v31, :cond_45

    if-nez v27, :cond_45

    const/16 v37, 0x1

    :goto_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayToNotificationShade:Z

    move/from16 v39, v0

    move-object/from16 v0, v38

    move/from16 v1, v37

    move/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;

    move-result-object v4

    .line 890
    .restart local v4    # "a":Landroid/view/animation/Animation;
    if-eqz v4, :cond_46

    invoke-virtual {v4}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v38

    const-wide/16 v40, 0x0

    cmp-long v37, v38, v40

    if-eqz v37, :cond_46

    .line 891
    sget-boolean v37, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-eqz v37, :cond_43

    const-string v37, "WindowAnimator"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Starting keyguard exit animation on window "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_43
    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    .line 894
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    .line 895
    if-eqz v16, :cond_44

    .line 896
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v38, v0

    invoke-virtual/range {v37 .. v39}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 898
    const/16 v16, 0x0

    .line 885
    :cond_44
    :goto_1a
    add-int/lit8 v18, v18, -0x1

    goto :goto_18

    .line 887
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_45
    const/16 v37, 0x0

    goto :goto_19

    .line 901
    .restart local v4    # "a":Landroid/view/animation/Animation;
    :cond_46
    if-eqz v16, :cond_44

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    move/from16 v37, v0

    if-eqz v37, :cond_44

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v37, v0

    const-wide/16 v38, 0x0

    const-wide/16 v40, 0x0

    invoke-interface/range {v37 .. v41}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    .line 903
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    .line 904
    const/16 v16, 0x0

    goto :goto_1a

    .line 908
    .end local v4    # "a":Landroid/view/animation/Animation;
    .end local v16    # "first":Z
    .end local v35    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_47
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    move/from16 v37, v0

    if-eqz v37, :cond_48

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x0

    invoke-interface/range {v37 .. v41}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    .line 910
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    .line 915
    :cond_48
    if-nez v31, :cond_4a

    if-eqz v30, :cond_4a

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    move/from16 v37, v0

    if-eqz v37, :cond_4a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayDisableWindowAnimations:Z

    move/from16 v37, v0

    if-nez v37, :cond_4a

    .line 918
    sget-boolean v37, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-eqz v37, :cond_49

    const-string v37, "WindowAnimator"

    const-string/jumbo v38, "updateWindowsLocked: wallpaper animating away"

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayToNotificationShade:Z

    move/from16 v38, v0

    invoke-interface/range {v37 .. v38}, Landroid/view/WindowManagerPolicy;->createForceHideWallpaperExitAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v4

    .line 921
    .restart local v4    # "a":Landroid/view/animation/Animation;
    if-eqz v4, :cond_4a

    .line 922
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    .line 927
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v37, v0

    if-eqz v37, :cond_4b

    .line 929
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    move/from16 v37, v0

    if-eqz v37, :cond_4c

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v40

    add-long v38, v38, v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v40

    invoke-interface/range {v37 .. v41}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    .line 933
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    .line 946
    :cond_4b
    :goto_1b
    return-void

    .line 938
    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v37

    if-nez v37, :cond_4d

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v40

    sub-long v38, v38, v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v40

    cmp-long v37, v38, v40

    if-lez v37, :cond_4b

    .line 942
    :cond_4d
    sget-boolean v37, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-eqz v37, :cond_4e

    const-string v37, "WindowAnimator"

    const-string v38, "Done with Keyguard exit animations."

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_4e
    const/16 v37, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    goto :goto_1b
.end method


# virtual methods
.method addDisplayLocked(I)V
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 195
    if-nez p1, :cond_0

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    .line 198
    :cond_0
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .prologue
    .line 1424
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1425
    .local v4, "subPrefix":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1427
    .local v5, "subSubPrefix":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 1428
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "DisplayContentsAnimator #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1429
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 1430
    const-string v8, ":"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1431
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 1432
    .local v1, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v7

    .line 1434
    .local v7, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1435
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 1436
    invoke-virtual {v7, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    iget-object v6, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1437
    .local v6, "wanim":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "Window #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1438
    const-string v8, ": "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1435
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1440
    .end local v6    # "wanim":Lcom/android/server/wm/WindowStateAnimator;
    :cond_0
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v8, :cond_2

    .line 1441
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "mScreenRotationAnimation:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1442
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v8, v5, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1446
    :cond_1
    :goto_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1427
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1443
    :cond_2
    if-eqz p3, :cond_1

    .line 1444
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "no ScreenRotationAnimation "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1449
    .end local v0    # "N":I
    .end local v1    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v3    # "j":I
    .end local v7    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1451
    if-eqz p3, :cond_4

    .line 1452
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "mAnimTransactionSequence="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1453
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 1454
    const-string v8, " mForceHiding="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->forceHidingToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1455
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "mCurrentTime="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1456
    iget-wide v8, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-static {v8, v9}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1458
    :cond_4
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    if-eqz v8, :cond_5

    .line 1459
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "mBulkUpdateParams=0x"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1460
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1461
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v8}, Lcom/android/server/wm/WindowAnimator;->bulkUpdateParamsToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1463
    :cond_5
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_6

    .line 1464
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "mWindowDetachedWallpaper="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1465
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1475
    :cond_6
    return-void
.end method

.method getDualScreenTransitionLocked()Lcom/android/server/wm/DualScreenTransition;
    .locals 1

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDualScreenTransition:Lcom/android/server/wm/DualScreenTransition;

    return-object v0
.end method

.method getMultiWindowTransitionLocked(I)Lcom/android/server/wm/MultiWindowTransition;
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 1538
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mMultiWindowTransition:Lcom/android/server/wm/MultiWindowTransition;

    return-object v0
.end method

.method getPendingLayoutChanges(I)I
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1478
    if-gez p1, :cond_1

    .line 1482
    :cond_0
    :goto_0
    return v1

    .line 1481
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1482
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    goto :goto_0
.end method

.method getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;
    .locals 2

    .prologue
    .line 289
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-nez v1, :cond_0

    .line 290
    const-string/jumbo v1, "persona"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 291
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PersonaManagerService;

    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 293
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    return-object v1
.end method

.method getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 1525
    if-gez p1, :cond_0

    .line 1526
    const/4 v0, 0x0

    .line 1528
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    goto :goto_0
.end method

.method removeDisplayLocked(I)V
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 210
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 211
    .local v0, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-eqz v0, :cond_0

    .line 212
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 214
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 230
    return-void
.end method

.method removeMultiWindowTransitionLocked(I)V
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 1542
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mMultiWindowTransition:Lcom/android/server/wm/MultiWindowTransition;

    if-eqz v0, :cond_0

    .line 1543
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mMultiWindowTransition:Lcom/android/server/wm/MultiWindowTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowTransition;->clearMultiWindowTransitionAnimation()V

    .line 1544
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mMultiWindowTransition:Lcom/android/server/wm/MultiWindowTransition;

    .line 1546
    :cond_0
    return-void
.end method

.method setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V
    .locals 5
    .param p1, "appAnimator"    # Lcom/android/server/wm/AppWindowAnimator;
    .param p2, "changes"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "displayId"    # I

    .prologue
    .line 1497
    iget-object v2, p1, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v2, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 1498
    .local v1, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1499
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    if-ne p4, v2, :cond_1

    .line 1500
    invoke-virtual {p0, p4, p2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 1502
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "d["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p4}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 1507
    :cond_0
    return-void

    .line 1498
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method setDualScreenTransitionLocked(Lcom/android/server/wm/DualScreenTransition;)V
    .locals 0
    .param p1, "transit"    # Lcom/android/server/wm/DualScreenTransition;

    .prologue
    .line 1558
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mDualScreenTransition:Lcom/android/server/wm/DualScreenTransition;

    .line 1559
    return-void
.end method

.method setMultiWindowTransitionLocked(ILcom/android/server/wm/MultiWindowTransition;)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "animation"    # Lcom/android/server/wm/MultiWindowTransition;

    .prologue
    .line 1535
    return-void
.end method

.method setPendingLayoutChanges(II)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "changes"    # I

    .prologue
    .line 1486
    if-gez p1, :cond_1

    .line 1493
    :cond_0
    :goto_0
    return-void

    .line 1489
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1490
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    .line 1491
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v1, p2

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    goto :goto_0
.end method

.method setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "animation"    # Lcom/android/server/wm/ScreenRotationAnimation;

    .prologue
    .line 1519
    if-ltz p1, :cond_0

    .line 1520
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iput-object p2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 1522
    :cond_0
    return-void
.end method

.class public interface abstract Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
.super Ljava/lang/Object;
.source "WindowManagerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManagerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WindowManagerFuncs"
.end annotation


# static fields
.field public static final CAMERA_LENS_COVERED:I = 0x1

.field public static final CAMERA_LENS_COVER_ABSENT:I = -0x1

.field public static final CAMERA_LENS_UNCOVERED:I = 0x0

.field public static final LID_ABSENT:I = -0x1

.field public static final LID_CLOSED:I = 0x0

.field public static final LID_OPEN:I = 0x1

.field public static final PEN_ABSENT:I = -0x1

.field public static final PEN_ATTACHED:I = 0x1

.field public static final PEN_DETACHED:I


# virtual methods
.method public abstract addInputConsumer(Landroid/os/Looper;Landroid/view/InputEventReceiver$Factory;)Landroid/view/WindowManagerPolicy$InputConsumer;
.end method

.method public abstract addInputConsumer(Landroid/os/Looper;Landroid/view/InputEventReceiver$Factory;I)Landroid/view/WindowManagerPolicy$InputConsumer;
.end method

.method public abstract canGlobalActionsShow()Z
.end method

.method public abstract cancelDragForcelyWhenScreenTurnOff(Z)V
.end method

.method public abstract getCameraLensCoverState()I
.end method

.method public abstract getLidState()I
.end method

.method public abstract getPenState()I
.end method

.method public abstract getWindowManagerLock()Ljava/lang/Object;
.end method

.method public abstract monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;
.end method

.method public abstract multiwindowSettingChanged(Z)V
.end method

.method public abstract notifySystemUiVisibility(I)V
.end method

.method public abstract reboot(Z)V
.end method

.method public abstract rebootSafeMode(Z)V
.end method

.method public abstract reevaluateStatusBarVisibility()V
.end method

.method public abstract reevaluateStatusBarVisibility(I)V
.end method

.method public abstract registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V
.end method

.method public abstract removeAppBackWindow()Z
.end method

.method public abstract shutdown(Z)V
.end method

.method public abstract switchKeyboardLayout(II)V
.end method

.method public abstract unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V
.end method

.method public abstract updateMinimizeIcon()V
.end method

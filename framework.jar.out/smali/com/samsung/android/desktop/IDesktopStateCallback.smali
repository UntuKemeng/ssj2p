.class public interface abstract Lcom/samsung/android/desktop/IDesktopStateCallback;
.super Ljava/lang/Object;
.source "IDesktopStateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktop/IDesktopStateCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDesktopDockState(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDesktopModeState(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

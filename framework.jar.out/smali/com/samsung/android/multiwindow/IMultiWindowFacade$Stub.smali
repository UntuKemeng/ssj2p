.class public abstract Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;
.super Landroid/os/Binder;
.source "IMultiWindowFacade.java"

# interfaces
.implements Lcom/samsung/android/multiwindow/IMultiWindowFacade;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/IMultiWindowFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.multiwindow.IMultiWindowFacade"

.field static final TRANSACTION_addTab:I = 0x24

.field static final TRANSACTION_appMinimizingStarted:I = 0x2e

.field static final TRANSACTION_changeTaskToCascade:I = 0x16

.field static final TRANSACTION_changeTaskToFull:I = 0x15

.field static final TRANSACTION_closeMultiWindowPanel:I = 0x3b

.field static final TRANSACTION_exchangeTopTaskToZone:I = 0xc

.field static final TRANSACTION_exitByCloseBtn:I = 0xe

.field static final TRANSACTION_finishAllTasks:I = 0x2c

.field static final TRANSACTION_forceHideFocusedStackFrame:I = 0x43

.field static final TRANSACTION_getArrangeState:I = 0xf

.field static final TRANSACTION_getAvailableMultiInstanceCnt:I = 0x18

.field static final TRANSACTION_getCenterBarPoint:I = 0x3

.field static final TRANSACTION_getCurrentOrientation:I = 0x33

.field static final TRANSACTION_getDragAndDropModeOfStack:I = 0x31

.field static final TRANSACTION_getEnabledFeaturesFlags:I = 0x37

.field static final TRANSACTION_getExpectedOrientation:I = 0xa

.field static final TRANSACTION_getFocusedStackLayer:I = 0x10

.field static final TRANSACTION_getFocusedZone:I = 0x11

.field static final TRANSACTION_getFrontActivityMultiWindowStyle:I = 0xb

.field static final TRANSACTION_getGlobalSystemUiVisibility:I = 0x14

.field static final TRANSACTION_getMultiWindowAppList:I = 0x3f

.field static final TRANSACTION_getMultiWindowStyle:I = 0x6

.field static final TRANSACTION_getPreferenceThroughSystemProcess:I = 0x39

.field static final TRANSACTION_getRecentTaskSize:I = 0x2d

.field static final TRANSACTION_getRunningPenWindowCnt:I = 0x3c

.field static final TRANSACTION_getRunningScaleWindows:I = 0x32

.field static final TRANSACTION_getRunningTasks:I = 0xd

.field static final TRANSACTION_getSplitMaxWeight:I = 0x1f

.field static final TRANSACTION_getSplitMinWeight:I = 0x1e

.field static final TRANSACTION_getStackBound:I = 0x8

.field static final TRANSACTION_getStackId:I = 0x28

.field static final TRANSACTION_getStackOriginalBound:I = 0x9

.field static final TRANSACTION_getStackPosition:I = 0x22

.field static final TRANSACTION_getSystemDisplayInfo:I = 0x40

.field static final TRANSACTION_getTabs:I = 0x26

.field static final TRANSACTION_getZoneBounds:I = 0x12

.field static final TRANSACTION_isEnableMakePenWindow:I = 0x20

.field static final TRANSACTION_isKnoxDesktopMode:I = 0x46

.field static final TRANSACTION_isPenWindowableOnly:I = 0x21

.field static final TRANSACTION_isRotatingCascade:I = 0x44

.field static final TRANSACTION_isSplitSupportedForTask:I = 0x3d

.field static final TRANSACTION_minimizeTask:I = 0x17

.field static final TRANSACTION_minimizeWindow:I = 0x1

.field static final TRANSACTION_moveAllTasksToBack:I = 0x45

.field static final TRANSACTION_moveOnlySpecificTaskToFront:I = 0x1c

.field static final TRANSACTION_needHideTrayBar:I = 0x3e

.field static final TRANSACTION_needMoveOnlySpecificTaskToFront:I = 0x1b

.field static final TRANSACTION_needToExposureTitleBarMenu:I = 0x2f

.field static final TRANSACTION_registerMultiWindowStyleChangedCallback:I = 0x41

.field static final TRANSACTION_registerTaskController:I = 0x34

.field static final TRANSACTION_registerTaskControllerWithType:I = 0x35

.field static final TRANSACTION_removeAllTasks:I = 0x2b

.field static final TRANSACTION_removeTab:I = 0x25

.field static final TRANSACTION_setAppVisibility:I = 0x2a

.field static final TRANSACTION_setCenterBarPoint:I = 0x2

.field static final TRANSACTION_setDragAndDropModeOfStack:I = 0x30

.field static final TRANSACTION_setFocusAppByZone:I = 0x19

.field static final TRANSACTION_setFocusedStack:I = 0x27

.field static final TRANSACTION_setMultiWindowStyle:I = 0x4

.field static final TRANSACTION_setMultiWindowStyleWithLogging:I = 0x5

.field static final TRANSACTION_setMultiWindowTrayOpenState:I = 0x13

.field static final TRANSACTION_setStackBound:I = 0x7

.field static final TRANSACTION_setStackBoundByStackId:I = 0x29

.field static final TRANSACTION_startActivityFromRecentMultiWindow:I = 0x1d

.field static final TRANSACTION_unregisterMultiWindowStyleChangedCallback:I = 0x42

.field static final TRANSACTION_unregisterTaskController:I = 0x36

.field static final TRANSACTION_updateIsolatedCenterPoint:I = 0x1a

.field static final TRANSACTION_updateMinimizeSize:I = 0x23

.field static final TRANSACTION_updateMultiWindowSetting:I = 0x3a

.field static final TRANSACTION_updatePreferenceThroughSystemProcess:I = 0x38


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowFacade;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 854
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 46
    :sswitch_0
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->minimizeWindow(Landroid/os/IBinder;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 60
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_2
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 65
    sget-object v6, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 70
    .local v1, "_arg1":Landroid/graphics/Point;
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->setCenterBarPoint(ILandroid/graphics/Point;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 68
    .end local v1    # "_arg1":Landroid/graphics/Point;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/graphics/Point;
    goto :goto_1

    .line 76
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Point;
    :sswitch_3
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v4

    .line 80
    .local v4, "_result":Landroid/graphics/Point;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v4, :cond_1

    .line 82
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    invoke-virtual {v4, p3, v7}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 92
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Landroid/graphics/Point;
    :sswitch_4
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 96
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    .line 97
    sget-object v6, Lcom/samsung/android/multiwindow/MultiWindowStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 102
    .local v1, "_arg1":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 100
    .end local v1    # "_arg1":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    goto :goto_2

    .line 108
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :sswitch_5
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 112
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    .line 113
    sget-object v6, Lcom/samsung/android/multiwindow/MultiWindowStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 119
    .restart local v1    # "_arg1":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 120
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->setMultiWindowStyleWithLogging(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 116
    .end local v1    # "_arg1":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v2    # "_arg2":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    goto :goto_3

    .line 126
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :sswitch_6
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 129
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    .line 130
    .local v4, "_result":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v4, :cond_4

    .line 132
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    invoke-virtual {v4, p3, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 136
    :cond_4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 142
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :sswitch_7
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 146
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    .line 147
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 152
    .local v1, "_arg1":Landroid/graphics/Rect;
    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 150
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/graphics/Rect;
    goto :goto_4

    .line 158
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    :sswitch_8
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 161
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v4

    .line 162
    .local v4, "_result":Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    if-eqz v4, :cond_6

    .line 164
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    invoke-virtual {v4, p3, v7}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 168
    :cond_6
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 174
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Landroid/graphics/Rect;
    :sswitch_9
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 177
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v4

    .line 178
    .restart local v4    # "_result":Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v4, :cond_7

    .line 180
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    invoke-virtual {v4, p3, v7}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 184
    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 190
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Landroid/graphics/Rect;
    :sswitch_a
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getExpectedOrientation()I

    move-result v4

    .line 192
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 198
    .end local v4    # "_result":I
    :sswitch_b
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 201
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    .line 202
    .local v4, "_result":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    if-eqz v4, :cond_8

    .line 204
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    invoke-virtual {v4, p3, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 208
    :cond_8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 214
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :sswitch_c
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 218
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 219
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->exchangeTopTaskToZone(II)Z

    move-result v4

    .line 220
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    if-eqz v4, :cond_9

    move v6, v7

    :cond_9
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 226
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_d
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 230
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 231
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getRunningTasks(II)Ljava/util/List;

    move-result-object v4

    .line 232
    .local v4, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 238
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Ljava/util/List;
    :sswitch_e
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 241
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->exitByCloseBtn(I)V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 247
    .end local v0    # "_arg0":I
    :sswitch_f
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getArrangeState()I

    move-result v4

    .line 249
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 255
    .end local v4    # "_result":I
    :sswitch_10
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getFocusedStackLayer()I

    move-result v4

    .line 257
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 263
    .end local v4    # "_result":I
    :sswitch_11
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getFocusedZone()I

    move-result v4

    .line 265
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 271
    .end local v4    # "_result":I
    :sswitch_12
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 274
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getZoneBounds(I)Landroid/graphics/Rect;

    move-result-object v4

    .line 275
    .local v4, "_result":Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    if-eqz v4, :cond_a

    .line 277
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    invoke-virtual {v4, p3, v7}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 281
    :cond_a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 287
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Landroid/graphics/Rect;
    :sswitch_13
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_b

    move v0, v7

    .line 290
    .local v0, "_arg0":Z
    :goto_5
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->setMultiWindowTrayOpenState(Z)V

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_b
    move v0, v6

    .line 289
    goto :goto_5

    .line 296
    :sswitch_14
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getGlobalSystemUiVisibility()I

    move-result v4

    .line 298
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 304
    .end local v4    # "_result":I
    :sswitch_15
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 307
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->changeTaskToFull(I)V

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 313
    .end local v0    # "_arg0":I
    :sswitch_16
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_d

    .line 316
    sget-object v8, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 322
    .local v0, "_arg0":Landroid/graphics/Point;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 324
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_e

    move v2, v7

    .line 325
    .local v2, "_arg2":Z
    :goto_7
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->changeTaskToCascade(Landroid/graphics/Point;IZ)Z

    move-result v4

    .line 326
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    if-eqz v4, :cond_c

    move v6, v7

    :cond_c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 319
    .end local v0    # "_arg0":Landroid/graphics/Point;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    .end local v4    # "_result":Z
    :cond_d
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/graphics/Point;
    goto :goto_6

    .restart local v1    # "_arg1":I
    :cond_e
    move v2, v6

    .line 324
    goto :goto_7

    .line 332
    .end local v0    # "_arg0":Landroid/graphics/Point;
    .end local v1    # "_arg1":I
    :sswitch_17
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 336
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_10

    .line 337
    sget-object v8, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 343
    .local v1, "_arg1":Landroid/graphics/Point;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_11

    move v2, v7

    .line 344
    .restart local v2    # "_arg2":Z
    :goto_9
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->minimizeTask(ILandroid/graphics/Point;Z)Z

    move-result v4

    .line 345
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    if-eqz v4, :cond_f

    move v6, v7

    :cond_f
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 340
    .end local v1    # "_arg1":Landroid/graphics/Point;
    .end local v2    # "_arg2":Z
    .end local v4    # "_result":Z
    :cond_10
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/graphics/Point;
    goto :goto_8

    :cond_11
    move v2, v6

    .line 343
    goto :goto_9

    .line 351
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Point;
    :sswitch_18
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getAvailableMultiInstanceCnt()I

    move-result v4

    .line 353
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 359
    .end local v4    # "_result":I
    :sswitch_19
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 362
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->setFocusAppByZone(I)V

    .line 363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 368
    .end local v0    # "_arg0":I
    :sswitch_1a
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    .line 371
    sget-object v6, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 376
    .local v0, "_arg0":Landroid/graphics/Point;
    :goto_a
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->updateIsolatedCenterPoint(Landroid/graphics/Point;)V

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 374
    .end local v0    # "_arg0":Landroid/graphics/Point;
    :cond_12
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/graphics/Point;
    goto :goto_a

    .line 382
    .end local v0    # "_arg0":Landroid/graphics/Point;
    :sswitch_1b
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 385
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->needMoveOnlySpecificTaskToFront(I)Z

    move-result v4

    .line 386
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    if-eqz v4, :cond_13

    move v6, v7

    :cond_13
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 392
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_1c
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 396
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_14

    .line 397
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 403
    .local v1, "_arg1":Landroid/os/Bundle;
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 405
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_15

    .line 406
    sget-object v6, Lcom/samsung/android/multiwindow/MultiWindowStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 411
    .local v3, "_arg3":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_c
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->moveOnlySpecificTaskToFront(ILandroid/os/Bundle;ILcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 400
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_14
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_b

    .line 409
    .restart local v2    # "_arg2":I
    :cond_15
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    goto :goto_c

    .line 417
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :sswitch_1d
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 421
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_16

    .line 422
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 428
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_17

    .line 429
    sget-object v6, Lcom/samsung/android/multiwindow/MultiWindowStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 434
    .local v2, "_arg2":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_e
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->startActivityFromRecentMultiWindow(ILandroid/os/Bundle;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 425
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_16
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_d

    .line 432
    :cond_17
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    goto :goto_e

    .line 440
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :sswitch_1e
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getSplitMinWeight()F

    move-result v4

    .line 442
    .local v4, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    .line 448
    .end local v4    # "_result":F
    :sswitch_1f
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getSplitMaxWeight()F

    move-result v4

    .line 450
    .restart local v4    # "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    .line 456
    .end local v4    # "_result":F
    :sswitch_20
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 459
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->isEnableMakePenWindow(I)Z

    move-result v4

    .line 460
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    if-eqz v4, :cond_18

    move v6, v7

    :cond_18
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 466
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_21
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 469
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->isPenWindowableOnly(Landroid/os/IBinder;)Z

    move-result v4

    .line 470
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    if-eqz v4, :cond_19

    move v6, v7

    :cond_19
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 476
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :sswitch_22
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 479
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getStackPosition(Landroid/os/IBinder;)Landroid/graphics/Point;

    move-result-object v4

    .line 480
    .local v4, "_result":Landroid/graphics/Point;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    if-eqz v4, :cond_1a

    .line 482
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    invoke-virtual {v4, p3, v7}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 486
    :cond_1a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 492
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Landroid/graphics/Point;
    :sswitch_23
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 496
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 497
    .local v1, "_arg1":[I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->updateMinimizeSize(Landroid/os/IBinder;[I)V

    .line 498
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 503
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":[I
    :sswitch_24
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 506
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->addTab(Landroid/os/IBinder;)V

    .line 507
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 512
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_25
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 515
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->removeTab(I)Z

    move-result v4

    .line 516
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    if-eqz v4, :cond_1b

    move v6, v7

    :cond_1b
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 522
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_26
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getTabs()Ljava/util/List;

    move-result-object v4

    .line 524
    .local v4, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 530
    .end local v4    # "_result":Ljava/util/List;
    :sswitch_27
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 534
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1c

    move v1, v7

    .line 535
    .local v1, "_arg1":Z
    :goto_f
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->setFocusedStack(IZ)V

    .line 536
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    :cond_1c
    move v1, v6

    .line 534
    goto :goto_f

    .line 541
    .end local v0    # "_arg0":I
    :sswitch_28
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 544
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getStackId(Landroid/os/IBinder;)I

    move-result v4

    .line 545
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 551
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":I
    :sswitch_29
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 555
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1d

    .line 556
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 561
    .local v1, "_arg1":Landroid/graphics/Rect;
    :goto_10
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->setStackBoundByStackId(ILandroid/graphics/Rect;)V

    .line 562
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 559
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    :cond_1d
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/graphics/Rect;
    goto :goto_10

    .line 567
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    :sswitch_2a
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 571
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1e

    move v1, v7

    .line 572
    .local v1, "_arg1":Z
    :goto_11
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 573
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    :cond_1e
    move v1, v6

    .line 571
    goto :goto_11

    .line 578
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_2b
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 582
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 584
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1f

    move v2, v7

    .line 585
    .local v2, "_arg2":Z
    :goto_12
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->removeAllTasks(Landroid/os/IBinder;IZ)V

    .line 586
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg2":Z
    :cond_1f
    move v2, v6

    .line 584
    goto :goto_12

    .line 591
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :sswitch_2c
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 595
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 596
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->finishAllTasks(Landroid/os/IBinder;I)V

    .line 597
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 602
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :sswitch_2d
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 606
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 607
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getRecentTaskSize(II)I

    move-result v4

    .line 608
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 614
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v4    # "_result":I
    :sswitch_2e
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 617
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->appMinimizingStarted(Landroid/os/IBinder;)V

    .line 618
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 623
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_2f
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->needToExposureTitleBarMenu()Z

    move-result v4

    .line 625
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    if-eqz v4, :cond_20

    move v6, v7

    :cond_20
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 631
    .end local v4    # "_result":Z
    :sswitch_30
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 635
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_21

    move v1, v7

    .line 636
    .local v1, "_arg1":Z
    :goto_13
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->setDragAndDropModeOfStack(Landroid/os/IBinder;Z)V

    .line 637
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    :cond_21
    move v1, v6

    .line 635
    goto :goto_13

    .line 642
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_31
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 645
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getDragAndDropModeOfStack(Landroid/os/IBinder;)Z

    move-result v4

    .line 646
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    if-eqz v4, :cond_22

    move v6, v7

    :cond_22
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 652
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :sswitch_32
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getRunningScaleWindows()Ljava/util/List;

    move-result-object v4

    .line 654
    .local v4, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 660
    .end local v4    # "_result":Ljava/util/List;
    :sswitch_33
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getCurrentOrientation()I

    move-result v4

    .line 662
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 668
    .end local v4    # "_result":I
    :sswitch_34
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 670
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/multiwindow/ITaskController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/ITaskController;

    move-result-object v0

    .line 671
    .local v0, "_arg0":Lcom/samsung/android/multiwindow/ITaskController;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->registerTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V

    .line 672
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 677
    .end local v0    # "_arg0":Lcom/samsung/android/multiwindow/ITaskController;
    :sswitch_35
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 679
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/multiwindow/ITaskController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/ITaskController;

    move-result-object v0

    .line 681
    .restart local v0    # "_arg0":Lcom/samsung/android/multiwindow/ITaskController;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 682
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->registerTaskControllerWithType(Lcom/samsung/android/multiwindow/ITaskController;I)V

    .line 683
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 688
    .end local v0    # "_arg0":Lcom/samsung/android/multiwindow/ITaskController;
    .end local v1    # "_arg1":I
    :sswitch_36
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/multiwindow/ITaskController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/ITaskController;

    move-result-object v0

    .line 691
    .restart local v0    # "_arg0":Lcom/samsung/android/multiwindow/ITaskController;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->unregisterTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V

    .line 692
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 697
    .end local v0    # "_arg0":Lcom/samsung/android/multiwindow/ITaskController;
    :sswitch_37
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getEnabledFeaturesFlags()J

    move-result-wide v4

    .line 699
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 705
    .end local v4    # "_result":J
    :sswitch_38
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 709
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 710
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->updatePreferenceThroughSystemProcess(Ljava/lang/String;I)V

    .line 711
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 716
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_39
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 719
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getPreferenceThroughSystemProcess(Ljava/lang/String;)I

    move-result v4

    .line 720
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 726
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_3a
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 730
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 732
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_23

    move v2, v7

    .line 733
    .restart local v2    # "_arg2":Z
    :goto_14
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->updateMultiWindowSetting(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 734
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg2":Z
    :cond_23
    move v2, v6

    .line 732
    goto :goto_14

    .line 739
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_3b
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_25

    move v0, v7

    .line 742
    .local v0, "_arg0":Z
    :goto_15
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->closeMultiWindowPanel(Z)Z

    move-result v4

    .line 743
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    if-eqz v4, :cond_24

    move v6, v7

    :cond_24
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_25
    move v0, v6

    .line 741
    goto :goto_15

    .line 749
    :sswitch_3c
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getRunningPenWindowCnt()I

    move-result v4

    .line 751
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 757
    .end local v4    # "_result":I
    :sswitch_3d
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 759
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 760
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->isSplitSupportedForTask(Landroid/os/IBinder;)Z

    move-result v4

    .line 761
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    if-eqz v4, :cond_26

    move v6, v7

    :cond_26
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 767
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :sswitch_3e
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->needHideTrayBar()Z

    move-result v4

    .line 769
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    if-eqz v4, :cond_27

    move v6, v7

    :cond_27
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 775
    .end local v4    # "_result":Z
    :sswitch_3f
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 776
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getMultiWindowAppList()Ljava/util/List;

    move-result-object v4

    .line 777
    .local v4, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 783
    .end local v4    # "_result":Ljava/util/List;
    :sswitch_40
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    .line 785
    .local v4, "_result":Landroid/view/DisplayInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    if-eqz v4, :cond_28

    .line 787
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    invoke-virtual {v4, p3, v7}, Landroid/view/DisplayInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 791
    :cond_28
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 797
    .end local v4    # "_result":Landroid/view/DisplayInfo;
    :sswitch_41
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;

    move-result-object v0

    .line 800
    .local v0, "_arg0":Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->registerMultiWindowStyleChangedCallback(Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;)V

    .line 801
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 806
    .end local v0    # "_arg0":Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;
    :sswitch_42
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;

    move-result-object v0

    .line 809
    .restart local v0    # "_arg0":Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->unregisterMultiWindowStyleChangedCallback(Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;)V

    .line 810
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 815
    .end local v0    # "_arg0":Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;
    :sswitch_43
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 817
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_29

    move v0, v7

    .line 818
    .local v0, "_arg0":Z
    :goto_16
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->forceHideFocusedStackFrame(Z)V

    .line 819
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_29
    move v0, v6

    .line 817
    goto :goto_16

    .line 824
    :sswitch_44
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 826
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 827
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->isRotatingCascade(I)Z

    move-result v4

    .line 828
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 829
    if-eqz v4, :cond_2a

    move v6, v7

    :cond_2a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 834
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_45
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 836
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 838
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 840
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 841
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->moveAllTasksToBack(Landroid/os/IBinder;ILjava/lang/String;)V

    .line 842
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 847
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :sswitch_46
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 848
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->isKnoxDesktopMode()Z

    move-result v4

    .line 849
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 850
    if-eqz v4, :cond_2b

    move v6, v7

    :cond_2b
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

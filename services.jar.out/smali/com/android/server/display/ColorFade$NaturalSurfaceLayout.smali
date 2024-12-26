.class final Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;
.super Ljava/lang/Object;
.source "ColorFade.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ColorFade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NaturalSurfaceLayout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/ColorFade$NaturalSurfaceLayout$OnResolutionChangedCb;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout$OnResolutionChangedCb;

.field public mDisplayHeight:I

.field private final mDisplayId:I

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public mDisplayWidth:I

.field private mResized:Z

.field private mSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManagerInternal;ILandroid/view/SurfaceControl;)V
    .locals 3
    .param p1, "displayManagerInternal"    # Landroid/hardware/display/DisplayManagerInternal;
    .param p2, "displayId"    # I
    .param p3, "surfaceControl"    # Landroid/view/SurfaceControl;

    .prologue
    .line 1283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1284
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mCallback:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout$OnResolutionChangedCb;

    .line 1285
    iput-object p1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 1286
    iput p2, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayId:I

    .line 1287
    iput-object p3, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1288
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v1, p0}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    .line 1289
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mResized:Z

    .line 1290
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v2, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayId:I

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1291
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v1

    iput v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayWidth:I

    .line 1292
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v1

    iput v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayHeight:I

    .line 1293
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 1296
    monitor-enter p0

    .line 1297
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1298
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1299
    iget-object v0, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->unregisterDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    .line 1300
    return-void

    .line 1298
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDisplayTransaction()V
    .locals 8

    .prologue
    .line 1304
    monitor-enter p0

    .line 1305
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v3, :cond_0

    .line 1306
    monitor-exit p0

    .line 1355
    :goto_0
    return-void

    .line 1309
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v4, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayId:I

    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    .line 1310
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    iget v3, v2, Landroid/view/DisplayInfo;->rotation:I

    packed-switch v3, :pswitch_data_0

    .line 1330
    :goto_1
    iget-boolean v3, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mResized:Z

    if-eqz v3, :cond_1

    .line 1331
    iget-object v3, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mCallback:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout$OnResolutionChangedCb;

    if-eqz v3, :cond_1

    .line 1332
    iget-object v3, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mCallback:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout$OnResolutionChangedCb;

    invoke-interface {v3}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout$OnResolutionChangedCb;->onResolutionChanged()V

    .line 1333
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mResized:Z

    .line 1337
    :cond_1
    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v1

    .line 1339
    .local v1, "currentWidth":I
    iget v3, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayWidth:I

    if-eq v3, v1, :cond_2

    .line 1340
    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v0

    .line 1342
    .local v0, "currentHeight":I
    iput v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayWidth:I

    .line 1343
    iput v0, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayHeight:I

    .line 1345
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1347
    :try_start_1
    iget-object v3, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v4, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayWidth:I

    iget v5, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayHeight:I

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl;->setSize(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1349
    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1352
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mResized:Z

    .line 1354
    .end local v0    # "currentHeight":I
    :cond_2
    monitor-exit p0

    goto :goto_0

    .end local v1    # "currentWidth":I
    .end local v2    # "displayInfo":Landroid/view/DisplayInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1312
    .restart local v2    # "displayInfo":Landroid/view/DisplayInfo;
    :pswitch_0
    :try_start_3
    iget-object v3, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 1313
    iget-object v3, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_1

    .line 1316
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v4, 0x0

    iget v5, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 1317
    iget-object v3, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_1

    .line 1320
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v4, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v4, v4

    iget v5, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 1322
    iget-object v3, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_1

    .line 1325
    :pswitch_3
    iget-object v3, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v4, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 1326
    iget-object v3, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_1

    .line 1349
    .restart local v0    # "currentHeight":I
    .restart local v1    # "currentWidth":I
    :catchall_1
    move-exception v3

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1310
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setOnResolutionChangedCb(Lcom/android/server/display/ColorFade$NaturalSurfaceLayout$OnResolutionChangedCb;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/server/display/ColorFade$NaturalSurfaceLayout$OnResolutionChangedCb;

    .prologue
    .line 1279
    iput-object p1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mCallback:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout$OnResolutionChangedCb;

    .line 1280
    return-void
.end method

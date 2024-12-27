.class Lcom/android/server/display/ColorFade$1;
.super Ljava/lang/Object;
.source "ColorFade.java"

# interfaces
.implements Lcom/android/server/display/ColorFade$NaturalSurfaceLayout$OnResolutionChangedCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ColorFade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ColorFade;


# direct methods
.method constructor <init>(Lcom/android/server/display/ColorFade;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResolutionChanged()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    iget-object v1, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    # getter for: Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;
    invoke-static {v1}, Lcom/android/server/display/ColorFade;->access$100(Lcom/android/server/display/ColorFade;)Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    move-result-object v1

    iget v1, v1, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayWidth:I

    # setter for: Lcom/android/server/display/ColorFade;->mDisplayWidth:I
    invoke-static {v0, v1}, Lcom/android/server/display/ColorFade;->access$002(Lcom/android/server/display/ColorFade;I)I

    iget-object v0, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    iget-object v1, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    # getter for: Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;
    invoke-static {v1}, Lcom/android/server/display/ColorFade;->access$100(Lcom/android/server/display/ColorFade;)Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    move-result-object v1

    iget v1, v1, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayHeight:I

    # setter for: Lcom/android/server/display/ColorFade;->mDisplayHeight:I
    invoke-static {v0, v1}, Lcom/android/server/display/ColorFade;->access$202(Lcom/android/server/display/ColorFade;I)I

    iget-object v0, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    # getter for: Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->access$300(Lcom/android/server/display/ColorFade;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    # getter for: Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->access$400(Lcom/android/server/display/ColorFade;)Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "ColorFade"

    const-string/jumbo v1, "onResolutionChanged(): mSurface or mSurfaceControl is null"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    # getter for: Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->access$300(Lcom/android/server/display/ColorFade;)Landroid/view/Surface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    # getter for: Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;
    invoke-static {v1}, Lcom/android/server/display/ColorFade;->access$400(Lcom/android/server/display/ColorFade;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    iget-object v0, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    # invokes: Lcom/android/server/display/ColorFade;->destroyEglSurface()V
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->access$500(Lcom/android/server/display/ColorFade;)V

    iget-object v0, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    # invokes: Lcom/android/server/display/ColorFade;->createEglSurface()Z
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->access$600(Lcom/android/server/display/ColorFade;)Z

    iget-object v0, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    # invokes: Lcom/android/server/display/ColorFade;->attachEglContext()Z
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->access$700(Lcom/android/server/display/ColorFade;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ColorFade"

    const-string/jumbo v1, "onResolutionChanged(): attachEglContext fail !!!"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    # getter for: Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->access$800(Lcom/android/server/display/ColorFade;)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    # getter for: Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;
    invoke-static {v1}, Lcom/android/server/display/ColorFade;->access$900(Lcom/android/server/display/ColorFade;)Landroid/opengl/EGLSurface;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    # invokes: Lcom/android/server/display/ColorFade;->detachEglContext()V
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->access$1000(Lcom/android/server/display/ColorFade;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    # invokes: Lcom/android/server/display/ColorFade;->detachEglContext()V
    invoke-static {v1}, Lcom/android/server/display/ColorFade;->access$1000(Lcom/android/server/display/ColorFade;)V

    throw v0
.end method

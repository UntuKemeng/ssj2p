.class Lcom/android/server/display/MagnifierSurfaceControl$Border$3;
.super Ljava/lang/Object;
.source "MagnifierSurfaceControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/MagnifierSurfaceControl$Border;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;


# direct methods
.method constructor <init>(Lcom/android/server/display/MagnifierSurfaceControl$Border;)V
    .locals 0

    .prologue
    .line 1031
    iput-object p1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$3;->this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1037
    const-string v1, "Magnifier.Border"

    const-string/jumbo v2, "onClick"

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .line 1039
    check-cast v0, Landroid/widget/ImageView;

    .line 1041
    .local v0, "mIv":Landroid/widget/ImageView;
    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewClose:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$2800()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1042
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$3;->this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->access$3400(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "finger_magnifier"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1057
    :cond_0
    return-void
.end method

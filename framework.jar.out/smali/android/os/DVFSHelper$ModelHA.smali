.class Landroid/os/DVFSHelper$ModelHA;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelHA"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 2285
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelHA;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 2286
    const v0, 0x124f80

    iput v0, p0, Landroid/os/DVFSHelper$ModelHA;->LIST_SCROLL_ARM_FREQ:I

    .line 2287
    const v0, 0x1b7740

    iput v0, p0, Landroid/os/DVFSHelper$ModelHA;->AMS_RESUME_ARM_FREQ:I

    .line 2288
    iput v1, p0, Landroid/os/DVFSHelper$ModelHA;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2289
    iput v1, p0, Landroid/os/DVFSHelper$ModelHA;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2290
    return-void
.end method

.class Landroid/os/DVFSHelper$ModelSantos10;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelSantos10"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 1

    .prologue
    const v0, 0x13d620

    .line 2265
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelSantos10;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 2266
    iput v0, p0, Landroid/os/DVFSHelper$ModelSantos10;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2267
    iput v0, p0, Landroid/os/DVFSHelper$ModelSantos10;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2268
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/DVFSHelper$ModelSantos10;->GROUP_PLAY_ARM_FREQ:I

    .line 2269
    return-void
.end method
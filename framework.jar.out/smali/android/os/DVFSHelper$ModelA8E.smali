.class Landroid/os/DVFSHelper$ModelA8E;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelA8E"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 1

    .prologue
    .line 2500
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelA8E;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 2501
    const v0, 0x186a00

    iput v0, p0, Landroid/os/DVFSHelper$ModelA8E;->AMS_RESUME_ARM_FREQ:I

    .line 2502
    const v0, 0xc3500

    iput v0, p0, Landroid/os/DVFSHelper$ModelA8E;->LIST_SCROLL_ARM_FREQ:I

    .line 2503
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/DVFSHelper$ModelA8E;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2504
    const v0, 0x124f80

    iput v0, p0, Landroid/os/DVFSHelper$ModelA8E;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2505
    const/16 v0, 0x64

    iput v0, p0, Landroid/os/DVFSHelper$ModelA8E;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    .line 2506
    const/16 v0, 0x3e8

    sput v0, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    .line 2507
    const v0, 0x9eb10

    iput v0, p0, Landroid/os/DVFSHelper$ModelA8E;->GROUP_PLAY_ARM_FREQ:I

    .line 2508
    const/16 v0, 0x1f4

    sput v0, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    .line 2509
    return-void
.end method

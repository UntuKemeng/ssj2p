.class Landroid/os/DVFSHelper$ModelJOON;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelJOON"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 2

    .prologue
    const v1, 0x1174c0

    .line 2571
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelJOON;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 2572
    const v0, 0x169d10

    iput v0, p0, Landroid/os/DVFSHelper$ModelJOON;->AMS_RESUME_ARM_FREQ:I

    .line 2573
    const/16 v0, 0x258

    sput v0, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    .line 2574
    const v0, 0x12f390

    iput v0, p0, Landroid/os/DVFSHelper$ModelJOON;->LIST_SCROLL_ARM_FREQ:I

    .line 2575
    iput v1, p0, Landroid/os/DVFSHelper$ModelJOON;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2576
    iput v1, p0, Landroid/os/DVFSHelper$ModelJOON;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2577
    const/16 v0, 0x5dc

    sput v0, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    .line 2578
    iput v1, p0, Landroid/os/DVFSHelper$ModelJOON;->DEVICE_WAKEUP_ARM_FREQ:I

    .line 2579
    return-void
.end method

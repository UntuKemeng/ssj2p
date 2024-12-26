.class Landroid/os/DVFSHelper$ModelMSM8992;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelMSM8992"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 4

    .prologue
    const v3, 0x130b00

    const/4 v2, 0x2

    const v1, 0x98580

    .line 2458
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelMSM8992;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 2459
    iput v1, p0, Landroid/os/DVFSHelper$ModelMSM8992;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2460
    iput v1, p0, Landroid/os/DVFSHelper$ModelMSM8992;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2461
    const v0, 0x75300

    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8992;->LIST_SCROLL_ARM_FREQ:I

    .line 2462
    iput v1, p0, Landroid/os/DVFSHelper$ModelMSM8992;->DEVICE_WAKEUP_ARM_FREQ:I

    .line 2463
    iput v3, p0, Landroid/os/DVFSHelper$ModelMSM8992;->AMS_RESUME_ARM_FREQ:I

    .line 2464
    iput v2, p0, Landroid/os/DVFSHelper$ModelMSM8992;->AMS_RESUME_CPU_CORE:I

    .line 2465
    const/16 v0, 0x3a3

    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8992;->AMS_RESUME_BUS_FREQ:I

    .line 2466
    const/16 v0, 0x258

    sput v0, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    .line 2467
    iput v1, p0, Landroid/os/DVFSHelper$ModelMSM8992;->ROTATION_ARM_FREQ:I

    .line 2468
    const/16 v0, 0x5dc

    sput v0, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    .line 2469
    iput v3, p0, Landroid/os/DVFSHelper$ModelMSM8992;->APP_LAUNCH_ARM_FREQ:I

    .line 2470
    iput v2, p0, Landroid/os/DVFSHelper$ModelMSM8992;->APP_LAUNCH_CPU_CORE:I

    .line 2471
    return-void
.end method

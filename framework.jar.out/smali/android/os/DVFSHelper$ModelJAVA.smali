.class Landroid/os/DVFSHelper$ModelJAVA;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelJAVA"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 2

    .prologue
    const v1, 0x1174c0

    .line 2559
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelJAVA;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 2560
    iput v1, p0, Landroid/os/DVFSHelper$ModelJAVA;->AMS_RESUME_ARM_FREQ:I

    .line 2561
    const/16 v0, 0x3e8

    sput v0, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    .line 2562
    const v0, 0xca648

    iput v0, p0, Landroid/os/DVFSHelper$ModelJAVA;->LIST_SCROLL_ARM_FREQ:I

    .line 2563
    iput v1, p0, Landroid/os/DVFSHelper$ModelJAVA;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2564
    const v0, 0x1506d0

    iput v0, p0, Landroid/os/DVFSHelper$ModelJAVA;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2565
    const/16 v0, 0x7d0

    sput v0, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    .line 2566
    iput v1, p0, Landroid/os/DVFSHelper$ModelJAVA;->DEVICE_WAKEUP_ARM_FREQ:I

    .line 2567
    return-void
.end method

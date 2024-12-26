.class Landroid/os/DVFSHelper$ModelSC9830I;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelSC9830I"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 5

    .prologue
    const v4, 0xdbba0

    const/4 v3, 0x0

    const v2, 0x149970

    const/4 v1, 0x4

    .line 2782
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelSC9830I;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 2783
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/os/DVFSHelper$ModelSC9830I;->GALLERY_TOUCH_BOOST_TIMEOUT:I

    .line 2784
    iput v4, p0, Landroid/os/DVFSHelper$ModelSC9830I;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2785
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/os/DVFSHelper$ModelSC9830I;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    .line 2786
    const v0, 0x16e360

    iput v0, p0, Landroid/os/DVFSHelper$ModelSC9830I;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2787
    iput v1, p0, Landroid/os/DVFSHelper$ModelSC9830I;->LAUNCHER_TOUCH_CPU_CORE:I

    .line 2788
    iput v4, p0, Landroid/os/DVFSHelper$ModelSC9830I;->LIST_SCROLL_ARM_FREQ:I

    .line 2789
    sput v1, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    .line 2790
    iput v2, p0, Landroid/os/DVFSHelper$ModelSC9830I;->AMS_RESUME_ARM_FREQ:I

    .line 2791
    iput v1, p0, Landroid/os/DVFSHelper$ModelSC9830I;->AMS_RESUME_CPU_CORE:I

    .line 2792
    iput v3, p0, Landroid/os/DVFSHelper$ModelSC9830I;->APP_LAUNCH_ARM_FREQ:I

    .line 2793
    iput v1, p0, Landroid/os/DVFSHelper$ModelSC9830I;->APP_LAUNCH_CPU_CORE:I

    .line 2794
    const/16 v0, 0x7d0

    sput v0, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    .line 2795
    iput v2, p0, Landroid/os/DVFSHelper$ModelSC9830I;->DEVICE_WAKEUP_ARM_FREQ:I

    .line 2796
    sput v1, Landroid/os/DVFSHelper;->WAKEUP_BOOSTER_CORE_NUM:I

    .line 2797
    iput v3, p0, Landroid/os/DVFSHelper$ModelSC9830I;->ROTATION_ARM_FREQ:I

    .line 2798
    iput v2, p0, Landroid/os/DVFSHelper$ModelSC9830I;->CONTACT_SCROLL_ARM_FREQ:I

    .line 2799
    iput v1, p0, Landroid/os/DVFSHelper$ModelSC9830I;->CONTACT_SCROLL_CPU_CORE:I

    .line 2800
    return-void
.end method

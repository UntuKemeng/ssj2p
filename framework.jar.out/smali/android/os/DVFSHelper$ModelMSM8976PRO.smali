.class Landroid/os/DVFSHelper$ModelMSM8976PRO;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelMSM8976PRO"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 5

    .prologue
    const v4, 0x189c00

    const v3, 0x151800

    const/16 v2, 0x3a3

    const/4 v1, 0x4

    iput-object p1, p0, Landroid/os/DVFSHelper$ModelMSM8976PRO;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    iput v4, p0, Landroid/os/DVFSHelper$ModelMSM8976PRO;->LAUNCHER_TOUCH_ARM_FREQ:I

    const/16 v0, 0x3e8

    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8976PRO;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    iput v4, p0, Landroid/os/DVFSHelper$ModelMSM8976PRO;->GALLERY_TOUCH_ARM_FREQ:I

    const/16 v0, 0x1f4

    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8976PRO;->GALLERY_TOUCH_BOOST_TIMEOUT:I

    const v0, 0xd7a00

    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8976PRO;->LIST_SCROLL_ARM_FREQ:I

    iput v3, p0, Landroid/os/DVFSHelper$ModelMSM8976PRO;->AMS_RESUME_ARM_FREQ:I

    iput v2, p0, Landroid/os/DVFSHelper$ModelMSM8976PRO;->AMS_RESUME_BUS_FREQ:I

    iput v1, p0, Landroid/os/DVFSHelper$ModelMSM8976PRO;->AMS_RESUME_CPU_CORE:I

    const/16 v0, 0x258

    sput v0, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    const/16 v0, 0x7d0

    sput v0, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    iput v2, p0, Landroid/os/DVFSHelper$ModelMSM8976PRO;->APP_LAUNCH_BUS_FREQ:I

    iput v1, p0, Landroid/os/DVFSHelper$ModelMSM8976PRO;->APP_LAUNCH_CPU_CORE:I

    iput v3, p0, Landroid/os/DVFSHelper$ModelMSM8976PRO;->DEVICE_WAKEUP_ARM_FREQ:I

    return-void
.end method

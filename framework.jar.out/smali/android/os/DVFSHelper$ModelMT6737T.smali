.class Landroid/os/DVFSHelper$ModelMT6737T;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelMT6737T"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 2

    .prologue
    const v1, 0x13d620

    iput-object p1, p0, Landroid/os/DVFSHelper$ModelMT6737T;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    iput v1, p0, Landroid/os/DVFSHelper$ModelMT6737T;->LAUNCHER_TOUCH_ARM_FREQ:I

    const/16 v0, 0x3e8

    iput v0, p0, Landroid/os/DVFSHelper$ModelMT6737T;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    iput v1, p0, Landroid/os/DVFSHelper$ModelMT6737T;->GALLERY_TOUCH_ARM_FREQ:I

    const/16 v0, 0x1f4

    iput v0, p0, Landroid/os/DVFSHelper$ModelMT6737T;->GALLERY_TOUCH_BOOST_TIMEOUT:I

    const v0, 0xc7f38

    iput v0, p0, Landroid/os/DVFSHelper$ModelMT6737T;->LIST_SCROLL_ARM_FREQ:I

    const/4 v0, 0x4

    iput v0, p0, Landroid/os/DVFSHelper$ModelMT6737T;->AMS_RESUME_CPU_CORE:I

    const/16 v0, 0x258

    sput v0, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    iput v1, p0, Landroid/os/DVFSHelper$ModelMT6737T;->DEVICE_WAKEUP_ARM_FREQ:I

    iput v1, p0, Landroid/os/DVFSHelper$ModelMT6737T;->ROTATION_ARM_FREQ:I

    return-void
.end method

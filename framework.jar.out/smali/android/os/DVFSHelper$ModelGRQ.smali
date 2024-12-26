.class Landroid/os/DVFSHelper$ModelGRQ;
.super Landroid/os/DVFSHelper$ModelHRQ;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelGRQ"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 2

    .prologue
    const v1, 0x17bb00

    .line 2395
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelGRQ;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelHRQ;-><init>(Landroid/os/DVFSHelper;)V

    .line 2396
    const v0, 0x130b00

    iput v0, p0, Landroid/os/DVFSHelper$ModelGRQ;->CONTACT_SCROLL_ARM_FREQ:I

    .line 2397
    iput v1, p0, Landroid/os/DVFSHelper$ModelGRQ;->AMS_RESUME_ARM_FREQ:I

    .line 2398
    iput v1, p0, Landroid/os/DVFSHelper$ModelGRQ;->DEVICE_WAKEUP_ARM_FREQ:I

    .line 2399
    iput v1, p0, Landroid/os/DVFSHelper$ModelGRQ;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2400
    iput v1, p0, Landroid/os/DVFSHelper$ModelGRQ;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2401
    const/16 v0, 0x5dc

    sput v0, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    .line 2402
    return-void
.end method

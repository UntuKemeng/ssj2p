.class Landroid/os/DVFSHelper$ModelGRQForFHD;
.super Landroid/os/DVFSHelper$ModelGRQ;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelGRQForFHD"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 2

    .prologue
    const v1, 0x130b00

    .line 2406
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelGRQForFHD;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelGRQ;-><init>(Landroid/os/DVFSHelper;)V

    .line 2407
    const v0, 0x143700

    iput v0, p0, Landroid/os/DVFSHelper$ModelGRQForFHD;->AMS_RESUME_ARM_FREQ:I

    .line 2408
    const v0, 0x122a00

    iput v0, p0, Landroid/os/DVFSHelper$ModelGRQForFHD;->DEVICE_WAKEUP_ARM_FREQ:I

    .line 2409
    iput v1, p0, Landroid/os/DVFSHelper$ModelGRQForFHD;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2410
    iput v1, p0, Landroid/os/DVFSHelper$ModelGRQForFHD;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2411
    const/16 v0, 0x3f9

    iput v0, p0, Landroid/os/DVFSHelper$ModelGRQForFHD;->AMS_RESUME_BUS_FREQ:I

    .line 2412
    return-void
.end method

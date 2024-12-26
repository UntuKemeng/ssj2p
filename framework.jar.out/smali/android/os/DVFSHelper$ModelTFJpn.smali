.class Landroid/os/DVFSHelper$ModelTFJpn;
.super Landroid/os/DVFSHelper$ModelTF;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelTFJpn"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 2

    .prologue
    const v1, 0x16da00

    const/4 v0, -0x1

    .line 2345
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelTFJpn;->this$0:Landroid/os/DVFSHelper;

    .line 2346
    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelTF;-><init>(Landroid/os/DVFSHelper;)V

    .line 2347
    iput v1, p0, Landroid/os/DVFSHelper$ModelTFJpn;->AMS_RESUME_ARM_FREQ:I

    .line 2348
    iput v0, p0, Landroid/os/DVFSHelper$ModelTFJpn;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2349
    iput v0, p0, Landroid/os/DVFSHelper$ModelTFJpn;->GALLERY_TOUCH_BUS_FREQ:I

    .line 2350
    iput v1, p0, Landroid/os/DVFSHelper$ModelTFJpn;->DEVICE_WAKEUP_ARM_FREQ:I

    .line 2351
    return-void
.end method

.class Landroid/os/DVFSHelper$ModelKA;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelKA"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 1

    .prologue
    .line 2309
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelKA;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 2310
    const v0, 0x1b7740

    iput v0, p0, Landroid/os/DVFSHelper$ModelKA;->AMS_RESUME_ARM_FREQ:I

    .line 2311
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/DVFSHelper$ModelKA;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2312
    const v0, 0x1cfde0

    iput v0, p0, Landroid/os/DVFSHelper$ModelKA;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2313
    const/16 v0, 0x64

    iput v0, p0, Landroid/os/DVFSHelper$ModelKA;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    .line 2314
    return-void
.end method

.class Landroid/os/DVFSHelper$ModelMSM8916;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelMSM8916"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 1

    .prologue
    const v0, 0x122a00

    .line 2746
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelMSM8916;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 2747
    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8916;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2748
    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8916;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2749
    const/4 v0, 0x4

    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8916;->LAUNCHER_TOUCH_CPU_CORE:I

    .line 2750
    const/4 v0, 0x3

    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8916;->AMS_RESUME_CPU_CORE:I

    .line 2751
    const/16 v0, 0x258

    sput v0, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    .line 2752
    return-void
.end method

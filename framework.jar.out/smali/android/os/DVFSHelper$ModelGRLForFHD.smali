.class Landroid/os/DVFSHelper$ModelGRLForFHD;
.super Landroid/os/DVFSHelper$ModelGRL;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelGRLForFHD"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 1

    .prologue
    .line 2443
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelGRLForFHD;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelGRL;-><init>(Landroid/os/DVFSHelper;)V

    .line 2444
    const v0, 0xfde80

    iput v0, p0, Landroid/os/DVFSHelper$ModelGRLForFHD;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2445
    const v0, 0x17cdc0

    iput v0, p0, Landroid/os/DVFSHelper$ModelGRLForFHD;->AMS_RESUME_ARM_FREQ:I

    .line 2446
    return-void
.end method
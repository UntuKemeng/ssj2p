.class Landroid/os/DVFSHelper$ModelGRLForHD;
.super Landroid/os/DVFSHelper$ModelGRL;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelGRLForHD"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 1

    .prologue
    const v0, 0x541b4

    iput-object p1, p0, Landroid/os/DVFSHelper$ModelGRLForHD;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelGRL;-><init>(Landroid/os/DVFSHelper;)V

    iput v0, p0, Landroid/os/DVFSHelper$ModelGRLForHD;->LAUNCHER_TOUCH_ARM_FREQ:I

    iput v0, p0, Landroid/os/DVFSHelper$ModelGRLForHD;->LIST_SCROLL_ARM_FREQ:I

    const v0, 0x17cdc0

    iput v0, p0, Landroid/os/DVFSHelper$ModelGRLForHD;->AMS_RESUME_ARM_FREQ:I

    return-void
.end method

.class Landroid/os/DVFSHelper$ModelMSM8917;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelMSM8917"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 1

    .prologue
    const v0, 0x1560a8

    .line 2870
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelMSM8917;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 2871
    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8917;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2872
    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8917;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2873
    const/16 v0, 0x258

    sput v0, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    .line 2874
    const v0, 0x130b00

    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8917;->CONTACT_SCROLL_ARM_FREQ:I

    .line 2875
    return-void
.end method
.class Landroid/os/DVFSHelper$ModelGRL;
.super Landroid/os/DVFSHelper$ModelHRL;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelGRL"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 1

    .prologue
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelGRL;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelHRL;-><init>(Landroid/os/DVFSHelper;)V

    const v0, 0x130b00

    iput v0, p0, Landroid/os/DVFSHelper$ModelGRL;->CONTACT_SCROLL_ARM_FREQ:I

    return-void
.end method

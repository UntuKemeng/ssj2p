.class public Landroid/hardware/scontext/SContextApproachAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextApproachAttribute.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextApproachAttribute"


# instance fields
.field private mUserID:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextApproachAttribute;->mUserID:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextApproachAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "userID"    # I

    .prologue
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextApproachAttribute;->mUserID:I

    iput p1, p0, Landroid/hardware/scontext/SContextApproachAttribute;->mUserID:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextApproachAttribute;->setAttribute()V

    return-void
.end method

.method private setAttribute()V
    .locals 3

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "attribute":Landroid/os/Bundle;
    const-string v1, "UserID"

    iget v2, p0, Landroid/hardware/scontext/SContextApproachAttribute;->mUserID:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x1

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method checkAttribute()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

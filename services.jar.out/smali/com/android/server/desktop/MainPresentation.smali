.class public Lcom/android/server/desktop/MainPresentation;
.super Landroid/app/InternalPresentation;
.source "MainPresentation.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 0
    .param p1, "outerContext"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/app/InternalPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 16
    iput-object p1, p0, Lcom/android/server/desktop/MainPresentation;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/android/server/desktop/MainPresentation;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/android/server/desktop/MainPresentation;->dismiss()V

    .line 32
    invoke-virtual {p0}, Lcom/android/server/desktop/MainPresentation;->show()V

    .line 34
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/InternalPresentation;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x1090039

    invoke-virtual {p0, v0}, Lcom/android/server/desktop/MainPresentation;->setContentView(I)V

    .line 25
    return-void
.end method
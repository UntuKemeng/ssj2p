.class public Lcom/android/server/desktop/DarkScreen;
.super Ljava/lang/Object;
.source "DarkScreen.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mIsEnable:Z

.field private mPresentation:Lcom/android/server/desktop/MainPresentation;

.field private mWindow:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/server/desktop/DarkScreen;->mContext:Landroid/content/Context;

    .line 23
    iget-object v0, p0, Lcom/android/server/desktop/DarkScreen;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/desktop/DarkScreen;->mWindowManager:Landroid/view/WindowManager;

    .line 24
    iget-object v0, p0, Lcom/android/server/desktop/DarkScreen;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/desktop/DarkScreen;->mDisplay:Landroid/view/Display;

    .line 25
    new-instance v0, Lcom/android/server/desktop/MainPresentation;

    iget-object v1, p0, Lcom/android/server/desktop/DarkScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/desktop/DarkScreen;->mDisplay:Landroid/view/Display;

    invoke-direct {v0, v1, v2}, Lcom/android/server/desktop/MainPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iput-object v0, p0, Lcom/android/server/desktop/DarkScreen;->mPresentation:Lcom/android/server/desktop/MainPresentation;

    .line 26
    iget-object v0, p0, Lcom/android/server/desktop/DarkScreen;->mPresentation:Lcom/android/server/desktop/MainPresentation;

    invoke-virtual {v0}, Lcom/android/server/desktop/MainPresentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/desktop/DarkScreen;->mWindow:Landroid/view/Window;

    .line 27
    invoke-virtual {p0}, Lcom/android/server/desktop/DarkScreen;->setWindowFlags()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/desktop/DarkScreen;->mIsEnable:Z

    .line 29
    return-void
.end method

.method private checkSupportTypeSideSyncOverlay()I
    .locals 5

    .prologue
    .line 65
    const/4 v0, -0x1

    .line 66
    .local v0, "TYPE_SIDE_SYNC_OVERLAY":I
    const/4 v2, 0x0

    .line 68
    .local v2, "field":Ljava/lang/reflect/Field;
    :try_start_0
    const-class v3, Landroid/view/WindowManager$LayoutParams;

    const-string v4, "TYPE_SIDE_SYNC_OVERLAY"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 72
    :goto_0
    if-eqz v2, :cond_0

    .line 74
    :try_start_1
    const-string v3, "TYPE_SIDE_SYNC_OVERLAY"

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    .line 81
    :cond_0
    :goto_1
    return v0

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 77
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public hideDarkScreen()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/desktop/DarkScreen;->mPresentation:Lcom/android/server/desktop/MainPresentation;

    invoke-virtual {v0}, Lcom/android/server/desktop/MainPresentation;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/desktop/DarkScreen;->mIsEnable:Z

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/server/desktop/DarkScreen;->mPresentation:Lcom/android/server/desktop/MainPresentation;

    invoke-virtual {v0}, Lcom/android/server/desktop/MainPresentation;->dismiss()V

    .line 62
    :cond_0
    return-void
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/server/desktop/DarkScreen;->mIsEnable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/desktop/DarkScreen;->mPresentation:Lcom/android/server/desktop/MainPresentation;

    invoke-virtual {v0}, Lcom/android/server/desktop/MainPresentation;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/server/desktop/DarkScreen;->mIsEnable:Z

    .line 33
    return-void
.end method

.method public setWindowFlags()V
    .locals 3

    .prologue
    .line 40
    iget-object v1, p0, Lcom/android/server/desktop/DarkScreen;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 41
    .local v0, "layoutParam":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Lcom/android/server/desktop/DarkScreen;->checkSupportTypeSideSyncOverlay()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 42
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x498

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 43
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x10001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 45
    iget-object v1, p0, Lcom/android/server/desktop/DarkScreen;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 46
    return-void
.end method

.method public showDarkScreen()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/desktop/DarkScreen;->mPresentation:Lcom/android/server/desktop/MainPresentation;

    invoke-virtual {v0}, Lcom/android/server/desktop/MainPresentation;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/desktop/DarkScreen;->mIsEnable:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/android/server/desktop/DarkScreen;->setWindowFlags()V

    .line 55
    iget-object v0, p0, Lcom/android/server/desktop/DarkScreen;->mPresentation:Lcom/android/server/desktop/MainPresentation;

    invoke-virtual {v0}, Lcom/android/server/desktop/MainPresentation;->show()V

    .line 57
    :cond_0
    return-void
.end method
.class public abstract Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "PenWindowController"
.end annotation


# instance fields
.field protected mBtnDragAndDrop:Landroid/view/View;

.field protected mBtnExit:Landroid/view/View;

.field protected mBtnMaximize:Landroid/view/View;

.field protected mBtnMinimize:Landroid/view/View;

.field protected mControllerHeight:I

.field protected mDnDHelpPopupDialog:Landroid/app/Dialog;

.field protected mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field private mHeaderWindowControllerHoverImage:Landroid/graphics/drawable/Drawable;

.field private mIsInputMethodForceHiding:Z

.field private mIsLongPressed:Z

.field private mIsMoving:Z

.field protected mIsShowing:Z

.field private mLastHandledX:I

.field private mLastHandledY:I

.field protected mMenuContainer:Landroid/view/View;

.field private mMoveInterval:I

.field protected mNeedInvalidate:Z

.field protected mPenWindowHeader:Landroid/view/View;

.field final synthetic this$0:Lcom/android/internal/policy/MultiPhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/MultiPhoneWindow;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2802
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2752
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mGestureDetector:Landroid/view/GestureDetector;

    .line 2754
    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mControllerHeight:I

    .line 2755
    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mMoveInterval:I

    .line 2764
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mNeedInvalidate:Z

    .line 2803
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsShowing:Z

    .line 2804
    invoke-virtual {p1}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mMoveInterval:I

    .line 2806
    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    .prologue
    .line 2742
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->removeDnDHelpPopup()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 2742
    invoke-direct {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->startDragMode(Landroid/content/Context;)V

    return-void
.end method

.method private checkFunctionState()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    .line 2968
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 2969
    .local v7, "pm":Landroid/content/pm/PackageManager;
    if-nez v7, :cond_1

    .line 3011
    :cond_0
    return-void

    .line 2973
    :cond_1
    const/4 v1, 0x0

    .line 2975
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2979
    :goto_0
    if-eqz v1, :cond_0

    .line 2983
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2984
    .local v4, "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v8, :cond_2

    .line 2985
    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.samsung.android.sdk.multiwindow.disablefunction"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2986
    .local v0, "activityFunction":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 2987
    const-string v8, "\\|"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2990
    .end local v0    # "activityFunction":Ljava/lang/String;
    :cond_2
    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_3

    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v8, :cond_3

    .line 2991
    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.samsung.android.sdk.multiwindow.disablefunction"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2992
    .local v2, "applicationFunction":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 2993
    const-string v8, "\\|"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2997
    .end local v2    # "applicationFunction":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnDragAndDrop:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2999
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3000
    .local v3, "disableFunction":Ljava/lang/String;
    const-string/jumbo v8, "minimize"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3001
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    const/4 v9, 0x1

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow;->mIsMinimizeDisabled:Z
    invoke-static {v8, v9}, Lcom/android/internal/policy/MultiPhoneWindow;->access$2002(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z

    .line 3002
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 2976
    .end local v3    # "disableFunction":Ljava/lang/String;
    .end local v4    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v5

    .line 2977
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 3003
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "disableFunction":Ljava/lang/String;
    .restart local v4    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_5
    const-string/jumbo v8, "maximize"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3004
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 3005
    :cond_6
    const-string v8, "exit"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3006
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 3007
    :cond_7
    const-string v8, "drag_and_drop"

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3008
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private makeDnDHelpPopupLayout()V
    .locals 8

    .prologue
    .line 2836
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2876
    :cond_0
    :goto_0
    return-void

    .line 2841
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2842
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v5, 0x1090079

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2843
    .local v0, "dnDHelpPopupView":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v5, v5, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v5, v5, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v5, v5, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2847
    :cond_2
    const v5, 0x10203dc

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 2848
    .local v2, "okButton":Landroid/widget/Button;
    new-instance v5, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$1;-><init>(Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2856
    new-instance v5, Landroid/app/Dialog;

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x10304f3

    invoke-direct {v5, v6, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/Dialog;

    .line 2857
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 2858
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/Dialog;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2860
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/Dialog;

    new-instance v6, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$2;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$2;-><init>(Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;)V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2866
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 2867
    .local v4, "w":Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 2868
    .local v3, "p":Landroid/view/WindowManager$LayoutParams;
    const-string v5, "DnDHelpPopupDialog"

    invoke-virtual {v3, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2869
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v5, v5, 0x202

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2870
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v6, -0x20001

    and-int/2addr v5, v6

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2871
    const/high16 v5, 0x3f000000    # 0.5f

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 2872
    const/4 v5, 0x2

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2873
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2874
    .end local v0    # "dnDHelpPopupView":Landroid/view/View;
    .end local v1    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v2    # "okButton":Landroid/widget/Button;
    .end local v3    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "w":Landroid/view/Window;
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method

.method private makeDnDHelpPopupLegacyLayout()V
    .locals 9

    .prologue
    .line 2880
    :try_start_0
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x1030132

    invoke-direct {v2, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 2881
    .local v2, "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 2882
    .local v3, "layoutInflater":Landroid/view/LayoutInflater;
    const v6, 0x109007a

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2884
    .local v1, "contentView":Landroid/view/View;
    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2919
    .end local v1    # "contentView":Landroid/view/View;
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    return-void

    .line 2888
    .restart local v1    # "contentView":Landroid/view/View;
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v3    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_1
    const v6, 0x10203e0

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 2890
    .local v0, "checkBox":Landroid/widget/CheckBox;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x5

    invoke-direct {v6, v2, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040bef

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x104000a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$3;

    invoke-direct {v8, p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$3;-><init>(Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;Landroid/widget/CheckBox;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    .line 2904
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$4;

    invoke-direct {v7, p0, v2}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$4;-><init>(Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2910
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 2911
    .local v5, "w":Landroid/view/Window;
    const/16 v6, 0x200

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 2912
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 2913
    .local v4, "p":Landroid/view/WindowManager$LayoutParams;
    const-string v6, "DnDHelpPopupDialog"

    invoke-virtual {v4, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2914
    const/4 v6, 0x2

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2916
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2917
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v1    # "contentView":Landroid/view/View;
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v4    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "w":Landroid/view/Window;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private removeDnDHelpPopup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2922
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportSimplificationUI:Z

    if-eqz v0, :cond_1

    .line 2923
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2924
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 2925
    iput-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/Dialog;

    .line 2933
    :cond_0
    :goto_0
    return-void

    .line 2928
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2929
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 2930
    iput-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private setHeaderWindowControllerHoverImage()V
    .locals 8

    .prologue
    .line 3281
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10805aa

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mHeaderWindowControllerHoverImage:Landroid/graphics/drawable/Drawable;

    .line 3284
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mHeaderWindowControllerHoverImage:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mHeaderWindowControllerHoverImage:Landroid/graphics/drawable/Drawable;

    instance-of v5, v5, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_0

    .line 3285
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0109

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float v3, v5, v6

    .line 3287
    .local v3, "scale":F
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x105032a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 3288
    .local v4, "size":I
    iget v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mControllerHeight:I

    .line 3289
    .local v2, "preferredSize":I
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mHeaderWindowControllerHoverImage:Landroid/graphics/drawable/Drawable;

    check-cast v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    .line 3290
    .local v1, "layerSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3291
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mHeaderWindowControllerHoverImage:Landroid/graphics/drawable/Drawable;

    check-cast v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v5, v0, v2, v2}, Landroid/graphics/drawable/LayerDrawable;->setLayerSize(III)V

    .line 3290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3294
    .end local v0    # "i":I
    .end local v1    # "layerSize":I
    .end local v2    # "preferredSize":I
    .end local v3    # "scale":F
    .end local v4    # "size":I
    :cond_0
    return-void
.end method

.method private startDragMode(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2936
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 2954
    :goto_0
    return-void

    .line 2939
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2940
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2941
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.multiwindow.centerbarwindow.SmartClipDragDrop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2947
    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2948
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performStartDragMode()V

    .line 2949
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setDragAndDropModeOfStack(Landroid/os/IBinder;Z)V

    .line 2950
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v2, "POPW"

    const-string v3, "DRAGCONTENT"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2944
    :cond_1
    const-string v1, "com.sec.android.app.FlashBarService"

    const-string v2, "com.sec.android.app.FlashBarService.SmartClipDragDrop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method


# virtual methods
.method protected generateLayout()V
    .locals 2

    .prologue
    .line 2809
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performInflateController()V

    .line 2811
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mPenWindowHeader:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2812
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mPenWindowHeader:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2813
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mPenWindowHeader:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 2815
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mMenuContainer:Landroid/view/View;

    const v1, 0x102040d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnDragAndDrop:Landroid/view/View;

    .line 2816
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2817
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2819
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mMenuContainer:Landroid/view/View;

    const v1, 0x102040e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnMinimize:Landroid/view/View;

    .line 2820
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2821
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2823
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mMenuContainer:Landroid/view/View;

    const v1, 0x102040f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnMaximize:Landroid/view/View;

    .line 2824
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2825
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2827
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mMenuContainer:Landroid/view/View;

    const v1, 0x1020410

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnExit:Landroid/view/View;

    .line 2828
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2829
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2831
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->checkFunctionState()V

    .line 2832
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->updateAvailableButtons()V

    .line 2833
    return-void
.end method

.method protected getControllerHeight()I
    .locals 1

    .prologue
    .line 2963
    iget v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mControllerHeight:I

    return v0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 2795
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 2799
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mNeedInvalidate:Z

    .line 2800
    return-void
.end method

.method protected isShowing()Z
    .locals 1

    .prologue
    .line 2959
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsShowing:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 3015
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowHeaderVisibilityDeferred:Z
    invoke-static {v4}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1400(Lcom/android/internal/policy/MultiPhoneWindow;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3016
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowHeaderVisibilityDeferred:Z
    invoke-static {v4, v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1402(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z

    .line 3019
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mPenWindowHeader:Landroid/view/View;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3020
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    .line 3082
    :cond_1
    :goto_0
    return-void

    .line 3021
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3022
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const-string v5, "do_not_show_help_popup_drag_and_drop"

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getPreferenceThroughSystemProcess(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    .line 3023
    .local v0, "checked":Z
    :goto_1
    if-nez v0, :cond_5

    .line 3024
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    .line 3025
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v3, v3, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportSimplificationUI:Z

    if-eqz v3, :cond_4

    .line 3026
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->makeDnDHelpPopupLayout()V

    goto :goto_0

    .end local v0    # "checked":Z
    :cond_3
    move v0, v3

    .line 3022
    goto :goto_1

    .line 3028
    .restart local v0    # "checked":Z
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->makeDnDHelpPopupLegacyLayout()V

    goto :goto_0

    .line 3031
    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->startDragMode(Landroid/content/Context;)V

    goto :goto_0

    .line 3033
    .end local v0    # "checked":Z
    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3034
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v4, v3, v3}, Lcom/android/internal/policy/MultiPhoneWindow;->minimizeWindow(IZ)V

    .line 3035
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v4, "POPW"

    const-string v5, "MINIMIZE"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3038
    :cond_7
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3039
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v4, v4, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v4, :cond_8

    .line 3040
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 3042
    :cond_8
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->requestState(I)V

    .line 3043
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v4, "POPW"

    const-string v5, "MAXIMIZE"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3046
    :cond_9
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3047
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 3048
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$2100(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$2100(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;->onWindowExit()Z

    move-result v3

    if-nez v3, :cond_a

    .line 3050
    const-string v3, "MultiPhoneWindow"

    const-string/jumbo v4, "onWindowExit return false"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v4, "POPW"

    const-string v5, "CLOSE"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3057
    :cond_a
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 3058
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3059
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->forceHideInputMethod()Z

    .line 3061
    :cond_b
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 3062
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/HoverPopupWindow;->dismiss()V

    .line 3066
    :cond_c
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 3067
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->finishAllTasks(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3075
    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iput-boolean v0, v3, Lcom/android/internal/policy/MultiPhoneWindow;->mIsFinishing:Z

    .line 3077
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v4, "POPW"

    const-string v5, "CLOSE"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3069
    :cond_d
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finishAffinity()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 3071
    :catch_0
    move-exception v1

    .line 3072
    .local v1, "e":Ljava/lang/IllegalStateException;
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_2
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 3261
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4

    .line 3262
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020420

    if-ne v1, v2, :cond_2

    .line 3263
    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    .line 3277
    :cond_1
    :goto_0
    return v3

    .line 3265
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mHeaderWindowControllerHoverImage:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 3266
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mHeaderWindowControllerHoverImage:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3274
    :catch_0
    move-exception v0

    .line 3275
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MultiPhoneWindow"

    const-string v2, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3268
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->setHeaderWindowControllerHoverImage()V

    goto :goto_0

    .line 3271
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 3272
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 17
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3086
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsMoving:Z

    if-eqz v14, :cond_1

    .line 3087
    sget-boolean v14, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    if-eqz v14, :cond_0

    const-string v14, "MultiPhoneWindow"

    const-string/jumbo v15, "onLongClick : moving so return false"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    :cond_0
    const/4 v14, 0x0

    .line 3133
    :goto_0
    return v14

    .line 3090
    :cond_1
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsLongPressed:Z

    .line 3092
    const/4 v14, 0x2

    new-array v9, v14, [I

    .line 3093
    .local v9, "screenPos":[I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 3094
    .local v3, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3095
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3097
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 3098
    .local v4, "height":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v14, v14, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v14, :cond_2

    .line 3099
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v14, v14, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v6, v14, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mMenuContainer:Landroid/view/View;

    check-cast v6, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    .line 3100
    .local v6, "menuContainer":Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;
    if-eqz v6, :cond_2

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->access$2200(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)Landroid/widget/LinearLayout;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 3101
    # getter for: Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->access$2200(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)Landroid/widget/LinearLayout;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    .line 3104
    .end local v6    # "menuContainer":Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v14}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v2

    .line 3105
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v10, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3107
    .local v10, "screenWidth":I
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v8, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3109
    .local v8, "screenHeight":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v14, v14, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    .line 3110
    .local v7, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_5

    .line 3111
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v14, v14, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    if-gt v10, v8, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v14, v14, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v14

    if-nez v14, :cond_5

    if-ge v10, v8, :cond_5

    .line 3115
    :cond_4
    move v11, v10

    .line 3116
    .local v11, "tempWidth":I
    move v10, v8

    .line 3117
    move v8, v11

    .line 3121
    .end local v11    # "tempWidth":I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v2, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 3123
    .local v1, "cheatSheet":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->setIgnoreMultiWindowLayout()V

    .line 3124
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v14}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 3125
    .local v5, "layoutInflater":Landroid/view/LayoutInflater;
    const v14, 0x1090098

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 3126
    .local v13, "toastView":Landroid/view/View;
    invoke-virtual {v1, v13}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 3127
    const v14, 0x1020411

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 3128
    .local v12, "toastTxt":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3130
    const/16 v14, 0x35

    const/4 v15, 0x0

    aget v15, v9, v15

    sub-int v15, v10, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    sub-int v15, v15, v16

    div-int/lit8 v16, v4, 0x2

    move/from16 v0, v16

    invoke-virtual {v1, v14, v15, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 3132
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3133
    const/4 v14, 0x1

    goto/16 :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 3138
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v0, v6, 0xff

    .line 3139
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 3252
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v6, :cond_1

    .line 3253
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v6, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3255
    :cond_1
    :goto_1
    return v10

    .line 3141
    :pswitch_0
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mHasStackFocus:Z

    if-nez v6, :cond_2

    .line 3142
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackId(Landroid/os/IBinder;)I

    move-result v5

    .line 3143
    .local v5, "stackId":I
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v6, v5, v10}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setFocusedStack(IZ)V

    .line 3146
    .end local v5    # "stackId":I
    :cond_2
    iput-boolean v11, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsInputMethodForceHiding:Z

    .line 3147
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->forceHideInputMethod()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3148
    iput-boolean v10, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsInputMethodForceHiding:Z

    goto :goto_1

    .line 3152
    :cond_3
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/Docking;->init()V

    .line 3153
    iput-boolean v11, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsMoving:Z

    .line 3154
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsMoving:Z

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow;->mIsForceHideBorder:Z
    invoke-static {v6, v7}, Lcom/android/internal/policy/MultiPhoneWindow;->access$102(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z

    .line 3155
    iput-boolean v11, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsLongPressed:Z

    .line 3156
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mLastHandledX:I

    .line 3157
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mLastHandledY:I

    .line 3159
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iput-boolean v11, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mDismissGuideByDockingCanceled:Z

    .line 3161
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_4

    .line 3163
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.sec.android.OUTSIDE_TOUCH"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3164
    .local v4, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3167
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 3172
    :pswitch_1
    iget-boolean v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsInputMethodForceHiding:Z

    if-nez v6, :cond_1

    .line 3176
    iget-boolean v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsMoving:Z

    iget-boolean v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsLongPressed:Z

    or-int/2addr v6, v7

    if-nez v6, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mLastHandledX:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mMoveInterval:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget v8, v8, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    div-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mLastHandledY:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mMoveInterval:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget v8, v8, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    div-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_0

    .line 3181
    :cond_5
    iput-boolean v10, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsMoving:Z

    .line 3182
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsMoving:Z

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow;->mIsForceHideBorder:Z
    invoke-static {v6, v7}, Lcom/android/internal/policy/MultiPhoneWindow;->access$102(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z

    .line 3183
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mLastHandledX:I

    sub-int v2, v6, v7

    .line 3184
    .local v2, "dx":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mLastHandledY:I

    sub-int v3, v6, v7

    .line 3185
    .local v3, "dy":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mLastHandledX:I

    .line 3186
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mLastHandledY:I

    .line 3188
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mLastHandledX:I

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mLastHandledY:I

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/multiwindow/Docking;->updateZone(II)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3192
    :cond_6
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/Docking;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 3193
    .local v1, "dockingBound":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 3194
    if-eqz v1, :cond_7

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/Docking;->isDockingCanceled()Z

    move-result v6

    if-nez v6, :cond_7

    .line 3195
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    const/4 v7, 0x2

    invoke-virtual {v6, v1, v7}, Lcom/android/internal/policy/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V

    .line 3199
    :goto_2
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportGuideRectView:Z
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/MultiPhoneWindow;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v6, :cond_0

    .line 3202
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mPenWindowHeader:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 3197
    :cond_7
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V

    goto :goto_2

    .line 3209
    .end local v1    # "dockingBound":Landroid/graphics/Rect;
    .end local v2    # "dx":I
    .end local v3    # "dy":I
    :pswitch_2
    iget-boolean v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsInputMethodForceHiding:Z

    if-nez v6, :cond_1

    .line 3213
    iget-boolean v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsMoving:Z

    if-eqz v6, :cond_c

    .line 3214
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mLastHandledX:I

    sub-int v2, v6, v7

    .line 3215
    .restart local v2    # "dx":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mLastHandledY:I

    sub-int v3, v6, v7

    .line 3217
    .restart local v3    # "dy":I
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/Docking;->isDocking()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/Docking;->isDockingCanceled()Z

    move-result v6

    if-nez v6, :cond_b

    .line 3218
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportGuideRectView:Z
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/MultiPhoneWindow;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 3219
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->dismissGuide()V

    .line 3221
    :cond_8
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/Docking;->checkCenterBarPoint()V

    .line 3223
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportSimplificationUI:Z

    if-eqz v6, :cond_a

    .line 3225
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    invoke-virtual {v8}, Lcom/android/internal/policy/multiwindow/Docking;->getZone()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v9}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/policy/multiwindow/Docking;->getChanagedMultiWindowStyle(ILcom/samsung/android/multiwindow/MultiWindowStyle;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v10}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyleWithLogging(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    .line 3241
    .end local v2    # "dx":I
    .end local v3    # "dy":I
    :goto_3
    iput-boolean v11, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsMoving:Z

    .line 3242
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsMoving:Z

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow;->mIsForceHideBorder:Z
    invoke-static {v6, v7}, Lcom/android/internal/policy/MultiPhoneWindow;->access$102(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z

    .line 3243
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/Docking;->clear()V

    .line 3244
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportGuideRectView:Z
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/MultiPhoneWindow;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3245
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    .line 3246
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/MultiPhoneWindow;->startRestorePenWindowHeaderAnimator()V
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$2300(Lcom/android/internal/policy/MultiPhoneWindow;)V

    .line 3248
    :cond_9
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6, v10}, Lcom/android/internal/policy/MultiPhoneWindow;->dismissGuide(Z)V

    goto/16 :goto_0

    .line 3228
    .restart local v2    # "dx":I
    .restart local v3    # "dy":I
    :cond_a
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    invoke-virtual {v8}, Lcom/android/internal/policy/multiwindow/Docking;->getZone()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v9}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/policy/multiwindow/Docking;->getChanagedMultiWindowStyle(ILcom/samsung/android/multiwindow/MultiWindowStyle;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 3230
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v7, "POPW"

    const-string v8, "CHANGE-SPLIT"

    invoke-static {v6, v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3235
    :cond_b
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 3236
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 3239
    .end local v2    # "dx":I
    .end local v3    # "dy":I
    :cond_c
    invoke-virtual {p0, v10}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    goto :goto_3

    .line 3139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected abstract performInflateController()V
.end method

.method protected performStartDragMode()V
    .locals 0

    .prologue
    .line 2780
    return-void
.end method

.method protected performStopDragMode()V
    .locals 0

    .prologue
    .line 2784
    return-void
.end method

.method protected abstract performUpdateBackground()V
.end method

.method protected performUpdateMenuVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 2788
    return-void
.end method

.method protected abstract performUpdateVisibility(Z)V
.end method

.method protected abstract removeResizeVisualCue()V
.end method

.method protected setHeaderGestureDetector(Landroid/view/GestureDetector;)V
    .locals 0
    .param p1, "g"    # Landroid/view/GestureDetector;

    .prologue
    .line 2791
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mGestureDetector:Landroid/view/GestureDetector;

    .line 2792
    return-void
.end method

.method protected abstract updateAvailableButtons()V
.end method

.method protected abstract updatePosition()V
.end method

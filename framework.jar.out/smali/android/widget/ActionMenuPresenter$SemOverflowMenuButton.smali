.class public Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;
.super Landroid/widget/FrameLayout;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/widget/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SemOverflowMenuButton"
.end annotation


# static fields
.field private static final BADGE_LIMIT_NUMBER:I = 0x63


# instance fields
.field private mBadgeBackground:Landroid/view/ViewGroup;

.field private mBadgeText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mFirstAnimBadgeBackground:Landroid/view/animation/Animation;

.field private mFirstAnimBadgeText:Landroid/view/animation/Animation;

.field private mPerformedBadgeAnimation:Z

.field private mUpdateAnimBadgeBackground:Landroid/view/animation/Animation;

.field private mUpdateAnimBadgeText:Landroid/view/animation/Animation;

.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v3, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mPerformedBadgeAnimation:Z

    iput-object p2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .local v1, "innerView":Landroid/view/View;
    # getter for: Landroid/widget/ActionMenuPresenter;->mUseTextItemMode:Z
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->access$1200(Landroid/widget/ActionMenuPresenter;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/widget/ActionMenuPresenter$SemOverflowText;

    .end local v1    # "innerView":Landroid/view/View;
    invoke-direct {v1, p1, p2}, Landroid/widget/ActionMenuPresenter$SemOverflowText;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    .restart local v1    # "innerView":Landroid/view/View;
    :goto_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "layout_inflater"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x10900ff

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeText:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->addView(Landroid/view/View;)V

    return-void

    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    new-instance v1, Landroid/widget/ActionMenuPresenter$SemOverflowImage;

    .end local v1    # "innerView":Landroid/view/View;
    invoke-direct {v1, p1, p2}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    .restart local v1    # "innerView":Landroid/view/View;
    goto :goto_0
.end method

.method static synthetic access$1302(Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mPerformedBadgeAnimation:Z

    return p1
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method semInvalidateBadge(II)V
    .locals 3
    .param p1, "number"    # I
    .param p2, "mode"    # I

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$1100(Landroid/widget/ActionMenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeText:Landroid/widget/TextView;

    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    if-lez p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-nez p1, :cond_3

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    iput-boolean v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mPerformedBadgeAnimation:Z

    goto :goto_0

    :cond_1
    const-string v0, "N"

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mUpdateAnimBadgeBackground:Landroid/view/animation/Animation;

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mContext:Landroid/content/Context;

    const v1, 0x10a009c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mUpdateAnimBadgeBackground:Landroid/view/animation/Animation;

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mContext:Landroid/content/Context;

    const v1, 0x10a009d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mUpdateAnimBadgeText:Landroid/view/animation/Animation;

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mUpdateAnimBadgeBackground:Landroid/view/animation/Animation;

    new-instance v1, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton$1;

    invoke-direct {v1, p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton$1;-><init>(Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_4
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mFirstAnimBadgeBackground:Landroid/view/animation/Animation;

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mContext:Landroid/content/Context;

    const v1, 0x10a009a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mFirstAnimBadgeBackground:Landroid/view/animation/Animation;

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mContext:Landroid/content/Context;

    const v1, 0x10a009b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mFirstAnimBadgeText:Landroid/view/animation/Animation;

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mFirstAnimBadgeBackground:Landroid/view/animation/Animation;

    new-instance v1, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton$2;

    invoke-direct {v1, p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton$2;-><init>(Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_5
    const/4 v0, 0x1

    if-eq p2, v0, :cond_7

    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mPerformedBadgeAnimation:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mFirstAnimBadgeBackground:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeText:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mFirstAnimBadgeText:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mUpdateAnimBadgeBackground:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeText:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mUpdateAnimBadgeText:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mFirstAnimBadgeBackground:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeText:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mFirstAnimBadgeText:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method semSetBadgeNumber(I)V
    .locals 9
    .param p1, "number"    # I

    .prologue
    const/16 v2, 0x63

    iget-object v5, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {v5}, Landroid/widget/ActionMenuPresenter;->access$1100(Landroid/widget/ActionMenuPresenter;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-le p1, v2, :cond_1

    .local v2, "mBadgeNumber":I
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .local v0, "formatter":Ljava/text/NumberFormat;
    int-to-long v6, v2

    invoke-virtual {v0, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .local v1, "localeFormattedNumber":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10502c1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10502c2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v3, v5

    .local v3, "mBadgeWidth":I
    iget-object v5, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .local v4, "mLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v5, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeText:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    if-lez v2, :cond_2

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .end local v0    # "formatter":Ljava/text/NumberFormat;
    .end local v1    # "localeFormattedNumber":Ljava/lang/String;
    .end local v2    # "mBadgeNumber":I
    .end local v3    # "mBadgeWidth":I
    .end local v4    # "mLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void

    :cond_1
    move v2, p1

    goto :goto_0

    .restart local v0    # "formatter":Ljava/text/NumberFormat;
    .restart local v1    # "localeFormattedNumber":Ljava/lang/String;
    .restart local v2    # "mBadgeNumber":I
    .restart local v3    # "mBadgeWidth":I
    .restart local v4    # "mLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    const/16 v5, 0x8

    goto :goto_1
.end method

.class abstract Lcom/android/server/policy/GlobalActions$SinglePressAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SinglePressAction"
.end annotation


# static fields
.field public static rebootMode:I

.field public static final rebootOptions:[Ljava/lang/String;

.field public static final rebootString:[Ljava/lang/String;


# instance fields
.field public customAction:I

.field public isKnoxCustom:Z

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconResId:I

.field mLayoutId:I

.field private final mMessage:Ljava/lang/CharSequence;

.field private final mMessageResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v2, "Reboot"

    aput-object v2, v0, v3

    const-string/jumbo v2, "Hot Reboot"

    aput-object v2, v0, v4

    const-string/jumbo v2, "Download"

    aput-object v2, v0, v5

    const-string/jumbo v2, "Recovery"

    aput-object v2, v0, v6

    const-string/jumbo v2, "Safe Mode"

    aput-object v2, v0, v7

    sput-object v0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->rebootString:[Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "Reboot"

    aput-object v2, v1, v3

    const-string v2, "Hot Reboot"

    aput-object v2, v1, v4

    const-string v2, "Download"

    aput-object v2, v1, v5

    const-string v2, "Recovery"

    aput-object v2, v1, v6

    const-string v2, "Safe Mode"

    aput-object v2, v1, v7

    sput-object v1, Lcom/android/server/policy/GlobalActions$SinglePressAction;->rebootOptions:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(II)V
    .locals 2
    .param p1, "iconResId"    # I
    .param p2, "messageResId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 3766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3752
    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    .line 3753
    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->customAction:I

    .line 3767
    iput p1, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIconResId:I

    .line 3768
    iput p2, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 3769
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 3770
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 3772
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->init()V

    .line 3774
    return-void
.end method

.method protected constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "iconResId"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "message"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 3776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3752
    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    .line 3753
    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->customAction:I

    .line 3777
    iput p1, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIconResId:I

    .line 3778
    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 3779
    iput-object p3, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 3780
    iput-object p2, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 3782
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->init()V

    .line 3784
    return-void
.end method

.method protected constructor <init>(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "iconResId"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 3786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3752
    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    .line 3753
    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->customAction:I

    .line 3787
    iput p1, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIconResId:I

    .line 3788
    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 3789
    iput-object p2, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 3790
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 3792
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->init()V

    .line 3794
    return-void
.end method

.method protected constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 1
    .param p1, "iconImageDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "messageChar"    # Ljava/lang/String;
    .param p3, "action"    # I

    .prologue
    const/4 v0, 0x0

    .line 3754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3752
    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    .line 3753
    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->customAction:I

    .line 3755
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 3756
    iput-object p2, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 3757
    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIconResId:I

    .line 3758
    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 3759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    .line 3760
    iput p3, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->customAction:I

    .line 3762
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->init()V

    .line 3764
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 3797
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3798
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6600()Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6700()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3799
    const v0, 0x109006f

    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mLayoutId:I

    .line 3810
    :goto_0
    return-void

    .line 3801
    :cond_0
    const v0, 0x109006d

    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mLayoutId:I

    goto :goto_0

    .line 3804
    :cond_1
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6600()Z

    move-result v0

    if-nez v0, :cond_2

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6700()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3805
    const v0, 0x1090070

    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mLayoutId:I

    goto :goto_0

    .line 3807
    :cond_2
    const v0, 0x109006e

    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mLayoutId:I

    goto :goto_0
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const v8, -0x777778

    const/4 v10, 0x0

    .line 3835
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v7

    if-nez v7, :cond_8

    .line 3836
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6600()Z

    move-result v7

    if-nez v7, :cond_7

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6700()Z

    move-result v7

    if-nez v7, :cond_7

    .line 3837
    const v7, 0x109006f

    invoke-virtual {p4, v7, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 3849
    .local v6, "v":Landroid/view/View;
    :goto_0
    const v7, 0x1020006

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3850
    .local v1, "icon":Landroid/widget/ImageView;
    const v7, 0x102000b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3851
    .local v3, "messageView":Landroid/widget/TextView;
    const v7, 0x10203b7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 3852
    .local v5, "statusView":Landroid/widget/TextView;
    const v7, 0x10203b9

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 3854
    .local v2, "imageFrameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->isEnabled()Z

    move-result v0

    .line 3855
    .local v0, "enabled":Z
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->getStatus()Ljava/lang/String;

    move-result-object v4

    .line 3857
    .local v4, "status":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 3858
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 3859
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3860
    if-nez v0, :cond_0

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3867
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_b

    .line 3868
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3869
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3871
    iget v7, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIconResId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3878
    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 3879
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v7, :cond_c

    .line 3880
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3884
    :goto_3
    if-nez v0, :cond_2

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3887
    :cond_2
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v2, :cond_4

    .line 3888
    iget v7, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessageResId:I

    if-eqz v7, :cond_3

    .line 3889
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10409da

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3893
    :cond_3
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 3894
    if-eqz v0, :cond_d

    .line 3895
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 3896
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3903
    :cond_4
    :goto_4
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v7

    if-nez v7, :cond_6

    .line 3904
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6600()Z

    move-result v7

    if-nez v7, :cond_6

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6700()Z

    move-result v7

    if-nez v7, :cond_6

    .line 3905
    if-eqz v3, :cond_5

    .line 3906
    const-string v7, "#FF000000"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3908
    :cond_5
    if-eqz v5, :cond_6

    .line 3909
    const-string v7, "#6B6F72"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3913
    :cond_6
    return-object v6

    .line 3839
    .end local v0    # "enabled":Z
    .end local v1    # "icon":Landroid/widget/ImageView;
    .end local v2    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v3    # "messageView":Landroid/widget/TextView;
    .end local v4    # "status":Ljava/lang/String;
    .end local v5    # "statusView":Landroid/widget/TextView;
    .end local v6    # "v":Landroid/view/View;
    :cond_7
    const v7, 0x109006d

    invoke-virtual {p4, v7, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "v":Landroid/view/View;
    goto/16 :goto_0

    .line 3842
    .end local v6    # "v":Landroid/view/View;
    :cond_8
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6600()Z

    move-result v7

    if-nez v7, :cond_9

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6700()Z

    move-result v7

    if-nez v7, :cond_9

    .line 3843
    const v7, 0x1090070

    invoke-virtual {p4, v7, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "v":Landroid/view/View;
    goto/16 :goto_0

    .line 3845
    .end local v6    # "v":Landroid/view/View;
    :cond_9
    const v7, 0x109006e

    invoke-virtual {p4, v7, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "v":Landroid/view/View;
    goto/16 :goto_0

    .line 3862
    .restart local v0    # "enabled":Z
    .restart local v1    # "icon":Landroid/widget/ImageView;
    .restart local v2    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .restart local v3    # "messageView":Landroid/widget/TextView;
    .restart local v4    # "status":Ljava/lang/String;
    .restart local v5    # "statusView":Landroid/widget/TextView;
    :cond_a
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v7

    if-nez v7, :cond_0

    .line 3863
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 3873
    :cond_b
    iget v7, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIconResId:I

    if-eqz v7, :cond_1

    .line 3874
    iget v7, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIconResId:I

    invoke-virtual {p1, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3875
    iget v7, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIconResId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 3882
    :cond_c
    iget v7, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 3898
    :cond_d
    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 3899
    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto/16 :goto_4
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3824
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 3825
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 3827
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3818
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 3814
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onPress()V
.end method

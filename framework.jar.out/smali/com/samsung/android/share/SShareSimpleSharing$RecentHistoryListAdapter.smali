.class final Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SShareSimpleSharing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/share/SShareSimpleSharing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecentHistoryListAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mInitialIntents:[Landroid/content/Intent;

.field private final mIntent:Landroid/content/Intent;

.field private mRecentHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/share/SShareSimpleSharing;


# direct methods
.method public constructor <init>(Lcom/samsung/android/share/SShareSimpleSharing;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;I)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p5, "launchedFromUid"    # I

    .prologue
    .line 794
    iput-object p1, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 795
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mIntent:Landroid/content/Intent;

    .line 796
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 797
    iput-object p4, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mInitialIntents:[Landroid/content/Intent;

    .line 798
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 799
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;

    .line 800
    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    .prologue
    .line 788
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;

    return-object v0
.end method

.method private final setDefaultView(Landroid/view/View;Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    .prologue
    const/4 v8, 0x0

    .line 845
    iget-object v5, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    # invokes: Lcom/samsung/android/share/SShareSimpleSharing;->getFontScale()F
    invoke-static {v5}, Lcom/samsung/android/share/SShareSimpleSharing;->access$1000(Lcom/samsung/android/share/SShareSimpleSharing;)F

    move-result v0

    .line 847
    .local v0, "fontScale":F
    const v5, 0x1020014

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 848
    .local v3, "text":Landroid/widget/TextView;
    const v5, 0x1020015

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 849
    .local v4, "textIconName":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    iget-object v6, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/samsung/android/share/SShareSimpleSharing;->access$1200(Lcom/samsung/android/share/SShareSimpleSharing;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x105029c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    # setter for: Lcom/samsung/android/share/SShareSimpleSharing;->defaultTextSize:F
    invoke-static {v5, v6}, Lcom/samsung/android/share/SShareSimpleSharing;->access$1102(Lcom/samsung/android/share/SShareSimpleSharing;F)F

    .line 850
    iget-object v5, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing;->defaultTextSize:F
    invoke-static {v5}, Lcom/samsung/android/share/SShareSimpleSharing;->access$1100(Lcom/samsung/android/share/SShareSimpleSharing;)F

    move-result v5

    mul-float/2addr v5, v0

    invoke-virtual {v3, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 851
    iget-object v5, p2, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 853
    iget-object v5, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing;->defaultTextSize:F
    invoke-static {v5}, Lcom/samsung/android/share/SShareSimpleSharing;->access$1100(Lcom/samsung/android/share/SShareSimpleSharing;)F

    move-result v5

    mul-float/2addr v5, v0

    invoke-virtual {v4, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 854
    iget-object v5, p2, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->extraInfo:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 856
    const v5, 0x10204e6

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 857
    .local v1, "img":Landroid/widget/ImageView;
    const v5, 0x10804ec

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 858
    const v5, 0x10804c4

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 860
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 861
    .local v2, "shapeDrawable":Landroid/graphics/drawable/GradientDrawable;
    if-eqz v2, :cond_0

    .line 862
    iget-object v5, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/samsung/android/share/SShareSimpleSharing;->access$1200(Lcom/samsung/android/share/SShareSimpleSharing;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1060123

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 864
    :cond_0
    return-void
.end method

.method private final setItemView(Landroid/view/View;Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    .prologue
    .line 867
    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    # invokes: Lcom/samsung/android/share/SShareSimpleSharing;->getFontScale()F
    invoke-static {v8}, Lcom/samsung/android/share/SShareSimpleSharing;->access$1000(Lcom/samsung/android/share/SShareSimpleSharing;)F

    move-result v2

    .line 869
    .local v2, "fontScale":F
    const v8, 0x1020014

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 870
    .local v5, "text":Landroid/widget/TextView;
    const v8, 0x1020015

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 871
    .local v6, "text2":Landroid/widget/TextView;
    const v8, 0x10204e2

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 873
    .local v7, "text3":Landroid/widget/TextView;
    iget-object v8, p2, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->extraInfo:Ljava/lang/CharSequence;

    if-nez v8, :cond_3

    .line 874
    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    iget-object v9, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/samsung/android/share/SShareSimpleSharing;->access$1200(Lcom/samsung/android/share/SShareSimpleSharing;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x105029c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    # setter for: Lcom/samsung/android/share/SShareSimpleSharing;->defaultTextSize:F
    invoke-static {v8, v9}, Lcom/samsung/android/share/SShareSimpleSharing;->access$1102(Lcom/samsung/android/share/SShareSimpleSharing;F)F

    .line 875
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing;->defaultTextSize:F
    invoke-static {v9}, Lcom/samsung/android/share/SShareSimpleSharing;->access$1100(Lcom/samsung/android/share/SShareSimpleSharing;)F

    move-result v9

    mul-float/2addr v9, v2

    invoke-virtual {v5, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 876
    iget-object v8, p2, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 877
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 878
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 879
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 894
    :goto_0
    const v8, 0x10204e5

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 896
    .local v3, "img":Landroid/widget/ImageView;
    const v1, 0x10804c6

    .line 897
    .local v1, "bgIconId":I
    const v0, 0x1060123

    .line 899
    .local v0, "bgColorId":I
    const v8, 0x10804ec

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 901
    iget-object v8, p2, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->photoIcon:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_0

    iget v8, p2, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->iconType:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    .line 902
    :cond_0
    iget-object v8, p2, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->photoIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 903
    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/GradientDrawable;

    .line 904
    .local v4, "shapeDrawable":Landroid/graphics/drawable/GradientDrawable;
    if-eqz v4, :cond_1

    .line 905
    iget v8, p2, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->iconType:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    .line 906
    const v0, 0x1060125

    .line 943
    .end local v4    # "shapeDrawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_1
    :goto_1
    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/GradientDrawable;

    .line 944
    .restart local v4    # "shapeDrawable":Landroid/graphics/drawable/GradientDrawable;
    if-eqz v4, :cond_2

    .line 945
    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/samsung/android/share/SShareSimpleSharing;->access$1200(Lcom/samsung/android/share/SShareSimpleSharing;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 947
    :cond_2
    return-void

    .line 881
    .end local v0    # "bgColorId":I
    .end local v1    # "bgIconId":I
    .end local v3    # "img":Landroid/widget/ImageView;
    .end local v4    # "shapeDrawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_3
    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    iget-object v9, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/samsung/android/share/SShareSimpleSharing;->access$1200(Lcom/samsung/android/share/SShareSimpleSharing;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x105029d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    # setter for: Lcom/samsung/android/share/SShareSimpleSharing;->defaultTextSize:F
    invoke-static {v8, v9}, Lcom/samsung/android/share/SShareSimpleSharing;->access$1102(Lcom/samsung/android/share/SShareSimpleSharing;F)F

    .line 882
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing;->defaultTextSize:F
    invoke-static {v9}, Lcom/samsung/android/share/SShareSimpleSharing;->access$1100(Lcom/samsung/android/share/SShareSimpleSharing;)F

    move-result v9

    mul-float/2addr v9, v2

    invoke-virtual {v6, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 883
    iget-object v8, p2, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 885
    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    iget-object v9, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/samsung/android/share/SShareSimpleSharing;->access$1200(Lcom/samsung/android/share/SShareSimpleSharing;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x105029c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    # setter for: Lcom/samsung/android/share/SShareSimpleSharing;->defaultTextSize:F
    invoke-static {v8, v9}, Lcom/samsung/android/share/SShareSimpleSharing;->access$1102(Lcom/samsung/android/share/SShareSimpleSharing;F)F

    .line 886
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing;->defaultTextSize:F
    invoke-static {v9}, Lcom/samsung/android/share/SShareSimpleSharing;->access$1100(Lcom/samsung/android/share/SShareSimpleSharing;)F

    move-result v9

    mul-float/2addr v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 887
    iget-object v8, p2, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->extraInfo:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 889
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 890
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 891
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 908
    .restart local v0    # "bgColorId":I
    .restart local v1    # "bgIconId":I
    .restart local v3    # "img":Landroid/widget/ImageView;
    .restart local v4    # "shapeDrawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_4
    const v0, 0x1060124

    goto :goto_1

    .line 912
    .end local v4    # "shapeDrawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_5
    iget v8, p2, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->iconType:I

    packed-switch v8, :pswitch_data_0

    .line 934
    :pswitch_0
    const v1, 0x10804c6

    .line 935
    const v0, 0x1060124

    .line 940
    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 914
    :pswitch_1
    const v1, 0x10804c4

    .line 915
    const v0, 0x1060123

    .line 916
    goto :goto_2

    .line 918
    :pswitch_2
    const v1, 0x10804c6

    .line 919
    const v0, 0x1060124

    .line 920
    goto :goto_2

    .line 922
    :pswitch_3
    const v1, 0x10804c5

    .line 923
    const v0, 0x1060124

    .line 924
    goto :goto_2

    .line 926
    :pswitch_4
    const v1, 0x10800cb

    .line 927
    const v0, 0x1060126

    .line 928
    goto :goto_2

    .line 930
    :pswitch_5
    const v1, 0x10800cc

    .line 931
    const v0, 0x1060126

    .line 932
    goto :goto_2

    .line 912
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 809
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 814
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v2, 0x10204e2

    const/4 v3, 0x0

    .line 821
    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-virtual {v1}, Lcom/samsung/android/share/SShareSimpleSharing;->shouldShowRecentHistoryView()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 822
    if-eqz p2, :cond_0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 823
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090152

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 835
    .local v0, "view":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-virtual {v1}, Lcom/samsung/android/share/SShareSimpleSharing;->shouldShowRecentHistoryView()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 836
    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->setItemView(Landroid/view/View;Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;)V

    .line 841
    :goto_1
    return-object v0

    .line 825
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    move-object v0, p2

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0

    .line 828
    .end local v0    # "view":Landroid/view/View;
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 829
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090153

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0

    .line 831
    .end local v0    # "view":Landroid/view/View;
    :cond_4
    move-object v0, p2

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0

    .line 838
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->setDefaultView(Landroid/view/View;Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;)V

    goto :goto_1
.end method

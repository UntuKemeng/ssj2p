.class Landroid/preference/PreferenceActivity$7;
.super Ljava/lang/Object;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/PreferenceActivity;


# direct methods
.method constructor <init>(Landroid/preference/PreferenceActivity;)V
    .locals 0

    .prologue
    .line 990
    iput-object p1, p0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 27
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mEnableSplitBar:Z
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$600(Landroid/preference/PreferenceActivity;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 995
    const/16 v25, 0x0

    .line 1168
    .end local p1    # "v":Landroid/view/View;
    :goto_0
    return v25

    .line 998
    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 999
    .local v2, "action":I
    const/16 v17, 0x0

    .line 1000
    .local v17, "splitBar":Landroid/view/View;
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v25, v0

    if-eqz v25, :cond_1

    .line 1001
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "v":Landroid/view/View;
    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 1004
    :cond_1
    if-nez v17, :cond_2

    .line 1005
    const/16 v25, 0x0

    goto :goto_0

    .line 1008
    :cond_2
    if-nez v2, :cond_3

    .line 1010
    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    # setter for: Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z
    invoke-static/range {v25 .. v26}, Landroid/preference/PreferenceActivity;->access$1202(Landroid/preference/PreferenceActivity;Z)Z

    .line 1168
    :goto_1
    const/16 v25, 0x1

    goto :goto_0

    .line 1013
    :cond_3
    const/16 v25, 0x2

    move/from16 v0, v25

    if-ne v2, v0, :cond_10

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$1100(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getWidth()I

    move-result v18

    .line 1015
    .local v18, "splitBarwidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$1100(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    check-cast v25, Landroid/view/View;

    check-cast v25, Landroid/view/View;

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getWidth()I

    move-result v14

    .line 1017
    .local v14, "parentLayoutWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    .line 1018
    .local v21, "touchX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$1100(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getX()F

    move-result v13

    .line 1019
    .local v13, "newSplitBarPosX":F
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    add-float v12, v13, v25

    .line 1020
    .local v12, "newSplitBarCenterPosX":F
    add-float v22, v13, v21

    .line 1023
    .local v22, "touchXInParentRect":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$1000(Landroid/preference/PreferenceActivity;)Z

    move-result v25

    if-eqz v25, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mIsRTL:Z
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$700(Landroid/preference/PreferenceActivity;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 1024
    const v9, 0x3eae147a    # 0.33999997f

    .line 1025
    .local v9, "mSplitBarMoveableAreaMin":F
    const v8, 0x3f4ccccd    # 0.8f

    .line 1026
    .local v8, "mSplitBarMoveableAreaMax":F
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v25, v0

    cmpl-float v25, v21, v25

    if-lez v25, :cond_7

    int-to-float v0, v14

    move/from16 v25, v0

    cmpg-float v25, v22, v25

    if-gtz v25, :cond_7

    .line 1028
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v25, v21, v25

    add-float v12, v12, v25

    .line 1031
    int-to-float v0, v14

    move/from16 v25, v0

    div-float v19, v12, v25

    .line 1032
    .local v19, "splitRatio":F
    cmpl-float v25, v19, v8

    if-lez v25, :cond_4

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 1034
    .local v3, "d":Landroid/util/DisplayMetrics;
    const/16 v25, 0x1

    const/high16 v26, 0x41a00000    # 20.0f

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v20

    .line 1037
    .local v20, "splitXinFullview":F
    move/from16 v12, v20

    .line 1038
    int-to-float v0, v14

    move/from16 v25, v0

    sub-float v12, v25, v12

    .line 1040
    .end local v3    # "d":Landroid/util/DisplayMetrics;
    .end local v20    # "splitXinFullview":F
    :cond_4
    div-int/lit8 v25, v18, 0x2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v13, v12, v25

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$1100(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/view/View;->setX(F)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    # setter for: Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z
    invoke-static/range {v25 .. v26}, Landroid/preference/PreferenceActivity;->access$1202(Landroid/preference/PreferenceActivity;Z)Z

    .line 1108
    .end local v8    # "mSplitBarMoveableAreaMax":F
    .end local v9    # "mSplitBarMoveableAreaMin":F
    .end local v19    # "splitRatio":F
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$1200(Landroid/preference/PreferenceActivity;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 1109
    const/16 v25, 0x1

    # setter for: Landroid/preference/PreferenceActivity;->mUserUpdateSplit:Z
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$1302(Z)Z

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    const v26, 0x102045d

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 1111
    .local v4, "headerLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 1113
    .local v7, "llp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$900(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout$LayoutParams;

    .line 1116
    .local v16, "rlp":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1117
    .local v5, "leftPanelWeight":F
    move-object/from16 v0, v16

    iget v15, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1118
    .local v15, "rightPanelWeight":F
    add-float v23, v5, v15

    .line 1120
    .local v23, "weightSum":F
    int-to-float v0, v14

    move/from16 v25, v0

    div-float v6, v12, v25

    .line 1122
    .local v6, "leftPanelWidthRatio":F
    mul-float v10, v23, v6

    .line 1123
    .local v10, "newLeftPanelWeight":F
    sub-float v11, v23, v10

    .line 1125
    .local v11, "newRightPanelWeight":F
    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1126
    move-object/from16 v0, v16

    iput v11, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$1000(Landroid/preference/PreferenceActivity;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mIsRTL:Z
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$700(Landroid/preference/PreferenceActivity;)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 1131
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$900(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1140
    .end local v4    # "headerLayout":Landroid/widget/LinearLayout;
    .end local v5    # "leftPanelWeight":F
    .end local v6    # "leftPanelWidthRatio":F
    .end local v7    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "newLeftPanelWeight":F
    .end local v11    # "newRightPanelWeight":F
    .end local v15    # "rightPanelWeight":F
    .end local v16    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v23    # "weightSum":F
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    # setter for: Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z
    invoke-static/range {v25 .. v26}, Landroid/preference/PreferenceActivity;->access$1202(Landroid/preference/PreferenceActivity;Z)Z

    goto/16 :goto_1

    .line 1044
    .restart local v8    # "mSplitBarMoveableAreaMax":F
    .restart local v9    # "mSplitBarMoveableAreaMin":F
    :cond_7
    const/16 v25, 0x0

    cmpg-float v25, v21, v25

    if-gez v25, :cond_5

    const/16 v25, 0x0

    cmpl-float v25, v22, v25

    if-ltz v25, :cond_5

    .line 1046
    add-float v12, v12, v21

    .line 1049
    int-to-float v0, v14

    move/from16 v25, v0

    div-float v19, v12, v25

    .line 1050
    .restart local v19    # "splitRatio":F
    cmpg-float v25, v19, v9

    if-gez v25, :cond_9

    .line 1051
    int-to-float v0, v14

    move/from16 v25, v0

    mul-float v12, v25, v9

    .line 1062
    :cond_8
    :goto_4
    div-int/lit8 v25, v18, 0x2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v13, v12, v25

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$1100(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/view/View;->setX(F)V

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    # setter for: Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z
    invoke-static/range {v25 .. v26}, Landroid/preference/PreferenceActivity;->access$1202(Landroid/preference/PreferenceActivity;Z)Z

    goto/16 :goto_2

    .line 1053
    :cond_9
    cmpl-float v25, v19, v8

    if-lez v25, :cond_8

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 1055
    .restart local v3    # "d":Landroid/util/DisplayMetrics;
    const/16 v25, 0x1

    const/high16 v26, 0x41a00000    # 20.0f

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v20

    .line 1058
    .restart local v20    # "splitXinFullview":F
    move/from16 v12, v20

    .line 1059
    int-to-float v0, v14

    move/from16 v25, v0

    sub-float v12, v25, v12

    goto :goto_4

    .line 1069
    .end local v3    # "d":Landroid/util/DisplayMetrics;
    .end local v8    # "mSplitBarMoveableAreaMax":F
    .end local v9    # "mSplitBarMoveableAreaMin":F
    .end local v19    # "splitRatio":F
    .end local v20    # "splitXinFullview":F
    :cond_a
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v25, v0

    cmpl-float v25, v21, v25

    if-lez v25, :cond_d

    int-to-float v0, v14

    move/from16 v25, v0

    cmpg-float v25, v22, v25

    if-gtz v25, :cond_d

    .line 1071
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v25, v21, v25

    add-float v12, v12, v25

    .line 1074
    int-to-float v0, v14

    move/from16 v25, v0

    div-float v19, v12, v25

    .line 1075
    .restart local v19    # "splitRatio":F
    const v25, 0x3f28f5c3    # 0.66f

    cmpl-float v25, v19, v25

    if-lez v25, :cond_c

    .line 1076
    int-to-float v0, v14

    move/from16 v25, v0

    const v26, 0x3f28f5c3    # 0.66f

    mul-float v12, v25, v26

    .line 1085
    :cond_b
    :goto_5
    div-int/lit8 v25, v18, 0x2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v13, v12, v25

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$1100(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/view/View;->setX(F)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    # setter for: Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z
    invoke-static/range {v25 .. v26}, Landroid/preference/PreferenceActivity;->access$1202(Landroid/preference/PreferenceActivity;Z)Z

    goto/16 :goto_2

    .line 1078
    :cond_c
    const v25, 0x3e4ccccd    # 0.2f

    cmpg-float v25, v19, v25

    if-gez v25, :cond_b

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 1080
    .restart local v3    # "d":Landroid/util/DisplayMetrics;
    const/16 v25, 0x1

    const/high16 v26, 0x41a00000    # 20.0f

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v20

    .line 1083
    .restart local v20    # "splitXinFullview":F
    move/from16 v12, v20

    goto :goto_5

    .line 1089
    .end local v3    # "d":Landroid/util/DisplayMetrics;
    .end local v19    # "splitRatio":F
    .end local v20    # "splitXinFullview":F
    :cond_d
    const/16 v25, 0x0

    cmpg-float v25, v21, v25

    if-gez v25, :cond_5

    const/16 v25, 0x0

    cmpl-float v25, v22, v25

    if-ltz v25, :cond_5

    .line 1091
    add-float v12, v12, v21

    .line 1094
    int-to-float v0, v14

    move/from16 v25, v0

    div-float v19, v12, v25

    .line 1095
    .restart local v19    # "splitRatio":F
    const v25, 0x3e4ccccd    # 0.2f

    cmpg-float v25, v19, v25

    if-gez v25, :cond_e

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 1097
    .restart local v3    # "d":Landroid/util/DisplayMetrics;
    const/16 v25, 0x1

    const/high16 v26, 0x41a00000    # 20.0f

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v20

    .line 1100
    .restart local v20    # "splitXinFullview":F
    move/from16 v12, v20

    .line 1102
    .end local v3    # "d":Landroid/util/DisplayMetrics;
    .end local v20    # "splitXinFullview":F
    :cond_e
    div-int/lit8 v25, v18, 0x2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v13, v12, v25

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$1100(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/view/View;->setX(F)V

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    # setter for: Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z
    invoke-static/range {v25 .. v26}, Landroid/preference/PreferenceActivity;->access$1202(Landroid/preference/PreferenceActivity;Z)Z

    goto/16 :goto_2

    .line 1135
    .end local v19    # "splitRatio":F
    .restart local v4    # "headerLayout":Landroid/widget/LinearLayout;
    .restart local v5    # "leftPanelWeight":F
    .restart local v6    # "leftPanelWidthRatio":F
    .restart local v7    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v10    # "newLeftPanelWeight":F
    .restart local v11    # "newRightPanelWeight":F
    .restart local v15    # "rightPanelWeight":F
    .restart local v16    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v23    # "weightSum":F
    :cond_f
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$900(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 1141
    .end local v4    # "headerLayout":Landroid/widget/LinearLayout;
    .end local v5    # "leftPanelWeight":F
    .end local v6    # "leftPanelWidthRatio":F
    .end local v7    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "newLeftPanelWeight":F
    .end local v11    # "newRightPanelWeight":F
    .end local v12    # "newSplitBarCenterPosX":F
    .end local v13    # "newSplitBarPosX":F
    .end local v14    # "parentLayoutWidth":I
    .end local v15    # "rightPanelWeight":F
    .end local v16    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v18    # "splitBarwidth":I
    .end local v21    # "touchX":F
    .end local v22    # "touchXInParentRect":F
    .end local v23    # "weightSum":F
    :cond_10
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v2, v0, :cond_12

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    const v26, 0x102045d

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 1144
    .restart local v4    # "headerLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 1147
    .restart local v7    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarMovedLeftWeight:F
    invoke-static {}, Landroid/preference/PreferenceActivity;->access$1400()F

    move-result v25

    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_11

    .line 1148
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v25, v0

    # setter for: Landroid/preference/PreferenceActivity;->mSplitBarMovedLeftWeight:F
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$1402(F)F

    .line 1152
    :cond_11
    const/16 v25, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1153
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_1

    .line 1155
    .end local v4    # "headerLayout":Landroid/widget/LinearLayout;
    .end local v7    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$900(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewGroup;->getX()F

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v26, v0

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static/range {v26 .. v26}, Landroid/preference/PreferenceActivity;->access$1100(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getWidth()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v24, v25, v26

    .line 1156
    .local v24, "x":F
    const/16 v25, 0x0

    cmpg-float v25, v24, v25

    if-gez v25, :cond_13

    .line 1157
    const/16 v24, 0x0

    .line 1160
    :cond_13
    const/16 v25, 0x3

    move/from16 v0, v25

    if-ne v2, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$1000(Landroid/preference/PreferenceActivity;)Z

    move-result v25

    if-nez v25, :cond_15

    .line 1161
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$1100(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 1163
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    # setter for: Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z
    invoke-static/range {v25 .. v26}, Landroid/preference/PreferenceActivity;->access$1202(Landroid/preference/PreferenceActivity;Z)Z

    .line 1166
    const/16 v25, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

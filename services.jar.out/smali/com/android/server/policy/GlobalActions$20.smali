.class Lcom/android/server/policy/GlobalActions$20;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->makeActionsItem(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;

.field final synthetic val$action:Lcom/android/server/policy/GlobalActions$Action;

.field final synthetic val$isPort:Z

.field final synthetic val$tempView:Landroid/view/View;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;Landroid/view/View;ZLcom/android/server/policy/GlobalActions$Action;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 2196
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    iput-object p2, p0, Lcom/android/server/policy/GlobalActions$20;->val$tempView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/server/policy/GlobalActions$20;->val$isPort:Z

    iput-object p4, p0, Lcom/android/server/policy/GlobalActions$20;->val$action:Lcom/android/server/policy/GlobalActions$Action;

    iput-object p5, p0, Lcom/android/server/policy/GlobalActions$20;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2199
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2305
    :cond_0
    :goto_0
    return-void

    .line 2200
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2202
    const v6, 0x1020006

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2203
    .local v2, "imageView":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$20;->val$tempView:Landroid/view/View;

    const v7, 0x102000b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2204
    .local v4, "messageView":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$20;->val$tempView:Landroid/view/View;

    const v7, 0x10203b7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2206
    .local v5, "statusView":Landroid/widget/TextView;
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 2207
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->isTSafeLock()Z
    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->access$1200(Lcom/android/server/policy/GlobalActions;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsSecureKeyguard:Z
    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->access$1300(Lcom/android/server/policy/GlobalActions;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v7, v7, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-ne v6, v7, :cond_2

    .line 2208
    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v7, v7, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-ne v6, v7, :cond_0

    .line 2209
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mUnablePowerOff:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/policy/GlobalActions;->access$6000(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2214
    :cond_2
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->isFMMlocked()Z
    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->access$3100(Lcom/android/server/policy/GlobalActions;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v7, v7, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-eq v6, v7, :cond_3

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v7, v7, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    if-eq v6, v7, :cond_3

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v7, v7, Lcom/android/server/policy/GlobalActions;->mEmergencyIconResId:I

    if-eq v6, v7, :cond_3

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v7, v7, Lcom/android/server/policy/GlobalActions;->mBikeModeIconResId:I

    if-ne v6, v7, :cond_7

    .line 2218
    :cond_3
    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v7, v7, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-ne v6, v7, :cond_4

    .line 2219
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mUnablePowerOffForFMM:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/policy/GlobalActions;->access$6100(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2220
    :cond_4
    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v7, v7, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    if-ne v6, v7, :cond_5

    .line 2221
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mUnableRestartForFMM:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/policy/GlobalActions;->access$3800(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2222
    :cond_5
    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v7, v7, Lcom/android/server/policy/GlobalActions;->mEmergencyIconResId:I

    if-ne v6, v7, :cond_6

    .line 2223
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mUnableEmergencyforFMM:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/policy/GlobalActions;->access$3200(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2224
    :cond_6
    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v7, v7, Lcom/android/server/policy/GlobalActions;->mBikeModeIconResId:I

    if-ne v6, v7, :cond_0

    .line 2225
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mUnableSbikeforFMM:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/policy/GlobalActions;->access$4100(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2230
    :cond_7
    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v7, v7, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-eq v6, v7, :cond_8

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v7, v7, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    if-ne v6, v7, :cond_9

    .line 2231
    :cond_8
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "enterprise_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2233
    .local v1, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/enterprise/RestrictionPolicy;->isPowerOffAllowed(Z)Z

    move-result v6

    if-nez v6, :cond_9

    .line 2234
    sget-boolean v6, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v6, :cond_0

    .line 2235
    const-string v6, "GlobalActions"

    const-string/jumbo v7, "power or restart : restricted by MDM "

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2241
    .end local v1    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_9
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v7

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, p1, v7}, Lcom/android/server/policy/GlobalActions;->calculateDescritionViewHeight(Landroid/view/View;I)V

    .line 2243
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$4500()Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->isSingleActionItem(Landroid/view/View;)Z
    invoke-static {v6, p1}, Lcom/android/server/policy/GlobalActions;->access$6200(Lcom/android/server/policy/GlobalActions;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-boolean v6, p0, Lcom/android/server/policy/GlobalActions$20;->val$isPort:Z

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsDisableConfirm:Z
    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->access$6300(Lcom/android/server/policy/GlobalActions;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 2244
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$20;->val$tempView:Landroid/view/View;

    const/4 v8, 0x1

    # invokes: Lcom/android/server/policy/GlobalActions;->onClickForPortraitConfirmDialog(Landroid/view/View;Z)V
    invoke-static {v6, v7, v8}, Lcom/android/server/policy/GlobalActions;->access$6400(Lcom/android/server/policy/GlobalActions;Landroid/view/View;Z)V

    goto/16 :goto_0

    .line 2245
    :cond_a
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$4600()Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->isSingleActionItem(Landroid/view/View;)Z
    invoke-static {v6, p1}, Lcom/android/server/policy/GlobalActions;->access$6200(Lcom/android/server/policy/GlobalActions;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-boolean v6, p0, Lcom/android/server/policy/GlobalActions$20;->val$isPort:Z

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsDisableConfirm:Z
    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->access$6300(Lcom/android/server/policy/GlobalActions;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 2246
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$20;->val$tempView:Landroid/view/View;

    const/4 v8, 0x1

    # invokes: Lcom/android/server/policy/GlobalActions;->onClickForLandscapeConfirmDialog(Landroid/view/View;Z)V
    invoke-static {v6, v7, v8}, Lcom/android/server/policy/GlobalActions;->access$6500(Lcom/android/server/policy/GlobalActions;Landroid/view/View;Z)V

    goto/16 :goto_0

    .line 2248
    :cond_b
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v7, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mDisplayConfirm:Z
    invoke-static {v6, v7}, Lcom/android/server/policy/GlobalActions;->access$3902(Lcom/android/server/policy/GlobalActions;Z)Z

    .line 2251
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v7, v7, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-eq v6, v7, :cond_d

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v7, v7, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    if-eq v6, v7, :cond_d

    .line 2253
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$20;->val$action:Lcom/android/server/policy/GlobalActions$Action;

    invoke-interface {v6}, Lcom/android/server/policy/GlobalActions$Action;->onPress()V

    .line 2254
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6600()Z

    move-result v6

    if-nez v6, :cond_c

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6700()Z

    move-result v6

    if-nez v6, :cond_c

    .line 2255
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;
    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->access$6800(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsFrameLayoutSViewCover;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$20;->val$view:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->hideAllView(Landroid/view/View;)V

    .line 2259
    :goto_1
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->access$400(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2257
    :cond_c
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;
    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->access$6900(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsFrameLayout;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$20;->val$view:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/app/GlobalActionsFrameLayout;->hideAllView(Landroid/view/View;)V

    goto :goto_1

    .line 2261
    :cond_d
    const/4 v3, 0x0

    .line 2262
    .local v3, "ll":Landroid/widget/LinearLayout;
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6600()Z

    move-result v6

    if-nez v6, :cond_10

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6700()Z

    move-result v6

    if-nez v6, :cond_10

    .line 2263
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;
    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->access$6800(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsFrameLayoutSViewCover;

    move-result-object v6

    const v7, 0x10203a6

    invoke-virtual {v6, v7}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "ll":Landroid/widget/LinearLayout;
    check-cast v3, Landroid/widget/LinearLayout;

    .line 2264
    .restart local v3    # "ll":Landroid/widget/LinearLayout;
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsDisableConfirm:Z
    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->access$6300(Lcom/android/server/policy/GlobalActions;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2265
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;
    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->access$6800(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsFrameLayoutSViewCover;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$20;->val$tempView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->hideAllView(Landroid/view/View;)V

    .line 2277
    :cond_e
    :goto_2
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$20;->val$tempView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x96

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2278
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->access$7000(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x96

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2279
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsDisableConfirm:Z
    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->access$6300(Lcom/android/server/policy/GlobalActions;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 2280
    const v6, 0x1060148

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 2282
    :cond_f
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const-string v7, "alpha"

    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2283
    .local v0, "backgroundalpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 2284
    new-instance v6, Lcom/android/server/policy/GlobalActions$20$1;

    invoke-direct {v6, p0}, Lcom/android/server/policy/GlobalActions$20$1;-><init>(Lcom/android/server/policy/GlobalActions$20;)V

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_0

    .line 2268
    .end local v0    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    :cond_10
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;
    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->access$6900(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsFrameLayout;

    move-result-object v6

    const v7, 0x10203a6

    invoke-virtual {v6, v7}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "ll":Landroid/widget/LinearLayout;
    check-cast v3, Landroid/widget/LinearLayout;

    .line 2269
    .restart local v3    # "ll":Landroid/widget/LinearLayout;
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsDisableConfirm:Z
    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->access$6300(Lcom/android/server/policy/GlobalActions;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2270
    iget-boolean v6, p0, Lcom/android/server/policy/GlobalActions$20;->val$isPort:Z

    if-eqz v6, :cond_11

    .line 2271
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;
    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->access$6900(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsFrameLayout;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$20;->val$tempView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/app/GlobalActionsFrameLayout;->hideAllView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 2273
    :cond_11
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;
    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->access$6900(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsFrameLayout;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$20;->val$tempView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/app/GlobalActionsFrameLayout;->hideAllViewForLand(Landroid/view/View;)V

    goto/16 :goto_2

    .line 2282
    nop

    :array_0
    .array-data 4
        0x99
        0xff
    .end array-data
.end method
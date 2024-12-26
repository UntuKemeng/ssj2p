.class final Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
.super Landroid/app/Dialog;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GlobalActionsDialog"
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

.field private final mAlert:Lcom/android/internal/app/AlertController;

.field private mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private mCancelOnUp:Z

.field private final mContext:Landroid/content/Context;

.field private mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

.field private final mHandler:Landroid/os/Handler;

.field private mIntercepted:Z

.field private final mWindowTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;Landroid/os/Handler;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Lcom/android/internal/app/AlertController$AlertParams;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 4897
    invoke-static {p1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getDialogTheme(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 4924
    new-instance v0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog$1;-><init>(Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 4898
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    .line 4900
    iput-object p3, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    .line 4902
    new-instance v0, Lcom/android/internal/app/AlertController;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    .line 4903
    iget-object v0, p2, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/android/server/policy/GlobalActions$MyAdapter;

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    .line 4907
    const-string v0, "USA"

    # getter for: Lcom/android/server/policy/GlobalActions;->mCountyCode:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$9900()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "americano"

    # getter for: Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$2600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4908
    const-string v0, "VZW"

    # getter for: Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$1600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4909
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040105

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 4915
    :cond_0
    :goto_0
    const-string v0, "VZW"

    # getter for: Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$1600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6600()Z

    move-result v0

    if-nez v0, :cond_2

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6700()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4916
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 4920
    :cond_2
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    .line 4921
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {p2, v0}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    .line 4922
    return-void

    .line 4911
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104011d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic access$10000(Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    .prologue
    .line 4879
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static getDialogTheme(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4931
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4932
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010309

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 4934
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6600()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4935
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6700()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4936
    const v1, 0x10304e4

    .line 4941
    :goto_0
    return v1

    .line 4938
    :cond_0
    const v1, 0x10304e3

    goto :goto_0

    .line 4941
    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 4979
    const-string v0, "GlobalActions"

    const-string v1, "===== Start dispatchKeyEvent ====="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4980
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 4981
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4988
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 4983
    :pswitch_0
    const-string v0, "GlobalActions"

    const-string v1, "dispatchKeyEvent : KeyEvent.KEYCODE_HOME"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4984
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4985
    const/4 v0, 0x1

    goto :goto_0

    .line 4981
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 5055
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    if-eqz v2, :cond_1

    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5057
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 5058
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2, v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/policy/GlobalActions$Action;->getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 5060
    .local v1, "label":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 5061
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5057
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5065
    .end local v0    # "i":I
    .end local v1    # "label":Ljava/lang/CharSequence;
    :cond_1
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5066
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    const v4, 0x10409db

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    const v4, 0x104011d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5070
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    return v2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 4993
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    if-eqz v2, :cond_4

    .line 4994
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 4995
    .local v8, "action":I
    if-nez v8, :cond_1

    .line 4996
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    .line 4997
    .local v9, "decor":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v10, v2

    .line 4998
    .local v10, "eventX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v11, v2

    .line 4999
    .local v11, "eventY":I
    iget v2, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    neg-int v2, v2

    if-lt v10, v2, :cond_0

    iget v2, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    neg-int v2, v2

    if-lt v11, v2, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    add-int/2addr v2, v3

    if-ge v10, v2, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    add-int/2addr v2, v3

    if-lt v11, v2, :cond_1

    .line 5003
    :cond_0
    iput-boolean v13, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 5004
    sput-boolean v13, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    .line 5008
    .end local v9    # "decor":Landroid/view/View;
    .end local v10    # "eventX":I
    .end local v11    # "eventY":I
    :cond_1
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    if-nez v2, :cond_6

    .line 5009
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/server/policy/EnableAccessibilityController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    .line 5010
    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    if-eqz v2, :cond_2

    .line 5011
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 5012
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 5014
    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 5015
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 5016
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5022
    .end local v0    # "now":J
    :cond_2
    if-ne v8, v13, :cond_4

    .line 5023
    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v2, :cond_3

    .line 5024
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->cancel()V

    .line 5025
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5027
    :cond_3
    iput-boolean v12, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 5028
    iput-boolean v12, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    .line 5032
    .end local v8    # "action":I
    :cond_4
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_5
    :goto_0
    return v2

    .line 5019
    .restart local v8    # "action":I
    :cond_6
    :try_start_1
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/server/policy/EnableAccessibilityController;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 5022
    if-ne v8, v13, :cond_5

    .line 5023
    iget-boolean v3, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v3, :cond_7

    .line 5024
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->cancel()V

    .line 5025
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5027
    :cond_7
    iput-boolean v12, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 5028
    iput-boolean v12, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    goto :goto_0

    .line 5022
    :catchall_0
    move-exception v2

    if-ne v8, v13, :cond_9

    .line 5023
    iget-boolean v3, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v3, :cond_8

    .line 5024
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->cancel()V

    .line 5025
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5027
    :cond_8
    iput-boolean v12, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 5028
    iput-boolean v12, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    :cond_9
    throw v2
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 5036
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6600()Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6700()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5037
    :cond_1
    # getter for: Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$5000()Landroid/widget/ListView;

    move-result-object v0

    .line 5039
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 5045
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 5046
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6600()Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6700()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5047
    :cond_0
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5048
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->installContent()V

    .line 5051
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 5076
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5077
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v1, :cond_1

    .line 5078
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$4500()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5079
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5080
    # setter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$4502(Z)Z

    .line 5103
    :goto_0
    return v0

    .line 5083
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v1

    .line 5085
    goto :goto_0

    .line 5086
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 5087
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$4600()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5088
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5089
    # setter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$4602(Z)Z

    goto :goto_0

    .line 5092
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v1

    .line 5094
    goto :goto_0

    .line 5098
    :cond_3
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6600()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5099
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 5100
    goto :goto_0

    .line 5103
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 5108
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5109
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5110
    const/4 v0, 0x1

    .line 5113
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4950
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/EnableAccessibilityController;->canEnableAccessibilityViaGesture(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4951
    new-instance v0, Lcom/android/server/policy/EnableAccessibilityController;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog$2;

    invoke-direct {v2, p0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog$2;-><init>(Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/EnableAccessibilityController;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    .line 4958
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    .line 4959
    invoke-super {p0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4966
    :goto_0
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 4967
    return-void

    .line 4961
    :cond_0
    sput-boolean v3, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    .line 4962
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    .line 4963
    invoke-super {p0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 4971
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    if-eqz v0, :cond_0

    .line 4972
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-virtual {v0}, Lcom/android/server/policy/EnableAccessibilityController;->onDestroy()V

    .line 4974
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 4975
    return-void
.end method

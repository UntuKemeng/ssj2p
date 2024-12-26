.class Landroid/widget/PopupWindow$PopupDecorView;
.super Landroid/widget/FrameLayout;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDecorView"
.end annotation


# instance fields
.field private mIsPenSelectionMode:Z

.field private mPendingExitListener:Landroid/transition/Transition$TransitionListenerAdapter;

.field private mSpenUspLevel:I

.field final synthetic this$0:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2257
    iput-object p1, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    .line 2258
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2253
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->mSpenUspLevel:I

    .line 2254
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->mIsPenSelectionMode:Z

    .line 2259
    return-void
.end method

.method static synthetic access$1000(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/PopupWindow$PopupDecorView;
    .param p1, "x1"    # Landroid/transition/Transition;

    .prologue
    .line 2249
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow$PopupDecorView;->startEnterTransition(Landroid/transition/Transition;)V

    return-void
.end method

.method static synthetic access$1102(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition$TransitionListenerAdapter;)Landroid/transition/Transition$TransitionListenerAdapter;
    .locals 0
    .param p0, "x0"    # Landroid/widget/PopupWindow$PopupDecorView;
    .param p1, "x1"    # Landroid/transition/Transition$TransitionListenerAdapter;

    .prologue
    .line 2249
    iput-object p1, p0, Landroid/widget/PopupWindow$PopupDecorView;->mPendingExitListener:Landroid/transition/Transition$TransitionListenerAdapter;

    return-object p1
.end method

.method private startEnterTransition(Landroid/transition/Transition;)V
    .locals 4
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    .prologue
    .line 2372
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getChildCount()I

    move-result v1

    .line 2373
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2374
    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow$PopupDecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2375
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 2376
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2373
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2379
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    invoke-static {p0, p1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 2381
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 2382
    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow$PopupDecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2383
    .restart local v0    # "child":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2381
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2385
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public cancelTransitions()V
    .locals 2

    .prologue
    .line 2432
    invoke-static {p0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 2434
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->mPendingExitListener:Landroid/transition/Transition$TransitionListenerAdapter;

    if-eqz v0, :cond_0

    .line 2435
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->mPendingExitListener:Landroid/transition/Transition$TransitionListenerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/transition/Transition$TransitionListenerAdapter;->onTransitionEnd(Landroid/transition/Transition;)V

    .line 2437
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 2263
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 2264
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2265
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2283
    :cond_0
    :goto_0
    return v1

    .line 2268
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 2269
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 2270
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_0

    .line 2271
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 2274
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 2275
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 2276
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2277
    iget-object v2, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 2281
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 2283
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 2290
    iget v2, p0, Landroid/widget/PopupWindow$PopupDecorView;->mSpenUspLevel:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    .line 2291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2292
    .local v0, "action":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 2293
    packed-switch v0, :pswitch_data_0

    .line 2315
    .end local v0    # "action":I
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;
    invoke-static {v2}, Landroid/widget/PopupWindow;->access$800(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;
    invoke-static {v2}, Landroid/widget/PopupWindow;->access$800(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2318
    :goto_1
    return v1

    .line 2295
    .restart local v0    # "action":I
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_1

    .line 2296
    iput-boolean v1, p0, Landroid/widget/PopupWindow$PopupDecorView;->mIsPenSelectionMode:Z

    .line 2297
    const/16 v2, 0xd3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 2299
    :cond_1
    iput-boolean v4, p0, Landroid/widget/PopupWindow$PopupDecorView;->mIsPenSelectionMode:Z

    goto :goto_0

    .line 2303
    :pswitch_1
    iget-boolean v2, p0, Landroid/widget/PopupWindow$PopupDecorView;->mIsPenSelectionMode:Z

    if-eqz v2, :cond_0

    const/16 v2, 0xd5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 2306
    :pswitch_2
    iget-boolean v2, p0, Landroid/widget/PopupWindow$PopupDecorView;->mIsPenSelectionMode:Z

    if-eqz v2, :cond_2

    const/16 v2, 0xd4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2307
    :cond_2
    iput-boolean v4, p0, Landroid/widget/PopupWindow$PopupDecorView;->mIsPenSelectionMode:Z

    goto :goto_0

    .line 2318
    .end local v0    # "action":I
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    .line 2293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 2323
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 2324
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 2326
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getWidth()I

    move-result v3

    if-ge v0, v3, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getHeight()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 2328
    :cond_0
    iget-object v3, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2334
    :goto_0
    return v2

    .line 2330
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 2331
    iget-object v3, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 2334
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public requestEnterTransition(Landroid/transition/Transition;)V
    .locals 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 2342
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 2343
    .local v1, "observer":Landroid/view/ViewTreeObserver;
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 2344
    invoke-virtual {p1}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v0

    .line 2347
    .local v0, "enterTransition":Landroid/transition/Transition;
    new-instance v2, Landroid/widget/PopupWindow$PopupDecorView$1;

    invoke-direct {v2, p0, v0}, Landroid/widget/PopupWindow$PopupDecorView$1;-><init>(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2366
    .end local v0    # "enterTransition":Landroid/transition/Transition;
    :cond_0
    return-void
.end method

.method public startExitTransition(Landroid/transition/Transition;Landroid/transition/Transition$TransitionListener;)V
    .locals 5
    .param p1, "transition"    # Landroid/transition/Transition;
    .param p2, "listener"    # Landroid/transition/Transition$TransitionListener;

    .prologue
    .line 2395
    if-nez p1, :cond_1

    .line 2426
    :cond_0
    return-void

    .line 2401
    :cond_1
    new-instance v4, Landroid/widget/PopupWindow$PopupDecorView$2;

    invoke-direct {v4, p0, p2}, Landroid/widget/PopupWindow$PopupDecorView$2;-><init>(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition$TransitionListener;)V

    iput-object v4, p0, Landroid/widget/PopupWindow$PopupDecorView;->mPendingExitListener:Landroid/transition/Transition$TransitionListenerAdapter;

    .line 2411
    invoke-virtual {p1}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v2

    .line 2412
    .local v2, "exitTransition":Landroid/transition/Transition;
    iget-object v4, p0, Landroid/widget/PopupWindow$PopupDecorView;->mPendingExitListener:Landroid/transition/Transition$TransitionListenerAdapter;

    invoke-virtual {v2, v4}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 2414
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getChildCount()I

    move-result v1

    .line 2415
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 2416
    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow$PopupDecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2417
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v2, v0}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 2415
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2420
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    invoke-static {p0, v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 2422
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_0

    .line 2423
    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow$PopupDecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2424
    .restart local v0    # "child":Landroid/view/View;
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2422
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

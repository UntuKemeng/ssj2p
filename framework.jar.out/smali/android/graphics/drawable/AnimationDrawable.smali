.class public Landroid/graphics/drawable/AnimationDrawable;
.super Landroid/graphics/drawable/DrawableContainer;
.source "AnimationDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AnimationDrawable$1;,
        Landroid/graphics/drawable/AnimationDrawable$AnimationState;
    }
.end annotation


# instance fields
.field private mAnimating:Z

.field private mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

.field private mCurFrame:I

.field private mMutated:Z

.field private mRunning:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "state"    # Landroid/graphics/drawable/AnimationDrawable$AnimationState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;-><init>()V

    iput v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    new-instance v0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/graphics/drawable/AnimationDrawable;Landroid/content/res/Resources;)V

    .local v0, "as":Landroid/graphics/drawable/AnimationDrawable$AnimationState;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimationDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v2, v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimationDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/drawable/AnimationDrawable$AnimationState;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Landroid/graphics/drawable/AnimationDrawable$1;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AnimationDrawable;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 10
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    .local v4, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    if-eq v5, v8, :cond_6

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .local v1, "depth":I
    if-ge v1, v4, :cond_1

    const/4 v6, 0x3

    if-eq v5, v6, :cond_6

    :cond_1
    if-ne v5, v9, :cond_0

    if-gt v1, v4, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "item"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/internal/R$styleable;->AnimationDrawableItem:[I

    invoke-static {p1, p4, p3, v6}, Landroid/graphics/drawable/AnimationDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .local v3, "duration":I
    if-gez v3, :cond_2

    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": <item> tag requires a \'duration\' attribute"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v2, :cond_5

    :cond_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_3

    if-eq v5, v9, :cond_4

    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": <item> tag requires a \'drawable\' attribute or child tag"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " defining a drawable"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_5
    iget-object v6, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v6, v2, v3}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto/16 :goto_0

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "depth":I
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v3    # "duration":I
    :cond_6
    return-void
.end method

.method private nextFrame(Z)V
    .locals 6
    .param p1, "unschedule"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v5, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    add-int/lit8 v1, v5, 0x1

    .local v1, "nextFrame":I
    iget-object v5, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildCount()I

    move-result v2

    .local v2, "numFrames":I
    iget-object v5, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    # getter for: Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z
    invoke-static {v5}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$000(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v5, v2, -0x1

    if-lt v1, v5, :cond_1

    move v0, v3

    .local v0, "isLastFrame":Z
    :goto_0
    iget-object v5, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    # getter for: Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z
    invoke-static {v5}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$000(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z

    move-result v5

    if-nez v5, :cond_0

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-nez v0, :cond_2

    :goto_1
    invoke-direct {p0, v1, p1, v3}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    return-void

    .end local v0    # "isLastFrame":Z
    :cond_1
    move v0, v4

    goto :goto_0

    .restart local v0    # "isLastFrame":Z
    :cond_2
    move v3, v4

    goto :goto_1
.end method

.method private setFrame(IZZ)V
    .locals 4
    .param p1, "frame"    # I
    .param p2, "unschedule"    # Z
    .param p3, "animate"    # Z

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p3, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimating:Z

    iput p1, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    if-nez p2, :cond_2

    if-eqz p3, :cond_3

    :cond_2
    invoke-virtual {p0, p0}, Landroid/graphics/drawable/AnimationDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    :cond_3
    if-eqz p3, :cond_0

    iput p1, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mRunning:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    # getter for: Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I
    invoke-static {v2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$100(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)[I

    move-result-object v2

    aget v2, v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    iget-boolean v2, v2, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mVariablePadding:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mVariablePadding:Z

    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    # getter for: Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z
    invoke-static {v2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$000(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    # setter for: Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z
    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$002(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Z)Z

    return-void
.end method


# virtual methods
.method public addFrame(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "frame"    # Landroid/graphics/drawable/Drawable;
    .param p2, "duration"    # I

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    iget-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    :cond_0
    return-void
.end method

.method public clearMutated()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->clearMutated()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mMutated:Z

    return-void
.end method

.method cloneConstantState()Landroid/graphics/drawable/AnimationDrawable$AnimationState;
    .locals 3

    .prologue
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    iget-object v1, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/graphics/drawable/AnimationDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method bridge synthetic cloneConstantState()Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->cloneConstantState()Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    move-result-object v0

    return-object v0
.end method

.method public getDuration(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    # getter for: Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I
    invoke-static {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$100(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)[I

    move-result-object v0

    aget v0, v0, p1

    return v0
.end method

.method public getFrame(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "index"    # I

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfFrames()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildCount()I

    move-result v0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    sget-object v1, Lcom/android/internal/R$styleable;->AnimationDrawable:[I

    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/AnimationDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-super {p0, p1, p2, v0, v2}, Landroid/graphics/drawable/DrawableContainer;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimationDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimationDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    const/4 v1, 0x1

    invoke-direct {p0, v2, v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    return-void
.end method

.method public isOneShot()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    # getter for: Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z
    invoke-static {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$000(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mRunning:Z

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    # invokes: Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mutate()V
    invoke-static {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$200(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mMutated:Z

    :cond_0
    return-object p0
.end method

.method public run()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimationDrawable;->nextFrame(Z)V

    return-void
.end method

.method protected setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .prologue
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    .end local p1    # "state":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    iput-object p1, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    :cond_0
    return-void
.end method

.method public setOneShot(Z)V
    .locals 1
    .param p1, "oneShot"    # Z

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    # setter for: Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z
    invoke-static {v0, p1}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$002(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Z)Z

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 6
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableContainer;->setVisible(ZZ)Z

    move-result v0

    .local v0, "changed":Z
    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    if-nez p2, :cond_1

    iget-boolean v4, p0, Landroid/graphics/drawable/AnimationDrawable;->mRunning:Z

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    iget-object v5, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildCount()I

    move-result v5

    if-lt v4, v5, :cond_3

    :cond_1
    move v1, v3

    .local v1, "startFromZero":Z
    :goto_0
    if-eqz v1, :cond_4

    :goto_1
    iget-boolean v4, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimating:Z

    invoke-direct {p0, v2, v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    .end local v1    # "startFromZero":Z
    :cond_2
    :goto_2
    return v0

    :cond_3
    move v1, v2

    goto :goto_0

    .restart local v1    # "startFromZero":Z
    :cond_4
    iget v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    goto :goto_1

    .end local v1    # "startFromZero":Z
    :cond_5
    invoke-virtual {p0, p0}, Landroid/graphics/drawable/AnimationDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimating:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildCount()I

    move-result v2

    if-gt v2, v0, :cond_0

    iget-object v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    # getter for: Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z
    invoke-static {v2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$000(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    invoke-direct {p0, v1, v1, v0}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimating:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Landroid/graphics/drawable/AnimationDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "what"    # Ljava/lang/Runnable;

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mRunning:Z

    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method

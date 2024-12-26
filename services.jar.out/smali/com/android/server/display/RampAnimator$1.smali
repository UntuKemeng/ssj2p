.class Lcom/android/server/display/RampAnimator$1;
.super Ljava/lang/Object;
.source "RampAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/RampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/RampAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/display/RampAnimator;)V
    .locals 0

    .prologue
    .line 142
    .local p0, "this":Lcom/android/server/display/RampAnimator$1;, "Lcom/android/server/display/RampAnimator.1;"
    iput-object p1, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .local p0, "this":Lcom/android/server/display/RampAnimator$1;, "Lcom/android/server/display/RampAnimator.1;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 145
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;
    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$000(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v2

    .line 146
    .local v2, "frameTimeNanos":J
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J
    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$100(Lcom/android/server/display/RampAnimator;)J

    move-result-wide v6

    sub-long v6, v2, v6

    long-to-float v6, v6

    const v7, 0x3089705f    # 1.0E-9f

    mul-float v5, v6, v7

    .line 149
    .local v5, "timeDelta":F
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mRate:I
    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$200(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    if-ne v6, v9, :cond_2

    .line 150
    const v6, 0x3c83126f    # 0.016f

    cmpg-float v6, v5, v6

    if-ltz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;
    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)Landroid/util/IntProperty;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/IntProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mCurrentValue:I
    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 151
    :cond_0
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # invokes: Lcom/android/server/display/RampAnimator;->postAnimationCallback()V
    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$600(Lcom/android/server/display/RampAnimator;)V

    .line 201
    :cond_1
    :goto_0
    return-void

    .line 156
    :cond_2
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # setter for: Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J
    invoke-static {v6, v2, v3}, Lcom/android/server/display/RampAnimator;->access$102(Lcom/android/server/display/RampAnimator;J)J

    .line 158
    cmpg-float v6, v5, v8

    if-gez v6, :cond_3

    .line 159
    const-string v6, "RampAnimator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mAnimationCallback timeDelta calculate error!! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # invokes: Lcom/android/server/display/RampAnimator;->postAnimationCallback()V
    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$600(Lcom/android/server/display/RampAnimator;)V

    goto :goto_0

    .line 169
    :cond_3
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v4

    .line 170
    .local v4, "scale":F
    cmpl-float v6, v4, v8

    if-nez v6, :cond_5

    .line 172
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mTargetValue:I
    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    int-to-float v7, v7

    # setter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v6, v7}, Lcom/android/server/display/RampAnimator;->access$702(Lcom/android/server/display/RampAnimator;F)F

    .line 186
    :goto_1
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mCurrentValue:I
    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v1

    .line 187
    .local v1, "oldCurrentValue":I
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$700(Lcom/android/server/display/RampAnimator;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    # setter for: Lcom/android/server/display/RampAnimator;->mCurrentValue:I
    invoke-static {v6, v7}, Lcom/android/server/display/RampAnimator;->access$502(Lcom/android/server/display/RampAnimator;I)I

    .line 189
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mCurrentValue:I
    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    if-eq v1, v6, :cond_4

    .line 190
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;
    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)Landroid/util/IntProperty;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mCurrentValue:I
    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 193
    :cond_4
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mTargetValue:I
    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mCurrentValue:I
    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    if-eq v6, v7, :cond_8

    .line 194
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # invokes: Lcom/android/server/display/RampAnimator;->postAnimationCallback()V
    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$600(Lcom/android/server/display/RampAnimator;)V

    goto/16 :goto_0

    .line 174
    .end local v1    # "oldCurrentValue":I
    :cond_5
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mRate:I
    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$200(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    div-float v0, v6, v4

    .line 176
    .local v0, "amount":F
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mRate:I
    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$200(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    if-ne v6, v9, :cond_6

    .line 177
    const/high16 v0, 0x3f800000    # 1.0f

    .line 180
    :cond_6
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mTargetValue:I
    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mCurrentValue:I
    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    if-le v6, v7, :cond_7

    .line 181
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$700(Lcom/android/server/display/RampAnimator;)F

    move-result v7

    add-float/2addr v7, v0

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mTargetValue:I
    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    # setter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v6, v7}, Lcom/android/server/display/RampAnimator;->access$702(Lcom/android/server/display/RampAnimator;F)F

    goto :goto_1

    .line 183
    :cond_7
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$700(Lcom/android/server/display/RampAnimator;)F

    move-result v7

    sub-float/2addr v7, v0

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mTargetValue:I
    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    # setter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v6, v7}, Lcom/android/server/display/RampAnimator;->access$702(Lcom/android/server/display/RampAnimator;F)F

    goto/16 :goto_1

    .line 196
    .end local v0    # "amount":F
    .restart local v1    # "oldCurrentValue":I
    :cond_8
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/4 v7, 0x0

    # setter for: Lcom/android/server/display/RampAnimator;->mAnimating:Z
    invoke-static {v6, v7}, Lcom/android/server/display/RampAnimator;->access$902(Lcom/android/server/display/RampAnimator;Z)Z

    .line 197
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;
    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$1000(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 198
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;
    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$1000(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    goto/16 :goto_0
.end method

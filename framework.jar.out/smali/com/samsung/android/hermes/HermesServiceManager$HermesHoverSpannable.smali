.class public Lcom/samsung/android/hermes/HermesServiceManager$HermesHoverSpannable;
.super Landroid/text/style/HoverableSpan;
.source "HermesServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hermes/HermesServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HermesHoverSpannable"
.end annotation


# instance fields
.field mResult:Lcom/samsung/android/hermes/KerykeionResult;

.field final synthetic this$0:Lcom/samsung/android/hermes/HermesServiceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hermes/HermesServiceManager;Lcom/samsung/android/hermes/KerykeionResult;)V
    .locals 1
    .param p2, "kResult"    # Lcom/samsung/android/hermes/KerykeionResult;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesHoverSpannable;->this$0:Lcom/samsung/android/hermes/HermesServiceManager;

    invoke-direct {p0}, Landroid/text/style/HoverableSpan;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesHoverSpannable;->mResult:Lcom/samsung/android/hermes/KerykeionResult;

    iput-object p2, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesHoverSpannable;->mResult:Lcom/samsung/android/hermes/KerykeionResult;

    return-void
.end method


# virtual methods
.method public onHoverEnter(Landroid/view/View;)V
    .locals 7
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    # getter for: Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hermes/HermesServiceManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Hovered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesHoverSpannable;->this$0:Lcom/samsung/android/hermes/HermesServiceManager;

    iget-object v2, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesHoverSpannable;->this$0:Lcom/samsung/android/hermes/HermesServiceManager;

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/samsung/android/hermes/KerykeionResult;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesHoverSpannable;->mResult:Lcom/samsung/android/hermes/KerykeionResult;

    aput-object v6, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    # invokes: Lcom/samsung/android/hermes/HermesServiceManager;->makeJson(Ljava/util/ArrayList;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/samsung/android/hermes/HermesServiceManager;->access$700(Lcom/samsung/android/hermes/HermesServiceManager;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/samsung/android/hermes/HermesServiceManager;->startHermesTickerService(Ljava/lang/String;Landroid/graphics/Rect;)V
    invoke-static {v1, v2, v0}, Lcom/samsung/android/hermes/HermesServiceManager;->access$800(Lcom/samsung/android/hermes/HermesServiceManager;Ljava/lang/String;Landroid/graphics/Rect;)V

    return-void
.end method

.method public onHoverExit(Landroid/view/View;)V
    .locals 0
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    const v0, -0xffff01

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    invoke-super {p0, p1}, Landroid/text/style/HoverableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    return-void
.end method

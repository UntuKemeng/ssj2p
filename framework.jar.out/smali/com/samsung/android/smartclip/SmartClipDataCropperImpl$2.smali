.class Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$2;
.super Landroid/os/Handler;
.source "SmartClipDataCropperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_ThirdPartyInterface(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public mResult:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

.field final synthetic this$0:Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;

.field final synthetic val$resultElement:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Landroid/view/View;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$2;->this$0:Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;

    iput-object p2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$2;->val$resultElement:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    iput-object p3, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$2;->val$resultElement:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$2;->mResult:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-string v1, "SmartClipDataCropperImpl"

    const-string v2, "Pending meta data arrived from third party"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    const-string v1, "SmartClipDataCropperImpl"

    const-string v2, "The bundle is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$2;->this$0:Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;

    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$2;->val$view:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$2;->mResult:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->setPendingExtractionResult(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$2;->this$0:Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;

    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$2;->val$view:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$2;->val$resultElement:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    # invokes: Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->updateDataElementWithBundle(Landroid/view/View;Landroid/os/Bundle;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Z
    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->access$200(Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;Landroid/view/View;Landroid/os/Bundle;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Z

    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$2;->this$0:Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;

    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$2;->val$view:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$2;->mResult:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->setPendingExtractionResult(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z

    goto :goto_0
.end method

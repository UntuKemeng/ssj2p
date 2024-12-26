.class Lcom/android/internal/telephony/uicc/UiccCard$3;
.super Ljava/lang/Object;
.source "UiccCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/UiccCard;->showCTCPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 0

    .prologue
    .line 1246
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1248
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCard;->dialogCTCSim:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v1, "showCTCPopup dismiss"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->access$200(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    .line 1250
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCard;->dialogCTCSim:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1252
    :cond_0
    return-void
.end method

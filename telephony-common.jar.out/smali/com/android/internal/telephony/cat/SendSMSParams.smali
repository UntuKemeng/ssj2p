.class Lcom/android/internal/telephony/cat/SendSMSParams;
.super Lcom/android/internal/telephony/cat/DisplayTextParams;
.source "CommandParams.java"


# instance fields
.field Format:Ljava/lang/String;

.field Pdu:Ljava/lang/String;

.field SmscAddress:Ljava/lang/String;

.field textMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "textMsg"    # Lcom/android/internal/telephony/cat/TextMessage;
    .param p3, "Smscaddress"    # Ljava/lang/String;
    .param p4, "Pdu"    # Ljava/lang/String;
    .param p5, "Format"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object p3, p0, Lcom/android/internal/telephony/cat/SendSMSParams;->SmscAddress:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/telephony/cat/SendSMSParams;->Pdu:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/internal/telephony/cat/SendSMSParams;->Format:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "textMsg"    # Lcom/android/internal/telephony/cat/TextMessage;
    .param p3, "Smscaddress"    # Ljava/lang/String;
    .param p4, "Pdu"    # Ljava/lang/String;
    .param p5, "Format"    # Ljava/lang/String;
    .param p6, "hasIcon"    # Z

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/cat/SendSMSParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p6}, Lcom/android/internal/telephony/cat/SendSMSParams;->setHasIconTag(Z)V

    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/SendSMSParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/SendSMSParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object p1, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

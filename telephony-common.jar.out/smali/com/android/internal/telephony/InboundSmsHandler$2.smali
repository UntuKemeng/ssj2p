.class Lcom/android/internal/telephony/InboundSmsHandler$2;
.super Landroid/content/BroadcastReceiver;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0

    .prologue
    .line 2267
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$2;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, -0x1

    .line 2270
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$2;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received blocked SmsMms intent :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2271
    const-string v7, "extra_pdu"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 2272
    .local v2, "pdu":[B
    if-eqz v2, :cond_2

    .line 2273
    const-string v7, "edm.intent.action.internal.RESTRICTION_SEND_BLOCKED_SMS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2274
    const-string v7, "send_type"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 2275
    .local v4, "sendType":I
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$2;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v7, v2, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->handleBlockedSms([BI)V

    .line 2277
    .end local v4    # "sendType":I
    :cond_0
    const-string v7, "edm.intent.action.internal.RESTRICTION_SEND_BLOCKED_MMS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2279
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$2;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v7, v7, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    iget-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandler$2;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v7, v2, p0, v8}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I

    move-result v3

    .line 2281
    .local v3, "result":I
    if-ne v3, v10, :cond_2

    .line 2282
    const-string v7, "extra_orig_address"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2283
    .local v1, "origAddress":Ljava/lang/String;
    const-string v7, "extra_time_stamp"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2284
    .local v5, "timeStamp":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2285
    .local v6, "wapSms":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, v2

    if-ge v0, v7, :cond_1

    .line 2286
    aget-byte v7, v2, v0

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2288
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    .line 2289
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$2;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v7, v1, v5, v8, v9}, Lcom/android/internal/telephony/InboundSmsHandler;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2295
    .end local v0    # "i":I
    .end local v1    # "origAddress":Ljava/lang/String;
    .end local v3    # "result":I
    .end local v5    # "timeStamp":Ljava/lang/String;
    .end local v6    # "wapSms":Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method

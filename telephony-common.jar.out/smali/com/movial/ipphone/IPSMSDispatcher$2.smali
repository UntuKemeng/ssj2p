.class Lcom/movial/ipphone/IPSMSDispatcher$2;
.super Landroid/os/Handler;
.source "IPSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/movial/ipphone/IPSMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/movial/ipphone/IPSMSDispatcher;


# direct methods
.method constructor <init>(Lcom/movial/ipphone/IPSMSDispatcher;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/movial/ipphone/IPSMSDispatcher$2;->this$0:Lcom/movial/ipphone/IPSMSDispatcher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 275
    const-string v9, "IPSMSDispatcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Handler Message Received: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 317
    const-string v9, "IPSMSDispatcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mIPSmsTrackerHandler/handleMessage(): unexpected message: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 278
    :pswitch_0
    iget-object v9, p0, Lcom/movial/ipphone/IPSMSDispatcher$2;->this$0:Lcom/movial/ipphone/IPSMSDispatcher;

    iget v10, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/movial/ipphone/IPSMSDispatcher;->findAndRemoveTrackerWithSerial(I)Lcom/movial/ipphone/IPSMSDispatcher$IPSmsTracker;
    invoke-static {v9, v10}, Lcom/movial/ipphone/IPSMSDispatcher;->access$500(Lcom/movial/ipphone/IPSMSDispatcher;I)Lcom/movial/ipphone/IPSMSDispatcher$IPSmsTracker;

    move-result-object v4

    .line 279
    .local v4, "iptracker":Lcom/movial/ipphone/IPSMSDispatcher$IPSmsTracker;
    if-eqz v4, :cond_0

    .line 280
    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v9}, Lcom/movial/ipphone/IPSMSDispatcher$IPSmsTracker;->send(I)V

    goto :goto_0

    .line 285
    .end local v4    # "iptracker":Lcom/movial/ipphone/IPSMSDispatcher$IPSmsTracker;
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 286
    .local v2, "bundle":Landroid/os/Bundle;
    const-class v9, Lcom/movial/ipphone/IPSMSDispatcher;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 288
    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    .line 289
    .local v0, "a":[Ljava/lang/String;
    const/4 v9, 0x1

    const-string v10, "pdu"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v9

    .line 291
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v7

    .line 294
    .local v7, "sms":Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage()Z

    move-result v5

    .line 295
    .local v5, "isStatusReport":Z
    const-string v9, "IPSMSDispatcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Has status report: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    if-eqz v5, :cond_1

    .line 297
    iget-object v9, p0, Lcom/movial/ipphone/IPSMSDispatcher$2;->this$0:Lcom/movial/ipphone/IPSMSDispatcher;

    const/16 v10, 0x64

    invoke-virtual {v9, v10}, Lcom/movial/ipphone/IPSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 299
    .local v6, "pmsg":Landroid/os/Message;
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v9, 0x0

    const/4 v10, 0x1

    aget-object v10, v0, v10

    const/4 v11, 0x0

    invoke-direct {v1, v9, v10, v11}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 300
    .local v1, "ar":Landroid/os/AsyncResult;
    iput-object v1, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 301
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 304
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v6    # "pmsg":Landroid/os/Message;
    :cond_1
    const/4 v9, 0x2

    new-array v3, v9, [Ljava/lang/String;

    .line 305
    .local v3, "dummy":[Ljava/lang/String;
    const/4 v9, 0x1

    const-string v10, "039188F804039188F80000208062917314080CC8F71D14969741F977FD07"

    aput-object v10, v3, v9

    .line 308
    invoke-static {v3}, Landroid/telephony/SmsMessage;->newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v8

    .line 309
    .local v8, "wrappedSmsMessage":Landroid/telephony/SmsMessage;
    iput-object v7, v8, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .line 310
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v1, v9, v8, v10}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 312
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/movial/ipphone/IPSMSDispatcher$2;->this$0:Lcom/movial/ipphone/IPSMSDispatcher;

    # getter for: Lcom/movial/ipphone/IPSMSDispatcher;->mIPInboundSmsHandler:Lcom/movial/ipphone/IPInboundSmsHandler;
    invoke-static {v9}, Lcom/movial/ipphone/IPSMSDispatcher;->access$300(Lcom/movial/ipphone/IPSMSDispatcher;)Lcom/movial/ipphone/IPInboundSmsHandler;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10, v1}, Lcom/movial/ipphone/IPInboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 276
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

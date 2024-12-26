.class public Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
.super Lcom/android/internal/telephony/InboundSmsHandler;
.source "GsmInboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GsmInboundSmsHandler"


# instance fields
.field private final mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

.field private mDuplicateFilter:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 81
    const-string v1, "GsmInboundSmsHandler"

    invoke-static {p1, p3}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->makeGsmCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CellBroadcastHandler;)V

    .line 83
    iget-object v0, p3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 84
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    iget-object v1, p3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    .line 86
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;-><init>(Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mDuplicateFilter:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;

    .line 88
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Ljava/lang/String;JZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # Z

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->storeLatestSmsInfo(Ljava/lang/String;JZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Ljava/lang/String;JZ)Z
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # Z

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->isDuplicatedLatestSms(Ljava/lang/String;JZ)Z

    move-result v0

    return v0
.end method

.method public static makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 107
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;)V

    .line 108
    .local v0, "handler":Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->start()V

    .line 109
    return-object v0
.end method

.method protected static resultToCause(I)I
    .locals 1
    .param p0, "rc"    # I

    .prologue
    .line 400
    packed-switch p0, :pswitch_data_0

    .line 413
    :pswitch_0
    const/16 v0, 0xff

    :goto_0
    return v0

    .line 404
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 406
    :pswitch_2
    const/16 v0, 0xd3

    goto :goto_0

    .line 409
    :pswitch_3
    const/16 v0, 0xd6

    goto :goto_0

    .line 400
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->resultToCause(I)I

    move-result v1

    invoke-interface {v0, p1, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 376
    return-void
.end method

.method public clearDuplicatedCbMessages()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->clearDuplicatedCbMessages()V

    .line 432
    return-void
.end method

.method protected dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 18
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    const-string v3, "dispatchMessage: message is null"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 134
    const/4 v3, 0x2

    .line 336
    :goto_0
    return v3

    :cond_0
    move-object/from16 v15, p1

    .line 136
    check-cast v15, Lcom/android/internal/telephony/gsm/SmsMessage;

    .line 137
    .local v15, "sms":Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v16

    .line 139
    .local v16, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->isTypeZero()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 140
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_SmsPortAddressedMessage"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 152
    :cond_1
    :goto_1
    const-string v3, "Received short message type 0, Don\'t display or store it. Send Ack"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 153
    const/4 v3, 0x1

    goto :goto_0

    .line 140
    :cond_2
    if-eqz v16, :cond_1

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v3, :cond_1

    .line 143
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v4, 0x1c6b

    if-ne v3, v4, :cond_1

    .line 144
    const-string v3, "GsmInboundSmsHandler"

    const-string v4, "SKT Finding Friends service PID == 0x40 && destPort == 7275"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v3, 0x1

    new-array v10, v3, [[B

    .line 146
    .local v10, "finding_pdus":[[B
    const/4 v3, 0x0

    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v4

    aput-object v4, v10, v3

    .line 147
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispatchPortAddressedPdus([[BI)V

    goto :goto_1

    .line 157
    .end local v10    # "finding_pdus":[[B
    :cond_3
    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->isUsimDataDownload()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-result-object v17

    .line 159
    .local v17, "ust":Lcom/android/internal/telephony/uicc/UsimServiceTable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v15}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->handleUsimDataDownload(Lcom/android/internal/telephony/uicc/UsimServiceTable;Lcom/android/internal/telephony/gsm/SmsMessage;)I

    move-result v3

    goto :goto_0

    .line 162
    .end local v17    # "ust":Lcom/android/internal/telephony/uicc/UsimServiceTable;
    :cond_4
    const/4 v11, 0x0

    .line 163
    .local v11, "handled":Z
    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 164
    const-string v3, "GsmInboundSmsHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSimLoadDone = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-boolean v5, v5, Lcom/android/internal/telephony/PhoneBase;->mSimLoadDone:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-boolean v3, v3, Lcom/android/internal/telephony/PhoneBase;->mSimLoadDone:Z

    if-nez v3, :cond_5

    .line 167
    const-string v3, "GsmInboundSmsHandler"

    const-string v4, "SIM NOT LOADED"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v3, 0x2

    goto/16 :goto_0

    .line 171
    :cond_5
    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->getNumOfVoicemails()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->updateMessageWaitingIndicator(I)V

    .line 173
    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v11

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[voicemail]Received voice mail indicator set SMS shouldStore="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v11, :cond_7

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 181
    :cond_6
    :goto_3
    if-eqz v11, :cond_a

    .line 182
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 174
    :cond_7
    const/4 v3, 0x0

    goto :goto_2

    .line 175
    :cond_8
    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 176
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->updateMessageWaitingIndicator(I)V

    .line 178
    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v11

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[voicemail]Received voice mail indicator clear SMS shouldStore="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v11, :cond_9

    const/4 v3, 0x1

    :goto_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    goto :goto_4

    .line 185
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-eq v3, v4, :cond_b

    .line 189
    const/4 v3, 0x3

    goto/16 :goto_0

    .line 192
    :cond_b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_SupportHuxAppDirectedSms"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 193
    if-eqz v16, :cond_c

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v3, :cond_f

    .line 194
    :cond_c
    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v12

    .line 195
    .local v12, "msgbody":Ljava/lang/String;
    const/4 v13, 0x0

    .line 196
    .local v13, "msginfo":Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;
    if-eqz v12, :cond_d

    .line 197
    sget-object v3, Lcom/android/internal/telephony/AppDirectedSMS;->INSTANCE:Lcom/android/internal/telephony/AppDirectedSMS;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v12}, Lcom/android/internal/telephony/AppDirectedSMS;->checkIfAppDirSMS(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;

    move-result-object v13

    .line 199
    :cond_d
    if-eqz v13, :cond_f

    const/4 v3, 0x1

    invoke-virtual {v13}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->getappdirsmsstatus()Z

    move-result v4

    if-ne v3, v4, :cond_f

    .line 200
    const/4 v3, 0x1

    invoke-virtual {v13}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->checkifcomponentpresent()Z

    move-result v4

    if-ne v3, v4, :cond_e

    .line 201
    invoke-virtual {v13}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->getcomponentnameDirectedSms()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v13}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->getappMsgBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->getAppPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispatchAppDirectedSMS(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 204
    :cond_e
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 209
    .end local v12    # "msgbody":Ljava/lang/String;
    .end local v13    # "msginfo":Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;
    :cond_f
    if-eqz v16, :cond_10

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v3, :cond_11

    .line 211
    :cond_10
    if-eqz v16, :cond_11

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v3, :cond_11

    .line 212
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_SmsPortAddressedMessage"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 235
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_SmsPidMessage"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 261
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_SmsTidMessage"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 310
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/internal/telephony/WapPushOverSms;->setWpaPushAddressTimeStamp(Ljava/lang/String;J)V

    .line 313
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    .line 315
    .local v9, "edm":Landroid/sec/enterprise/EnterpriseDeviceManager;
    if-eqz v16, :cond_20

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v3, :cond_20

    const/16 v3, 0xb84

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v4, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    if-ne v3, v4, :cond_20

    const/4 v3, 0x1

    :goto_5
    if-nez v3, :cond_22

    .line 317
    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 318
    const/16 v3, 0xa

    goto/16 :goto_0

    .line 214
    .end local v9    # "edm":Landroid/sec/enterprise/EnterpriseDeviceManager;
    :cond_12
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v4, 0xb84

    if-eq v3, v4, :cond_11

    .line 215
    const/4 v3, 0x1

    new-array v14, v3, [[B

    .line 216
    .local v14, "pdus":[[B
    const/4 v3, 0x0

    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v4

    aput-object v4, v14, v3

    .line 218
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v4, 0x4244

    if-ne v3, v4, :cond_13

    .line 219
    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispatchSKTFOTAPortAddressedPdus([B)V

    .line 220
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispatchPortAddressedPdus([[BI)V

    .line 232
    :goto_6
    const-string v3, "GsmInboundSmsHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SMS_PORT_ADDRESSED_MESSAGE] Dispatch PORT : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 221
    :cond_13
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v4, 0x425c

    if-ne v3, v4, :cond_14

    .line 223
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispatchSKTAndroidCommonSMSPushPdus([[B)Z

    .line 224
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispatchPortAddressedPdus([[BI)V

    goto :goto_6

    .line 225
    :cond_14
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v4, 0x4201

    if-ne v3, v4, :cond_15

    .line 226
    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispatchSKTFindingLostPhoneSubscribePdus([B)V

    goto :goto_6

    .line 227
    :cond_15
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v4, 0x4200

    if-ne v3, v4, :cond_16

    .line 228
    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispatchSKTFindingLostPhoneCancelPdus([B)V

    goto :goto_6

    .line 230
    :cond_16
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispatchPortAddressedPdus([[BI)V

    goto :goto_6

    .line 237
    .end local v14    # "pdus":[[B
    :cond_17
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v4, 0xb84

    if-eq v3, v4, :cond_11

    .line 238
    const/4 v3, 0x1

    new-array v14, v3, [[B

    .line 239
    .restart local v14    # "pdus":[[B
    const/4 v3, 0x0

    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v4

    aput-object v4, v14, v3

    .line 241
    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->getProtocolIdentifier()I

    move-result v3

    sget-object v4, Landroid/telephony/SmsMessage$MessageTpPid;->MSG_PID_APPLICATION_PORT:Landroid/telephony/SmsMessage$MessageTpPid;

    invoke-virtual {v4}, Landroid/telephony/SmsMessage$MessageTpPid;->value()I

    move-result v4

    if-ne v3, v4, :cond_18

    const v3, 0xc210

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v4, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    if-gt v3, v4, :cond_18

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const v4, 0xc216

    if-gt v3, v4, :cond_18

    .line 244
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->getProtocolIdentifier()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispatchKTToAppManagerPdus([[BI)V

    .line 258
    :goto_7
    const-string v3, "GsmInboundSmsHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SMS_PID_MESSAGE] Dispatch PORT : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 245
    :cond_18
    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->getProtocolIdentifier()I

    move-result v3

    sget-object v4, Landroid/telephony/SmsMessage$MessageTpPid;->MSG_PID_LBS_PORT:Landroid/telephony/SmsMessage$MessageTpPid;

    invoke-virtual {v4}, Landroid/telephony/SmsMessage$MessageTpPid;->value()I

    move-result v4

    if-ne v3, v4, :cond_19

    .line 246
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->getProtocolIdentifier()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispatchKTToLbsServicePdus([[BI)V

    goto :goto_7

    .line 247
    :cond_19
    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->getProtocolIdentifier()I

    move-result v3

    sget-object v4, Landroid/telephony/SmsMessage$MessageTpPid;->MSG_PID_APPLICATION_PORT:Landroid/telephony/SmsMessage$MessageTpPid;

    invoke-virtual {v4}, Landroid/telephony/SmsMessage$MessageTpPid;->value()I

    move-result v4

    if-ne v3, v4, :cond_1a

    const v3, 0xc401

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v4, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    if-gt v3, v4, :cond_1a

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const v4, 0xc403

    if-gt v3, v4, :cond_1a

    .line 250
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3, v4}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispatchKTTwoPhonePdus([[BILjava/lang/String;)V

    goto :goto_7

    .line 251
    :cond_1a
    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->getProtocolIdentifier()I

    move-result v3

    sget-object v4, Landroid/telephony/SmsMessage$MessageTpPid;->MSG_PID_APPLICATION_PORT:Landroid/telephony/SmsMessage$MessageTpPid;

    invoke-virtual {v4}, Landroid/telephony/SmsMessage$MessageTpPid;->value()I

    move-result v4

    if-ne v3, v4, :cond_1b

    const v3, 0xc221

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v4, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    if-ne v3, v4, :cond_1b

    .line 253
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispatchKTWPSPortAddressedPdus([[BI)V

    goto/16 :goto_7

    .line 255
    :cond_1b
    const-string v3, "GsmInboundSmsHandler"

    const-string v4, "Received Application normal PID Msg Received"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispatchPortAddressedPdus([[BI)V

    goto/16 :goto_7

    .line 263
    .end local v14    # "pdus":[[B
    :cond_1c
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v4, 0xb84

    if-eq v3, v4, :cond_11

    .line 265
    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->getProtocolIdentifier()I

    move-result v3

    const/16 v4, 0x53

    if-ne v3, v4, :cond_1d

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v4, 0x1004

    if-ne v3, v4, :cond_1d

    .line 267
    const-string v3, "GsmInboundSmsHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received LGU+ temp GSM MMS noti Msg Received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->getProtocolIdentifier()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserData()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispatchLGUMMSNotitication([BILjava/lang/String;)I

    .line 284
    :goto_8
    const-string v3, "GsmInboundSmsHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SMS_TID_MESSAGE] Dispatch PORT : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 269
    :cond_1d
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v4, 0x1001

    if-eq v3, v4, :cond_1e

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v4, 0x1003

    if-eq v3, v4, :cond_1e

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/high16 v4, 0x40000

    if-eq v3, v4, :cond_1e

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const v4, 0xc00e

    if-eq v3, v4, :cond_1e

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const v4, 0xc00f

    if-eq v3, v4, :cond_1e

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const v4, 0xc010

    if-eq v3, v4, :cond_1e

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const v4, 0xc263

    if-eq v3, v4, :cond_1e

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const v4, 0xc265

    if-eq v3, v4, :cond_1e

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const v4, 0xc267

    if-eq v3, v4, :cond_1e

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const v4, 0xc00a

    if-ne v3, v4, :cond_1f

    .line 279
    :cond_1e
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v3

    goto/16 :goto_0

    .line 282
    :cond_1f
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispatchLGTTeleserviceMessage(Lcom/android/internal/telephony/SmsMessageBase;I)V

    goto/16 :goto_8

    .line 315
    .restart local v9    # "edm":Landroid/sec/enterprise/EnterpriseDeviceManager;
    :cond_20
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 321
    :cond_21
    invoke-virtual {v9}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v2

    .line 322
    .local v2, "phoneRestriction":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    invoke-virtual {v2}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 324
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->getEncoding()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_9
    const/16 v3, 0xa

    goto/16 :goto_0

    .line 326
    :catch_0
    move-exception v8

    .line 327
    .local v8, "e":Ljava/lang/Exception;
    const-string v3, "fail to store blocked sms on mdm database"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_9

    .line 336
    .end local v2    # "phoneRestriction":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_22
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v3

    goto/16 :goto_0
.end method

.method protected getEncoding()I
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x1

    return v0
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    const-string v0, "3gpp"

    return-object v0
.end method

.method protected handleBlockedSms([BI)V
    .locals 1
    .param p1, "pdu"    # [B
    .param p2, "sendType"    # I

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->getEncoding()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 425
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispatchBlockedSms([BI)V

    .line 427
    :cond_0
    return-void
.end method

.method protected is3gpp2()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method protected isDuplicatedSms(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 1
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mDuplicateFilter:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->isDuplicated(Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    const/4 v0, 0x1

    .line 444
    :goto_0
    return v0

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mDuplicateFilter:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->addMessage(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 444
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onQuitting()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmSms(Landroid/os/Handler;)V

    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispose()V

    .line 98
    const-string v0, "unregistered for 3GPP SMS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 99
    invoke-super {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->onQuitting()V

    .line 100
    return-void
.end method

.method protected onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 387
    invoke-super {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    .line 388
    const-string v0, "onUpdatePhoneObject: dispose of old CellBroadcastHandler and make a new one"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispose()V

    .line 390
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->makeGsmCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    .line 392
    return-void
.end method

.method updateMessageWaitingIndicator(I)V
    .locals 5
    .param p1, "voicemailCount"    # I

    .prologue
    const/4 v4, 0x1

    .line 340
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_DisableSmsVoicemail"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    :goto_0
    return-void

    .line 346
    :cond_0
    if-gez p1, :cond_2

    .line 347
    const/4 p1, -0x1

    .line 354
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageCount(I)V

    .line 356
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 358
    .local v0, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_3

    .line 359
    const-string v1, "[voicemail]updateMessageWaitingIndicator: updating SIM Records"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0, v4, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMessageWaiting(II)V

    .line 364
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->storeVoiceMailCount()V

    goto :goto_0

    .line 348
    .end local v0    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_2
    const/16 v1, 0xff

    if-le p1, v1, :cond_1

    .line 351
    const/16 p1, 0xff

    goto :goto_1

    .line 362
    .restart local v0    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_3
    const-string v1, "[voicemail]updateMessageWaitingIndicator: SIM Records not found"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

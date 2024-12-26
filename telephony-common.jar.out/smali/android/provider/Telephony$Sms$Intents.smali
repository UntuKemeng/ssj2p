.class public final Landroid/provider/Telephony$Sms$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final ACTION_CHANGE_DEFAULT:Ljava/lang/String; = "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

.field public static final ACTION_KTLBS_DATA_SMS_RECEIVED:Ljava/lang/String; = "com.kt.location.action.KTLBS_DATA_SMS_RECEIVED"

.field public static final ACTION_KT_TWO_PHONE_MANAGE_SMS_RECEIVED:Ljava/lang/String; = "com.kt.menu.action.TWO_CALL_REG_CHANGED"

.field public static final CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.CB_RECEIVED"

.field public static final CB_SETTINGS_AVAILABLE_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.CB_SETTINGS_AVAILABLE"

.field public static final DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field public static final DEVICE_READY_ACTION:Ljava/lang/String; = "android.provider.Telephony.DEVICE_READY"

.field public static final DIRECTED_SMS_RECEIVED_ACTION:Ljava/lang/String; = "verizon.intent.action.DIRECTED_SMS_RECEIVED"

.field public static final EMERGENCY_CDMA_MESSAGE_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.EMERGENCY_CDMA_MESSAGE_RECEIVED"

.field public static final EXTRA_LMS_TOKEN_CTC:Ljava/lang/String; = "lms_token_ctc"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package"

.field public static final GET_CB_ERR_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.GET_CB_ERR_RECEIVED"

.field public static final GET_SMSC_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.GET_SMSC"

.field public static final IMEI_TRACKER_SMS_RECEIVED_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.IMEI_TRACKER_SMS_RECEIVED"

.field public static final LGU_APM_RECEIVED_ACTION:Ljava/lang/String; = "android.lgt.action.APM_SMS_RECEIVED"

.field public static final LGU_FOTA_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.PUSH_CONFIRM"

.field public static final LMS_FIRST_DISPLAY_TIMEOUT_CTC_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.LMS_FIRST_DISPLAY_TIMEOUT_CTC"

.field public static final LMS_MAXIMAL_CONNECTION_TIMEOUT_CTC_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.LMS_MAXIMAL_CONNECTION_TIMEOUT_CTC"

.field public static final MMS_DOWNLOADED_ACTION:Ljava/lang/String; = "android.provider.Telephony.MMS_DOWNLOADED"

.field public static final NSRISMS_RECEIVED_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.SECURITY_SMS_RECEIVED"

.field public static final RESULT_SMS_DSAC_FAIL:I = 0x7

.field public static final RESULT_SMS_DUPLICATE:I = 0x8

.field public static final RESULT_SMS_DUPLICATED:I = 0x5

.field public static final RESULT_SMS_GENERIC_ERROR:I = 0x2

.field public static final RESULT_SMS_HANDLED:I = 0x1

.field public static final RESULT_SMS_MDM_DISCARDED:I = 0xa

.field public static final RESULT_SMS_OUT_OF_MEMORY:I = 0x3

.field public static final RESULT_SMS_SEGMENT:I = 0x9

.field public static final RESULT_SMS_UNSUPPORTED:I = 0x4

.field public static final SET_CB_ERR_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SET_CB_ERR_RECEIVED"

.field public static final SHOW_DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "com.kt.show.manger.action.SHOW_DATA_SMS_RECEIVED"

.field public static final SIM_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.SIM_FULL"

.field public static final SMS_CARRIER_PROVISION_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CARRIER_PROVISION"

.field public static final SMS_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CB_RECEIVED"

.field public static final SMS_CB_RECEIVED_WIFI_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CB_WIFI_RECEIVED"

.field public static final SMS_DELIVER_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_DELIVER"

.field public static final SMS_EMERGENCY_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final SMS_REJECTED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_REJECTED"

.field public static final SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED"

.field public static final WAP_PUSH_DELIVER_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_DELIVER"

.field public static final WAP_PUSH_DM_NOTI_RECEIVED_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

.field public static final WAP_PUSH_DS_NOTI_RECEIVED_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.WAP_PUSH_DS_NOTI_RECEIVED"

.field public static final WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 878
    return-void
.end method

.method private static combineFourBytes([B[BI)Ljava/lang/String;
    .locals 8
    .param p0, "firstbyte"    # [B
    .param p1, "lastbyte"    # [B
    .param p2, "startBodyOffset"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1471
    const-string v3, "Telephony"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "combineFourBytes : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p1, v6

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p1, v7

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p0, v6

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p0, v7

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " offset : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    const/4 v2, 0x0

    .line 1474
    .local v2, "ret":Ljava/lang/String;
    const/4 v3, 0x4

    new-array v1, v3, [B

    .line 1475
    .local v1, "fourBytes":[B
    aget-byte v3, p1, v6

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v6

    .line 1476
    aget-byte v3, p1, v7

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v7

    .line 1477
    const/4 v3, 0x2

    aget-byte v4, p0, p2

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1478
    const/4 v3, 0x3

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1481
    :try_start_0
    new-instance v2, Ljava/lang/String;

    .end local v2    # "ret":Ljava/lang/String;
    const-string v3, "utf-16"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1486
    .restart local v2    # "ret":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1482
    .end local v2    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1483
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v2, ""

    .line 1484
    .restart local v2    # "ret":Ljava/lang/String;
    const-string v3, "Telephony"

    const-string v4, "implausible UnsupportedEncodingException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 32
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1338
    const-string v29, "pdus"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v29

    check-cast v29, [Ljava/lang/Object;

    move-object/from16 v11, v29

    check-cast v11, [Ljava/lang/Object;

    .line 1339
    .local v11, "messages":[Ljava/lang/Object;
    const-string v29, "format"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1340
    .local v5, "format":Ljava/lang/String;
    const-string v29, "subscription"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 1343
    .local v25, "subId":I
    const-string v29, "Telephony"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, " getMessagesFromIntent sub_id : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    array-length v0, v11

    move/from16 v20, v0

    .line 1347
    .local v20, "pduCount":I
    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 1348
    .local v22, "shiftBytes":[B
    const/4 v7, 0x0

    .line 1349
    .local v7, "isShiftBytes":Z
    const/16 v23, 0x0

    .line 1353
    .local v23, "startBodyOffset":I
    move/from16 v0, v20

    new-array v13, v0, [Landroid/telephony/SmsMessage;

    .line 1355
    .local v13, "msgs":[Landroid/telephony/SmsMessage;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move/from16 v0, v20

    if-ge v6, v0, :cond_f

    .line 1356
    aget-object v29, v11, v6

    check-cast v29, [B

    move-object/from16 v19, v29

    check-cast v19, [B

    .line 1357
    .local v19, "pdu":[B
    if-eqz v19, :cond_3

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v29, v0

    if-lez v29, :cond_3

    .line 1358
    move-object/from16 v0, v19

    invoke-static {v0, v5}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v29

    aput-object v29, v13, v6

    .line 1361
    if-eqz v7, :cond_0

    .line 1362
    aget-object v29, v13, v6

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Telephony$Sms$Intents;->combineFourBytes([B[BI)Ljava/lang/String;

    move-result-object v24

    .line 1363
    .local v24, "str":Ljava/lang/String;
    aget-object v29, v13, v6

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v10

    .line 1364
    .local v10, "messageBody":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1365
    aget-object v29, v13, v6

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SmsMessageBase;->replaceMessageBody(Ljava/lang/String;)V

    .line 1366
    const/4 v7, 0x0

    .line 1369
    .end local v10    # "messageBody":Ljava/lang/String;
    .end local v24    # "str":Ljava/lang/String;
    :cond_0
    aget-object v29, v13, v6

    if-eqz v29, :cond_1

    aget-object v29, v13, v6

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1

    aget-object v29, v13, v6

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/SmsMessageBase;->getIsFourBytesUnicode()Z

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1

    .line 1371
    const-string v29, "Telephony"

    const-string v30, "Detect multibyte unicode at the end of page"

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    aget-object v29, v13, v6

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/SmsMessageBase;->getLastByte()[B

    move-result-object v9

    .line 1373
    .local v9, "lastbyte":[B
    const/16 v29, 0x0

    const/16 v30, 0x0

    aget-byte v30, v9, v30

    aput-byte v30, v22, v29

    .line 1374
    const/16 v29, 0x1

    const/16 v30, 0x1

    aget-byte v30, v9, v30

    aput-byte v30, v22, v29

    .line 1375
    aget-object v29, v13, v6

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/SmsMessageBase;->getBodyOffset()I

    move-result v23

    .line 1376
    aget-object v29, v13, v6

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v10

    .line 1377
    .restart local v10    # "messageBody":Ljava/lang/String;
    const-string v29, "Telephony"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "messageBody Length : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    aget-object v29, v13, v6

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v31

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/telephony/SmsMessageBase;->replaceMessageBody(Ljava/lang/String;)V

    .line 1379
    const/4 v7, 0x1

    .line 1383
    .end local v9    # "lastbyte":[B
    .end local v10    # "messageBody":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getCDMASmsReassembly()Z

    move-result v29

    if-eqz v29, :cond_3

    const/16 v29, 0x1

    move/from16 v0, v20

    move/from16 v1, v29

    if-le v0, v1, :cond_3

    .line 1384
    const/16 v18, 0x0

    .line 1385
    .local v18, "paginationSuccess":Z
    const/16 v17, 0x0

    .line 1386
    .local v17, "pagination":Ljava/lang/String;
    const/16 v26, 0x0

    .line 1387
    .local v26, "tempMessageBody":Ljava/lang/String;
    aget-object v29, v13, v6

    if-eqz v29, :cond_e

    aget-object v29, v13, v6

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v29, v0

    if-eqz v29, :cond_e

    .line 1388
    aget-object v29, v13, v6

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v26

    .line 1390
    const/4 v12, 0x0

    .line 1392
    .local v12, "modifiedMessageBody":Ljava/lang/String;
    const-string v29, "("

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_5

    const-string v29, ")"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 1393
    const/16 v29, 0x28

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v29

    add-int/lit8 v29, v29, 0x1

    const/16 v30, 0x29

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v30

    move-object/from16 v0, v26

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 1394
    const/16 v29, 0x29

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v29

    add-int/lit8 v29, v29, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    .line 1405
    :goto_1
    if-eqz v17, :cond_8

    .line 1406
    move-object/from16 v12, v26

    .line 1407
    const-string v29, "/"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1408
    .local v15, "page":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_2

    .line 1409
    const/16 v18, 0x1

    .line 1452
    :cond_2
    :goto_2
    if-nez v18, :cond_d

    .line 1453
    const-string v29, "Telephony"

    const-string v30, "No pagination found"

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    .end local v12    # "modifiedMessageBody":Ljava/lang/String;
    .end local v15    # "page":[Ljava/lang/String;
    .end local v17    # "pagination":Ljava/lang/String;
    .end local v18    # "paginationSuccess":Z
    .end local v26    # "tempMessageBody":Ljava/lang/String;
    :cond_3
    :goto_3
    aget-object v29, v13, v6

    if-eqz v29, :cond_4

    .line 1464
    aget-object v29, v13, v6

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/telephony/SmsMessage;->setSubId(I)V

    .line 1355
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1395
    .restart local v12    # "modifiedMessageBody":Ljava/lang/String;
    .restart local v17    # "pagination":Ljava/lang/String;
    .restart local v18    # "paginationSuccess":Z
    .restart local v26    # "tempMessageBody":Ljava/lang/String;
    :cond_5
    const-string v29, "["

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_6

    const-string v29, "]"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 1396
    const/16 v29, 0x5b

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v29

    add-int/lit8 v29, v29, 0x1

    const/16 v30, 0x5d

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v30

    move-object/from16 v0, v26

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 1397
    const/16 v29, 0x5d

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v29

    add-int/lit8 v29, v29, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_1

    .line 1398
    :cond_6
    const-string v29, "{"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_7

    const-string v29, "}"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 1399
    const/16 v29, 0x7b

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v29

    add-int/lit8 v29, v29, 0x1

    const/16 v30, 0x7d

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v30

    move-object/from16 v0, v26

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 1400
    const/16 v29, 0x7d

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v29

    add-int/lit8 v29, v29, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_1

    .line 1402
    :cond_7
    const-string v29, "Telephony"

    const-string v30, "there is no pagination pattern maybe / or of "

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1412
    :cond_8
    const-string v29, " of "

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1413
    .restart local v15    # "page":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_9

    .line 1414
    const-string v29, " "

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1415
    .local v16, "pageCount":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_9

    .line 1417
    const/16 v29, 0x0

    :try_start_0
    aget-object v29, v16, v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1418
    const/16 v29, 0x2

    aget-object v29, v16, v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1419
    const/16 v29, 0x0

    aget-object v29, v16, v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    const/16 v30, 0x2

    aget-object v30, v16, v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    add-int v29, v29, v30

    add-int/lit8 v14, v29, 0x4

    .line 1420
    .local v14, "offset":I
    add-int/lit8 v29, v14, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 1421
    const/16 v18, 0x1

    .line 1427
    .end local v14    # "offset":I
    .end local v16    # "pageCount":[Ljava/lang/String;
    :cond_9
    :goto_4
    if-nez v18, :cond_2

    .line 1428
    const-string v29, "/"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 1429
    .local v27, "tempPage":[Ljava/lang/String;
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_2

    .line 1430
    const/16 v29, 0x1

    aget-object v29, v27, v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toCharArray()[C

    move-result-object v28

    .line 1431
    .local v28, "totalNumber":[C
    const/16 v29, 0x0

    aget-object v29, v27, v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toCharArray()[C

    move-result-object v21

    .line 1432
    .local v21, "segmentNumber":[C
    const/4 v4, 0x0

    .line 1433
    .local v4, "firstPartNumeric":Z
    const/4 v8, 0x0

    .line 1434
    .local v8, "j":I
    :goto_5
    aget-char v29, v21, v8

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->isDigit(C)Z

    move-result v29

    if-eqz v29, :cond_a

    const/16 v29, 0x0

    aget-object v29, v27, v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v29

    if-ge v8, v0, :cond_a

    .line 1435
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1422
    .end local v4    # "firstPartNumeric":Z
    .end local v8    # "j":I
    .end local v21    # "segmentNumber":[C
    .end local v27    # "tempPage":[Ljava/lang/String;
    .end local v28    # "totalNumber":[C
    .restart local v16    # "pageCount":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1423
    .local v3, "ex":Ljava/lang/NumberFormatException;
    const-string v29, "Telephony"

    const-string v30, "there is no pagination yet"

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1437
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v16    # "pageCount":[Ljava/lang/String;
    .restart local v4    # "firstPartNumeric":Z
    .restart local v8    # "j":I
    .restart local v21    # "segmentNumber":[C
    .restart local v27    # "tempPage":[Ljava/lang/String;
    .restart local v28    # "totalNumber":[C
    :cond_a
    const/16 v29, 0x0

    aget-object v29, v27, v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v29

    if-ne v8, v0, :cond_b

    .line 1438
    const/4 v4, 0x1

    .line 1440
    :cond_b
    const/4 v8, 0x0

    .line 1441
    if-eqz v4, :cond_2

    .line 1442
    :goto_6
    aget-char v29, v28, v8

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->isDigit(C)Z

    move-result v29

    if-eqz v29, :cond_c

    const/16 v29, 0x1

    aget-object v29, v27, v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v29

    if-ge v8, v0, :cond_c

    .line 1443
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1445
    :cond_c
    const/16 v29, 0x0

    aget-object v29, v27, v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    add-int v29, v29, v8

    add-int/lit8 v29, v29, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 1446
    const/16 v18, 0x1

    goto/16 :goto_2

    .line 1455
    .end local v4    # "firstPartNumeric":Z
    .end local v8    # "j":I
    .end local v21    # "segmentNumber":[C
    .end local v27    # "tempPage":[Ljava/lang/String;
    .end local v28    # "totalNumber":[C
    :cond_d
    aget-object v29, v13, v6

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/SmsMessageBase;->replaceMessageBody(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1458
    .end local v12    # "modifiedMessageBody":Ljava/lang/String;
    .end local v15    # "page":[Ljava/lang/String;
    :cond_e
    const-string v29, "Telephony"

    const-string v30, "msgs[i] == null && msgs[i].mWrappedSmsMessage == null "

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1467
    .end local v17    # "pagination":Ljava/lang/String;
    .end local v18    # "paginationSuccess":Z
    .end local v19    # "pdu":[B
    .end local v26    # "tempMessageBody":Ljava/lang/String;
    :cond_f
    return-object v13
.end method

.class public Lcom/android/internal/telephony/SmsBroadcastUndelivered;
.super Ljava/lang/Object;
.source "SmsBroadcastUndelivered.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final FORMAT_COLUMN:I = 0x8

.field static final PARTIAL_SEGMENT_EXPIRE_AGE:J = 0x9a7ec800L

.field private static final PDU_PENDING_MESSAGE_FORMAT_PROJECTION:[Ljava/lang/String;

.field private static final PDU_PENDING_MESSAGE_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SmsBroadcastUndelivered"

.field private static final sRawUri:Landroid/net/Uri;


# instance fields
.field private final mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

.field private final mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v3

    const-string v1, "sequence"

    aput-object v1, v0, v4

    const-string v1, "destination_port"

    aput-object v1, v0, v5

    const-string v1, "date"

    aput-object v1, v0, v6

    const-string v1, "reference_number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "count"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->PDU_PENDING_MESSAGE_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v3

    const-string v1, "sequence"

    aput-object v1, v0, v4

    const-string v1, "destination_port"

    aput-object v1, v0, v5

    const-string v1, "date"

    aput-object v1, v0, v6

    const-string v1, "reference_number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "count"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "format"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->PDU_PENDING_MESSAGE_FORMAT_PROJECTION:[Ljava/lang/String;

    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->sRawUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gsmInboundSmsHandler"    # Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .param p3, "cdmaInboundSmsHandler"    # Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    iput-object p3, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    return-void
.end method

.method private broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;)V
    .locals 4
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .local v0, "handler":Lcom/android/internal/telephony/InboundSmsHandler;
    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    :goto_1
    return-void

    .end local v0    # "handler":Lcom/android/internal/telephony/InboundSmsHandler;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    .restart local v0    # "handler":Lcom/android/internal/telephony/InboundSmsHandler;
    goto :goto_0

    :cond_1
    const-string v1, "SmsBroadcastUndelivered"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "null handler for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " format, can\'t deliver."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private scanRawTable()V
    .locals 28

    .prologue
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v22

    .local v22, "startTime":J
    new-instance v15, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v15, v2}, Ljava/util/HashMap;-><init>(I)V

    .local v15, "multiPartReceivedCount":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;Ljava/lang/Integer;>;"
    new-instance v17, Ljava/util/HashSet;

    const/4 v2, 0x4

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    .local v17, "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;>;"
    const/4 v9, 0x0

    .local v9, "cursor":Landroid/database/Cursor;
    const-string v2, "ReassembleTimeout"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_DisplayPolicyPartialLongSms"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .local v8, "beLmsReassembleCTCRequired":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v21

    .local v21, "simSlot":I
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v2, "sim_slot ="

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v25, "where":Ljava/lang/StringBuilder;
    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "SmsBroadcastUndelivered"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scanRawTable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->sRawUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->PDU_PENDING_MESSAGE_FORMAT_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    :goto_0
    if-nez v9, :cond_2

    const-string v2, "SmsBroadcastUndelivered"

    const-string v3, "error getting pending message cursor"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    const-string v2, "SmsBroadcastUndelivered"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finished scanning raw table in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v4, v22

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v21    # "simSlot":I
    .end local v25    # "where":Ljava/lang/StringBuilder;
    :goto_1
    return-void

    .restart local v21    # "simSlot":I
    .restart local v25    # "where":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->sRawUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->PDU_PENDING_MESSAGE_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    :cond_2
    const/4 v13, 0x0

    .local v13, "isCurrentFormat3gpp2":Z
    if-nez v8, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/InboundSmsHandler;->isCurrentFormat3gpp2()Z

    move-result v13

    :cond_3
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v8, :cond_5

    const/16 v2, 0x8

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .local v11, "format":Ljava/lang/String;
    if-eqz v11, :cond_4

    const-string v2, "3gpp2"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v13, 0x1

    :cond_4
    const-string v2, "SmsBroadcastUndelivered"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current cursor format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isCurrentFormat3gpp2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v11    # "format":Ljava/lang/String;
    :cond_5
    :try_start_2
    new-instance v24, Lcom/android/internal/telephony/InboundSmsTracker;

    move-object/from16 v0, v24

    invoke-direct {v0, v9, v13}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>(Landroid/database/Cursor;Z)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .local v24, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :try_start_3
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .end local v13    # "isCurrentFormat3gpp2":Z
    .end local v21    # "simSlot":I
    .end local v24    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v25    # "where":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v10

    .local v10, "e":Landroid/database/SQLException;
    :try_start_4
    const-string v2, "SmsBroadcastUndelivered"

    const-string v3, "error reading pending SMS messages"

    invoke-static {v2, v3, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    const-string v2, "SmsBroadcastUndelivered"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finished scanning raw table in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v4, v22

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v10    # "e":Landroid/database/SQLException;
    .restart local v13    # "isCurrentFormat3gpp2":Z
    .restart local v21    # "simSlot":I
    .restart local v25    # "where":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v10

    .local v10, "e":Ljava/lang/IllegalArgumentException;
    :try_start_5
    const-string v2, "SmsBroadcastUndelivered"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error loading SmsTracker: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    .end local v13    # "isCurrentFormat3gpp2":Z
    .end local v21    # "simSlot":I
    .end local v25    # "where":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7
    const-string v3, "SmsBroadcastUndelivered"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finished scanning raw table in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v6, v22

    const-wide/32 v26, 0xf4240

    div-long v6, v6, v26

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v2

    .restart local v13    # "isCurrentFormat3gpp2":Z
    .restart local v21    # "simSlot":I
    .restart local v24    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .restart local v25    # "where":Ljava/lang/StringBuilder;
    :cond_8
    :try_start_6
    new-instance v19, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;-><init>(Lcom/android/internal/telephony/InboundSmsTracker;)V

    .local v19, "reference":Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .local v18, "receivedCount":Ljava/lang/Integer;
    if-nez v18, :cond_9

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v15, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/InboundSmsTracker;->getTimestamp()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide v6, 0x9a7ec800L

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_9
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v16, v2, 0x1

    .local v16, "newCount":I
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    move/from16 v0, v16

    if-ne v0, v2, :cond_a

    const-string v2, "SmsBroadcastUndelivered"

    const-string v3, "found complete multi-part message"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_a
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v15, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .end local v16    # "newCount":I
    .end local v18    # "receivedCount":Ljava/lang/Integer;
    .end local v19    # "reference":Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    .end local v24    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :cond_b
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;

    .local v14, "message":Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->sRawUri:Landroid/net/Uri;

    const-string v4, "address=? AND reference_number=? AND count=?"

    invoke-virtual {v14}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .local v20, "rows":I
    if-nez v20, :cond_c

    const-string v2, "SmsBroadcastUndelivered"

    const-string v3, "No rows were deleted from raw table!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_c
    const-string v2, "SmsBroadcastUndelivered"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rows from raw table for incomplete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v14, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " part message"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .end local v14    # "message":Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    .end local v20    # "rows":I
    :cond_d
    if-eqz v9, :cond_e

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_e
    const-string v2, "SmsBroadcastUndelivered"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finished scanning raw table in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v4, v22

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    const-string v0, "SmsBroadcastUndelivered"

    const-string v1, "scanning raw table for undelivered messages"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->scanRawTable()V

    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->sendMessage(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sendMessage(I)V

    :cond_1
    return-void
.end method

.class public Lcom/google/android/mms/pdu/PduPersister;
.super Ljava/lang/Object;
.source "PduPersister.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ADDRESS_FIELDS:[I

.field private static final CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DUMMY_THREAD_ID:J = 0x7fffffffffffffffL

.field private static final ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENCODING_PREFIX:Ljava/lang/String; = "=?"

.field private static final ENCODING_SUFFIX:Ljava/lang/String; = "?="

.field private static final LOCAL_LOGV:Z = false

.field private static final LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MESSAGE_BOX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PART_COLUMN_CHARSET:I = 0x1

.field private static final PART_COLUMN_CONTENT_DISPOSITION:I = 0x2

.field private static final PART_COLUMN_CONTENT_ID:I = 0x3

.field private static final PART_COLUMN_CONTENT_LOCATION:I = 0x4

.field private static final PART_COLUMN_CONTENT_TYPE:I = 0x5

.field private static final PART_COLUMN_FILENAME:I = 0x6

.field private static final PART_COLUMN_ID:I = 0x0

.field private static final PART_COLUMN_NAME:I = 0x7

.field private static final PART_COLUMN_TEXT:I = 0x8

.field private static final PART_PROJECTION:[Ljava/lang/String;

.field private static final PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

.field private static final PDU_COLUMN_CONTENT_CLASS:I = 0xb

.field private static final PDU_COLUMN_CONTENT_LOCATION:I = 0x5

.field private static final PDU_COLUMN_CONTENT_TYPE:I = 0x6

.field private static final PDU_COLUMN_DATE:I = 0x15

.field private static final PDU_COLUMN_DELIVERY_REPORT:I = 0xc

.field private static final PDU_COLUMN_DELIVERY_TIME:I = 0x16

.field private static final PDU_COLUMN_EXPIRY:I = 0x17

.field private static final PDU_COLUMN_ID:I = 0x0

.field private static final PDU_COLUMN_MESSAGE_BOX:I = 0x1

.field private static final PDU_COLUMN_MESSAGE_CLASS:I = 0x7

.field private static final PDU_COLUMN_MESSAGE_ID:I = 0x8

.field private static final PDU_COLUMN_MESSAGE_SIZE:I = 0x18

.field private static final PDU_COLUMN_MESSAGE_TYPE:I = 0xd

.field private static final PDU_COLUMN_MMS_VERSION:I = 0xe

.field private static final PDU_COLUMN_PRIORITY:I = 0xf

.field private static final PDU_COLUMN_READ_REPORT:I = 0x10

.field private static final PDU_COLUMN_READ_STATUS:I = 0x11

.field private static final PDU_COLUMN_REPORT_ALLOWED:I = 0x12

.field private static final PDU_COLUMN_RESPONSE_TEXT:I = 0x9

.field private static final PDU_COLUMN_RETRIEVE_STATUS:I = 0x13

.field private static final PDU_COLUMN_RETRIEVE_TEXT:I = 0x3

.field private static final PDU_COLUMN_RETRIEVE_TEXT_CHARSET:I = 0x1a

.field private static final PDU_COLUMN_STATUS:I = 0x14

.field private static final PDU_COLUMN_SUBJECT:I = 0x4

.field private static final PDU_COLUMN_SUBJECT_CHARSET:I = 0x19

.field private static final PDU_COLUMN_THREAD_ID:I = 0x2

.field private static final PDU_COLUMN_TRANSACTION_ID:I = 0xa

.field private static final PDU_PROJECTION:[Ljava/lang/String;

.field public static final PROC_STATUS_COMPLETED:I = 0x3

.field public static final PROC_STATUS_PERMANENTLY_FAILURE:I = 0x2

.field public static final PROC_STATUS_TRANSIENT_FAILURE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PduPersister"

.field public static final TEMPORARY_DRM_OBJECT_URI:Ljava/lang/String; = "content://mms/9223372036854775807/part"

.field private static final TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPersister:Lcom/google/android/mms/pdu/PduPersister;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mCscFeature:Lcom/sec/android/app/CscFeature;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x9a

    const/16 v6, 0x96

    const/4 v5, 0x3

    const/4 v4, 0x4

    const/4 v1, 0x1

    .line 90
    const-class v0, Lcom/google/android/mms/pdu/PduPersister;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/google/android/mms/pdu/PduPersister;->$assertionsDisabled:Z

    .line 118
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    .line 125
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/4 v2, 0x2

    const-string v3, "thread_id"

    aput-object v3, v0, v2

    const-string v2, "retr_txt"

    aput-object v2, v0, v5

    const-string v2, "sub"

    aput-object v2, v0, v4

    const/4 v2, 0x5

    const-string v3, "ct_l"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "ct_t"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "m_cls"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "m_id"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "resp_txt"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "tr_id"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "ct_cls"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string v3, "d_rpt"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string v3, "m_type"

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string v3, "v"

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string v3, "pri"

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-string v3, "rr"

    aput-object v3, v0, v2

    const/16 v2, 0x11

    const-string v3, "read_status"

    aput-object v3, v0, v2

    const/16 v2, 0x12

    const-string v3, "rpt_a"

    aput-object v3, v0, v2

    const/16 v2, 0x13

    const-string v3, "retr_st"

    aput-object v3, v0, v2

    const/16 v2, 0x14

    const-string v3, "st"

    aput-object v3, v0, v2

    const/16 v2, 0x15

    const-string v3, "date"

    aput-object v3, v0, v2

    const/16 v2, 0x16

    const-string v3, "d_tm"

    aput-object v3, v0, v2

    const/16 v2, 0x17

    const-string v3, "exp"

    aput-object v3, v0, v2

    const/16 v2, 0x18

    const-string v3, "m_size"

    aput-object v3, v0, v2

    const/16 v2, 0x19

    const-string v3, "sub_cs"

    aput-object v3, v0, v2

    const/16 v2, 0x1a

    const-string v3, "retr_txt_cs"

    aput-object v3, v0, v2

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_PROJECTION:[Ljava/lang/String;

    .line 183
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v2, "chset"

    aput-object v2, v0, v1

    const/4 v2, 0x2

    const-string v3, "cd"

    aput-object v3, v0, v2

    const-string v2, "cid"

    aput-object v2, v0, v5

    const-string v2, "cl"

    aput-object v2, v0, v4

    const/4 v2, 0x5

    const-string v3, "ct"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "fn"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "name"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "text"

    aput-object v3, v0, v2

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->PART_PROJECTION:[Ljava/lang/String;

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    .line 220
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v2, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v2, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    const-string v2, "content://spammms/inbox"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 227
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 231
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sub_cs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_txt_cs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 236
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 240
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_txt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 245
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 253
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_l"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_t"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_cls"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "resp_txt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tr_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 262
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0xba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 274
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0xba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_cls"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "d_rpt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "v"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "read_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rpt_a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_st"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "st"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 287
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 293
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "d_tm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "exp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_size"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0xc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "reserved"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-static {}, Lcom/google/android/mms/util/PduCache;->getInstance()Lcom/google/android/mms/util/PduCache;

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    .line 300
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 118
    :array_0
    .array-data 4
        0x81
        0x82
        0x89
        0x97
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-object p1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    .line 310
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    .line 312
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 314
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mCscFeature:Lcom/sec/android/app/CscFeature;

    .line 315
    return-void
.end method

.method public static convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1084
    const/4 v8, 0x0

    .line 1085
    .local v8, "path":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 1086
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 1087
    .local v10, "scheme":Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string v0, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1089
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 1118
    .end local v10    # "scheme":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v8

    .line 1091
    .restart local v10    # "scheme":Ljava/lang/String;
    :cond_2
    const-string v0, "http"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1092
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 1094
    :cond_3
    const-string v0, "content"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1095
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 1096
    .local v2, "projection":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1098
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1100
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1101
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri could not be found in media store"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    :catch_0
    move-exception v7

    .line 1107
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri is not formatted in a way so that it can be found in media store."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1110
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 1111
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 1104
    :cond_6
    :try_start_2
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1105
    .local v9, "pathIndex":I
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 1110
    if-eqz v6, :cond_1

    .line 1111
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1115
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "pathIndex":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri scheme is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I

    .prologue
    .line 379
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 382
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 2253
    :try_start_0
    const-string v1, "iso-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2257
    :goto_0
    return-object v1

    .line 2254
    :catch_0
    move-exception v0

    .line 2256
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "PduPersister"

    const-string v2, "ISO_8859_1 must be supported!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2257
    const/4 v1, 0x0

    new-array v1, v1, [B

    goto :goto_0
.end method

.method private getIntegerFromPartColumn(Landroid/database/Cursor;I)Ljava/lang/Integer;
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I

    .prologue
    .line 372
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 375
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getPartContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;
    .locals 1
    .param p0, "part"    # Lcom/google/android/mms/pdu/PduPart;

    .prologue
    .line 777
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 319
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    if-nez v0, :cond_1

    .line 320
    const-string v0, "PduPersister"

    const-string v1, "sPersister is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    new-instance v0, Lcom/google/android/mms/pdu/PduPersister;

    invoke-direct {v0, p0}, Lcom/google/android/mms/pdu/PduPersister;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    .line 328
    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    return-object v0

    .line 322
    :cond_1
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    const-string v0, "PduPersister"

    const-string v1, "context on pdupersist is not same"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduPersister;->release()V

    .line 325
    new-instance v0, Lcom/google/android/mms/pdu/PduPersister;

    invoke-direct {v0, p0}, Lcom/google/android/mms/pdu/PduPersister;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    goto :goto_0
.end method

.method private static isOma13Encoding(Ljava/lang/String;)Z
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2294
    if-nez p0, :cond_0

    .line 2302
    :goto_0
    return v0

    .line 2298
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    const-string v1, "=?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "?="

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 2301
    .local v0, "result":Z
    :cond_1
    const-string v1, "PduPersister"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pdupersister isOma13Encoding:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadAddress(JLcom/google/android/mms/pdu/PduHeaders;)V
    .locals 1
    .param p1, "msgId"    # J
    .param p3, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    .prologue
    .line 532
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/mms/pdu/PduPersister;->loadAddress(JLcom/google/android/mms/pdu/PduHeaders;Z)V

    .line 533
    return-void
.end method

.method private loadAddress(JLcom/google/android/mms/pdu/PduHeaders;Z)V
    .locals 11
    .param p1, "msgId"    # J
    .param p3, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;
    .param p4, "bSpam"    # Z

    .prologue
    .line 536
    const/4 v9, 0x0

    .line 538
    .local v9, "c":Landroid/database/Cursor;
    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://spammms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/spamaddr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "address"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "charset"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 550
    :goto_0
    if-eqz v9, :cond_3

    .line 552
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 553
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 554
    .local v7, "addr":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 556
    .local v8, "addrType":I
    sparse-switch v8, :sswitch_data_0

    .line 570
    const-string v0, "PduPersister"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown address type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 576
    .end local v7    # "addr":Ljava/lang/String;
    .end local v8    # "addrType":I
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 544
    :cond_1
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/addr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "address"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "charset"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 558
    .restart local v7    # "addr":Ljava/lang/String;
    .restart local v8    # "addrType":I
    :sswitch_0
    :try_start_1
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {p3, v0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    goto/16 :goto_1

    .line 565
    :sswitch_1
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {p3, v0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 576
    .end local v7    # "addr":Ljava/lang/String;
    .end local v8    # "addrType":I
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 579
    :cond_3
    return-void

    .line 556
    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_1
        0x82 -> :sswitch_1
        0x89 -> :sswitch_0
        0x97 -> :sswitch_1
    .end sparse-switch
.end method

.method private loadParts(J)[Lcom/google/android/mms/pdu/PduPart;
    .locals 1
    .param p1, "msgId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 386
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/mms/pdu/PduPersister;->loadParts(JZ)[Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    return-object v0
.end method

.method private loadParts(JZ)[Lcom/google/android/mms/pdu/PduPart;
    .locals 33
    .param p1, "msgId"    # J
    .param p3, "bSpam"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 390
    const/4 v12, 0x0

    .line 392
    .local v12, "c":Landroid/database/Cursor;
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_2

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://spammms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/spampart"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PART_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 402
    :goto_0
    const/16 v30, 0x0

    .line 405
    .local v30, "parts":[Lcom/google/android/mms/pdu/PduPart;
    if-eqz v12, :cond_0

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 409
    :cond_0
    const/4 v2, 0x0

    .line 523
    if-eqz v12, :cond_1

    .line 524
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 528
    :cond_1
    :goto_1
    return-object v2

    .line 397
    .end local v30    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/part"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PART_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    goto :goto_0

    .line 412
    .restart local v30    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    :cond_3
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v24

    .line 413
    .local v24, "partCount":I
    const/16 v25, 0x0

    .line 414
    .local v25, "partIdx":I
    move/from16 v0, v24

    new-array v0, v0, [Lcom/google/android/mms/pdu/PduPart;

    move-object/from16 v30, v0

    move/from16 v28, v25

    .line 415
    .end local v25    # "partIdx":I
    .local v28, "partIdx":I
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 416
    new-instance v23, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 417
    .local v23, "part":Lcom/google/android/mms/pdu/PduPart;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/google/android/mms/pdu/PduPersister;->getIntegerFromPartColumn(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v13

    .line 419
    .local v13, "charset":Ljava/lang/Integer;
    if-eqz v13, :cond_4

    .line 420
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 423
    :cond_4
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v14

    .line 425
    .local v14, "contentDisposition":[B
    if-eqz v14, :cond_5

    .line 426
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 429
    :cond_5
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v15

    .line 431
    .local v15, "contentId":[B
    if-eqz v15, :cond_6

    .line 432
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 435
    :cond_6
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v16

    .line 437
    .local v16, "contentLocation":[B
    if-eqz v16, :cond_7

    .line 438
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 441
    :cond_7
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v17

    .line 443
    .local v17, "contentType":[B
    if-eqz v17, :cond_d

    .line 444
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 449
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v19

    .line 451
    .local v19, "fileName":[B
    if-eqz v19, :cond_8

    .line 452
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 455
    :cond_8
    const/4 v2, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v22

    .line 457
    .local v22, "name":[B
    if-eqz v22, :cond_9

    .line 458
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 462
    :cond_9
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 465
    .local v26, "partId":J
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_f

    .line 466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://spammms/spampart/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v26

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    .line 470
    .local v29, "partURI":Landroid/net/Uri;
    :goto_3
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 474
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v32

    .line 475
    .local v32, "type":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static/range {v32 .. v32}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static/range {v32 .. v32}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 478
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 479
    .local v9, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v20, 0x0

    .line 484
    .local v20, "is":Ljava/io/InputStream;
    const-string v2, "text/plain"

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "application/smil"

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "text/html"

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 486
    :cond_a
    const/16 v2, 0x8

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 487
    .local v31, "text":Ljava/lang/String;
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    if-eqz v31, :cond_10

    .end local v31    # "text":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, v31

    invoke-direct {v2, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v10

    .line 489
    .local v10, "blob":[B
    const/4 v2, 0x0

    array-length v3, v10

    invoke-virtual {v9, v10, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 518
    .end local v10    # "blob":[B
    :cond_b
    :goto_5
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 520
    .end local v9    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v20    # "is":Ljava/io/InputStream;
    :cond_c
    add-int/lit8 v25, v28, 0x1

    .end local v28    # "partIdx":I
    .restart local v25    # "partIdx":I
    aput-object v23, v30, v28

    move/from16 v28, v25

    .line 521
    .end local v25    # "partIdx":I
    .restart local v28    # "partIdx":I
    goto/16 :goto_2

    .line 446
    .end local v19    # "fileName":[B
    .end local v22    # "name":[B
    .end local v26    # "partId":J
    .end local v29    # "partURI":Landroid/net/Uri;
    .end local v32    # "type":Ljava/lang/String;
    :cond_d
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "Content-Type must be set."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    .end local v13    # "charset":Ljava/lang/Integer;
    .end local v14    # "contentDisposition":[B
    .end local v15    # "contentId":[B
    .end local v16    # "contentLocation":[B
    .end local v17    # "contentType":[B
    .end local v23    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v24    # "partCount":I
    .end local v28    # "partIdx":I
    :catchall_0
    move-exception v2

    if-eqz v12, :cond_e

    .line 524
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v2

    .line 468
    .restart local v13    # "charset":Ljava/lang/Integer;
    .restart local v14    # "contentDisposition":[B
    .restart local v15    # "contentId":[B
    .restart local v16    # "contentLocation":[B
    .restart local v17    # "contentType":[B
    .restart local v19    # "fileName":[B
    .restart local v22    # "name":[B
    .restart local v23    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v24    # "partCount":I
    .restart local v26    # "partId":J
    .restart local v28    # "partIdx":I
    :cond_f
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/part/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v26

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    .restart local v29    # "partURI":Landroid/net/Uri;
    goto/16 :goto_3

    .line 487
    .restart local v9    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v20    # "is":Ljava/io/InputStream;
    .restart local v31    # "text":Ljava/lang/String;
    .restart local v32    # "type":Ljava/lang/String;
    :cond_10
    const-string v31, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 493
    .end local v31    # "text":Ljava/lang/String;
    :cond_11
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v20

    .line 494
    if-nez v20, :cond_13

    .line 495
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "Failed to load part data, return null."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 504
    :catch_0
    move-exception v18

    .line 505
    .local v18, "e":Ljava/io/IOException;
    :try_start_4
    const-string v2, "PduPersister"

    const-string v3, "Failed to load part data"

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 506
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 507
    new-instance v2, Lcom/google/android/mms/MmsException;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 509
    .end local v18    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v2

    if-eqz v20, :cond_12

    .line 511
    :try_start_5
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 514
    :cond_12
    :goto_6
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 498
    :cond_13
    const/16 v2, 0x100

    :try_start_7
    new-array v11, v2, [B

    .line 499
    .local v11, "buffer":[B
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    move-result v21

    .line 500
    .local v21, "len":I
    :goto_7
    if-ltz v21, :cond_14

    .line 501
    const/4 v2, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v11, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 502
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v21

    goto :goto_7

    .line 509
    :cond_14
    if-eqz v20, :cond_b

    .line 511
    :try_start_8
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_5

    .line 512
    :catch_1
    move-exception v18

    .line 513
    .restart local v18    # "e":Ljava/io/IOException;
    :try_start_9
    const-string v2, "PduPersister"

    const-string v3, "Failed to close stream"

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 512
    .end local v11    # "buffer":[B
    .end local v18    # "e":Ljava/io/IOException;
    .end local v21    # "len":I
    :catch_2
    move-exception v18

    .line 513
    .restart local v18    # "e":Ljava/io/IOException;
    const-string v3, "PduPersister"

    const-string v4, "Failed to close stream"

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    .line 523
    .end local v9    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "charset":Ljava/lang/Integer;
    .end local v14    # "contentDisposition":[B
    .end local v15    # "contentId":[B
    .end local v16    # "contentLocation":[B
    .end local v17    # "contentType":[B
    .end local v18    # "e":Ljava/io/IOException;
    .end local v19    # "fileName":[B
    .end local v20    # "is":Ljava/io/InputStream;
    .end local v22    # "name":[B
    .end local v23    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v26    # "partId":J
    .end local v29    # "partURI":Landroid/net/Uri;
    .end local v32    # "type":Ljava/lang/String;
    :cond_15
    if-eqz v12, :cond_16

    .line 524
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_16
    move-object/from16 v2, v30

    .line 528
    goto/16 :goto_1
.end method

.method private loadRecipients(ILjava/util/HashSet;Ljava/util/HashMap;Z)V
    .locals 16
    .param p1, "addressType"    # I
    .param p4, "excludeMyNumber"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/google/android/mms/pdu/EncodedStringValue;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2148
    .local p2, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p3, "addressMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/google/android/mms/pdu/EncodedStringValue;>;"
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 2149
    .local v2, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v2, :cond_1

    .line 2199
    :cond_0
    return-void

    .line 2158
    :cond_1
    const/4 v6, 0x0

    .line 2160
    .local v6, "line1Number":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/mms/pdu/PduPersister;->mCscFeature:Lcom/sec/android/app/CscFeature;

    const-string v14, "CscFeature_RIL_SupportImsMsisdn"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 2162
    const/4 v7, 0x0

    .line 2164
    .local v7, "mImsLineNumber":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    const-string v14, "com.sec.imsservice"

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v11

    .line 2165
    .local v11, "tempContext":Landroid/content/Context;
    const-string v13, "pref"

    const/4 v14, 0x5

    invoke-virtual {v11, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 2166
    .local v10, "sp":Landroid/content/SharedPreferences;
    const-string v13, "ImsLine1Number"

    const/4 v14, 0x0

    invoke-interface {v10, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2167
    if-nez v7, :cond_4

    .line 2168
    const-string v13, "PduPersister"

    const-string v14, "mImsLineNumber is null "

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2176
    .end local v10    # "sp":Landroid/content/SharedPreferences;
    .end local v11    # "tempContext":Landroid/content/Context;
    :goto_0
    if-nez v7, :cond_5

    .line 2177
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/mms/pdu/PduPersister;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v6

    .line 2186
    .end local v7    # "mImsLineNumber":Ljava/lang/String;
    :goto_1
    if-eqz p4, :cond_7

    move-object v8, v6

    .line 2189
    .local v8, "myNumber":Ljava/lang/String;
    :goto_2
    move-object v1, v2

    .local v1, "arr$":[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_3
    if-ge v4, v5, :cond_0

    aget-object v12, v1, v4

    .line 2190
    .local v12, "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v12, :cond_3

    .line 2191
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v9

    .line 2192
    .local v9, "number":Ljava/lang/String;
    if-eqz v8, :cond_2

    invoke-static {v9, v8}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 2195
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2189
    .end local v9    # "number":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2170
    .end local v1    # "arr$":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v8    # "myNumber":Ljava/lang/String;
    .end local v12    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v7    # "mImsLineNumber":Ljava/lang/String;
    .restart local v10    # "sp":Landroid/content/SharedPreferences;
    .restart local v11    # "tempContext":Landroid/content/Context;
    :cond_4
    :try_start_1
    const-string v13, "PduPersister"

    const-string v14, "read mImsLineNumber"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2172
    .end local v10    # "sp":Landroid/content/SharedPreferences;
    .end local v11    # "tempContext":Landroid/content/Context;
    :catch_0
    move-exception v3

    .line 2173
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "PduPersister"

    const-string v14, "mImsLineNumber exceptioin"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2179
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    move-object v6, v7

    goto :goto_1

    .line 2182
    .end local v7    # "mImsLineNumber":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/mms/pdu/PduPersister;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 2186
    :cond_7
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private persistAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 7
    .param p1, "msgId"    # J
    .param p3, "type"    # I
    .param p4, "array"    # [Lcom/google/android/mms/pdu/EncodedStringValue;

    .prologue
    .line 752
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/mms/pdu/PduPersister;->persistAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;Z)V

    .line 753
    return-void
.end method

.method private persistAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;Z)V
    .locals 9
    .param p1, "msgId"    # J
    .param p3, "type"    # I
    .param p4, "array"    # [Lcom/google/android/mms/pdu/EncodedStringValue;
    .param p5, "bSpam"    # Z

    .prologue
    .line 757
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 759
    .local v5, "values":Landroid/content/ContentValues;
    move-object v1, p4

    .local v1, "arr$":[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 760
    .local v0, "addr":Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 761
    const-string v6, "address"

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    const-string v6, "charset"

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 763
    const-string v6, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 767
    const/4 v6, 0x1

    if-ne p5, v6, :cond_0

    .line 768
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://spammms/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/spamaddr"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 772
    .local v4, "uri":Landroid/net/Uri;
    :goto_1
    iget-object v6, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v6, v7, v4, v5}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 759
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 770
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://mms/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/addr"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .restart local v4    # "uri":Landroid/net/Uri;
    goto :goto_1

    .line 774
    .end local v0    # "addr":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method private persistData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 7
    .param p1, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/PduPart;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .local p4, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    const/4 v5, 0x0

    .line 904
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/mms/pdu/PduPersister;->persistData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    .line 905
    return-void
.end method

.method private persistData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;Ljava/util/HashMap;ZZ)V
    .locals 23
    .param p1, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p5, "bSpam"    # Z
    .param p6, "hasVendorDrmEngine"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/PduPart;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;ZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 911
    .local p4, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    const/16 v20, 0x0

    .line 912
    .local v20, "os":Ljava/io/OutputStream;
    const/16 v16, 0x0

    .line 913
    .local v16, "is":Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 914
    .local v13, "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    const/16 v17, 0x0

    .line 915
    .local v17, "isDrm":Z
    const/4 v12, 0x0

    .line 916
    .local v12, "dataUri":Landroid/net/Uri;
    const/16 v21, 0x0

    .line 918
    .local v21, "path":Ljava/lang/String;
    if-nez p4, :cond_0

    .line 919
    const-string v2, "PduPersister"

    const-string v3, "preOpenedFiles is null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v11

    .line 924
    .local v11, "data":[B
    const-string v2, "text/plain"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "application/smil"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "text/html"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 927
    :cond_1
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 931
    .local v10, "cv":Landroid/content/ContentValues;
    if-nez v11, :cond_6

    .line 932
    const-string v2, "text"

    const-string v3, ""

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v10, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1c

    .line 943
    new-instance v2, Lcom/google/android/mms/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1035
    .end local v10    # "cv":Landroid/content/ContentValues;
    .end local v11    # "data":[B
    :catch_0
    move-exception v14

    .line 1036
    .local v14, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v2, "PduPersister"

    const-string v3, "Failed to open Input/Output stream."

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1037
    new-instance v2, Lcom/google/android/mms/MmsException;

    invoke-direct {v2, v14}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1042
    .end local v14    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v2

    move-object/from16 v22, v2

    if-eqz v20, :cond_2

    .line 1044
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    .line 1049
    :cond_2
    :goto_1
    if-eqz v16, :cond_3

    .line 1051
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a

    .line 1057
    :cond_3
    :goto_2
    if-eqz v13, :cond_4

    if-eqz v21, :cond_4

    .line 1058
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/google/android/mms/util/DrmConvertSession;->close(Ljava/lang/String;)I

    .line 1061
    :cond_4
    if-eqz v17, :cond_5

    .line 1065
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1066
    .local v15, "f":Ljava/io/File;
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1067
    .local v5, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mms/resetFilePerm/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1070
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v15    # "f":Ljava/io/File;
    :cond_5
    throw v22

    .line 935
    .restart local v10    # "cv":Landroid/content/ContentValues;
    .restart local v11    # "data":[B
    :cond_6
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v2

    const/16 v3, 0x26

    if-ne v2, v3, :cond_7

    .line 936
    const-string v2, "text"

    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v4

    invoke-direct {v3, v4, v11}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    const-string v2, "chset"

    const/16 v3, 0x6a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1038
    .end local v10    # "cv":Landroid/content/ContentValues;
    .end local v11    # "data":[B
    :catch_1
    move-exception v14

    .line 1039
    .local v14, "e":Ljava/io/IOException;
    :try_start_5
    const-string v2, "PduPersister"

    const-string v3, "Failed to read/write data."

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1040
    new-instance v2, Lcom/google/android/mms/MmsException;

    invoke-direct {v2, v14}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 939
    .end local v14    # "e":Ljava/io/IOException;
    .restart local v10    # "cv":Landroid/content/ContentValues;
    .restart local v11    # "data":[B
    :cond_7
    :try_start_6
    const-string v2, "text"

    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v3, v11}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 946
    .end local v10    # "cv":Landroid/content/ContentValues;
    :cond_8
    invoke-static/range {p3 .. p3}, Lcom/google/android/mms/util/DownloadDrmHelper;->isDrmConvertNeeded(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v17

    .line 948
    if-eqz v17, :cond_e

    .line 949
    if-eqz p2, :cond_d

    .line 951
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/google/android/mms/pdu/PduPersister;->convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v21

    .line 955
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 956
    .restart local v15    # "f":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->length()J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-wide v18

    .line 960
    .local v18, "len":J
    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-lez v2, :cond_d

    .line 1042
    if-eqz v20, :cond_9

    .line 1044
    :try_start_8
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 1049
    :cond_9
    :goto_3
    if-eqz v16, :cond_a

    .line 1051
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 1057
    :cond_a
    :goto_4
    if-eqz v13, :cond_b

    if-eqz v21, :cond_b

    .line 1058
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/google/android/mms/util/DrmConvertSession;->close(Ljava/lang/String;)I

    .line 1061
    :cond_b
    if-eqz v17, :cond_c

    .line 1065
    new-instance v15, Ljava/io/File;

    .end local v15    # "f":Ljava/io/File;
    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1066
    .restart local v15    # "f":Ljava/io/File;
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1067
    .restart local v5    # "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mms/resetFilePerm/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1072
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v15    # "f":Ljava/io/File;
    .end local v18    # "len":J
    :cond_c
    :goto_5
    return-void

    .line 1045
    .restart local v15    # "f":Ljava/io/File;
    .restart local v18    # "len":J
    :catch_2
    move-exception v14

    .line 1046
    .restart local v14    # "e":Ljava/io/IOException;
    const-string v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException while closing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1052
    .end local v14    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v14

    .line 1053
    .restart local v14    # "e":Ljava/io/IOException;
    const-string v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException while closing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 965
    .end local v14    # "e":Ljava/io/IOException;
    .end local v15    # "f":Ljava/io/File;
    .end local v18    # "len":J
    :catch_4
    move-exception v14

    .line 966
    .local v14, "e":Ljava/lang/Exception;
    :try_start_a
    const-string v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get file info for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 970
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_d
    if-nez p6, :cond_e

    .line 971
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    invoke-static {v2, v0}, Lcom/google/android/mms/util/DrmConvertSession;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/mms/util/DrmConvertSession;

    move-result-object v13

    .line 972
    if-nez v13, :cond_e

    .line 973
    new-instance v2, Lcom/google/android/mms/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mimetype "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " can not be converted."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 981
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v20

    .line 982
    if-nez v20, :cond_f

    .line 983
    new-instance v2, Lcom/google/android/mms/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to open output stream "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 986
    :cond_f
    if-nez v11, :cond_1a

    .line 987
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v12

    .line 988
    if-eqz v12, :cond_10

    move-object/from16 v0, p2

    if-ne v12, v0, :cond_14

    .line 989
    :cond_10
    const-string v2, "PduPersister"

    const-string v3, "Can\'t find data for this part."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1042
    if-eqz v20, :cond_11

    .line 1044
    :try_start_b
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 1049
    :cond_11
    :goto_6
    if-eqz v16, :cond_12

    .line 1051
    :try_start_c
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 1057
    :cond_12
    :goto_7
    if-eqz v13, :cond_13

    if-eqz v21, :cond_13

    .line 1058
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/google/android/mms/util/DrmConvertSession;->close(Ljava/lang/String;)I

    .line 1061
    :cond_13
    if-eqz v17, :cond_c

    .line 1065
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1066
    .restart local v15    # "f":Ljava/io/File;
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1067
    .restart local v5    # "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mms/resetFilePerm/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1045
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v15    # "f":Ljava/io/File;
    :catch_5
    move-exception v14

    .line 1046
    .local v14, "e":Ljava/io/IOException;
    const-string v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException while closing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 1052
    .end local v14    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v14

    .line 1053
    .restart local v14    # "e":Ljava/io/IOException;
    const-string v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException while closing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 994
    .end local v14    # "e":Ljava/io/IOException;
    :cond_14
    if-eqz p4, :cond_15

    :try_start_d
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 995
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/io/InputStream;

    move-object/from16 v16, v0

    .line 997
    :cond_15
    if-nez v16, :cond_16

    .line 998
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v12}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v16

    .line 1005
    :cond_16
    const/16 v2, 0x2000

    new-array v8, v2, [B

    .line 1006
    .local v8, "buffer":[B
    const/16 v18, 0x0

    .local v18, "len":I
    :goto_8
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/io/InputStream;->read([B)I

    move-result v18

    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_1c

    .line 1007
    if-eqz v17, :cond_17

    if-eqz p6, :cond_18

    .line 1008
    :cond_17
    const/4 v2, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v8, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_8

    .line 1010
    :cond_18
    move/from16 v0, v18

    invoke-virtual {v13, v8, v0}, Lcom/google/android/mms/util/DrmConvertSession;->convert([BI)[B

    move-result-object v9

    .line 1011
    .local v9, "convertedData":[B
    if-eqz v9, :cond_19

    .line 1012
    const/4 v2, 0x0

    array-length v3, v9

    move-object/from16 v0, v20

    invoke-virtual {v0, v9, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_8

    .line 1014
    :cond_19
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "Error converting drm data."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1022
    .end local v8    # "buffer":[B
    .end local v9    # "convertedData":[B
    .end local v18    # "len":I
    :cond_1a
    if-eqz v17, :cond_1b

    if-eqz p6, :cond_20

    .line 1023
    :cond_1b
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/io/OutputStream;->write([B)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1042
    :cond_1c
    :goto_9
    if-eqz v20, :cond_1d

    .line 1044
    :try_start_e
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 1049
    :cond_1d
    :goto_a
    if-eqz v16, :cond_1e

    .line 1051
    :try_start_f
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    .line 1057
    :cond_1e
    :goto_b
    if-eqz v13, :cond_1f

    if-eqz v21, :cond_1f

    .line 1058
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/google/android/mms/util/DrmConvertSession;->close(Ljava/lang/String;)I

    .line 1061
    :cond_1f
    if-eqz v17, :cond_c

    .line 1065
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1066
    .restart local v15    # "f":Ljava/io/File;
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1067
    .restart local v5    # "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mms/resetFilePerm/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1025
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v15    # "f":Ljava/io/File;
    :cond_20
    move-object/from16 v12, p2

    .line 1026
    :try_start_10
    array-length v2, v11

    invoke-virtual {v13, v11, v2}, Lcom/google/android/mms/util/DrmConvertSession;->convert([BI)[B

    move-result-object v9

    .line 1027
    .restart local v9    # "convertedData":[B
    if-eqz v9, :cond_21

    .line 1028
    const/4 v2, 0x0

    array-length v3, v9

    move-object/from16 v0, v20

    invoke-virtual {v0, v9, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_9

    .line 1030
    :cond_21
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "Error converting drm data."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1045
    .end local v9    # "convertedData":[B
    :catch_7
    move-exception v14

    .line 1046
    .restart local v14    # "e":Ljava/io/IOException;
    const-string v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException while closing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 1052
    .end local v14    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v14

    .line 1053
    .restart local v14    # "e":Ljava/io/IOException;
    const-string v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException while closing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 1045
    .end local v11    # "data":[B
    .end local v14    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v14

    .line 1046
    .restart local v14    # "e":Ljava/io/IOException;
    const-string v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException while closing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1052
    .end local v14    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v14

    .line 1053
    .restart local v14    # "e":Ljava/io/IOException;
    const-string v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException while closing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2
.end method

.method private setEncodedStringValueToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;
    .param p4, "mapColumn"    # I

    .prologue
    .line 334
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 336
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 337
    .local v1, "charsetColumnIndex":I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 338
    .local v0, "charset":I
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 340
    .local v3, "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {p3, v3, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 342
    .end local v0    # "charset":I
    .end local v1    # "charsetColumnIndex":I
    .end local v3    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_0
    return-void
.end method

.method private setLongToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .locals 3
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;
    .param p4, "mapColumn"    # I

    .prologue
    .line 365
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 366
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 367
    .local v0, "l":J
    invoke-virtual {p3, v0, v1, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    .line 369
    .end local v0    # "l":J
    :cond_0
    return-void
.end method

.method private setOctetToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;
    .param p4, "mapColumn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 356
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 357
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 358
    .local v0, "b":I
    invoke-virtual {p3, v0, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 360
    .end local v0    # "b":I
    :cond_0
    return-void
.end method

.method private setTextStringToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;
    .param p4, "mapColumn"    # I

    .prologue
    .line 347
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 349
    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p3, v1, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 351
    :cond_0
    return-void
.end method

.method public static toIsoString([B)Ljava/lang/String;
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 2240
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "iso-8859-1"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2244
    :goto_0
    return-object v1

    .line 2241
    :catch_0
    move-exception v0

    .line 2243
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "PduPersister"

    const-string v2, "ISO_8859_1 must be supported!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2244
    const-string v1, ""

    goto :goto_0
.end method

.method private updateAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 5
    .param p1, "msgId"    # J
    .param p3, "type"    # I
    .param p4, "array"    # [Lcom/google/android/mms/pdu/EncodedStringValue;

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/addr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1128
    if-eqz p4, :cond_0

    .line 1129
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/mms/pdu/PduPersister;->persistAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1131
    :cond_0
    return-void
.end method

.method private updatePart(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;Ljava/util/HashMap;)V
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/mms/pdu/PduPart;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .local p3, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    const/4 v4, 0x0

    .line 1325
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x7

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1327
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v6

    .line 1328
    .local v6, "charset":I
    if-eqz v6, :cond_0

    .line 1329
    const-string v0, "chset"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1332
    :cond_0
    const/4 v7, 0x0

    .line 1333
    .local v7, "contentType":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1334
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v7

    .line 1335
    const-string v0, "ct"

    invoke-virtual {v3, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1341
    new-instance v8, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    .line 1342
    .local v8, "fileName":Ljava/lang/String;
    const-string v0, "fn"

    invoke-virtual {v3, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    .end local v8    # "fileName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1346
    new-instance v9, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    .line 1347
    .local v9, "name":Ljava/lang/String;
    const-string v0, "name"

    invoke-virtual {v3, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    .end local v9    # "name":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x0

    .line 1351
    .local v10, "value":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1352
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v10

    .line 1353
    .local v10, "value":Ljava/lang/String;
    const-string v0, "cd"

    check-cast v10, Ljava/lang/String;

    .end local v10    # "value":Ljava/lang/String;
    invoke-virtual {v3, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1357
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v10

    .line 1358
    .restart local v10    # "value":Ljava/lang/String;
    const-string v0, "cid"

    check-cast v10, Ljava/lang/String;

    .end local v10    # "value":Ljava/lang/String;
    invoke-virtual {v3, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    :cond_4
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1362
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v10

    .line 1363
    .restart local v10    # "value":Ljava/lang/String;
    const-string v0, "cl"

    check-cast v10, Ljava/lang/String;

    .end local v10    # "value":Ljava/lang/String;
    invoke-virtual {v3, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    :cond_5
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1371
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v0

    if-eq p1, v0, :cond_7

    .line 1373
    :cond_6
    invoke-direct {p0, p2, p1, v7, p3}, Lcom/google/android/mms/pdu/PduPersister;->persistData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1375
    :cond_7
    return-void

    .line 1337
    :cond_8
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v1, "MIME type of the part must be set."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getPendingMessages(IJ)Landroid/database/Cursor;
    .locals 8
    .param p1, "simSlot"    # I
    .param p2, "dueTime"    # J

    .prologue
    .line 2307
    sget-object v0, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 2308
    .local v7, "uriBuilder":Landroid/net/Uri$Builder;
    const-string v0, "protocol"

    const-string v1, "mms"

    invoke-virtual {v7, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2310
    const-string v4, "err_type < ? AND due_time <= ? AND sim_slot2 = ?"

    .line 2314
    .local v4, "selection":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 2320
    .local v5, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v6, "due_time"

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getPendingMessages(J)Landroid/database/Cursor;
    .locals 9
    .param p1, "dueTime"    # J

    .prologue
    .line 2274
    sget-object v0, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 2275
    .local v7, "uriBuilder":Landroid/net/Uri$Builder;
    const-string v0, "protocol"

    const-string v1, "mms"

    invoke-virtual {v7, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2277
    const-string v4, "err_type < ? AND due_time <= ?"

    .line 2280
    .local v4, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 2285
    .local v5, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v6, "due_time"

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;
    .locals 36
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 589
    const/16 v30, 0x0

    .line 590
    .local v30, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    const/4 v15, 0x0

    .line 591
    .local v15, "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    const/16 v24, 0x0

    .line 592
    .local v24, "msgBox":I
    const-wide/16 v34, -0x1

    .line 594
    .local v34, "threadId":J
    :try_start_0
    sget-object v7, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 595
    :try_start_1
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/google/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    if-eqz v6, :cond_2

    .line 600
    :try_start_2
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 604
    :goto_0
    :try_start_3
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/google/android/mms/util/PduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/google/android/mms/util/PduCacheEntry;

    move-object v15, v0

    .line 605
    if-eqz v15, :cond_2

    .line 606
    invoke-virtual {v15}, Lcom/google/android/mms/util/PduCacheEntry;->getPdu()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 736
    sget-object v7, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v7

    .line 737
    if-eqz v30, :cond_1

    .line 738
    :try_start_4
    sget-boolean v8, Lcom/google/android/mms/pdu/PduPersister;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    sget-object v8, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/google/android/mms/util/PduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 745
    :catchall_0
    move-exception v6

    :goto_1
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 601
    :catch_0
    move-exception v17

    .line 602
    .local v17, "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v6, "PduPersister"

    const-string v8, "load: "

    move-object/from16 v0, v17

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 612
    .end local v17    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v6

    :goto_2
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 736
    :catchall_2
    move-exception v6

    move-object/from16 v16, v15

    .end local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .local v16, "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :goto_3
    sget-object v7, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v7

    .line 737
    if-eqz v30, :cond_11

    .line 738
    :try_start_7
    sget-boolean v8, Lcom/google/android/mms/pdu/PduPersister;->$assertionsDisabled:Z

    if-nez v8, :cond_10

    sget-object v8, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/google/android/mms/util/PduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_10

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 745
    :catchall_3
    move-exception v6

    move-object/from16 v15, v16

    .end local v16    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :goto_4
    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    throw v6

    .line 740
    :cond_0
    :try_start_9
    new-instance v16, Lcom/google/android/mms/util/PduCacheEntry;

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    move/from16 v2, v24

    move-wide/from16 v3, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/mms/util/PduCacheEntry;-><init>(Lcom/google/android/mms/pdu/GenericPdu;IJ)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 741
    .end local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v16    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :try_start_a
    sget-object v8, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v8, v0, v1}, Lcom/google/android/mms/util/PduCache;->put(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    move-object/from16 v15, v16

    .line 743
    .end local v16    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :cond_1
    :try_start_b
    sget-object v8, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v9}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 744
    sget-object v8, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 745
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 747
    :goto_5
    return-object v6

    :cond_2
    move-object/from16 v16, v15

    .line 611
    .end local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v16    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :try_start_c
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v8}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 612
    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    .line 614
    :try_start_d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Lcom/google/android/mms/pdu/PduPersister;->PDU_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p1

    invoke-static/range {v6 .. v12}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 616
    .local v14, "c":Landroid/database/Cursor;
    new-instance v19, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct/range {v19 .. v19}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    .line 618
    .local v19, "headers":Lcom/google/android/mms/pdu/PduHeaders;
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    move-result-wide v26

    .line 621
    .local v26, "msgId":J
    if-eqz v14, :cond_3

    :try_start_e
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_5

    .line 622
    :cond_3
    new-instance v6, Lcom/google/android/mms/MmsException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad uri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 652
    :catchall_4
    move-exception v6

    if-eqz v14, :cond_4

    .line 653
    :try_start_f
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 736
    .end local v14    # "c":Landroid/database/Cursor;
    .end local v19    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v26    # "msgId":J
    :catchall_5
    move-exception v6

    goto/16 :goto_3

    .line 625
    .restart local v14    # "c":Landroid/database/Cursor;
    .restart local v19    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v26    # "msgId":J
    :cond_5
    const/4 v6, 0x1

    :try_start_10
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 626
    const/4 v6, 0x2

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 628
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v32

    .line 629
    .local v32, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-interface/range {v32 .. v32}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 630
    .local v18, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v14, v7, v1, v6}, Lcom/google/android/mms/pdu/PduPersister;->setEncodedStringValueToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V

    goto :goto_6

    .line 634
    .end local v18    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_6
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v32

    .line 635
    invoke-interface/range {v32 .. v32}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_7
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 636
    .restart local v18    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v14, v7, v1, v6}, Lcom/google/android/mms/pdu/PduPersister;->setTextStringToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V

    goto :goto_7

    .line 640
    .end local v18    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_7
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v32

    .line 641
    invoke-interface/range {v32 .. v32}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_8
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 642
    .restart local v18    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v14, v7, v1, v6}, Lcom/google/android/mms/pdu/PduPersister;->setOctetToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V

    goto :goto_8

    .line 646
    .end local v18    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_8
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v32

    .line 647
    invoke-interface/range {v32 .. v32}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_9
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 648
    .restart local v18    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v14, v7, v1, v6}, Lcom/google/android/mms/pdu/PduPersister;->setLongToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto :goto_9

    .line 652
    .end local v18    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_9
    if-eqz v14, :cond_a

    .line 653
    :try_start_11
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 658
    :cond_a
    const-wide/16 v6, -0x1

    cmp-long v6, v26, v6

    if-nez v6, :cond_b

    .line 659
    new-instance v6, Lcom/google/android/mms/MmsException;

    const-string v7, "Error! ID of the message: -1."

    invoke-direct {v6, v7}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 663
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v23

    .line 664
    .local v23, "mUriAuthority":Ljava/lang/String;
    const/16 v22, 0x0

    .line 665
    .local v22, "mIsSpam":Z
    if-eqz v23, :cond_c

    const-string v6, "spammms"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 666
    const/16 v22, 0x1

    .line 669
    :cond_c
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    move-object/from16 v3, v19

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/mms/pdu/PduPersister;->loadAddress(JLcom/google/android/mms/pdu/PduHeaders;Z)V

    .line 671
    const/16 v6, 0x8c

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v25

    .line 672
    .local v25, "msgType":I
    new-instance v13, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v13}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 676
    .local v13, "body":Lcom/google/android/mms/pdu/PduBody;
    const/16 v6, 0x84

    move/from16 v0, v25

    if-eq v0, v6, :cond_d

    const/16 v6, 0x80

    move/from16 v0, v25

    if-ne v0, v6, :cond_e

    .line 678
    :cond_d
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduPersister;->loadParts(JZ)[Lcom/google/android/mms/pdu/PduPart;

    move-result-object v28

    .line 679
    .local v28, "parts":[Lcom/google/android/mms/pdu/PduPart;
    if-eqz v28, :cond_e

    .line 680
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    .line 681
    .local v29, "partsNum":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_a
    move/from16 v0, v20

    move/from16 v1, v29

    if-ge v0, v1, :cond_e

    .line 682
    aget-object v6, v28, v20

    invoke-virtual {v13, v6}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .line 681
    add-int/lit8 v20, v20, 0x1

    goto :goto_a

    .line 687
    .end local v20    # "i":I
    .end local v28    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    .end local v29    # "partsNum":I
    :cond_e
    packed-switch v25, :pswitch_data_0

    .line 732
    new-instance v6, Lcom/google/android/mms/MmsException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized PDU type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 689
    :pswitch_0
    new-instance v31, Lcom/google/android/mms/pdu/NotificationInd;

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .end local v30    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .local v31, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v30, v31

    .line 736
    .end local v31    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v30    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :goto_b
    sget-object v7, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v7

    .line 737
    if-eqz v30, :cond_12

    .line 738
    :try_start_12
    sget-boolean v6, Lcom/google/android/mms/pdu/PduPersister;->$assertionsDisabled:Z

    if-nez v6, :cond_f

    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/google/android/mms/util/PduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_f

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 745
    :catchall_6
    move-exception v6

    move-object/from16 v15, v16

    .end local v16    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :goto_c
    :try_start_13
    monitor-exit v7
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    throw v6

    .line 692
    .end local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v16    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :pswitch_1
    :try_start_14
    new-instance v31, Lcom/google/android/mms/pdu/DeliveryInd;

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .end local v30    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v31    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v30, v31

    .line 693
    .end local v31    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v30    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_b

    .line 695
    :pswitch_2
    new-instance v31, Lcom/google/android/mms/pdu/ReadOrigInd;

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .end local v30    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v31    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v30, v31

    .line 696
    .end local v31    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v30    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_b

    .line 698
    :pswitch_3
    new-instance v31, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v13}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .end local v30    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v31    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v30, v31

    .line 699
    .end local v31    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v30    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_b

    .line 701
    :pswitch_4
    new-instance v31, Lcom/google/android/mms/pdu/SendReq;

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v13}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .end local v30    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v31    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v30, v31

    .line 702
    .end local v31    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v30    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_b

    .line 704
    :pswitch_5
    new-instance v31, Lcom/google/android/mms/pdu/AcknowledgeInd;

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .end local v30    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v31    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v30, v31

    .line 705
    .end local v31    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v30    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_b

    .line 707
    :pswitch_6
    new-instance v31, Lcom/google/android/mms/pdu/NotifyRespInd;

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .end local v30    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v31    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v30, v31

    .line 708
    .end local v31    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v30    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_b

    .line 710
    :pswitch_7
    new-instance v31, Lcom/google/android/mms/pdu/ReadRecInd;

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .end local v30    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v31    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v30, v31

    .line 711
    .end local v31    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v30    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_b

    .line 728
    :pswitch_8
    new-instance v6, Lcom/google/android/mms/MmsException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported PDU type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 740
    :cond_f
    :try_start_15
    new-instance v15, Lcom/google/android/mms/util/PduCacheEntry;

    move-object/from16 v0, v30

    move/from16 v1, v24

    move-wide/from16 v2, v34

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/google/android/mms/util/PduCacheEntry;-><init>(Lcom/google/android/mms/pdu/GenericPdu;IJ)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .line 741
    .end local v16    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :try_start_16
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v15}, Lcom/google/android/mms/util/PduCache;->put(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)Z

    .line 743
    :goto_d
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v8}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 744
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 745
    monitor-exit v7
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    move-object/from16 v6, v30

    .line 747
    goto/16 :goto_5

    .line 740
    .end local v13    # "body":Lcom/google/android/mms/pdu/PduBody;
    .end local v14    # "c":Landroid/database/Cursor;
    .end local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .end local v19    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v22    # "mIsSpam":Z
    .end local v23    # "mUriAuthority":Ljava/lang/String;
    .end local v25    # "msgType":I
    .end local v26    # "msgId":J
    .end local v32    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .restart local v16    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :cond_10
    :try_start_17
    new-instance v15, Lcom/google/android/mms/util/PduCacheEntry;

    move-object/from16 v0, v30

    move/from16 v1, v24

    move-wide/from16 v2, v34

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/google/android/mms/util/PduCacheEntry;-><init>(Lcom/google/android/mms/pdu/GenericPdu;IJ)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 741
    .end local v16    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :try_start_18
    sget-object v8, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v15}, Lcom/google/android/mms/util/PduCache;->put(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)Z

    .line 743
    :goto_e
    sget-object v8, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v9}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 744
    sget-object v8, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 745
    monitor-exit v7
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    throw v6

    :catchall_7
    move-exception v6

    goto/16 :goto_4

    .restart local v13    # "body":Lcom/google/android/mms/pdu/PduBody;
    .restart local v14    # "c":Landroid/database/Cursor;
    .restart local v19    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v21    # "i$":Ljava/util/Iterator;
    .restart local v22    # "mIsSpam":Z
    .restart local v23    # "mUriAuthority":Ljava/lang/String;
    .restart local v25    # "msgType":I
    .restart local v26    # "msgId":J
    .restart local v32    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :catchall_8
    move-exception v6

    goto/16 :goto_c

    .line 612
    .end local v13    # "body":Lcom/google/android/mms/pdu/PduBody;
    .end local v14    # "c":Landroid/database/Cursor;
    .end local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .end local v19    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v22    # "mIsSpam":Z
    .end local v23    # "mUriAuthority":Ljava/lang/String;
    .end local v25    # "msgType":I
    .end local v26    # "msgId":J
    .end local v32    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .restart local v16    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :catchall_9
    move-exception v6

    move-object/from16 v15, v16

    .end local v16    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    goto/16 :goto_2

    .line 745
    .end local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v16    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :catchall_a
    move-exception v6

    move-object/from16 v15, v16

    .end local v16    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    goto/16 :goto_1

    .end local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v16    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :cond_11
    move-object/from16 v15, v16

    .end local v16    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    goto :goto_e

    .end local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v13    # "body":Lcom/google/android/mms/pdu/PduBody;
    .restart local v14    # "c":Landroid/database/Cursor;
    .restart local v16    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v19    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v21    # "i$":Ljava/util/Iterator;
    .restart local v22    # "mIsSpam":Z
    .restart local v23    # "mUriAuthority":Ljava/lang/String;
    .restart local v25    # "msgType":I
    .restart local v26    # "msgId":J
    .restart local v32    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :cond_12
    move-object/from16 v15, v16

    .end local v16    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    goto :goto_d

    .line 687
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 10
    .param p1, "from"    # Landroid/net/Uri;
    .param p2, "to"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2214
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 2215
    .local v8, "msgId":J
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-nez v0, :cond_0

    .line 2216
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v1, "Error! ID of the message: -1."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2220
    :cond_0
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 2221
    .local v6, "msgBox":Ljava/lang/Integer;
    if-nez v6, :cond_1

    .line 2222
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v1, "Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2229
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 2230
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "msg_box"

    invoke-virtual {v3, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2231
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2232
    invoke-static {p2, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;)Landroid/net/Uri;
    .locals 9
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "simSlot"    # I
    .param p3, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1787
    const/4 v5, 0x0

    .line 1788
    .local v5, "groupMmsEnabled":Z
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v8, v4

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;ZZLjava/util/HashMap;ZZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;II)Landroid/net/Uri;
    .locals 7
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "simSlot"    # I
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "reqAppId"    # I
    .param p5, "reqMsgId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1479
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;IILjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;IILjava/util/HashMap;)Landroid/net/Uri;
    .locals 8
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "simSlot"    # I
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "reqAppId"    # I
    .param p5, "reqMsgId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/GenericPdu;",
            "I",
            "Landroid/net/Uri;",
            "II",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1491
    .local p6, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;IILjava/util/HashMap;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;IILjava/util/HashMap;I)Landroid/net/Uri;
    .locals 46
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "simSlot"    # I
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "reqAppId"    # I
    .param p5, "reqMsgId"    # I
    .param p7, "twoPhoneServiceUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/GenericPdu;",
            "I",
            "Landroid/net/Uri;",
            "II",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;I)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1497
    .local p6, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    if-nez p3, :cond_0

    .line 1498
    new-instance v6, Lcom/google/android/mms/MmsException;

    const-string v7, "Uri may not be null."

    invoke-direct {v6, v7}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1501
    :cond_0
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    .line 1502
    .local v32, "msgBox":Ljava/lang/Integer;
    if-nez v32, :cond_1

    .line 1503
    new-instance v6, Lcom/google/android/mms/MmsException;

    const-string v7, "Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp."

    invoke-direct {v6, v7}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1509
    :cond_1
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    .line 1511
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/GenericPdu;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v24

    .line 1512
    .local v24, "header":Lcom/google/android/mms/pdu/PduHeaders;
    const/16 v17, 0x0

    .line 1513
    .local v17, "body":Lcom/google/android/mms/pdu/PduBody;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1516
    .local v9, "values":Landroid/content/ContentValues;
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v41

    .line 1517
    .local v41, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-interface/range {v41 .. v41}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 1518
    .local v19, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 1519
    .local v23, "field":I
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v22

    .line 1520
    .local v22, "encodedString":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v22, :cond_2

    .line 1521
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1522
    .local v18, "charsetColumn":Ljava/lang/String;
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1527
    .end local v18    # "charsetColumn":Ljava/lang/String;
    .end local v19    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v22    # "encodedString":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v23    # "field":I
    :cond_3
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v41

    .line 1528
    invoke-interface/range {v41 .. v41}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_4
    :goto_1
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 1529
    .restart local v19    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v42

    .line 1530
    .local v42, "text":[B
    if-eqz v42, :cond_4

    .line 1531
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static/range {v42 .. v42}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1535
    .end local v19    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v42    # "text":[B
    :cond_5
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v41

    .line 1536
    invoke-interface/range {v41 .. v41}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_6
    :goto_2
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 1537
    .restart local v19    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v16

    .line 1538
    .local v16, "b":I
    if-eqz v16, :cond_6

    .line 1539
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 1543
    .end local v16    # "b":I
    .end local v19    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_7
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v41

    .line 1544
    invoke-interface/range {v41 .. v41}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_8
    :goto_3
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 1545
    .restart local v19    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v28

    .line 1546
    .local v28, "l":J
    const-wide/16 v6, -0x1

    cmp-long v6, v28, v6

    if-eqz v6, :cond_8

    .line 1547
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_3

    .line 1551
    .end local v19    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v28    # "l":J
    :cond_9
    new-instance v13, Ljava/util/HashMap;

    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    array-length v6, v6

    invoke-direct {v13, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 1554
    .local v13, "addressMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/google/android/mms/pdu/EncodedStringValue;>;"
    sget-object v14, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    .local v14, "arr$":[I
    array-length v0, v14

    move/from16 v30, v0

    .local v30, "len$":I
    const/16 v26, 0x0

    .local v26, "i$":I
    :goto_4
    move/from16 v0, v26

    move/from16 v1, v30

    if-ge v0, v1, :cond_c

    aget v12, v14, v26

    .line 1555
    .local v12, "addrType":I
    const/4 v15, 0x0

    .line 1556
    .local v15, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/16 v6, 0x89

    if-ne v12, v6, :cond_b

    .line 1557
    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v43

    .line 1558
    .local v43, "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v43, :cond_a

    .line 1559
    const/4 v6, 0x1

    new-array v15, v6, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1560
    const/4 v6, 0x0

    aput-object v43, v15, v6

    .line 1565
    .end local v43    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_a
    :goto_5
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v6, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    add-int/lit8 v26, v26, 0x1

    goto :goto_4

    .line 1563
    :cond_b
    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v15

    goto :goto_5

    .line 1568
    .end local v12    # "addrType":I
    .end local v15    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_c
    new-instance v39, Ljava/util/HashSet;

    invoke-direct/range {v39 .. v39}, Ljava/util/HashSet;-><init>()V

    .line 1569
    .local v39, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-wide v44, 0x7fffffffffffffffL

    .line 1570
    .local v44, "threadId":J
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v33

    .line 1572
    .local v33, "msgType":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/mms/pdu/PduPersister;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v36

    .line 1579
    .local v36, "myNumber":Ljava/lang/String;
    const/16 v6, 0x82

    move/from16 v0, v33

    if-eq v0, v6, :cond_d

    const/16 v6, 0x84

    move/from16 v0, v33

    if-eq v0, v6, :cond_d

    const/16 v6, 0x80

    move/from16 v0, v33

    if-ne v0, v6, :cond_1c

    .line 1582
    :cond_d
    const/4 v15, 0x0

    .line 1584
    .restart local v15    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/mms/pdu/PduPersister;->mCscFeature:Lcom/sec/android/app/CscFeature;

    const-string v7, "CscFeature_Message_ConfigOpGroupMsg"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "VZW"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    if-eqz v36, :cond_1a

    .line 1585
    packed-switch v33, :pswitch_data_0

    .line 1658
    .end local v14    # "arr$":[I
    :cond_e
    :goto_6
    :pswitch_0
    if-eqz v15, :cond_1b

    .line 1659
    move-object v14, v15

    .local v14, "arr$":[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v0, v14

    move/from16 v30, v0

    const/16 v26, 0x0

    :goto_7
    move/from16 v0, v26

    move/from16 v1, v30

    if-ge v0, v1, :cond_1b

    aget-object v43, v14, v26

    .line 1660
    .restart local v43    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v43, :cond_f

    .line 1661
    invoke-virtual/range {v43 .. v43}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1659
    :cond_f
    add-int/lit8 v26, v26, 0x1

    goto :goto_7

    .line 1589
    .end local v43    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v14, "arr$":[I
    :pswitch_1
    const/16 v6, 0x89

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    check-cast v15, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1590
    .restart local v15    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v15, :cond_11

    .line 1591
    move-object v14, v15

    .local v14, "arr$":[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v0, v14

    move/from16 v30, v0

    const/16 v26, 0x0

    :goto_8
    move/from16 v0, v26

    move/from16 v1, v30

    if-ge v0, v1, :cond_11

    aget-object v43, v14, v26

    .line 1592
    .restart local v43    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v43, :cond_10

    .line 1593
    invoke-virtual/range {v43 .. v43}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1591
    :cond_10
    add-int/lit8 v26, v26, 0x1

    goto :goto_8

    .line 1597
    .end local v14    # "arr$":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v43    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_11
    const/16 v6, 0x97

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    check-cast v15, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1598
    .restart local v15    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v15, :cond_13

    .line 1599
    move-object v14, v15

    .restart local v14    # "arr$":[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v0, v14

    move/from16 v30, v0

    const/16 v26, 0x0

    :goto_9
    move/from16 v0, v26

    move/from16 v1, v30

    if-ge v0, v1, :cond_13

    aget-object v43, v14, v26

    .line 1600
    .restart local v43    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    const-string v6, "MmsDebug"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Compare against To"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v43 .. v43}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    if-eqz v43, :cond_12

    invoke-virtual/range {v43 .. v43}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_12

    .line 1602
    invoke-virtual/range {v43 .. v43}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1599
    :cond_12
    add-int/lit8 v26, v26, 0x1

    goto :goto_9

    .line 1606
    .end local v14    # "arr$":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v43    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_13
    const/16 v6, 0x82

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    check-cast v15, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1607
    .restart local v15    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v15, :cond_e

    .line 1608
    move-object v14, v15

    .restart local v14    # "arr$":[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v0, v14

    move/from16 v30, v0

    const/16 v26, 0x0

    :goto_a
    move/from16 v0, v26

    move/from16 v1, v30

    if-ge v0, v1, :cond_e

    aget-object v43, v14, v26

    .line 1609
    .restart local v43    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    const-string v6, "MmsDebug"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Compare against Cc"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v43 .. v43}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    if-eqz v43, :cond_14

    invoke-virtual/range {v43 .. v43}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_14

    .line 1611
    invoke-virtual/range {v43 .. v43}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1608
    :cond_14
    add-int/lit8 v26, v26, 0x1

    goto :goto_a

    .line 1618
    .end local v43    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v14, "arr$":[I
    :pswitch_2
    const/16 v6, 0x97

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    check-cast v15, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1619
    .restart local v15    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v15, :cond_16

    .line 1620
    move-object v14, v15

    .local v14, "arr$":[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v0, v14

    move/from16 v30, v0

    const/16 v26, 0x0

    :goto_b
    move/from16 v0, v26

    move/from16 v1, v30

    if-ge v0, v1, :cond_16

    aget-object v43, v14, v26

    .line 1621
    .restart local v43    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v43, :cond_15

    .line 1622
    invoke-virtual/range {v43 .. v43}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1620
    :cond_15
    add-int/lit8 v26, v26, 0x1

    goto :goto_b

    .line 1626
    .end local v14    # "arr$":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v43    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_16
    const/16 v6, 0x82

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    check-cast v15, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1627
    .restart local v15    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v15, :cond_18

    .line 1628
    move-object v14, v15

    .restart local v14    # "arr$":[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v0, v14

    move/from16 v30, v0

    const/16 v26, 0x0

    :goto_c
    move/from16 v0, v26

    move/from16 v1, v30

    if-ge v0, v1, :cond_18

    aget-object v43, v14, v26

    .line 1629
    .restart local v43    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v43, :cond_17

    .line 1630
    invoke-virtual/range {v43 .. v43}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1628
    :cond_17
    add-int/lit8 v26, v26, 0x1

    goto :goto_c

    .line 1634
    .end local v14    # "arr$":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v43    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_18
    const/16 v6, 0x81

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    check-cast v15, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1635
    .restart local v15    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v15, :cond_e

    .line 1636
    move-object v14, v15

    .restart local v14    # "arr$":[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v0, v14

    move/from16 v30, v0

    const/16 v26, 0x0

    :goto_d
    move/from16 v0, v26

    move/from16 v1, v30

    if-ge v0, v1, :cond_e

    aget-object v43, v14, v26

    .line 1637
    .restart local v43    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v43, :cond_19

    .line 1638
    invoke-virtual/range {v43 .. v43}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1636
    :cond_19
    add-int/lit8 v26, v26, 0x1

    goto :goto_d

    .line 1646
    .end local v43    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v14, "arr$":[I
    :cond_1a
    packed-switch v33, :pswitch_data_1

    :pswitch_3
    goto/16 :goto_6

    .line 1652
    :pswitch_4
    const/16 v6, 0x97

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    check-cast v15, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .restart local v15    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    goto/16 :goto_6

    .line 1649
    :pswitch_5
    const/16 v6, 0x89

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    check-cast v15, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1650
    .restart local v15    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    goto/16 :goto_6

    .line 1666
    .end local v14    # "arr$":[I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/mms/pdu/PduPersister;->mCscFeature:Lcom/sec/android/app/CscFeature;

    const-string v7, "CscFeature_Common_SupportTwoPhoneService"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 1667
    if-lez p7, :cond_20

    .line 1668
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, v39

    move/from16 v1, p7

    invoke-static {v6, v0, v7, v8, v1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;ZII)J

    move-result-wide v44

    .line 1677
    .end local v15    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1c
    :goto_e
    const-string v6, "thread_id"

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1679
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/mms/pdu/PduPersister;->mCscFeature:Lcom/sec/android/app/CscFeature;

    const-string v7, "CscFeature_Common_SupportTwoPhoneService"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1680
    if-lez p7, :cond_1d

    .line 1681
    const-string v6, "using_mode"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1685
    :cond_1d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/mms/pdu/PduPersister;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_1f

    .line 1686
    invoke-static/range {p2 .. p2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v31

    .line 1687
    .local v31, "mSubID":[I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/mms/pdu/PduPersister;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v7, 0x0

    aget v7, v31, v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v27

    .line 1688
    .local v27, "imsi":Ljava/lang/String;
    if-eqz v27, :cond_1e

    .line 1689
    const-string v6, "sim_imsi"

    move-object/from16 v0, v27

    invoke-virtual {v9, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    :cond_1e
    const-string v6, "sim_slot"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1696
    .end local v27    # "imsi":Ljava/lang/String;
    .end local v31    # "mSubID":[I
    :cond_1f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    .line 1698
    .local v20, "dummyId":J
    move-object/from16 v0, p1

    instance-of v6, v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    if-eqz v6, :cond_22

    .line 1699
    nop

    nop

    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v17

    .line 1701
    if-eqz v17, :cond_22

    .line 1702
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v38

    .line 1703
    .local v38, "partsNum":I
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_f
    move/from16 v0, v25

    move/from16 v1, v38

    if-ge v0, v1, :cond_22

    .line 1704
    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v37

    .line 1705
    .local v37, "part":Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-wide/from16 v2, v20

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;

    .line 1703
    add-int/lit8 v25, v25, 0x1

    goto :goto_f

    .line 1670
    .end local v20    # "dummyId":J
    .end local v25    # "i":I
    .end local v37    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v38    # "partsNum":I
    .restart local v15    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_20
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, v39

    invoke-static {v6, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v44

    goto/16 :goto_e

    .line 1673
    :cond_21
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, v39

    invoke-static {v6, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v44

    goto/16 :goto_e

    .line 1710
    .end local v15    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v20    # "dummyId":J
    :cond_22
    if-lez p4, :cond_23

    .line 1711
    const-string v6, "app_id"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1712
    const-string v6, "msg_id"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1715
    :cond_23
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p3

    invoke-static {v6, v7, v0, v9}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v40

    .line 1716
    .local v40, "res":Landroid/net/Uri;
    if-nez v40, :cond_24

    .line 1717
    new-instance v6, Lcom/google/android/mms/MmsException;

    const-string v7, "persist() failed: return null."

    invoke-direct {v6, v7}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1722
    :cond_24
    invoke-static/range {v40 .. v40}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v34

    .line 1723
    .local v34, "msgId":J
    new-instance v9, Landroid/content/ContentValues;

    .end local v9    # "values":Landroid/content/ContentValues;
    const/4 v6, 0x1

    invoke-direct {v9, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 1724
    .restart local v9    # "values":Landroid/content/ContentValues;
    const-string v6, "mid"

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1725
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "content://mms/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "/part"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1733
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v34

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v40

    .line 1736
    sget-object v14, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    .restart local v14    # "arr$":[I
    array-length v0, v14

    move/from16 v30, v0

    const/16 v26, 0x0

    :goto_10
    move/from16 v0, v26

    move/from16 v1, v30

    if-ge v0, v1, :cond_26

    aget v12, v14, v26

    .line 1737
    .restart local v12    # "addrType":I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1738
    .restart local v15    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v15, :cond_25

    .line 1739
    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-direct {v0, v1, v2, v12, v15}, Lcom/google/android/mms/pdu/PduPersister;->persistAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1736
    :cond_25
    add-int/lit8 v26, v26, 0x1

    goto :goto_10

    .line 1743
    .end local v12    # "addrType":I
    .end local v15    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_26
    return-object v40

    .line 1585
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1646
    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;Z)Landroid/net/Uri;
    .locals 9
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "simSlot"    # I
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "bSpam"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1792
    const/4 v5, 0x0

    .line 1794
    .local v5, "groupMmsEnabled":Z
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v7, p4

    move v8, v4

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;ZZLjava/util/HashMap;ZZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;
    .locals 9
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "simSlot"    # I
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "createThreadId"    # Z
    .param p5, "groupMmsEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/GenericPdu;",
            "I",
            "Landroid/net/Uri;",
            "ZZ",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .local p6, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    const/4 v7, 0x0

    .line 1783
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;ZZLjava/util/HashMap;ZZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;ZZLjava/util/HashMap;ZZ)Landroid/net/Uri;
    .locals 10
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "simSlot"    # I
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "createThreadId"    # Z
    .param p5, "groupMmsEnabled"    # Z
    .param p7, "bSpam"    # Z
    .param p8, "hasVendorDrmEngine"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/GenericPdu;",
            "I",
            "Landroid/net/Uri;",
            "ZZ",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;ZZ)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1806
    .local p6, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;ZZLjava/util/HashMap;ZZI)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;ZZLjava/util/HashMap;ZZI)Landroid/net/Uri;
    .locals 51
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "simSlot"    # I
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "createThreadId"    # Z
    .param p5, "groupMmsEnabled"    # Z
    .param p7, "bSpam"    # Z
    .param p8, "hasVendorDrmEngine"    # Z
    .param p9, "twoPhoneServiceUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/GenericPdu;",
            "I",
            "Landroid/net/Uri;",
            "ZZ",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;ZZI)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1812
    .local p6, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    if-nez p3, :cond_0

    .line 1813
    new-instance v4, Lcom/google/android/mms/MmsException;

    const-string v8, "Uri may not be null."

    invoke-direct {v4, v8}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1815
    :cond_0
    const-wide/16 v40, -0x1

    .line 1817
    .local v40, "msgId":J
    :try_start_0
    invoke-static/range {p3 .. p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v40

    .line 1821
    :goto_0
    const-wide/16 v8, -0x1

    cmp-long v4, v40, v8

    if-eqz v4, :cond_1

    const/16 v28, 0x1

    .line 1823
    .local v28, "existingUri":Z
    :goto_1
    if-nez v28, :cond_2

    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1824
    new-instance v4, Lcom/google/android/mms/MmsException;

    const-string v8, "Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp."

    invoke-direct {v4, v8}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1821
    .end local v28    # "existingUri":Z
    :cond_1
    const/16 v28, 0x0

    goto :goto_1

    .line 1830
    .restart local v28    # "existingUri":Z
    :cond_2
    sget-object v8, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v8

    .line 1833
    :try_start_1
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/google/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    .line 1838
    :try_start_2
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1843
    :cond_3
    :goto_2
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1844
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    .line 1846
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/GenericPdu;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v30

    .line 1847
    .local v30, "header":Lcom/google/android/mms/pdu/PduHeaders;
    const/16 v22, 0x0

    .line 1848
    .local v22, "body":Lcom/google/android/mms/pdu/PduBody;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1851
    .local v11, "values":Landroid/content/ContentValues;
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v45

    .line 1852
    .local v45, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-interface/range {v45 .. v45}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .local v32, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/Map$Entry;

    .line 1853
    .local v26, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v29

    .line 1854
    .local v29, "field":I
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v27

    .line 1855
    .local v27, "encodedString":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v27, :cond_4

    .line 1856
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1857
    .local v23, "charsetColumn":Ljava/lang/String;
    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v11, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 1839
    .end local v11    # "values":Landroid/content/ContentValues;
    .end local v22    # "body":Lcom/google/android/mms/pdu/PduBody;
    .end local v23    # "charsetColumn":Ljava/lang/String;
    .end local v26    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v27    # "encodedString":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v29    # "field":I
    .end local v30    # "header":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v32    # "i$":Ljava/util/Iterator;
    .end local v45    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :catch_0
    move-exception v25

    .line 1840
    .local v25, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v4, "PduPersister"

    const-string v9, "persist1: "

    move-object/from16 v0, v25

    invoke-static {v4, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1843
    .end local v25    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 1862
    .restart local v11    # "values":Landroid/content/ContentValues;
    .restart local v22    # "body":Lcom/google/android/mms/pdu/PduBody;
    .restart local v30    # "header":Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v32    # "i$":Ljava/util/Iterator;
    .restart local v45    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :cond_5
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v45

    .line 1863
    invoke-interface/range {v45 .. v45}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_6
    :goto_4
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/Map$Entry;

    .line 1864
    .restart local v26    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v46

    .line 1865
    .local v46, "text":[B
    if-eqz v46, :cond_6

    .line 1866
    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static/range {v46 .. v46}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1870
    .end local v26    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v46    # "text":[B
    :cond_7
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v45

    .line 1871
    invoke-interface/range {v45 .. v45}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_8
    :goto_5
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/Map$Entry;

    .line 1872
    .restart local v26    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v21

    .line 1873
    .local v21, "b":I
    if-eqz v21, :cond_8

    .line 1874
    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v11, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    .line 1878
    .end local v21    # "b":I
    .end local v26    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_9
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v45

    .line 1879
    invoke-interface/range {v45 .. v45}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_a
    :goto_6
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/Map$Entry;

    .line 1880
    .restart local v26    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v34

    .line 1881
    .local v34, "l":J
    const-wide/16 v8, -0x1

    cmp-long v4, v34, v8

    if-eqz v4, :cond_a

    .line 1882
    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v11, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_6

    .line 1886
    .end local v26    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v34    # "l":J
    :cond_b
    new-instance v19, Ljava/util/HashMap;

    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    array-length v4, v4

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 1889
    .local v19, "addressMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/google/android/mms/pdu/EncodedStringValue;>;"
    sget-object v20, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    .local v20, "arr$":[I
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v36, v0

    .local v36, "len$":I
    const/16 v32, 0x0

    .local v32, "i$":I
    :goto_7
    move/from16 v0, v32

    move/from16 v1, v36

    if-ge v0, v1, :cond_e

    aget v16, v20, v32

    .line 1890
    .local v16, "addrType":I
    const/16 v17, 0x0

    .line 1891
    .local v17, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/16 v4, 0x89

    move/from16 v0, v16

    if-ne v0, v4, :cond_d

    .line 1892
    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v50

    .line 1893
    .local v50, "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v50, :cond_c

    .line 1894
    const/4 v4, 0x1

    new-array v0, v4, [Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v17, v0

    .line 1895
    const/4 v4, 0x0

    aput-object v50, v17, v4

    .line 1900
    .end local v50    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_c
    :goto_8
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1889
    add-int/lit8 v32, v32, 0x1

    goto :goto_7

    .line 1898
    :cond_d
    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v17

    goto :goto_8

    .line 1903
    .end local v16    # "addrType":I
    .end local v17    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_e
    new-instance v44, Ljava/util/HashSet;

    invoke-direct/range {v44 .. v44}, Ljava/util/HashSet;-><init>()V

    .line 1904
    .local v44, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-wide v48, 0x7fffffffffffffffL

    .line 1905
    .local v48, "threadId":J
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v39

    .line 1907
    .local v39, "msgType":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v42

    .line 1914
    .local v42, "myNumber":Ljava/lang/String;
    const/16 v4, 0x82

    move/from16 v0, v39

    if-eq v0, v4, :cond_f

    const/16 v4, 0x84

    move/from16 v0, v39

    if-eq v0, v4, :cond_f

    const/16 v4, 0x80

    move/from16 v0, v39

    if-ne v0, v4, :cond_11

    .line 1917
    :cond_f
    const/16 v17, 0x0

    .line 1919
    .restart local v17    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mCscFeature:Lcom/sec/android/app/CscFeature;

    const-string v8, "CscFeature_Message_ConfigOpGroupMsg"

    invoke-virtual {v4, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "VZW"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    if-eqz v42, :cond_23

    .line 1920
    packed-switch v39, :pswitch_data_0

    .line 2009
    .end local v20    # "arr$":[I
    :cond_10
    :goto_9
    :pswitch_0
    if-eqz p4, :cond_11

    if-nez p7, :cond_11

    .line 2012
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mCscFeature:Lcom/sec/android/app/CscFeature;

    const-string v8, "CscFeature_Common_SupportTwoPhoneService"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 2013
    if-lez p9, :cond_24

    .line 2014
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, v44

    move/from16 v1, p9

    invoke-static {v4, v0, v8, v9, v1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;ZII)J

    move-result-wide v48

    .line 2024
    .end local v17    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_11
    :goto_a
    if-nez p7, :cond_12

    .line 2025
    const-string v4, "thread_id"

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v11, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2028
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mCscFeature:Lcom/sec/android/app/CscFeature;

    const-string v8, "CscFeature_Common_SupportTwoPhoneService"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2029
    if-lez p9, :cond_13

    .line 2030
    const-string v4, "using_mode"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v11, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2034
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    const/4 v8, 0x1

    if-le v4, v8, :cond_16

    .line 2035
    const/16 v33, 0x0

    .line 2036
    .local v33, "imsi":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v37

    .line 2037
    .local v37, "mSubID":[I
    if-eqz v37, :cond_14

    move-object/from16 v0, v37

    array-length v4, v0

    if-lez v4, :cond_14

    .line 2038
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v8, 0x0

    aget v8, v37, v8

    invoke-virtual {v4, v8}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v33

    .line 2039
    :cond_14
    if-eqz v33, :cond_15

    .line 2040
    const-string v4, "sim_imsi"

    move-object/from16 v0, v33

    invoke-virtual {v11, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    :cond_15
    const-string v4, "sim_slot"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v11, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2046
    .end local v33    # "imsi":Ljava/lang/String;
    .end local v37    # "mSubID":[I
    :cond_16
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 2049
    .local v6, "dummyId":J
    const/16 v47, 0x1

    .line 2052
    .local v47, "textOnly":Z
    const/16 v38, 0x0

    .line 2055
    .local v38, "messageSize":I
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    if-eqz v4, :cond_26

    .line 2056
    check-cast p1, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v22

    .line 2058
    if-eqz v22, :cond_26

    .line 2059
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v43

    .line 2060
    .local v43, "partsNum":I
    const/4 v4, 0x2

    move/from16 v0, v43

    if-le v0, v4, :cond_17

    .line 2065
    const/16 v47, 0x0

    .line 2067
    :cond_17
    const/16 v31, 0x0

    .local v31, "i":I
    :goto_b
    move/from16 v0, v31

    move/from16 v1, v43

    if-ge v0, v1, :cond_26

    .line 2068
    move-object/from16 v0, v22

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v5

    .line 2069
    .local v5, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getDataLength()I

    move-result v4

    add-int v38, v38, v4

    move-object/from16 v4, p0

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    .line 2070
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;ZZ)Landroid/net/Uri;

    .line 2074
    invoke-static {v5}, Lcom/google/android/mms/pdu/PduPersister;->getPartContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v24

    .line 2075
    .local v24, "contentType":Ljava/lang/String;
    if-eqz v24, :cond_18

    const-string v4, "application/smil"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    const-string v4, "text/plain"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 2077
    const/16 v47, 0x0

    .line 2067
    :cond_18
    add-int/lit8 v31, v31, 0x1

    goto :goto_b

    .line 1924
    .end local v5    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v6    # "dummyId":J
    .end local v24    # "contentType":Ljava/lang/String;
    .end local v31    # "i":I
    .end local v38    # "messageSize":I
    .end local v43    # "partsNum":I
    .end local v47    # "textOnly":Z
    .restart local v17    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v20    # "arr$":[I
    .restart local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_1
    const/16 v4, 0x89

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    check-cast v17, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1925
    .restart local v17    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v17, :cond_1a

    .line 1926
    move-object/from16 v20, v17

    .local v20, "arr$":[Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v36, v0

    const/16 v32, 0x0

    :goto_c
    move/from16 v0, v32

    move/from16 v1, v36

    if-ge v0, v1, :cond_1a

    aget-object v50, v20, v32

    .line 1927
    .restart local v50    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v50, :cond_19

    .line 1928
    invoke-virtual/range {v50 .. v50}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1926
    :cond_19
    add-int/lit8 v32, v32, 0x1

    goto :goto_c

    .line 1932
    .end local v20    # "arr$":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v50    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1a
    const/16 v4, 0x97

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    check-cast v17, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1933
    .restart local v17    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v17, :cond_1c

    .line 1934
    move-object/from16 v20, v17

    .restart local v20    # "arr$":[Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v36, v0

    const/16 v32, 0x0

    :goto_d
    move/from16 v0, v32

    move/from16 v1, v36

    if-ge v0, v1, :cond_1c

    aget-object v50, v20, v32

    .line 1935
    .restart local v50    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    const-string v4, "MmsDebug"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Compare against To"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v50 .. v50}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    if-eqz v50, :cond_1b

    invoke-virtual/range {v50 .. v50}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1b

    .line 1937
    invoke-virtual/range {v50 .. v50}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1934
    :cond_1b
    add-int/lit8 v32, v32, 0x1

    goto :goto_d

    .line 1941
    .end local v20    # "arr$":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v50    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1c
    const/16 v4, 0x82

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    check-cast v17, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1942
    .restart local v17    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v17, :cond_10

    .line 1943
    move-object/from16 v20, v17

    .restart local v20    # "arr$":[Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v36, v0

    const/16 v32, 0x0

    :goto_e
    move/from16 v0, v32

    move/from16 v1, v36

    if-ge v0, v1, :cond_10

    aget-object v50, v20, v32

    .line 1944
    .restart local v50    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    const-string v4, "MmsDebug"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Compare against Cc"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v50 .. v50}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    if-eqz v50, :cond_1d

    invoke-virtual/range {v50 .. v50}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1d

    .line 1946
    invoke-virtual/range {v50 .. v50}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1943
    :cond_1d
    add-int/lit8 v32, v32, 0x1

    goto :goto_e

    .line 1953
    .end local v50    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v20, "arr$":[I
    :pswitch_2
    const/16 v4, 0x97

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    check-cast v17, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1954
    .restart local v17    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v17, :cond_1f

    .line 1955
    move-object/from16 v20, v17

    .local v20, "arr$":[Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v36, v0

    const/16 v32, 0x0

    :goto_f
    move/from16 v0, v32

    move/from16 v1, v36

    if-ge v0, v1, :cond_1f

    aget-object v50, v20, v32

    .line 1956
    .restart local v50    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v50, :cond_1e

    .line 1957
    invoke-virtual/range {v50 .. v50}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1955
    :cond_1e
    add-int/lit8 v32, v32, 0x1

    goto :goto_f

    .line 1961
    .end local v20    # "arr$":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v50    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1f
    const/16 v4, 0x82

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    check-cast v17, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1962
    .restart local v17    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v17, :cond_21

    .line 1963
    move-object/from16 v20, v17

    .restart local v20    # "arr$":[Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v36, v0

    const/16 v32, 0x0

    :goto_10
    move/from16 v0, v32

    move/from16 v1, v36

    if-ge v0, v1, :cond_21

    aget-object v50, v20, v32

    .line 1964
    .restart local v50    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v50, :cond_20

    .line 1965
    invoke-virtual/range {v50 .. v50}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1963
    :cond_20
    add-int/lit8 v32, v32, 0x1

    goto :goto_10

    .line 1969
    .end local v20    # "arr$":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v50    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_21
    const/16 v4, 0x81

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    check-cast v17, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1970
    .restart local v17    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v17, :cond_10

    .line 1971
    move-object/from16 v20, v17

    .restart local v20    # "arr$":[Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v36, v0

    const/16 v32, 0x0

    :goto_11
    move/from16 v0, v32

    move/from16 v1, v36

    if-ge v0, v1, :cond_10

    aget-object v50, v20, v32

    .line 1972
    .restart local v50    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v50, :cond_22

    .line 1973
    invoke-virtual/range {v50 .. v50}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1971
    :cond_22
    add-int/lit8 v32, v32, 0x1

    goto :goto_11

    .line 1981
    .end local v50    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v20, "arr$":[I
    :cond_23
    packed-switch v39, :pswitch_data_1

    :pswitch_3
    goto/16 :goto_9

    .line 2002
    :pswitch_4
    const/16 v4, 0x97

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move-object/from16 v2, v19

    invoke-direct {v0, v4, v1, v2, v8}, Lcom/google/android/mms/pdu/PduPersister;->loadRecipients(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    goto/16 :goto_9

    .line 1984
    :pswitch_5
    const/16 v4, 0x89

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move-object/from16 v2, v19

    invoke-direct {v0, v4, v1, v2, v8}, Lcom/google/android/mms/pdu/PduPersister;->loadRecipients(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    .line 1992
    if-eqz p5, :cond_10

    .line 1993
    const/16 v4, 0x97

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move-object/from16 v2, v19

    invoke-direct {v0, v4, v1, v2, v8}, Lcom/google/android/mms/pdu/PduPersister;->loadRecipients(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    .line 1998
    const/16 v4, 0x82

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move-object/from16 v2, v19

    invoke-direct {v0, v4, v1, v2, v8}, Lcom/google/android/mms/pdu/PduPersister;->loadRecipients(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    goto/16 :goto_9

    .line 2016
    .end local v20    # "arr$":[I
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, v44

    invoke-static {v4, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v48

    goto/16 :goto_a

    .line 2019
    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, v44

    invoke-static {v4, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v48

    goto/16 :goto_a

    .line 2084
    .end local v17    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v6    # "dummyId":J
    .restart local v38    # "messageSize":I
    .restart local v47    # "textOnly":Z
    :cond_26
    const-string v8, "text_only"

    if-eqz v47, :cond_2a

    const/4 v4, 0x1

    :goto_12
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2087
    const-string v4, "m_size"

    invoke-virtual {v11, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_27

    .line 2088
    const-string v4, "m_size"

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v11, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2091
    :cond_27
    const/4 v10, 0x0

    .line 2092
    .local v10, "res":Landroid/net/Uri;
    if-eqz v28, :cond_2b

    .line 2093
    move-object/from16 v10, p3

    .line 2094
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2107
    :goto_13
    invoke-static {v10}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v40

    .line 2108
    new-instance v11, Landroid/content/ContentValues;

    .end local v11    # "values":Landroid/content/ContentValues;
    const/4 v4, 0x1

    invoke-direct {v11, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 2109
    .restart local v11    # "values":Landroid/content/ContentValues;
    const-string v4, "mid"

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v11, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2110
    const/4 v4, 0x1

    move/from16 v0, p7

    if-ne v0, v4, :cond_2d

    .line 2111
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content://spammms/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/spampart"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v15, v11

    invoke-static/range {v12 .. v17}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2123
    :goto_14
    if-nez v28, :cond_28

    .line 2124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v40

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 2128
    :cond_28
    sget-object v20, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    .restart local v20    # "arr$":[I
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v36, v0

    const/16 v32, 0x0

    :goto_15
    move/from16 v0, v32

    move/from16 v1, v36

    if-ge v0, v1, :cond_2e

    aget v16, v20, v32

    .line 2129
    .restart local v16    # "addrType":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 2130
    .restart local v17    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v17, :cond_29

    move-object/from16 v13, p0

    move-wide/from16 v14, v40

    move/from16 v18, p7

    .line 2131
    invoke-direct/range {v13 .. v18}, Lcom/google/android/mms/pdu/PduPersister;->persistAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;Z)V

    .line 2128
    :cond_29
    add-int/lit8 v32, v32, 0x1

    goto :goto_15

    .line 2084
    .end local v10    # "res":Landroid/net/Uri;
    .end local v16    # "addrType":I
    .end local v17    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v20    # "arr$":[I
    :cond_2a
    const/4 v4, 0x0

    goto/16 :goto_12

    .line 2096
    .restart local v10    # "res":Landroid/net/Uri;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p3

    invoke-static {v4, v8, v0, v11}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 2097
    if-nez v10, :cond_2c

    .line 2098
    new-instance v4, Lcom/google/android/mms/MmsException;

    const-string v8, "persist() failed: return null."

    invoke-direct {v4, v8}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2102
    :cond_2c
    invoke-static {v10}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v40

    goto/16 :goto_13

    .line 2115
    :cond_2d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content://mms/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/part"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v15, v11

    invoke-static/range {v12 .. v17}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_14

    .line 1818
    .end local v6    # "dummyId":J
    .end local v10    # "res":Landroid/net/Uri;
    .end local v11    # "values":Landroid/content/ContentValues;
    .end local v19    # "addressMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/google/android/mms/pdu/EncodedStringValue;>;"
    .end local v22    # "body":Lcom/google/android/mms/pdu/PduBody;
    .end local v28    # "existingUri":Z
    .end local v30    # "header":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v32    # "i$":I
    .end local v36    # "len$":I
    .end local v38    # "messageSize":I
    .end local v39    # "msgType":I
    .end local v42    # "myNumber":Ljava/lang/String;
    .end local v44    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v45    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .end local v47    # "textOnly":Z
    .end local v48    # "threadId":J
    .restart local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :catch_1
    move-exception v4

    goto/16 :goto_0

    .line 2135
    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v6    # "dummyId":J
    .restart local v10    # "res":Landroid/net/Uri;
    .restart local v11    # "values":Landroid/content/ContentValues;
    .restart local v19    # "addressMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/google/android/mms/pdu/EncodedStringValue;>;"
    .restart local v20    # "arr$":[I
    .restart local v22    # "body":Lcom/google/android/mms/pdu/PduBody;
    .restart local v28    # "existingUri":Z
    .restart local v30    # "header":Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v32    # "i$":I
    .restart local v36    # "len$":I
    .restart local v38    # "messageSize":I
    .restart local v39    # "msgType":I
    .restart local v42    # "myNumber":Ljava/lang/String;
    .restart local v44    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v45    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .restart local v47    # "textOnly":Z
    .restart local v48    # "threadId":J
    :cond_2e
    return-object v10

    .line 1920
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1981
    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 9
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1747
    const/4 v5, 0x0

    .line 1753
    .local v5, "groupMmsEnabled":Z
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;ZZLjava/util/HashMap;ZZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;II)Landroid/net/Uri;
    .locals 7
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "reqAppId"    # I
    .param p4, "reqMsgId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1474
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;IILjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;IILjava/util/HashMap;)Landroid/net/Uri;
    .locals 7
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "reqAppId"    # I
    .param p4, "reqMsgId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/GenericPdu;",
            "Landroid/net/Uri;",
            "II",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1485
    .local p5, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;IILjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;Z)Landroid/net/Uri;
    .locals 9
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "bSpam"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1758
    const/4 v5, 0x0

    .line 1764
    .local v5, "groupMmsEnabled":Z
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v7, p3

    move v8, v4

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;ZZLjava/util/HashMap;ZZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;
    .locals 9
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "createThreadId"    # Z
    .param p4, "groupMmsEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/GenericPdu;",
            "Landroid/net/Uri;",
            "ZZ",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .local p5, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    const/4 v2, 0x0

    .line 1770
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;ZZLjava/util/HashMap;ZZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;Z)Landroid/net/Uri;
    .locals 9
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "createThreadId"    # Z
    .param p4, "groupMmsEnabled"    # Z
    .param p6, "bSpam"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/GenericPdu;",
            "Landroid/net/Uri;",
            "ZZ",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;Z)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1775
    .local p5, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    const/4 v2, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;ZZLjava/util/HashMap;ZZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;ZZ)Landroid/net/Uri;
    .locals 9
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "createThreadId"    # Z
    .param p4, "groupMmsEnabled"    # Z
    .param p6, "bSpam"    # Z
    .param p7, "hasVendorDrmEngine"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/GenericPdu;",
            "Landroid/net/Uri;",
            "ZZ",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;ZZ)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1800
    .local p5, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;ZZLjava/util/HashMap;ZZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;
    .locals 8
    .param p1, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p2, "msgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/PduPart;",
            "J",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .local p4, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    const/4 v5, 0x0

    .line 782
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;ZZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;ZZ)Landroid/net/Uri;
    .locals 16
    .param p1, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p2, "msgId"    # J
    .param p5, "bSpam"    # Z
    .param p6, "hasVendorDrmEngine"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/PduPart;",
            "J",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;ZZ)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 791
    .local p4, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    const/4 v2, 0x1

    move/from16 v0, p5

    if-ne v0, v2, :cond_8

    .line 792
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://spammms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/spampart"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 797
    .local v13, "uri":Landroid/net/Uri;
    :goto_0
    new-instance v15, Landroid/content/ContentValues;

    const/16 v2, 0x8

    invoke-direct {v15, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 799
    .local v15, "values":Landroid/content/ContentValues;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v9

    .line 800
    .local v9, "charset":I
    if-eqz v9, :cond_0

    .line 801
    const-string v2, "chset"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 804
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPersister;->getPartContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v5

    .line 805
    .local v5, "contentType":Ljava/lang/String;
    if-eqz v5, :cond_9

    .line 808
    const-string v2, "image/jpg"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 809
    const-string v5, "image/jpeg"

    .line 812
    :cond_1
    const-string v2, "ct"

    invoke-virtual {v15, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    const-string v2, "application/smil"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 815
    const-string v2, "seq"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 821
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v2

    if-eqz v2, :cond_3

    .line 822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mCscFeature:Lcom/sec/android/app/CscFeature;

    const-string v3, "CscFeature_Message_EnableOMA13NameEncoding"

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 828
    const-string v2, "fn"

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    :cond_3
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v2

    if-eqz v2, :cond_4

    .line 843
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mCscFeature:Lcom/sec/android/app/CscFeature;

    const-string v3, "CscFeature_Message_EnableOMA13NameEncoding"

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 844
    const-string v2, "name"

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    :cond_4
    :goto_2
    const/4 v14, 0x0

    .line 859
    .local v14, "value":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v2

    if-eqz v2, :cond_5

    .line 860
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v14

    .line 861
    .local v14, "value":Ljava/lang/String;
    const-string v2, "cd"

    check-cast v14, Ljava/lang/String;

    .end local v14    # "value":Ljava/lang/String;
    invoke-virtual {v15, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v2

    if-eqz v2, :cond_6

    .line 865
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v14

    .line 866
    .restart local v14    # "value":Ljava/lang/String;
    const-string v2, "cid"

    check-cast v14, Ljava/lang/String;

    .end local v14    # "value":Ljava/lang/String;
    invoke-virtual {v15, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v2

    if-eqz v2, :cond_7

    .line 870
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v14

    .line 871
    .restart local v14    # "value":Ljava/lang/String;
    const-string v2, "cl"

    check-cast v14, Ljava/lang/String;

    .end local v14    # "value":Ljava/lang/String;
    invoke-virtual {v15, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v3, v13, v15}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 875
    .local v4, "res":Landroid/net/Uri;
    if-nez v4, :cond_e

    .line 876
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "Failed to persist part, return null."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 794
    .end local v4    # "res":Landroid/net/Uri;
    .end local v5    # "contentType":Ljava/lang/String;
    .end local v9    # "charset":I
    .end local v13    # "uri":Landroid/net/Uri;
    .end local v15    # "values":Landroid/content/ContentValues;
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/part"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .restart local v13    # "uri":Landroid/net/Uri;
    goto/16 :goto_0

    .line 818
    .restart local v5    # "contentType":Ljava/lang/String;
    .restart local v9    # "charset":I
    .restart local v15    # "values":Landroid/content/ContentValues;
    :cond_9
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "MIME type of the part must be set."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 830
    :cond_a
    new-instance v10, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/lang/String;-><init>([B)V

    .line 831
    .local v10, "fileName":Ljava/lang/String;
    invoke-static {v10}, Lcom/google/android/mms/pdu/PduPersister;->isOma13Encoding(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 832
    new-instance v12, Ljava/util/StringTokenizer;

    const-string v2, "\\/:*?\"<>|"

    invoke-direct {v12, v10, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    .local v12, "st":Ljava/util/StringTokenizer;
    const-string v10, ""

    .line 834
    :goto_3
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 835
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 838
    .end local v12    # "st":Ljava/util/StringTokenizer;
    :cond_b
    const-string v2, "fn"

    invoke-virtual {v15, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 846
    .end local v10    # "fileName":Ljava/lang/String;
    :cond_c
    new-instance v11, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/lang/String;-><init>([B)V

    .line 847
    .local v11, "name":Ljava/lang/String;
    invoke-static {v11}, Lcom/google/android/mms/pdu/PduPersister;->isOma13Encoding(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 848
    new-instance v12, Ljava/util/StringTokenizer;

    const-string v2, "\\/:*?\"<>|"

    invoke-direct {v12, v11, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    .restart local v12    # "st":Ljava/util/StringTokenizer;
    const-string v11, ""

    .line 850
    :goto_4
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 851
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 854
    .end local v12    # "st":Ljava/util/StringTokenizer;
    :cond_d
    const-string v2, "name"

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v11    # "name":Ljava/lang/String;
    .restart local v4    # "res":Landroid/net/Uri;
    :cond_e
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 879
    invoke-direct/range {v2 .. v8}, Lcom/google/android/mms/pdu/PduPersister;->persistData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    .line 882
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 884
    return-object v4
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2265
    const-string v1, "PduPersister"

    const-string v2, "pdupersist release"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    const-string v1, "content://mms/9223372036854775807/part"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2267
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2, v0, v3, v3}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2268
    return-void
.end method

.method public updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sendReq"    # Lcom/google/android/mms/pdu/SendReq;

    .prologue
    .line 1141
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/mms/pdu/PduPersister;->updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;I)V

    .line 1142
    return-void
.end method

.method public updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;I)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sendReq"    # Lcom/google/android/mms/pdu/SendReq;
    .param p3, "simSlot"    # I

    .prologue
    .line 1145
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/mms/pdu/PduPersister;->updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;II)V

    .line 1146
    return-void
.end method

.method public updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;II)V
    .locals 45
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sendReq"    # Lcom/google/android/mms/pdu/SendReq;
    .param p3, "simSlot"    # I
    .param p4, "twoPhoneServiceUid"    # I

    .prologue
    .line 1149
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v5

    .line 1152
    :try_start_0
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/google/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 1157
    :try_start_1
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1162
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1163
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    .line 1166
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_f

    .line 1167
    new-instance v7, Landroid/content/ContentValues;

    const/16 v4, 0xc

    invoke-direct {v7, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 1172
    .local v7, "values":Landroid/content/ContentValues;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getContentType()[B

    move-result-object v14

    .line 1173
    .local v14, "contentType":[B
    if-eqz v14, :cond_1

    .line 1174
    const-string v4, "ct_t"

    invoke-static {v14}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getDate()J

    move-result-wide v16

    .line 1178
    .local v16, "date":J
    const-wide/16 v4, -0x1

    cmp-long v4, v16, v4

    if-eqz v4, :cond_2

    .line 1179
    const-string v4, "date"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1182
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getDeliveryReport()I

    move-result v15

    .line 1183
    .local v15, "deliveryReport":I
    if-eqz v15, :cond_3

    .line 1184
    const-string v4, "d_rpt"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1188
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getDeliveryTime()J

    move-result-wide v18

    .line 1189
    .local v18, "deliveryTime":J
    const-wide/16 v4, -0x1

    cmp-long v4, v18, v4

    if-eqz v4, :cond_4

    .line 1190
    const-string v4, "d_tm"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1193
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getExpiry()J

    move-result-wide v22

    .line 1194
    .local v22, "expiry":J
    const-wide/16 v4, -0x1

    cmp-long v4, v22, v4

    if-eqz v4, :cond_5

    .line 1195
    const-string v4, "exp"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1198
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getMessageClass()[B

    move-result-object v32

    .line 1199
    .local v32, "msgClass":[B
    if-eqz v32, :cond_6

    .line 1200
    const-string v4, "m_cls"

    invoke-static/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getPriority()I

    move-result v33

    .line 1204
    .local v33, "priority":I
    if-eqz v33, :cond_7

    .line 1205
    const-string v4, "pri"

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1208
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getReadReport()I

    move-result v36

    .line 1209
    .local v36, "readReport":I
    if-eqz v36, :cond_8

    .line 1210
    const-string v4, "rr"

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1213
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getTransactionId()[B

    move-result-object v41

    .line 1214
    .local v41, "transId":[B
    if-eqz v41, :cond_9

    .line 1215
    const-string v4, "tr_id"

    invoke-static/range {v41 .. v41}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v40

    .line 1219
    .local v40, "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v40, :cond_10

    .line 1220
    const-string v4, "sub"

    invoke-virtual/range {v40 .. v40}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    const-string v4, "sub_cs"

    invoke-virtual/range {v40 .. v40}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1226
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getMessageSize()J

    move-result-wide v30

    .line 1227
    .local v30, "messageSize":J
    const-wide/16 v4, 0x0

    cmp-long v4, v30, v4

    if-lez v4, :cond_a

    .line 1228
    const-string v4, "m_size"

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1231
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v21

    .line 1232
    .local v21, "headers":Lcom/google/android/mms/pdu/PduHeaders;
    new-instance v37, Ljava/util/HashSet;

    invoke-direct/range {v37 .. v37}, Ljava/util/HashSet;-><init>()V

    .line 1233
    .local v37, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v11, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    .local v11, "arr$":[I
    array-length v0, v11

    move/from16 v27, v0

    .local v27, "len$":I
    const/16 v24, 0x0

    .local v24, "i$":I
    move/from16 v25, v24

    .end local v11    # "arr$":[I
    .end local v24    # "i$":I
    .end local v27    # "len$":I
    .local v25, "i$":I
    :goto_3
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_15

    aget v10, v11, v25

    .line 1234
    .local v10, "addrType":I
    const/4 v13, 0x0

    .line 1235
    .local v13, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/16 v4, 0x89

    if-ne v10, v4, :cond_11

    .line 1236
    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v44

    .line 1237
    .local v44, "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v44, :cond_b

    .line 1238
    const/4 v4, 0x1

    new-array v13, v4, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1239
    const/4 v4, 0x0

    aput-object v44, v13, v4

    .line 1245
    .end local v44    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_b
    :goto_4
    if-eqz v13, :cond_14

    .line 1246
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v34

    .line 1247
    .local v34, "msgId":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-direct {v0, v1, v2, v10, v13}, Lcom/google/android/mms/pdu/PduPersister;->updateAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mCscFeature:Lcom/sec/android/app/CscFeature;

    const-string v5, "CscFeature_Message_ConfigOpGroupMsg"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "VZW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "ATT"

    const-string v5, "persist.omc.sales_code"

    const-string v6, "ro.csc.sales_code"

    const-string v8, "Unknown"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1251
    :cond_c
    const/16 v4, 0x97

    if-eq v10, v4, :cond_d

    const/16 v4, 0x82

    if-eq v10, v4, :cond_d

    const/16 v4, 0x81

    if-ne v10, v4, :cond_14

    .line 1252
    :cond_d
    move-object v12, v13

    .local v12, "arr$":[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v0, v12

    move/from16 v28, v0

    .local v28, "len$":I
    const/16 v24, 0x0

    .end local v25    # "i$":I
    .restart local v24    # "i$":I
    :goto_5
    move/from16 v0, v24

    move/from16 v1, v28

    if-ge v0, v1, :cond_14

    aget-object v44, v12, v24

    .line 1253
    .restart local v44    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v44, :cond_e

    invoke-virtual/range {v44 .. v44}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 1254
    invoke-virtual/range {v44 .. v44}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1252
    :cond_e
    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    .line 1158
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v10    # "addrType":I
    .end local v12    # "arr$":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v13    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v14    # "contentType":[B
    .end local v15    # "deliveryReport":I
    .end local v16    # "date":J
    .end local v18    # "deliveryTime":J
    .end local v21    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v22    # "expiry":J
    .end local v24    # "i$":I
    .end local v28    # "len$":I
    .end local v30    # "messageSize":J
    .end local v32    # "msgClass":[B
    .end local v33    # "priority":I
    .end local v34    # "msgId":J
    .end local v36    # "readReport":I
    .end local v37    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v40    # "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v41    # "transId":[B
    .end local v44    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_0
    move-exception v20

    .line 1159
    .local v20, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "PduPersister"

    const-string v6, "updateHeaders: "

    move-object/from16 v0, v20

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1162
    .end local v20    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 1169
    :cond_f
    new-instance v7, Landroid/content/ContentValues;

    const/16 v4, 0xa

    invoke-direct {v7, v4}, Landroid/content/ContentValues;-><init>(I)V

    .restart local v7    # "values":Landroid/content/ContentValues;
    goto/16 :goto_1

    .line 1223
    .restart local v14    # "contentType":[B
    .restart local v15    # "deliveryReport":I
    .restart local v16    # "date":J
    .restart local v18    # "deliveryTime":J
    .restart local v22    # "expiry":J
    .restart local v32    # "msgClass":[B
    .restart local v33    # "priority":I
    .restart local v36    # "readReport":I
    .restart local v40    # "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v41    # "transId":[B
    :cond_10
    const-string v4, "sub"

    const-string v5, ""

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1242
    .restart local v10    # "addrType":I
    .restart local v13    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v21    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v25    # "i$":I
    .restart local v30    # "messageSize":J
    .restart local v37    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_11
    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v13

    goto/16 :goto_4

    .line 1260
    .restart local v34    # "msgId":J
    :cond_12
    const/16 v4, 0x97

    if-ne v10, v4, :cond_14

    .line 1261
    move-object v12, v13

    .restart local v12    # "arr$":[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v0, v12

    move/from16 v28, v0

    .restart local v28    # "len$":I
    const/16 v24, 0x0

    .end local v25    # "i$":I
    .restart local v24    # "i$":I
    :goto_6
    move/from16 v0, v24

    move/from16 v1, v28

    if-ge v0, v1, :cond_14

    aget-object v44, v12, v24

    .line 1262
    .restart local v44    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v44, :cond_13

    .line 1263
    invoke-virtual/range {v44 .. v44}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1261
    :cond_13
    add-int/lit8 v24, v24, 0x1

    goto :goto_6

    .line 1233
    .end local v12    # "arr$":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v24    # "i$":I
    .end local v28    # "len$":I
    .end local v34    # "msgId":J
    .end local v44    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_14
    add-int/lit8 v24, v25, 0x1

    .restart local v24    # "i$":I
    move/from16 v25, v24

    .end local v24    # "i$":I
    .restart local v25    # "i$":I
    goto/16 :goto_3

    .line 1272
    .end local v10    # "addrType":I
    .end local v13    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_15
    invoke-virtual/range {v37 .. v37}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_16

    .line 1274
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mCscFeature:Lcom/sec/android/app/CscFeature;

    const-string v5, "CscFeature_Common_SupportTwoPhoneService"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1275
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1d

    .line 1276
    if-lez p4, :cond_1c

    .line 1277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    move-object/from16 v0, v37

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v4, v0, v5, v1, v2}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;ZII)J

    move-result-wide v42

    .line 1296
    .local v42, "threadId":J
    :goto_7
    const-string v4, "thread_id"

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1299
    .end local v42    # "threadId":J
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mCscFeature:Lcom/sec/android/app/CscFeature;

    const-string v5, "CscFeature_Common_SupportTwoPhoneService"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1300
    if-lez p4, :cond_17

    .line 1301
    const-string v4, "using_mode"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1305
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1a

    .line 1306
    const/16 v26, 0x0

    .line 1307
    .local v26, "imsi":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v29

    .line 1308
    .local v29, "mSubID":[I
    if-eqz v29, :cond_18

    move-object/from16 v0, v29

    array-length v4, v0

    if-lez v4, :cond_18

    .line 1309
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v5, 0x0

    aget v5, v29, v5

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v26

    .line 1310
    :cond_18
    if-eqz v26, :cond_19

    .line 1311
    const-string v4, "sim_imsi"

    move-object/from16 v0, v26

    invoke-virtual {v7, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    :cond_19
    const-string v4, "sim_slot"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1315
    .end local v26    # "imsi":Ljava/lang/String;
    .end local v29    # "mSubID":[I
    :cond_1a
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getReserved()J

    move-result-wide v38

    .line 1316
    .local v38, "reserved":J
    const-wide/16 v4, -0x1

    cmp-long v4, v38, v4

    if-eqz v4, :cond_1b

    .line 1317
    const-string v4, "reserved"

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1320
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, p1

    invoke-static/range {v4 .. v9}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1321
    return-void

    .line 1279
    .end local v38    # "reserved":J
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, v37

    move/from16 v1, p3

    invoke-static {v4, v0, v1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;I)J

    move-result-wide v42

    .restart local v42    # "threadId":J
    goto/16 :goto_7

    .line 1282
    .end local v42    # "threadId":J
    :cond_1d
    if-lez p4, :cond_1e

    .line 1283
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v37

    move/from16 v1, p4

    invoke-static {v4, v0, v5, v6, v1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;ZII)J

    move-result-wide v42

    .restart local v42    # "threadId":J
    goto/16 :goto_7

    .line 1285
    .end local v42    # "threadId":J
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, v37

    invoke-static {v4, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v42

    .restart local v42    # "threadId":J
    goto/16 :goto_7

    .line 1289
    .end local v42    # "threadId":J
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_20

    .line 1290
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, v37

    move/from16 v1, p3

    invoke-static {v4, v0, v1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;I)J

    move-result-wide v42

    .restart local v42    # "threadId":J
    goto/16 :goto_7

    .line 1292
    .end local v42    # "threadId":J
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, v37

    invoke-static {v4, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v42

    .restart local v42    # "threadId":J
    goto/16 :goto_7
.end method

.method public updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;Ljava/util/HashMap;)V
    .locals 24
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "body"    # Lcom/google/android/mms/pdu/PduBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1389
    .local p3, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    :try_start_0
    sget-object v20, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1390
    :try_start_1
    sget-object v19, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v19

    if-eqz v19, :cond_0

    .line 1395
    :try_start_2
    sget-object v19, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1399
    :goto_0
    :try_start_3
    sget-object v19, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/util/PduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/mms/util/PduCacheEntry;

    .line 1400
    .local v6, "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    if-eqz v6, :cond_0

    .line 1401
    invoke-virtual {v6}, Lcom/google/android/mms/util/PduCacheEntry;->getPdu()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v19

    check-cast v19, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 1406
    .end local v6    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :cond_0
    sget-object v19, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 1407
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1409
    :try_start_4
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1410
    .local v17, "toBeCreated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/mms/pdu/PduPart;>;"
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 1412
    .local v18, "toBeUpdated":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v16

    .line 1413
    .local v16, "partsNum":I
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v20, 0x28

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1414
    .local v9, "filter":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v10, v0, :cond_4

    .line 1415
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v14

    .line 1416
    .local v14, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v15

    .line 1417
    .local v15, "partUri":Landroid/net/Uri;
    if-eqz v15, :cond_1

    invoke-virtual {v15}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    invoke-virtual {v15}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v19

    const-string v20, "mms"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 1419
    :cond_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1414
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1396
    .end local v9    # "filter":Ljava/lang/StringBuilder;
    .end local v10    # "i":I
    .end local v14    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v15    # "partUri":Landroid/net/Uri;
    .end local v16    # "partsNum":I
    .end local v17    # "toBeCreated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/mms/pdu/PduPart;>;"
    .end local v18    # "toBeUpdated":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    :catch_0
    move-exception v7

    .line 1397
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v19, "PduPersister"

    const-string v21, "updateParts: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1407
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1453
    :catchall_1
    move-exception v19

    sget-object v20, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v20

    .line 1454
    :try_start_7
    sget-object v21, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 1455
    sget-object v21, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    .line 1456
    monitor-exit v20
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v19

    .line 1421
    .restart local v9    # "filter":Ljava/lang/StringBuilder;
    .restart local v10    # "i":I
    .restart local v14    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v15    # "partUri":Landroid/net/Uri;
    .restart local v16    # "partsNum":I
    .restart local v17    # "toBeCreated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/mms/pdu/PduPart;>;"
    .restart local v18    # "toBeUpdated":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    :cond_2
    :try_start_8
    move-object/from16 v0, v18

    invoke-virtual {v0, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_3

    .line 1426
    const-string v19, " AND "

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1429
    :cond_3
    const-string v19, "_id"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1430
    const-string v19, "!="

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    invoke-virtual {v15}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_2

    .line 1434
    .end local v14    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v15    # "partUri":Landroid/net/Uri;
    :cond_4
    const/16 v19, 0x29

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1436
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    .line 1439
    .local v12, "msgId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v21, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v22, "/"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v22, "/part"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    const/16 v23, 0x2

    move/from16 v0, v19

    move/from16 v1, v23

    if-le v0, v1, :cond_5

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    :goto_3
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v19

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1444
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/mms/pdu/PduPart;

    .line 1445
    .restart local v14    # "part":Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v14, v12, v13, v1}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;

    goto :goto_4

    .line 1439
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v14    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_5
    const/16 v19, 0x0

    goto :goto_3

    .line 1449
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1450
    .local v8, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/Uri;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/android/mms/pdu/PduPart;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduPersister;->updatePart(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;Ljava/util/HashMap;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_5

    .line 1453
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    :cond_7
    sget-object v20, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v20

    .line 1454
    :try_start_9
    sget-object v19, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 1455
    sget-object v19, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1456
    monitor-exit v20

    .line 1458
    return-void

    .line 1456
    :catchall_2
    move-exception v19

    monitor-exit v20
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v19

    .end local v9    # "filter":Ljava/lang/StringBuilder;
    .end local v10    # "i":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "msgId":J
    .end local v16    # "partsNum":I
    .end local v17    # "toBeCreated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/mms/pdu/PduPart;>;"
    .end local v18    # "toBeUpdated":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    :catchall_3
    move-exception v19

    :try_start_a
    monitor-exit v20
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v19
.end method

.class public Lcom/android/server/enterprise/apn/ApnSettingsPolicy;
.super Landroid/app/enterprise/IApnSettingsPolicy$Stub;
.source "ApnSettingsPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;
    }
.end annotation


# static fields
.field public static AUTH_TYPE_CHAP:I = 0x0

.field public static AUTH_TYPE_NONE:I = 0x0

.field private static AUTH_TYPE_NOTSET:I = 0x0

.field public static AUTH_TYPE_PAP:I = 0x0

.field public static AUTH_TYPE_PAP_OR_CHAP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ApnSettingsPolicyService"


# instance fields
.field private dunRequired:Z

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_NOTSET:I

    .line 73
    const/4 v0, 0x0

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_NONE:I

    .line 75
    const/4 v0, 0x1

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_PAP:I

    .line 77
    const/4 v0, 0x2

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_CHAP:I

    .line 79
    const/4 v0, 0x3

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_PAP_OR_CHAP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/app/enterprise/IApnSettingsPolicy$Stub;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->dunRequired:Z

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 108
    iput-object p1, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 109
    return-void
.end method

.method private enforceApnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_APN"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndApnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_APN"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getApnListConditionStr()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 396
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    .line 397
    .local v7, "telMan":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v9

    if-ne v9, v10, :cond_2

    .line 399
    :cond_0
    const-string v9, "ApnSettingsPolicyService"

    const-string v10, "No SIM "

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v8

    .line 436
    :cond_1
    :goto_0
    return-object v0

    .line 403
    :cond_2
    const-string/jumbo v9, "gsm.sim.operator.numeric"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 406
    .local v5, "numeric":Ljava/lang/String;
    const-string v0, ""

    .line 407
    .local v0, "APNLIST_SELECTION":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 410
    const-string v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 411
    const-string v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, "arrayNumeric":[Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v9, v1

    if-ge v2, v9, :cond_5

    .line 417
    aget-object v6, v1, v2

    .line 418
    .local v6, "numericIndividual":Ljava/lang/String;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x4

    if-le v9, v10, :cond_3

    .line 420
    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 422
    .local v3, "mcc":Ljava/lang/String;
    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 423
    .local v4, "mnc":Ljava/lang/String;
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    .line 425
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "(mcc = \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " AND "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "mnc"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 428
    array-length v9, v1

    add-int/lit8 v9, v9, -0x1

    if-ge v2, v9, :cond_3

    .line 430
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " OR "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    .end local v3    # "mcc":Ljava/lang/String;
    .end local v4    # "mnc":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 413
    .end local v1    # "arrayNumeric":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v6    # "numericIndividual":Ljava/lang/String;
    :cond_4
    new-array v1, v10, [Ljava/lang/String;

    aput-object v5, v1, v11

    .restart local v1    # "arrayNumeric":[Ljava/lang/String;
    goto :goto_1

    .line 436
    .end local v1    # "arrayNumeric":[Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v0, v8

    goto/16 :goto_0
.end method

.method private getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3
    .param p1, "ColumnName"    # Ljava/lang/String;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 589
    const-string v1, ""

    .line 591
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 592
    if-nez v1, :cond_0

    .line 593
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    :cond_0
    :goto_0
    return-object v1

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private isValidApnId(J)Z
    .locals 13
    .param p1, "apId"    # J

    .prologue
    .line 356
    const/4 v8, 0x0

    .line 357
    .local v8, "isValid":Z
    const/4 v6, 0x0

    .line 359
    .local v6, "c":Landroid/database/Cursor;
    const-wide/16 v4, 0x0

    cmp-long v0, v4, p1

    if-gez v0, :cond_4

    .line 360
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "numeric"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v3, "type"

    aput-object v3, v2, v0

    .line 364
    .local v2, "ID_PROJECTION":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v10

    .line 365
    .local v10, "subId":I
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 367
    .local v11, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v11, v10}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v9

    .line 368
    .local v9, "numeric":Ljava/lang/String;
    sget-object v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 369
    .local v1, "url":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 370
    const-string v0, "ApnSettingsPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isValidApnId() row count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for apId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    .line 372
    if-eqz v8, :cond_1

    .line 373
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "dun"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "mms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    :cond_0
    const/4 v8, 0x0

    .line 385
    :cond_1
    if-eqz v6, :cond_2

    .line 386
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 390
    .end local v1    # "url":Landroid/net/Uri;
    .end local v2    # "ID_PROJECTION":[Ljava/lang/String;
    .end local v9    # "numeric":Ljava/lang/String;
    .end local v10    # "subId":I
    .end local v11    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2
    :goto_0
    return v8

    .line 382
    .restart local v2    # "ID_PROJECTION":[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 383
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    if-eqz v6, :cond_2

    .line 386
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 385
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 386
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 389
    .end local v2    # "ID_PROJECTION":[Ljava/lang/String;
    :cond_4
    const-string v0, "ApnSettingsPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isValidApnId() : invalid apId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "isNewAp"    # Z
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 610
    if-eqz p1, :cond_2

    .line 611
    if-nez p4, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :cond_0
    :goto_1
    const-string v0, "ApnSettingsPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setColumnValue: key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    return-void

    .line 611
    :cond_1
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 614
    :cond_2
    if-eqz p4, :cond_0

    .line 615
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private validateProtocol(Ljava/lang/String;)Z
    .locals 4
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 680
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 688
    :goto_0
    return v0

    .line 682
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 686
    goto :goto_0

    .line 682
    :sswitch_0
    const-string v3, "IP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v0

    goto :goto_1

    :sswitch_1
    const-string v3, "IPV6"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    goto :goto_1

    :sswitch_2
    const-string v3, "IPV4V6"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7edefc9b -> :sswitch_2
        0x927 -> :sswitch_0
        0x226607 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private validateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 621
    if-nez p1, :cond_0

    .end local p1    # "value":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addUpdateApn(Landroid/app/enterprise/ContextInfo;ZLandroid/app/enterprise/ApnSettings;)J
    .locals 39
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "isNewAp"    # Z
    .param p3, "apnSettings"    # Landroid/app/enterprise/ApnSettings;

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    const/16 v31, 0x1

    .line 177
    .local v31, "success":Z
    const-wide/16 v28, -0x1

    .line 178
    .local v28, "rowId":J
    const/4 v11, 0x0

    .local v11, "devMCC":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "devMNC":Ljava/lang/String;
    const/4 v13, 0x0

    .line 180
    .local v13, "devSimOperatorNumeric":Ljava/lang/String;
    if-nez p3, :cond_0

    move-wide/from16 v36, v28

    .line 352
    :goto_0
    monitor-exit p0

    return-wide v36

    .line 183
    :cond_0
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getId()J

    move-result-wide v6

    .line 184
    .local v6, "apId":J
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getUser()Ljava/lang/String;

    move-result-object v34

    .line 185
    .local v34, "user":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getServer()Ljava/lang/String;

    move-result-object v30

    .line 186
    .local v30, "server":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getPassword()Ljava/lang/String;

    move-result-object v22

    .line 187
    .local v22, "password":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getProxy()Ljava/lang/String;

    move-result-object v25

    .line 188
    .local v25, "proxy":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getPort()I

    move-result v23

    .line 189
    .local v23, "port":I
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getMmsProxy()Ljava/lang/String;

    move-result-object v18

    .line 190
    .local v18, "mmsProxy":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getMmsc()Ljava/lang/String;

    move-result-object v19

    .line 191
    .local v19, "mmsc":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getType()Ljava/lang/String;

    move-result-object v8

    .line 192
    .local v8, "apType":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getAuthType()I

    move-result v10

    .line 193
    .local v10, "authType":I
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getName()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 194
    .local v21, "name":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getApn()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 196
    .local v9, "apn":Ljava/lang/String;
    if-eqz v21, :cond_1

    if-nez v9, :cond_2

    .line 198
    :cond_1
    const-string v36, "ApnSettingsPolicyService"

    const-string v37, "Invalid value"

    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-wide/16 v36, -0x1

    goto :goto_0

    .line 202
    :cond_2
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v36

    const/16 v37, 0x41

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_3

    .line 203
    const-string v36, "ApnSettingsPolicyService"

    const-string v37, "APN name maximum length (65)"

    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-wide/16 v36, -0x1

    goto :goto_0

    .line 206
    :cond_3
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v36

    const/16 v37, 0x78

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_4

    .line 207
    const-string v36, "ApnSettingsPolicyService"

    const-string v37, "APN excedes maximum length (120)"

    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-wide/16 v36, -0x1

    goto :goto_0

    .line 210
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getMcc()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 211
    .local v16, "mcc":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getMnc()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 212
    .local v20, "mnc":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getMmsPort()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 214
    .local v17, "mmsPort":Ljava/lang/String;
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/app/enterprise/ApnSettings;->protocol:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 215
    .local v24, "protocol":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateProtocol(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_5

    .line 216
    const-string v36, "ApnSettingsPolicyService"

    const-string v37, "Invalid protocol!"

    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-wide/16 v36, -0x1

    goto/16 :goto_0

    .line 220
    :cond_5
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/app/enterprise/ApnSettings;->roamingProtocol:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 221
    .local v26, "roamingProtocol":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateProtocol(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_6

    .line 222
    const-string v36, "ApnSettingsPolicyService"

    const-string v37, "Invalid Roaming Protocol!"

    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    const-wide/16 v36, -0x1

    goto/16 :goto_0

    .line 229
    :cond_6
    :try_start_2
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 230
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 231
    const/4 v15, -0x1

    .line 233
    .local v15, "iMmsPort":I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v36

    if-nez v36, :cond_7

    const-string v36, "*"

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v36

    if-eqz v36, :cond_7

    .line 234
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 237
    :cond_7
    if-nez p2, :cond_8

    const-wide/16 v36, 0x1

    cmp-long v36, v36, v6

    if-gtz v36, :cond_9

    :cond_8
    if-eqz v16, :cond_9

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v36

    if-eqz v36, :cond_9

    if-eqz v20, :cond_9

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v36

    if-eqz v36, :cond_9

    if-eqz v21, :cond_9

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v36

    if-eqz v36, :cond_9

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v36

    if-eqz v36, :cond_9

    const/16 v36, -0x1

    move/from16 v0, v36

    move/from16 v1, v23

    if-gt v0, v1, :cond_9

    const/16 v36, -0x1

    move/from16 v0, v36

    if-gt v0, v15, :cond_9

    const/16 v36, -0x2

    move/from16 v0, v36

    if-gt v0, v10, :cond_9

    const/16 v36, 0x3

    move/from16 v0, v36

    if-ge v0, v10, :cond_16

    .line 241
    :cond_9
    const/16 v31, 0x0

    .line 242
    if-nez p2, :cond_a

    const-wide/16 v36, 0x1

    cmp-long v36, v36, v6

    if-lez v36, :cond_a

    .line 243
    const-string v36, "ApnSettingsPolicyService"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "addUpdateAp() : invalid ap Id "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_a
    if-eqz v21, :cond_b

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v36

    if-nez v36, :cond_c

    .line 245
    :cond_b
    const-string v36, "ApnSettingsPolicyService"

    const-string v37, "addUpdateAp() : invalid ap name"

    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_c
    if-eqz v9, :cond_d

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v36

    if-nez v36, :cond_e

    .line 247
    :cond_d
    const-string v36, "ApnSettingsPolicyService"

    const-string v37, "addUpdateAp() : invalid ap apn"

    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_e
    if-eqz v16, :cond_f

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v36

    if-nez v36, :cond_10

    .line 249
    :cond_f
    const-string v36, "ApnSettingsPolicyService"

    const-string v37, "addUpdateAp() : invalid ap mcc"

    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_10
    if-eqz v20, :cond_11

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v36

    if-nez v36, :cond_12

    .line 251
    :cond_11
    const-string v36, "ApnSettingsPolicyService"

    const-string v37, "addUpdateAp() : invalid ap mnc"

    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_12
    const/16 v36, -0x1

    move/from16 v0, v36

    move/from16 v1, v23

    if-le v0, v1, :cond_13

    .line 253
    const-string v36, "ApnSettingsPolicyService"

    const-string v37, "addUpdateAp() : invalid ap port"

    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_13
    const/16 v36, -0x1

    move/from16 v0, v36

    if-le v0, v15, :cond_14

    .line 255
    const-string v36, "ApnSettingsPolicyService"

    const-string v37, "addUpdateAp() : invalid ap iMmsPort"

    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_14
    const/16 v36, -0x2

    move/from16 v0, v36

    if-gt v0, v10, :cond_15

    const/16 v36, 0x3

    move/from16 v0, v36

    if-ge v0, v10, :cond_16

    .line 257
    :cond_15
    const-string v36, "ApnSettingsPolicyService"

    const-string v37, "addUpdateAp() : invalid ap authType"

    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 264
    .end local v15    # "iMmsPort":I
    :cond_16
    :goto_1
    if-eqz v31, :cond_1b

    .line 266
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    const-string/jumbo v37, "phone"

    invoke-virtual/range {v36 .. v37}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/telephony/TelephonyManager;

    .line 268
    .local v32, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v32 .. v32}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v13

    .line 270
    if-eqz v13, :cond_17

    const/16 v36, 0x4

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v37

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_17

    .line 272
    const/16 v36, 0x0

    const/16 v37, 0x3

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 274
    const/16 v36, 0x3

    move/from16 v0, v36

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 279
    :cond_17
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 280
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 281
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 282
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 283
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 284
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 285
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 286
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 288
    new-instance v35, Landroid/content/ContentValues;

    invoke-direct/range {v35 .. v35}, Landroid/content/ContentValues;-><init>()V

    .line 290
    .local v35, "values":Landroid/content/ContentValues;
    const-string/jumbo v36, "name"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string/jumbo v37, "numeric"

    if-eqz v16, :cond_18

    if-nez v20, :cond_1c

    :cond_18
    const/16 v36, 0x0

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v37

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string/jumbo v36, "mcc"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string/jumbo v36, "mnc"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v36, "apn"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string/jumbo v36, "user"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string/jumbo v36, "server"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string/jumbo v36, "password"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string/jumbo v36, "proxy"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string/jumbo v37, "port"

    if-ltz v23, :cond_1d

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v37

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string/jumbo v36, "mmsproxy"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string/jumbo v36, "mmsport"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string/jumbo v36, "mmsc"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    if-eqz p2, :cond_1f

    .line 308
    const-string v36, "authtype"

    const/16 v37, -0x2

    move/from16 v0, v37

    if-ge v0, v10, :cond_1e

    const/16 v37, 0x4

    move/from16 v0, v37

    if-le v0, v10, :cond_1e

    .end local v10    # "authType":I
    :goto_4
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 313
    :cond_19
    :goto_5
    const-string/jumbo v36, "type"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    if-eqz v12, :cond_1a

    if-eqz v11, :cond_1a

    .line 316
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1a

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1a

    .line 317
    const-string v36, "current"

    const/16 v37, 0x1

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 321
    :cond_1a
    const-string/jumbo v36, "protocol"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string/jumbo v36, "roaming_protocol"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-virtual/range {v35 .. v35}, Landroid/content/ContentValues;->size()I

    move-result v36

    if-lez v36, :cond_23

    .line 325
    if-eqz p2, :cond_21

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    sget-object v37, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v33

    .line 329
    .local v33, "url":Landroid/net/Uri;
    if-eqz v33, :cond_20

    const/16 v31, 0x1

    .line 330
    :goto_6
    if-eqz v31, :cond_1b

    .line 331
    const-string v36, "ApnSettingsPolicyService"

    const-string v37, "addUpdateAp Created rowUri : "

    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-static/range {v33 .. v33}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v28

    .end local v32    # "tm":Landroid/telephony/TelephonyManager;
    .end local v33    # "url":Landroid/net/Uri;
    .end local v35    # "values":Landroid/content/ContentValues;
    :cond_1b
    :goto_7
    move-wide/from16 v36, v28

    .line 352
    goto/16 :goto_0

    .line 259
    .restart local v10    # "authType":I
    :catch_0
    move-exception v14

    .line 260
    .local v14, "e":Ljava/lang/Exception;
    const/16 v31, 0x0

    .line 261
    :try_start_4
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 175
    .end local v6    # "apId":J
    .end local v8    # "apType":Ljava/lang/String;
    .end local v9    # "apn":Ljava/lang/String;
    .end local v10    # "authType":I
    .end local v11    # "devMCC":Ljava/lang/String;
    .end local v12    # "devMNC":Ljava/lang/String;
    .end local v13    # "devSimOperatorNumeric":Ljava/lang/String;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v16    # "mcc":Ljava/lang/String;
    .end local v17    # "mmsPort":Ljava/lang/String;
    .end local v18    # "mmsProxy":Ljava/lang/String;
    .end local v19    # "mmsc":Ljava/lang/String;
    .end local v20    # "mnc":Ljava/lang/String;
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "password":Ljava/lang/String;
    .end local v23    # "port":I
    .end local v24    # "protocol":Ljava/lang/String;
    .end local v25    # "proxy":Ljava/lang/String;
    .end local v26    # "roamingProtocol":Ljava/lang/String;
    .end local v28    # "rowId":J
    .end local v30    # "server":Ljava/lang/String;
    .end local v31    # "success":Z
    .end local v34    # "user":Ljava/lang/String;
    :catchall_0
    move-exception v36

    monitor-exit p0

    throw v36

    .line 292
    .restart local v6    # "apId":J
    .restart local v8    # "apType":Ljava/lang/String;
    .restart local v9    # "apn":Ljava/lang/String;
    .restart local v10    # "authType":I
    .restart local v11    # "devMCC":Ljava/lang/String;
    .restart local v12    # "devMNC":Ljava/lang/String;
    .restart local v13    # "devSimOperatorNumeric":Ljava/lang/String;
    .restart local v16    # "mcc":Ljava/lang/String;
    .restart local v17    # "mmsPort":Ljava/lang/String;
    .restart local v18    # "mmsProxy":Ljava/lang/String;
    .restart local v19    # "mmsc":Ljava/lang/String;
    .restart local v20    # "mnc":Ljava/lang/String;
    .restart local v21    # "name":Ljava/lang/String;
    .restart local v22    # "password":Ljava/lang/String;
    .restart local v23    # "port":I
    .restart local v24    # "protocol":Ljava/lang/String;
    .restart local v25    # "proxy":Ljava/lang/String;
    .restart local v26    # "roamingProtocol":Ljava/lang/String;
    .restart local v28    # "rowId":J
    .restart local v30    # "server":Ljava/lang/String;
    .restart local v31    # "success":Z
    .restart local v32    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v34    # "user":Ljava/lang/String;
    .restart local v35    # "values":Landroid/content/ContentValues;
    :cond_1c
    :try_start_5
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    goto/16 :goto_2

    .line 301
    :cond_1d
    const-string v36, ""

    goto/16 :goto_3

    .line 308
    :cond_1e
    sget v10, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_NOTSET:I

    goto/16 :goto_4

    .line 310
    :cond_1f
    if-nez p2, :cond_19

    const/16 v36, -0x2

    move/from16 v0, v36

    if-ge v0, v10, :cond_19

    const/16 v36, 0x4

    move/from16 v0, v36

    if-le v0, v10, :cond_19

    .line 311
    const-string v36, "authtype"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5

    .line 348
    .end local v10    # "authType":I
    .end local v32    # "tm":Landroid/telephony/TelephonyManager;
    .end local v35    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v14

    .line 349
    .restart local v14    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    .line 329
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v32    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v33    # "url":Landroid/net/Uri;
    .restart local v35    # "values":Landroid/content/ContentValues;
    :cond_20
    const/16 v31, 0x0

    goto :goto_6

    .line 336
    .end local v33    # "url":Landroid/net/Uri;
    :cond_21
    :try_start_7
    sget-object v36, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v36

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v33

    .line 337
    .restart local v33    # "url":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    move-object/from16 v2, v35

    move-object/from16 v3, v37

    move-object/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v27

    .line 339
    .local v27, "rowCount":I
    if-lez v27, :cond_22

    const/16 v31, 0x1

    .line 340
    :goto_8
    if-eqz v31, :cond_1b

    .line 341
    const-string v36, "ApnSettingsPolicyService"

    const-string v37, "addUpdateAp Updated rowUri : "

    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-static/range {v33 .. v33}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v28

    goto/16 :goto_7

    .line 339
    :cond_22
    const/16 v31, 0x0

    goto :goto_8

    .line 346
    .end local v27    # "rowCount":I
    .end local v33    # "url":Landroid/net/Uri;
    :cond_23
    const-string v36, "ApnSettingsPolicyService"

    const-string v37, "addUpdateAp Error: Empty dataset."

    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_7
.end method

.method public declared-synchronized deleteApn(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "apId"    # J

    .prologue
    const/4 v3, 0x0

    .line 146
    monitor-enter p0

    const/4 v1, -0x1

    .line 148
    .local v1, "rowCount":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 150
    const-wide/16 v4, 0x1

    cmp-long v4, v4, p2

    if-lez v4, :cond_1

    .line 151
    const-string v4, "ApnSettingsPolicyService"

    const-string v5, "deleteAp : apId is invalid"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    .line 155
    :cond_1
    :try_start_1
    sget-object v4, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 156
    .local v2, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 157
    const-string v4, "ApnSettingsPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteAp : deleted rowCount from ApTable : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_1
    if-lez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 146
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getApnList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/ApnSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 440
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 441
    const/4 v12, 0x0

    .line 442
    .local v12, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 443
    .local v8, "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    const/16 v2, 0x11

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "name"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "mcc"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "mnc"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "apn"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "user"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "server"

    aput-object v3, v4, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "password"

    aput-object v3, v4, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "proxy"

    aput-object v3, v4, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "port"

    aput-object v3, v4, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "mmsproxy"

    aput-object v3, v4, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "mmsport"

    aput-object v3, v4, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "mmsc"

    aput-object v3, v4, v2

    const/16 v2, 0xd

    const-string v3, "authtype"

    aput-object v3, v4, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "type"

    aput-object v3, v4, v2

    const/16 v2, 0xf

    const-string/jumbo v3, "protocol"

    aput-object v3, v4, v2

    const/16 v2, 0x10

    const-string/jumbo v3, "roaming_protocol"

    aput-object v3, v4, v2

    .line 449
    .local v4, "columns":[Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getApnListConditionStr()Ljava/lang/String;

    move-result-object v5

    .line 454
    .local v5, "APNLIST_SELECTION":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 456
    if-eqz v12, :cond_4

    .line 457
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    .end local v8    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    .local v9, "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 460
    :cond_0
    new-instance v10, Landroid/app/enterprise/ApnSettings;

    invoke-direct {v10}, Landroid/app/enterprise/ApnSettings;-><init>()V

    .line 461
    .local v10, "apnSettings":Landroid/app/enterprise/ApnSettings;
    const-string v2, "_id"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 462
    .local v14, "id":J
    invoke-virtual {v10, v14, v15}, Landroid/app/enterprise/ApnSettings;->setId(J)V

    .line 463
    const-string/jumbo v2, "name"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setName(Ljava/lang/String;)V

    .line 464
    const-string/jumbo v2, "mcc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setMcc(Ljava/lang/String;)V

    .line 465
    const-string/jumbo v2, "mnc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setMnc(Ljava/lang/String;)V

    .line 466
    const-string v2, "apn"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setApn(Ljava/lang/String;)V

    .line 467
    const-string/jumbo v2, "user"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setUser(Ljava/lang/String;)V

    .line 468
    const-string/jumbo v2, "server"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setServer(Ljava/lang/String;)V

    .line 469
    const-string/jumbo v2, "password"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setPassword(Ljava/lang/String;)V

    .line 470
    const-string/jumbo v2, "proxy"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setProxy(Ljava/lang/String;)V

    .line 471
    const-string/jumbo v2, "port"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v18

    .line 472
    .local v18, "strPort":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 473
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 474
    .local v16, "port":I
    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/app/enterprise/ApnSettings;->setPort(I)V

    .line 476
    .end local v16    # "port":I
    :cond_1
    const-string/jumbo v2, "mmsproxy"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setMmsProxy(Ljava/lang/String;)V

    .line 477
    const-string/jumbo v2, "mmsport"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setMmsPort(Ljava/lang/String;)V

    .line 478
    const-string/jumbo v2, "mmsc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setMmsc(Ljava/lang/String;)V

    .line 479
    const-string v2, "authtype"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v17

    .line 480
    .local v17, "strAuthType":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 481
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 482
    .local v11, "authType":I
    invoke-virtual {v10, v11}, Landroid/app/enterprise/ApnSettings;->setAuthType(I)V

    .line 484
    .end local v11    # "authType":I
    :cond_2
    const-string/jumbo v2, "type"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setType(Ljava/lang/String;)V

    .line 485
    const-string/jumbo v2, "protocol"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Landroid/app/enterprise/ApnSettings;->protocol:Ljava/lang/String;

    .line 486
    const-string/jumbo v2, "roaming_protocol"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Landroid/app/enterprise/ApnSettings;->roamingProtocol:Ljava/lang/String;

    .line 487
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_0

    .end local v10    # "apnSettings":Landroid/app/enterprise/ApnSettings;
    .end local v14    # "id":J
    .end local v17    # "strAuthType":Ljava/lang/String;
    .end local v18    # "strPort":Ljava/lang/String;
    :cond_3
    move-object v8, v9

    .line 495
    .end local v9    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    .restart local v8    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    :cond_4
    if-eqz v12, :cond_5

    .line 496
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 498
    :cond_5
    :goto_0
    return-object v8

    .line 492
    :catch_0
    move-exception v13

    .line 493
    .local v13, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 495
    if-eqz v12, :cond_5

    .line 496
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 495
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :goto_2
    if-eqz v12, :cond_6

    .line 496
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2

    .line 495
    .end local v8    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    .restart local v9    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    :catchall_1
    move-exception v2

    move-object v8, v9

    .end local v9    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    .restart local v8    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    goto :goto_2

    .line 492
    .end local v8    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    .restart local v9    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    :catch_1
    move-exception v13

    move-object v8, v9

    .end local v9    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    .restart local v8    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    goto :goto_1
.end method

.method public getApnSettings(Landroid/app/enterprise/ContextInfo;J)Landroid/app/enterprise/ApnSettings;
    .locals 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "apId"    # J

    .prologue
    .line 502
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 503
    const/4 v10, 0x0

    .line 508
    .local v10, "cursor":Landroid/database/Cursor;
    const-wide/16 v4, 0x1

    cmp-long v2, v4, p2

    if-lez v2, :cond_1

    .line 509
    const-string v2, "ApnSettingsPolicyService"

    const-string/jumbo v4, "getApnSettings : apId is invalid"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const/4 v8, 0x0

    .line 551
    :cond_0
    :goto_0
    return-object v8

    .line 513
    :cond_1
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 514
    .local v3, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 515
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 516
    new-instance v8, Landroid/app/enterprise/ApnSettings;

    invoke-direct {v8}, Landroid/app/enterprise/ApnSettings;-><init>()V

    .line 517
    .local v8, "apnSettings":Landroid/app/enterprise/ApnSettings;
    const-string v2, "_id"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 518
    .local v12, "id":J
    invoke-virtual {v8, v12, v13}, Landroid/app/enterprise/ApnSettings;->setId(J)V

    .line 519
    const-string/jumbo v2, "name"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setName(Ljava/lang/String;)V

    .line 520
    const-string/jumbo v2, "mcc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setMcc(Ljava/lang/String;)V

    .line 521
    const-string/jumbo v2, "mnc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setMnc(Ljava/lang/String;)V

    .line 522
    const-string v2, "apn"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setApn(Ljava/lang/String;)V

    .line 523
    const-string/jumbo v2, "user"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setUser(Ljava/lang/String;)V

    .line 524
    const-string/jumbo v2, "server"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setServer(Ljava/lang/String;)V

    .line 525
    const-string/jumbo v2, "password"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setPassword(Ljava/lang/String;)V

    .line 526
    const-string/jumbo v2, "proxy"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setProxy(Ljava/lang/String;)V

    .line 527
    const-string/jumbo v2, "port"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v16

    .line 528
    .local v16, "strPort":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 529
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 530
    .local v14, "port":I
    invoke-virtual {v8, v14}, Landroid/app/enterprise/ApnSettings;->setPort(I)V

    .line 532
    .end local v14    # "port":I
    :cond_2
    const-string/jumbo v2, "mmsproxy"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setMmsProxy(Ljava/lang/String;)V

    .line 533
    const-string/jumbo v2, "mmsport"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setMmsPort(Ljava/lang/String;)V

    .line 534
    const-string/jumbo v2, "mmsc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setMmsc(Ljava/lang/String;)V

    .line 535
    const-string v2, "authtype"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v15

    .line 536
    .local v15, "strAuthType":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 537
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 538
    .local v9, "authType":I
    invoke-virtual {v8, v9}, Landroid/app/enterprise/ApnSettings;->setAuthType(I)V

    .line 540
    .end local v9    # "authType":I
    :cond_3
    const-string/jumbo v2, "type"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setType(Ljava/lang/String;)V

    .line 541
    const-string/jumbo v2, "protocol"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Landroid/app/enterprise/ApnSettings;->protocol:Ljava/lang/String;

    .line 542
    const-string/jumbo v2, "roaming_protocol"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Landroid/app/enterprise/ApnSettings;->roamingProtocol:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    if-eqz v10, :cond_0

    .line 549
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 548
    .end local v8    # "apnSettings":Landroid/app/enterprise/ApnSettings;
    .end local v12    # "id":J
    .end local v15    # "strAuthType":Ljava/lang/String;
    .end local v16    # "strPort":Ljava/lang/String;
    :cond_4
    if-eqz v10, :cond_5

    .line 549
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 551
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_5
    :goto_1
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 545
    :catch_0
    move-exception v11

    .line 546
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 548
    if-eqz v10, :cond_5

    .line 549
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 548
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_6

    .line 549
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
.end method

.method public getPreferredApn(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ApnSettings;
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 556
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 557
    const/4 v6, 0x0

    .line 558
    .local v6, "apn":Landroid/app/enterprise/ApnSettings;
    const/4 v7, 0x0

    .line 560
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v0, "ApnSettingsPolicyService"

    const-string/jumbo v1, "getPreferredApn():"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "apn"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 567
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 569
    .local v8, "apnId":J
    const-string v0, "ApnSettingsPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPreferredApn():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_0

    .line 571
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getApnSettings(Landroid/app/enterprise/ContextInfo;J)Landroid/app/enterprise/ApnSettings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 580
    .end local v8    # "apnId":J
    :cond_0
    if-eqz v7, :cond_1

    .line 581
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 585
    :cond_1
    :goto_0
    return-object v6

    .line 576
    :catch_0
    move-exception v10

    .line 577
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ApnSettingsPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPreferredApn Ex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 580
    if-eqz v7, :cond_1

    .line 581
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 580
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 581
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 660
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 666
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 677
    return-void
.end method

.method public declared-synchronized setPreferredApn(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "apId"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 116
    monitor-enter p0

    const/4 v2, 0x0

    .line 118
    .local v2, "success":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    cmp-long v4, v6, p2

    if-eqz v4, :cond_1

    cmp-long v4, v6, p2

    if-lez v4, :cond_1

    .line 122
    :try_start_1
    const-string v4, "ApnSettingsPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPreferedAp() : invalid ap Id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    .end local p2    # "apId":J
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 124
    .restart local p2    # "apId":J
    :cond_1
    :try_start_2
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->isValidApnId(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 125
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 126
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "apn_id"

    cmp-long v5, v6, p2

    if-nez v5, :cond_2

    const-wide/16 p2, -0x1

    .end local p2    # "apId":J
    :cond_2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 127
    iget-object v4, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 129
    .local v1, "rowCount":I
    if-lez v1, :cond_3

    const/4 v2, 0x1

    .line 130
    :goto_1
    const-string v4, "ApnSettingsPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPreferedAp() row count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 133
    .end local v1    # "rowCount":I
    .end local v3    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 116
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 129
    .restart local v1    # "rowCount":I
    .restart local v3    # "values":Landroid/content/ContentValues;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 672
    return-void
.end method

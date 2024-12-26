.class public Lcom/samsung/android/rlc/util/PreferencesUtil;
.super Ljava/lang/Object;
.source "PreferencesUtil.java"


# static fields
.field public static final BACKOFF_MAX_VALUE:I = 0x36ee80

.field public static final CALL_CHECK_API:Ljava/lang/String; = "callcheckapi"

.field public static final CHECK_BACKOFF:Ljava/lang/String; = "check_backoff"

.field private static final CLEAR_RLC_KEY:Ljava/lang/String; = "clear_rlc"

.field public static final DEFAULT_BACKOFF:I = 0x3e8

.field public static final DEFAULT_VALUE:Ljava/lang/String; = ""

.field public static final DEFAULT_VALUE_BOOLEAN:Z = false

.field public static final DELIVERY_BACKOFF:Ljava/lang/String; = "delivery_backoff"

.field private static final DELIVERY_URLKEY:Ljava/lang/String; = "delivery_urlkey"

.field private static final DM_URLKEY:Ljava/lang/String; = "dm_urlkey"

.field public static final DOWNLOAD_ICON:Ljava/lang/String; = "image_url"

.field private static final EMPTY:I = -0x1

.field private static final FALSE:I = 0x0

.field public static final GCM_BACKOFF:Ljava/lang/String; = "gcm_backoff"

.field public static final GCM_MG_REGISTRATION_BACKOFF:Ljava/lang/String; = "gcm_mg_registration_backoff"

.field private static final MG_STATE_REGISTRATION:Ljava/lang/String; = "MGRegistered"

.field private static final PCW_CLIENT_VERSION:Ljava/lang/String; = "rlc_client_version"

.field private static final PREFERENCE:Ljava/lang/String; = "com.samsung.android.rlc"

.field private static final REGISTRATION:Ljava/lang/String; = "registration"

.field public static final RESULT_REPORT_BACKOFF:Ljava/lang/String; = "report_backoff"

.field public static final SPP_BACKOFF:Ljava/lang/String; = "spp_backoff"

.field public static final SPP_MG_REGISTRATION_BACKOFF:Ljava/lang/String; = "spp_mg_registration_backoff"

.field public static final TAG:Ljava/lang/String;

.field private static final TRUE:I = 0x1

.field public static final UNLOCK_BACKOFF:Ljava/lang/String; = "unlock_backoff"

.field public static final VALID_ID:Ljava/lang/String; = "valid_Id"

.field static handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/samsung/android/rlc/util/PreferencesUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->TAG:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCheckBackoff(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 338
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 339
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 340
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "check_backoff"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 341
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    return v2
.end method

.method public static clearDMURL(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 260
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 262
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 263
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "dm_urlkey"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 264
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 265
    return-void
.end method

.method public static clearDeliveryBackoff(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 351
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 352
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 353
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "delivery_backoff"

    const/16 v3, 0x3e8

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 354
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 355
    return-void
.end method

.method public static clearGCMBackoff(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 275
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 277
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 278
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "gcm_backoff"

    const/16 v3, 0x3e8

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 279
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 280
    return-void
.end method

.method public static clearGCMMgRegistrationBackoff(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 307
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 308
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 309
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "gcm_mg_registration_backoff"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 310
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    return v2
.end method

.method public static clearMessageGatewayURL(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 209
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 211
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 212
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "delivery_urlkey"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 213
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 214
    return-void
.end method

.method public static clearPCWClientVersion(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 117
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 118
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "rlc_client_version"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 119
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 120
    return-void
.end method

.method public static clearRegistraionID(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pushType"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 103
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 104
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "registration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 105
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 106
    return-void
.end method

.method public static clearSPPBackoff(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 291
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 293
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 294
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "spp_backoff"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 295
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    return v2
.end method

.method public static clearSPPMgRegistrationBackoff(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 323
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 324
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 325
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "spp_mg_registration_backoff"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 326
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    return v2
.end method

.method private static decode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 449
    move-object v2, p2

    .line 450
    .local v2, "ret":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 453
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/rlc/util/AESCrypto;->generateContentKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "contentKey":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/samsung/android/rlc/util/AESCrypto;->decryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 463
    .end local v0    # "contentKey":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 456
    :catch_0
    move-exception v1

    .line 458
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 461
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v3, Lcom/samsung/android/rlc/util/PreferencesUtil;->TAG:Ljava/lang/String;

    const-string v4, "can\'t decode empty msg"

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static encode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 435
    move-object v2, p2

    .line 438
    .local v2, "ret":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/rlc/util/AESCrypto;->generateContentKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "contentKey":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/samsung/android/rlc/util/AESCrypto;->encryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 445
    .end local v0    # "contentKey":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 441
    :catch_0
    move-exception v1

    .line 443
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDMURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 226
    monitor-enter p0

    .line 227
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 228
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "dm_urlkey"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "delivery":Ljava/lang/String;
    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->decode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 230
    .end local v0    # "delivery":Ljava/lang/String;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static getMGRegistrationStatus(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pushType"    # Ljava/lang/String;

    .prologue
    .line 403
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 404
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MGRegistered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getMessageGatewayURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    sget-object v1, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    if-nez v1, :cond_0

    .line 145
    new-instance v1, Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-direct {v1, p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    .line 148
    :cond_0
    sget-object v1, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    const-string v2, "GCM"

    invoke-virtual {v1, v2}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->getDeliveryURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method public static getPCWClientVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 132
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "rlc_client_version"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 133
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getRegistraionID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pushType"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 75
    .local v0, "preferences":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "registration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 362
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 363
    .local v0, "sp":Landroid/content/SharedPreferences;
    const/16 v1, 0x3e8

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 379
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 476
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 477
    .local v0, "sp":Landroid/content/SharedPreferences;
    sget-object v1, Lcom/samsung/android/rlc/util/PreferencesUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get Key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized isMGRegistered(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pushType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 418
    const-class v2, Lcom/samsung/android/rlc/util/PreferencesUtil;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    if-nez v3, :cond_0

    .line 419
    new-instance v3, Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-direct {v3, p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    .line 422
    :cond_0
    sget-object v3, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-virtual {v3, p1}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->isRegistered(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    .line 429
    :cond_1
    :goto_0
    monitor-exit v2

    return v1

    .line 426
    :cond_2
    :try_start_1
    const-string v3, "Y"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 427
    const/4 v1, 0x1

    goto :goto_0

    .line 418
    .end local v0    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static isRlcClear(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 197
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 198
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "clear_rlc"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized markMGRegistered(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pushType"    # Ljava/lang/String;
    .param p2, "mgAddr"    # Ljava/lang/String;

    .prologue
    .line 409
    const-class v0, Lcom/samsung/android/rlc/util/PreferencesUtil;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v1, p1, p2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->saveMGRegistrationStatus(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    monitor-exit v0

    return-void

    .line 409
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static saveMGRegistrationStatus(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "status"    # I
    .param p2, "pushType"    # Ljava/lang/String;
    .param p3, "dlvurl"    # Ljava/lang/String;

    .prologue
    .line 395
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    if-nez v0, :cond_0

    .line 396
    new-instance v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    .line 398
    :cond_0
    sget-object v1, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string v0, "Y"

    :goto_0
    invoke-virtual {v1, v0, p2, p3}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->updateRegStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    return-void

    .line 398
    :cond_1
    const-string v0, "N"

    goto :goto_0
.end method

.method public static setDMURL(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dm_url"    # Ljava/lang/String;

    .prologue
    .line 242
    monitor-enter p1

    .line 243
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 245
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string v3, ""

    invoke-static {p0, p1, v3}, Lcom/samsung/android/rlc/util/PreferencesUtil;->encode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "delivery":Ljava/lang/String;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 247
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "dm_urlkey"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 248
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 249
    monitor-exit p1

    .line 250
    return-void

    .line 249
    .end local v0    # "delivery":Ljava/lang/String;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v3

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static setMessageGatewayURL(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "delivery_url"    # Ljava/lang/String;

    .prologue
    .line 161
    monitor-enter p1

    .line 162
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 163
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 164
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "delivery_urlkey"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 166
    monitor-exit p1

    .line 167
    return-void

    .line 166
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static setRegistraionID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "registrationId"    # Ljava/lang/String;
    .param p2, "pushType"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 89
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 90
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "registration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 92
    return-void
.end method

.method public static setRetryBackoff(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "backoff"    # I

    .prologue
    .line 366
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 367
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 368
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 369
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 370
    return-void
.end method

.method public static setRlcClear(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "status"    # Ljava/lang/Boolean;

    .prologue
    .line 179
    sget-object v2, Lcom/samsung/android/rlc/util/PreferencesUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRlcClear  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 182
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 183
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "clear_rlc"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 184
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 185
    return-void
.end method

.method public static setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 492
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 494
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 495
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 496
    sget-object v2, Lcom/samsung/android/rlc/util/PreferencesUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set Key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    return v2
.end method

.method public static declared-synchronized unmarkMGRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pushType"    # Ljava/lang/String;

    .prologue
    .line 413
    const-class v1, Lcom/samsung/android/rlc/util/PreferencesUtil;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    const-string v2, ""

    invoke-static {p0, v0, p1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->saveMGRegistrationStatus(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    monitor-exit v1

    return-void

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

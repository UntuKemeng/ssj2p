.class public Lcom/samsung/android/rlc/util/DeviceUtil;
.super Ljava/lang/Object;
.source "DeviceUtil.java"


# static fields
.field private static final HEX_DIGITS:[C

.field private static final IMEI:Ljava/lang/String; = "IMEI:"

.field private static final MEID:Ljava/lang/String; = "MEID:"

.field private static final TAG:Ljava/lang/String;

.field private static final TWID:Ljava/lang/String; = "TWID:"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/samsung/android/rlc/util/DeviceUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    .line 44
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/rlc/util/DeviceUtil;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Checksum(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "deviceId"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0xe

    .line 301
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x41

    if-lt v4, v5, :cond_1

    .line 327
    .end local p0    # "deviceId":Ljava/lang/String;
    .local v0, "checksum":I
    .local v1, "i":I
    .local v2, "sum":I
    :cond_0
    :goto_0
    return-object p0

    .line 304
    .end local v0    # "checksum":I
    .end local v1    # "i":I
    .end local v2    # "sum":I
    .restart local p0    # "deviceId":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 305
    const/4 v2, 0x0

    .line 306
    .restart local v2    # "sum":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v6, :cond_4

    .line 307
    rem-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_2

    .line 308
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v2, v4

    .line 306
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 310
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    mul-int/lit8 v3, v4, 0x2

    .line 311
    .local v3, "temp":I
    const/16 v4, 0xa

    if-ge v3, v4, :cond_3

    .line 312
    add-int/2addr v2, v3

    goto :goto_2

    .line 314
    :cond_3
    rem-int/lit8 v4, v3, 0xa

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    goto :goto_2

    .line 319
    .end local v3    # "temp":I
    :cond_4
    rem-int/lit8 v4, v2, 0xa

    if-nez v4, :cond_5

    .line 320
    const/4 v0, 0x0

    .line 321
    .restart local v0    # "checksum":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 323
    .end local v0    # "checksum":I
    :cond_5
    rem-int/lit8 v4, v2, 0xa

    rsub-int/lit8 v0, v4, 0xa

    .line 324
    .restart local v0    # "checksum":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getCISSalesCode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    const-string v1, "rlc.sales"

    invoke-static {p0, v1}, Lcom/samsung/android/rlc/util/PushUtil;->getRlcDebugProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "salesCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-static {}, Lcom/samsung/android/rlc/util/DeviceUtil;->getSalesCodeRegion()Ljava/lang/String;

    move-result-object v0

    .line 139
    :cond_0
    const-string v1, "SER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SKZ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CAC"

    .line 140
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SEK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    :cond_1
    const/4 v1, 0x1

    .line 144
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getData([B)Ljava/lang/String;
    .locals 5
    .param p0, "inbox"    # [B

    .prologue
    .line 244
    const-string v2, ""

    .line 245
    .local v2, "sessionID":Ljava/lang/String;
    array-length v4, p0

    add-int/lit8 v4, v4, -0x10

    new-array v3, v4, [B

    .line 246
    .local v3, "tmp":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p0

    add-int/lit8 v4, v4, -0x10

    if-ge v0, v4, :cond_0

    .line 248
    add-int/lit8 v4, v0, 0x10

    aget-byte v4, p0, v4

    aput-byte v4, v3, v0

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_0
    array-length v4, v3

    new-array v1, v4, [B

    .line 252
    .local v1, "pPushBody":[B
    const/4 v0, 0x0

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 254
    aget-byte v4, v3, v0

    aput-byte v4, v1, v0

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 257
    :cond_1
    if-eqz v1, :cond_2

    .line 259
    invoke-static {v1}, Lcom/samsung/android/rlc/util/DeviceUtil;->libToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 262
    :cond_2
    return-object v2
.end method

.method public static getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v6, 0xf

    const/16 v5, 0xe

    .line 96
    const/4 v1, 0x0

    .line 97
    .local v1, "deviceId":Ljava/lang/String;
    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getTelephonyManagerWithException(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    .line 99
    .local v3, "phoneType":I
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getDeviceIdWithException(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 103
    :goto_0
    const-string v0, "IMEI:"

    .line 104
    .local v0, "addressType":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 106
    if-eqz v1, :cond_2

    const-string v4, "000000000000000"

    if-eq v1, v4, :cond_2

    .line 107
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v5, :cond_0

    const-string v0, "MEID:"

    .line 123
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 100
    .end local v0    # "addressType":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 101
    .local v2, "e1":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 108
    .end local v2    # "e1":Ljava/lang/Exception;
    .restart local v0    # "addressType":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_1

    const-string v0, "IMEI:"

    goto :goto_1

    .line 109
    :cond_1
    const-string v0, "NONE"

    goto :goto_1

    .line 112
    :cond_2
    const-string v4, "ro.serialno"

    const-string v5, "unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    const-string v0, "TWID:"

    goto :goto_1

    .line 118
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v5, :cond_4

    const-string v0, "MEID:"

    goto :goto_1

    .line 119
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_5

    const-string v0, "IMEI:"

    goto :goto_1

    .line 120
    :cond_5
    const-string v0, "NONE:"

    goto :goto_1
.end method

.method private static getDeviceIDWithoutPrefix(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, "deviceId":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getDeviceIdWithException(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 83
    :goto_0
    if-eqz v0, :cond_0

    const-string v2, "000000000000000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    :cond_0
    const-string v2, "ro.serialno"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_1
    return-object v0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDeviceIdWithException(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 342
    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getIMEIorMEID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "deviceId":Ljava/lang/String;
    return-object v0
.end method

.method public static getDualSIMDeviceID(Landroid/content/Context;)[Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    .line 51
    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getTelephonyManagerWithException(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 52
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 53
    .local v0, "count":I
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/samsung/android/rlc/util/RLCUtil;->getIMEI(I)[Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "id":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 56
    sget-object v5, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    const-string v6, "There are imeis in rmm area"

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .line 72
    .end local v2    # "id":[Ljava/lang/String;
    .local v3, "id":[Ljava/lang/String;
    :goto_0
    return-object v3

    .line 60
    .end local v3    # "id":[Ljava/lang/String;
    .restart local v2    # "id":[Ljava/lang/String;
    :cond_0
    if-le v0, v6, :cond_1

    .line 61
    new-array v2, v0, [Ljava/lang/String;

    .line 62
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 63
    invoke-virtual {v4, v1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 64
    sget-object v5, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    aget-object v6, v2, v1

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 67
    .end local v1    # "i":I
    :cond_1
    new-array v2, v6, [Ljava/lang/String;

    .line 68
    const/4 v5, 0x0

    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getDeviceIDWithoutPrefix(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 71
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/samsung/android/rlc/util/RLCUtil;->setIMEIs([Ljava/lang/String;)V

    move-object v3, v2

    .line 72
    .end local v2    # "id":[Ljava/lang/String;
    .restart local v3    # "id":[Ljava/lang/String;
    goto :goto_0
.end method

.method public static getIMEIorMEID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 332
    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getTelephonyManagerWithException(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 333
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "str0":Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x41

    if-lt v2, v3, :cond_0

    .line 338
    .end local v0    # "str0":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 336
    .restart local v0    # "str0":Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    .line 337
    invoke-static {v0}, Lcom/samsung/android/rlc/util/DeviceUtil;->Checksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 338
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSalesCodeRegion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 128
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "salesCode":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSalesCodeRegion :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-object v0
.end method

.method private static getTelephonyManagerWithException(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 347
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 368
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/samsung/android/rlc/util/DeviceUtil;->isGetFirstExcpetedModel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 372
    :try_start_0
    const-class v3, Landroid/telephony/TelephonyManager;

    const-string v4, "getFirst"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    .line 373
    .local v2, "temp":Landroid/telephony/TelephonyManager;
    move-object v1, v2

    .line 390
    .end local v2    # "temp":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 392
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 394
    .restart local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    return-object v1

    .line 374
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 377
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 380
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 382
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 383
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isGetFirstExcpetedModel()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 398
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-ge v5, v6, :cond_1

    .line 400
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 401
    .local v2, "productmodel":Ljava/lang/String;
    const/4 v5, 0x4

    new-array v0, v5, [Ljava/lang/String;

    const-string v5, "GT-N7102"

    aput-object v5, v0, v4

    const-string v5, "GT-I9502"

    aput-object v5, v0, v3

    const/4 v5, 0x2

    const-string v6, "SM-N9002"

    aput-object v6, v0, v5

    const/4 v5, 0x3

    const-string v6, "SM-G9052"

    aput-object v6, v0, v5

    .line 403
    .local v0, "MODELS":[Ljava/lang/String;
    array-length v6, v0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v0, v5

    .line 405
    .local v1, "model":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 407
    sget-object v4, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    const-string v5, "Get First Model is true"

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    .end local v1    # "model":Ljava/lang/String;
    :goto_1
    return v3

    .line 403
    .restart local v1    # "model":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v1    # "model":Ljava/lang/String;
    :cond_1
    move v3, v4

    .line 412
    goto :goto_1
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 159
    .local v0, "flag":Z
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/samsung/android/rlc/util/DeviceUtil;->isNetworkAvailable(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    const/4 v0, 0x1

    .line 162
    sget-object v1, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    const-string v2, "Wifi is available"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :goto_0
    return v0

    .line 165
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/samsung/android/rlc/util/DeviceUtil;->isNetworkAvailable(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    const/4 v0, 0x1

    .line 167
    sget-object v1, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    const-string v2, "3G is available"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_1
    sget-object v1, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    const-string v2, "Network access is not available"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isNetworkAvailable(Landroid/content/Context;I)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x0

    .line 187
    const/4 v3, 0x0

    .line 189
    .local v3, "isConnect":Z
    const-string v5, "connectivity"

    .line 190
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 193
    .local v0, "connecitivyManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 194
    :try_start_0
    sget-object v5, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    const-string v6, "Network access is not available."

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :goto_0
    return v4

    .line 197
    :cond_0
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 198
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    .line 199
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    :cond_1
    :goto_1
    move v4, v3

    .line 208
    goto :goto_0

    :cond_2
    move v3, v4

    .line 199
    goto :goto_1

    .line 203
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Network access is not available: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isNetworkAvailableVer(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 219
    const/4 v3, 0x0

    .line 221
    .local v3, "isConnect":Z
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 224
    .local v0, "connecitivyManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 225
    :try_start_0
    sget-object v5, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    const-string v6, "Network access is not available."

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :goto_0
    return v4

    .line 228
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 229
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    .line 230
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    :cond_1
    :goto_1
    move v4, v3

    .line 239
    goto :goto_0

    :cond_2
    move v3, v4

    .line 230
    goto :goto_1

    .line 234
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Network access is not available: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static libToHexString([B)Ljava/lang/String;
    .locals 10
    .param p0, "array"    # [B

    .prologue
    .line 267
    const/4 v6, 0x5

    .line 268
    .local v6, "offset":I
    const/4 v5, 0x2

    .line 270
    .local v5, "length":I
    const/4 v8, 0x4

    new-array v1, v8, [C

    .line 271
    .local v1, "buf":[C
    const/4 v2, 0x0

    .local v2, "bufIndex":I
    const/4 v4, 0x0

    .line 272
    .local v4, "i":I
    const/4 v7, 0x0

    .line 274
    .local v7, "szBuf":Ljava/lang/String;
    move v4, v6

    move v3, v2

    .end local v2    # "bufIndex":I
    .local v3, "bufIndex":I
    :goto_0
    const/4 v8, 0x7

    if-ge v4, v8, :cond_0

    .line 276
    aget-byte v0, p0, v4

    .line 277
    .local v0, "b":B
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "bufIndex":I
    .restart local v2    # "bufIndex":I
    sget-object v8, Lcom/samsung/android/rlc/util/DeviceUtil;->HEX_DIGITS:[C

    ushr-int/lit8 v9, v0, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    aput-char v8, v1, v3

    .line 278
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "bufIndex":I
    .restart local v3    # "bufIndex":I
    sget-object v8, Lcom/samsung/android/rlc/util/DeviceUtil;->HEX_DIGITS:[C

    and-int/lit8 v9, v0, 0xf

    aget-char v8, v8, v9

    aput-char v8, v1, v2

    .line 274
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 282
    .end local v0    # "b":B
    :cond_0
    const/4 v4, 0x0

    :goto_1
    array-length v8, v1

    if-ge v4, v8, :cond_1

    .line 284
    aget-char v8, v1, v4

    const/16 v9, 0x30

    if-le v8, v9, :cond_2

    .line 289
    :cond_1
    array-length v8, v1

    if-ne v4, v8, :cond_3

    .line 291
    new-instance v7, Ljava/lang/String;

    .end local v7    # "szBuf":Ljava/lang/String;
    const-string v8, "0"

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 297
    .restart local v7    # "szBuf":Ljava/lang/String;
    :goto_2
    return-object v7

    .line 282
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 295
    :cond_3
    array-length v8, v1

    sub-int/2addr v8, v4

    invoke-static {v1, v4, v8}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v7

    goto :goto_2
.end method

.method public static versionChanged(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 416
    const/4 v0, 0x0

    .line 417
    .local v0, "result":Z
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/rlc/util/RLCUtil;->PKG_VER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/rlc/util/RLCUtil;->getStringInSecure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getRLCClientVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 418
    sget-object v1, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    const-string v2, "Package version changed"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const/4 v0, 0x1

    .line 421
    :cond_0
    return v0
.end method

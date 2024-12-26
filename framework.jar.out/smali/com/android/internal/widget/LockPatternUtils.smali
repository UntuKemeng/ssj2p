.class public Lcom/android/internal/widget/LockPatternUtils;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternUtils$registerCardCallback;,
        Lcom/android/internal/widget/LockPatternUtils$verifyCardCallback;,
        Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;,
        Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;,
        Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;,
        Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;
    }
.end annotation


# static fields
.field private static final APP_LOCK_FINGERPRINT_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.applock_fingerprint"

.field public static final BIOMETRIC_WEAK_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.biometricweakeverchosen"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CIS_LOCK:I = 0x2

.field private static final DEBUG:Z = false

.field public static final DISABLE_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.disabled"

.field private static final ENABLED_FINGERPRINT_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.enabled_fingerprint"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ENABLED_TRUST_AGENTS:Ljava/lang/String; = "lockscreen.enabledtrustagents"

.field public static final ENTERPRISEID_TYPE_KEY:Ljava/lang/String; = "lockscreen.enterpriseidentity_type"

.field public static final FAILED_ATTEMPTS_BEFORE_RESET:I = 0x14

.field public static final FAILED_ATTEMPTS_BEFORE_TIMEOUT:I = 0x5

.field public static final FAILED_ATTEMPTS_BEFORE_WIPE_GRACE:I = 0x5

.field public static final FAILED_ATTEMPT_COUNTDOWN_INTERVAL_MS:J = 0x3e8L

.field private static final FAILED_ATTEMPT_TIMEOUT_MS:J = 0x7530L

.field private static final FAILED_ATTEMPT_TIMEOUT_MS_LEVEL2:J = 0xea60L

.field private static final FAILED_ATTEMPT_TIMEOUT_MS_LEVEL3:J = 0x493e0L

.field private static final FAILED_ATTEMPT_TIMEOUT_MS_LEVEL4:J = 0x927c0L

.field private static final FAILED_ATTEMPT_TIMEOUT_MS_LEVEL5:J = 0x1b7740L

.field private static final FAILED_ATTEMPT_TIMEOUT_MS_LEVEL6:J = 0x36ee80L

.field public static final FINGERPRINT_LOCKSCREEN_OFF:I = 0x0

.field public static final FINGERPRINT_LOCKSCREEN_ON:I = 0x1

.field public static final FINGERPRINT_LOCKSCREEN_OPTIONAL:I = 0x2

.field public static final FLAG_ENTERPRISEID_SELECTED:Ljava/lang/String; = "lockscreen.enterpriseidentity_selected"

.field public static final FMM_LOCK:I = 0x0

.field private static final LGT_REJECT_CAUSE_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.lgt_reject_cause"

.field public static final LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field public static final LOCKOUT_ATTEMPT_TIMEOUT_MS:Ljava/lang/String; = "lockscreen.lockoutattempttimeoutmss"

.field public static final LOCKOUT_PERMANENT_KEY:Ljava/lang/String; = "lockscreen.lockedoutpermanently"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCKOUT_RECOVERY_KEY:Ljava/lang/String; = "lockscreen.lockedoutRecovery"

.field public static final LOCKSCREEN_BIOMETRIC_WEAK_FALLBACK:Ljava/lang/String; = "lockscreen.biometric_weak_fallback"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCKSCREEN_OPTIONS:Ljava/lang/String; = "lockscreen.options"

.field public static final LOCKSCREEN_POWER_BUTTON_INSTANTLY_LOCKS:Ljava/lang/String; = "lockscreen.power_button_instantly_locks"

.field public static final LOCKSCREEN_WIDGETS_ENABLED:Ljava/lang/String; = "lockscreen.widgets_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PASSWORD_SALT_KEY:Ljava/lang/String; = "lockscreen.password_salt"

.field private static final LOCK_SCREEN_OWNER_INFO:Ljava/lang/String; = "lock_screen_owner_info"

.field private static final LOCK_SCREEN_OWNER_INFO_ENABLED:Ljava/lang/String; = "lock_screen_owner_info_enabled"

.field public static final MAX_ALLOWED_SEQUENCE:I = 0x3

.field private static final MIGRATION_FINGERPRINT_FOTA_KEY:Ljava/lang/String; = "migrated_fingerprint_fota_key"

.field public static final MIN_LOCK_PASSWORD_SIZE:I = 0x4

.field public static final MIN_LOCK_PATTERN_SIZE:I = 0x4

.field public static final MIN_PATTERN_REGISTER_FAIL:I = 0x4

.field public static final PASSWORD_HISTORY_KEY:Ljava/lang/String; = "lockscreen.passwordhistory"

.field public static final PASSWORD_TYPE_ALTERNATE_KEY:Ljava/lang/String; = "lockscreen.password_type_alternate"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PASSWORD_TYPE_KEY:Ljava/lang/String; = "lockscreen.password_type"

.field private static final PATH_PERMANENT_MEM_LOCK_FOLDER:Ljava/lang/String; = "/efs/sec_efs/sktdm_mem"

.field private static final PATH_PERMANENT_MEM_LOCK_INFO:Ljava/lang/String; = "/efs/sec_efs/sktdm_mem/lawlock.txt"

.field private static final PATH_PERMANENT_MEM_LOCK_INFO_ENC:Ljava/lang/String; = "/efs/sec_efs/sktdm_mem/enclawlock.txt"

.field private static final PATH_PERMANENT_MEM_LOCK_MSG_INFO:Ljava/lang/String; = "/efs/sec_efs/sktdm_mem/lawlockmsg.txt"

.field private static final PATH_PERMANENT_MEM_LOCK_MSG_INFO_ENC:Ljava/lang/String; = "/efs/sec_efs/sktdm_mem/enclawlockmsg.txt"

.field public static final PATTERN_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.patterneverchosen"

.field private static final PRIVATE_MODE_FINGERPRINT_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.privatemode_fingerprint"

.field public static final REMOTELOCK_SIZE:I = 0x3

.field public static final SAMSUNG_BIOMETRIC_FACE:I = 0x100

.field public static final SAMSUNG_BIOMETRIC_FINGERPRINT:I = 0x1

.field public static final SAMSUNG_BIOMETRIC_IRIS:I = 0x10

.field private static final SAMSUNG_BIOMETRIC_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.samsung_biometric"

.field public static final SAMSUNG_BIOMETRIC_MAIN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SAMSUNG_BIOMETRIC_NONE:I = 0x0

.field public static final SAMSUNG_BIOMETRIC_OFF:I = 0x0

.field public static final SAMSUNG_BIOMETRIC_ON:I = 0x1

.field public static final SAMSUNG_BIOMETRIC_OPTIONAL:I = 0x2

.field private static final SKTLOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "sktlockscreen.lockoutdeadline"

.field private static final SKT_CARRIERLOCK_MODE_FILE:Ljava/lang/String; = "/efs/sms/sktcarrierlockmode"

.field public static final SKT_CARRIER_LOCK:I = 0x1

.field private static final SKT_FAILED_ATTEMPT_TIMEOUT_MS:J = 0x927c0L

.field public static final SMARTCARD_TYPE_KEY:Ljava/lang/String; = "lockscreen.smartcard_type"

.field private static final TAG:Ljava/lang/String; = "LockPatternUtils"

.field private static final TEXT_SEPERATOR:C = ':'

.field public static final UNIVERSAL_LOCK_ENABLED:Ljava/lang/String; = "isUniversalLock"

.field private static cacPasswordSetProgress:Z = false

.field private static failedUnlockAttemptNumber:J = 0x0L

.field private static final ivParamSpec:Ljavax/crypto/spec/IvParameterSpec;

.field private static lockChecksum:Ljava/lang/String; = null

.field private static lockChecksumUnlock:Ljava/lang/String; = null

.field private static lockMsg:Ljava/lang/String; = null

.field private static lockMsgUnlock:Ljava/lang/String; = null

.field private static lockPassword:Ljava/lang/String; = null

.field private static lockPasswordUnlock:Ljava/lang/String; = null

.field private static lockSaveMsg:Ljava/lang/String; = null

.field private static lockSaveMsgUnlock:Ljava/lang/String; = null

.field private static lockType:Ljava/lang/String; = null

.field private static lockTypeUnlock:Ljava/lang/String; = null

.field private static mIsCallbackCalled:Z = false

.field private static mIsCallerUCM:Z = false

.field private static mScVerifyStatus:I = 0x0

.field private static mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager; = null

.field private static final mSmsPortAddressedMessage:Z = false

.field private static mSwipeSmartLock:Z = false

.field private static volatile sCurrentUserId:I = 0x0

.field private static final secretKey:Ljava/lang/String; = "SKT : Find lost phone plus !!!"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private final mMultiUserMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 264
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const-string v1, "i_love_office_tg"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->ivParamSpec:Ljavax/crypto/spec/IvParameterSpec;

    .line 269
    const-string v0, ""

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->lockMsg:Ljava/lang/String;

    .line 270
    const-string v0, ""

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->lockSaveMsg:Ljava/lang/String;

    .line 274
    const-string v0, ""

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->lockMsgUnlock:Ljava/lang/String;

    .line 275
    const-string v0, ""

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->lockSaveMsgUnlock:Ljava/lang/String;

    .line 280
    sput v2, Lcom/android/internal/widget/LockPatternUtils;->mScVerifyStatus:I

    .line 281
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    .line 282
    sput-boolean v2, Lcom/android/internal/widget/LockPatternUtils;->cacPasswordSetProgress:Z

    .line 317
    sput-boolean v2, Lcom/android/internal/widget/LockPatternUtils;->mSwipeSmartLock:Z

    .line 319
    const/16 v0, -0x2710

    sput v0, Lcom/android/internal/widget/LockPatternUtils;->sCurrentUserId:I

    .line 320
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    .line 363
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 368
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mMultiUserMode:Z

    .line 370
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen.failedUnlockAttemptNumber"

    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    .line 372
    return-void

    .line 368
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 120
    sput p0, Lcom/android/internal/widget/LockPatternUtils;->mScVerifyStatus:I

    return p0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 120
    sput-boolean p0, Lcom/android/internal/widget/LockPatternUtils;->mIsCallbackCalled:Z

    return p0
.end method

.method private static categoryChar(C)I
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 1115
    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x0

    .line 1118
    :goto_0
    return v0

    .line 1116
    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 1117
    :cond_1
    const/16 v0, 0x30

    if-gt v0, p0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    .line 1118
    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static computePasswordQuality(Ljava/lang/String;)I
    .locals 6
    .param p0, "password"    # Ljava/lang/String;

    .prologue
    .line 1075
    const/4 v0, 0x0

    .line 1076
    .local v0, "hasDigit":Z
    const/4 v1, 0x0

    .line 1077
    .local v1, "hasNonDigit":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1078
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1079
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1080
    const/4 v0, 0x1

    .line 1078
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1082
    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 1086
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1087
    const/high16 v4, 0x50000

    .line 1097
    :goto_2
    return v4

    .line 1089
    :cond_2
    if-eqz v1, :cond_3

    .line 1090
    const/high16 v4, 0x40000

    goto :goto_2

    .line 1092
    :cond_3
    if-eqz v0, :cond_5

    .line 1093
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->maxLengthSequence(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_4

    const/high16 v4, 0x20000

    goto :goto_2

    :cond_4
    const/high16 v4, 0x30000

    goto :goto_2

    .line 1097
    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private generateRecoveryPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2064
    invoke-static {}, Lcom/android/internal/widget/RandomString;->randomstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBoolean(Ljava/lang/String;ZI)Z
    .locals 5
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 1932
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result p2

    .line 1937
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .line 1933
    .restart local p2    # "defaultValue":Z
    :catch_0
    move-exception v1

    .line 1934
    .local v1, "re":Landroid/os/RemoteException;
    goto :goto_0

    .line 1935
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1936
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t read boolean "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCurrentOrCallingUserId()I
    .locals 1

    .prologue
    .line 612
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mMultiUserMode:Z

    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    .line 617
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    goto :goto_0
.end method

.method private getKey(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2849
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2850
    .local v0, "digest":Ljava/security/MessageDigest;
    const-string v2, "SKT : Find lost phone plus !!!"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 2851
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 2852
    .local v1, "key":Ljavax/crypto/spec/SecretKeySpec;
    return-object v1
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 2

    .prologue
    .line 375
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v1, :cond_0

    .line 376
    const-string v1, "lock_settings"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 378
    .local v0, "service":Lcom/android/internal/widget/ILockSettings;
    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 380
    .end local v0    # "service":Lcom/android/internal/widget/ILockSettings;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v1
.end method

.method private getLong(Ljava/lang/String;JI)J
    .locals 6
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 1956
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide p2

    .line 1961
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .line 1957
    .restart local p2    # "defaultValue":J
    :catch_0
    move-exception v1

    .line 1958
    .local v1, "re":Landroid/os/RemoteException;
    goto :goto_0

    .line 1959
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1960
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t read long "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getProfiles(I)Ljava/util/List;
    .locals 11
    .param p0, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2173
    const/4 v3, 0x0

    .line 2175
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_0
    const-string/jumbo v9, "user"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v7

    .line 2177
    .local v7, "um":Landroid/os/IUserManager;
    if-eqz v7, :cond_1

    .line 2178
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2182
    .end local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_1
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v8

    .line 2183
    .local v8, "versionInfo":Landroid/os/Bundle;
    if-eqz v8, :cond_4

    const-string v9, "2.0"

    const-string/jumbo v10, "version"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2184
    invoke-interface {v7, p0}, Landroid/os/IUserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 2185
    .local v6, "uinfo":Landroid/content/pm/UserInfo;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2189
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v3, v4

    .line 2216
    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v6    # "uinfo":Landroid/content/pm/UserInfo;
    .end local v7    # "um":Landroid/os/IUserManager;
    .end local v8    # "versionInfo":Landroid/os/Bundle;
    .restart local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    :goto_0
    return-object v3

    .line 2194
    .end local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v6    # "uinfo":Landroid/content/pm/UserInfo;
    .restart local v7    # "um":Landroid/os/IUserManager;
    .restart local v8    # "versionInfo":Landroid/os/Bundle;
    :cond_2
    const/4 v9, 0x0

    invoke-interface {v7, p0, v9}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v5

    .line 2195
    .local v5, "profilesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 2196
    .local v2, "pi":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v9

    if-nez v9, :cond_3

    .line 2197
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 2211
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pi":Landroid/content/pm/UserInfo;
    .end local v5    # "profilesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v6    # "uinfo":Landroid/content/pm/UserInfo;
    .end local v8    # "versionInfo":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 2212
    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "um":Landroid/os/IUserManager;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2204
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v7    # "um":Landroid/os/IUserManager;
    .restart local v8    # "versionInfo":Landroid/os/Bundle;
    :cond_4
    const/4 v9, 0x0

    :try_start_2
    invoke-interface {v7, p0, v9}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_0

    .line 2213
    .end local v7    # "um":Landroid/os/IUserManager;
    .end local v8    # "versionInfo":Landroid/os/Bundle;
    :catch_1
    move-exception v0

    .line 2214
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2213
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v7    # "um":Landroid/os/IUserManager;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_3

    .line 2211
    .end local v7    # "um":Landroid/os/IUserManager;
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method private getRequestedPasswordHistoryLength(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method private getSalt(I)Ljava/lang/String;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 1485
    const-string v1, "lockscreen.password_salt"

    invoke-direct {p0, v1, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    .line 1486
    .local v2, "salt":J
    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1488
    :try_start_0
    const-string v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    .line 1489
    const-string v1, "lockscreen.password_salt"

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1490
    const-string v1, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initialized lock password salt for user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1496
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1491
    :catch_0
    move-exception v0

    .line 1493
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "Couldn\'t get SecureRandom number"

    invoke-direct {v1, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getSmartcardPinManager()Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    .locals 4

    .prologue
    .line 3381
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3382
    .local v0, "tContext":Landroid/content/Context;
    :goto_0
    invoke-static {}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->getInstance()Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->getSmartcardPinMgr(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    move-result-object v1

    sput-object v1, Lcom/android/internal/widget/LockPatternUtils;->mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    .line 3386
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils;->mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    return-object v1

    .line 3381
    .end local v0    # "tContext":Landroid/content/Context;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private getSmartcardPinManager_Sync()Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    .locals 4

    .prologue
    .line 3408
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3410
    .local v0, "tContext":Landroid/content/Context;
    :goto_0
    invoke-static {}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->getInstance()Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->getSmartcardPinMgr_Sync(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    move-result-object v1

    sput-object v1, Lcom/android/internal/widget/LockPatternUtils;->mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    .line 3412
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils;->mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    return-object v1

    .line 3408
    .end local v0    # "tContext":Landroid/content/Context;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private getString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v2, 0x0

    .line 1980
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p2}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1985
    :goto_0
    return-object v2

    .line 1981
    :catch_0
    move-exception v1

    .line 1982
    .local v1, "re":Landroid/os/RemoteException;
    goto :goto_0

    .line 1983
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1984
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t read String "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getTrustManager()Landroid/app/trust/TrustManager;
    .locals 5

    .prologue
    .line 353
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "trust"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    .line 354
    .local v0, "trust":Landroid/app/trust/TrustManager;
    if-nez v0, :cond_0

    .line 355
    const-string v1, "LockPatternUtils"

    const-string v2, "Can\'t get TrustManagerService: is it running?"

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Stack trace:"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    :cond_0
    return-object v0
.end method

.method public static isDeviceEncrypted()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1354
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 1357
    .local v0, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    invoke-interface {v0}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v3

    if-eq v3, v2, :cond_0

    invoke-interface {v0}, Landroid/os/storage/IMountService;->getPasswordType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eq v3, v2, :cond_0

    .line 1362
    :goto_0
    return v2

    .line 1357
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1359
    :catch_0
    move-exception v1

    .line 1360
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "LockPatternUtils"

    const-string v4, "Error getting encryption state"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isDeviceEncryptionEnabled()Z
    .locals 3

    .prologue
    .line 1372
    const-string/jumbo v1, "ro.crypto.state"

    const-string/jumbo v2, "unsupported"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1373
    .local v0, "status":Ljava/lang/String;
    const-string v1, "encrypted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isDoNotAskCredentialsOnBootSet()Z
    .locals 1

    .prologue
    .line 2147
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    move-result v0

    return v0
.end method

.method private isKnoxUser(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 440
    const/4 v1, 0x0

    .line 442
    .local v1, "ret":Z
    const/16 v2, 0x64

    if-lt p1, v2, :cond_0

    const/16 v2, 0xc8

    if-gt p1, v2, :cond_0

    .line 444
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 445
    .local v0, "pm":Landroid/os/PersonaManager;
    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {v0, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v1

    .line 449
    .end local v0    # "pm":Landroid/os/PersonaManager;
    :cond_0
    return v1
.end method

.method private isLockPasswordEnabled(II)Z
    .locals 10
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1587
    const-string v6, "lockscreen.password_type_alternate"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9, p2}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v6

    long-to-int v6, v6

    int-to-long v2, v6

    .line 1588
    .local v2, "backupMode":J
    const/high16 v6, 0x40000

    if-eq p1, v6, :cond_0

    const/high16 v6, 0x20000

    if-eq p1, v6, :cond_0

    const/high16 v6, 0x30000

    if-eq p1, v6, :cond_0

    const/high16 v6, 0x50000

    if-eq p1, v6, :cond_0

    const/high16 v6, 0x60000

    if-eq p1, v6, :cond_0

    const/high16 v6, 0x70000

    if-ne p1, v6, :cond_3

    :cond_0
    move v1, v4

    .line 1594
    .local v1, "passwordEnabled":Z
    :goto_0
    const-wide/32 v6, 0x40000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    const-wide/32 v6, 0x20000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    const-wide/32 v6, 0x30000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    const-wide/32 v6, 0x50000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    const-wide/32 v6, 0x60000

    cmp-long v6, v2, v6

    if-nez v6, :cond_4

    :cond_1
    move v0, v4

    .line 1599
    .local v0, "backupEnabled":Z
    :goto_1
    if-nez v1, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak(I)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v0, :cond_5

    :cond_2
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists(I)Z

    move-result v6

    if-eqz v6, :cond_5

    :goto_2
    return v4

    .end local v0    # "backupEnabled":Z
    .end local v1    # "passwordEnabled":Z
    :cond_3
    move v1, v5

    .line 1588
    goto :goto_0

    .restart local v1    # "passwordEnabled":Z
    :cond_4
    move v0, v5

    .line 1594
    goto :goto_1

    .restart local v0    # "backupEnabled":Z
    :cond_5
    move v4, v5

    .line 1599
    goto :goto_2
.end method

.method private isLockPatternEnabled(II)Z
    .locals 1
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    .prologue
    .line 1645
    const/high16 v0, 0x10000

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLockUniversalEnabled(II)Z
    .locals 1
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    .prologue
    .line 1109
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static maxDiffCategory(I)I
    .locals 1
    .param p0, "category"    # I

    .prologue
    const/4 v0, 0x1

    .line 1122
    if-eqz p0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1124
    :cond_0
    :goto_0
    return v0

    .line 1123
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const/16 v0, 0xa

    goto :goto_0

    .line 1124
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static maxLengthSequence(Ljava/lang/String;)I
    .locals 12
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1144
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_0

    .line 1172
    :goto_0
    return v7

    .line 1145
    :cond_0
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1146
    .local v8, "previousChar":C
    invoke-static {v8}, Lcom/android/internal/widget/LockPatternUtils;->categoryChar(C)I

    move-result v0

    .line 1147
    .local v0, "category":I
    const/4 v5, 0x0

    .line 1148
    .local v5, "diff":I
    const/4 v6, 0x0

    .line 1149
    .local v6, "hasDiff":Z
    const/4 v7, 0x0

    .line 1150
    .local v7, "maxLength":I
    const/4 v9, 0x0

    .line 1151
    .local v9, "startSequence":I
    const/4 v2, 0x1

    .local v2, "current":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v2, v10, :cond_4

    .line 1152
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1153
    .local v3, "currentChar":C
    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->categoryChar(C)I

    move-result v1

    .line 1154
    .local v1, "categoryCurrent":I
    sub-int v4, v3, v8

    .line 1155
    .local v4, "currentDiff":I
    if-ne v1, v0, :cond_1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->maxDiffCategory(I)I

    move-result v11

    if-le v10, v11, :cond_2

    .line 1156
    :cond_1
    sub-int v10, v2, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1157
    move v9, v2

    .line 1158
    const/4 v6, 0x0

    .line 1159
    move v0, v1

    .line 1169
    :goto_2
    move v8, v3

    .line 1151
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1162
    :cond_2
    if-eqz v6, :cond_3

    if-eq v4, v5, :cond_3

    .line 1163
    sub-int v10, v2, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1164
    add-int/lit8 v9, v2, -0x1

    .line 1166
    :cond_3
    move v5, v4

    .line 1167
    const/4 v6, 0x1

    goto :goto_2

    .line 1171
    .end local v1    # "categoryCurrent":I
    .end local v3    # "currentChar":C
    .end local v4    # "currentDiff":I
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1172
    goto :goto_0
.end method

.method private onAfterChangingPassword(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 2125
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    .line 2126
    return-void
.end method

.method public static patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "pattern"    # Ljava/lang/String;

    .prologue
    .line 1444
    if-nez p0, :cond_0

    .line 1445
    const-string v4, ""

    .line 1454
    :goto_0
    return-object v4

    .line 1447
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1449
    .local v2, "patternSize":I
    new-array v3, v2, [B

    .line 1450
    .local v3, "res":[B
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1451
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1452
    aget-byte v4, v0, v1

    add-int/lit8 v4, v4, -0x31

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 1451
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1454
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static patternToHash(Ljava/util/List;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 1465
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_0

    .line 1466
    const/4 v1, 0x0

    .line 1480
    :goto_0
    return-object v1

    .line 1469
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 1470
    .local v5, "patternSize":I
    new-array v6, v5, [B

    .line 1471
    .local v6, "res":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 1472
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1473
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 1471
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1476
    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    :try_start_0
    const-string v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 1477
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1478
    .local v1, "hash":[B
    goto :goto_0

    .line 1479
    .end local v1    # "hash":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v4

    .local v4, "nsa":Ljava/security/NoSuchAlgorithmException;
    move-object v1, v6

    .line 1480
    goto :goto_0
.end method

.method public static patternToString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1430
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_0

    .line 1431
    const-string v4, ""

    .line 1440
    :goto_0
    return-object v4

    .line 1433
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 1435
    .local v2, "patternSize":I
    new-array v3, v2, [B

    .line 1436
    .local v3, "res":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1437
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1438
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x31

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 1436
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1440
    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private saveLockFingerprintPasswordwithoutQuality(Ljava/lang/String;I)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 3277
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockFingerprintPasswordwithoutQuality(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3278
    return-void
.end method

.method private saveLockFingerprintPasswordwithoutQuality(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedpassword"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 3282
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 3283
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_1

    .line 3284
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ILockSettings;->setLockBackupPassword(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 3285
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v10

    .line 3286
    .local v10, "computedQuality":I
    if-eqz v10, :cond_0

    .line 3287
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->setContainerPasswordState(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3300
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v10    # "computedQuality":I
    :goto_0
    return-void

    .line 3290
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v10    # "computedQuality":I
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v9

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3297
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v10    # "computedQuality":I
    :catch_0
    move-exception v11

    .line 3298
    .local v11, "re":Ljava/lang/Exception;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save Fingerprint lock password "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3294
    .end local v11    # "re":Ljava/lang/Exception;
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v9

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private savedPasswordExists(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 736
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->havePassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 738
    :goto_0
    return v1

    .line 737
    :catch_0
    move-exception v0

    .line 738
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private savedPasswordExistsNoCache()Z
    .locals 4

    .prologue
    .line 1624
    const-string v2, "lock_settings"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    .line 1626
    .local v1, "lockSettingsService":Lcom/android/internal/widget/ILockSettings;
    if-eqz v1, :cond_0

    .line 1628
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->havePassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1633
    :goto_0
    return v2

    .line 1629
    :catch_0
    move-exception v0

    .line 1630
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    const-string v3, "Unable to reach LockSettingsService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 1951
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1952
    return-void
.end method

.method private setBoolean(Ljava/lang/String;ZI)V
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 1943
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1948
    :goto_0
    return-void

    .line 1944
    :catch_0
    move-exception v0

    .line 1946
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write boolean "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setLockoutAttemptDeadlineInAbnormalCase(IJ)J
    .locals 4
    .param p1, "userId"    # I
    .param p2, "timeout"    # J

    .prologue
    .line 1896
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1897
    .local v0, "deadline":J
    add-long/2addr v0, p2

    .line 1898
    const-string v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1899
    return-wide v0
.end method

.method private setLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 1966
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1967
    return-void
.end method

.method private setLong(Ljava/lang/String;JI)V
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 1971
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1976
    :goto_0
    return-void

    .line 1972
    :catch_0
    move-exception v0

    .line 1974
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write long "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 1991
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1996
    :goto_0
    return-void

    .line 1992
    :catch_0
    move-exception v0

    .line 1994
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private shouldEncryptWithCredentials(Z)Z
    .locals 1
    .param p1, "defaultValue"    # Z

    .prologue
    .line 2151
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->isDoNotAskCredentialsOnBootSet()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1410
    if-nez p0, :cond_1

    .line 1411
    const/4 v3, 0x0

    .line 1421
    :cond_0
    return-object v3

    .line 1414
    :cond_1
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1416
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1417
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 1418
    aget-byte v4, v1, v2

    add-int/lit8 v4, v4, -0x31

    int-to-byte v0, v4

    .line 1419
    .local v0, "b":B
    div-int/lit8 v4, v0, 0x3

    rem-int/lit8 v5, v0, 0x3

    invoke-static {v4, v5}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1417
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "ary"    # [B

    .prologue
    .line 1560
    const-string v0, "0123456789ABCDEF"

    .line 1561
    .local v0, "hex":Ljava/lang/String;
    const-string v2, ""

    .line 1562
    .local v2, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 1563
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1564
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1562
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1566
    :cond_0
    return-object v2
.end method

.method private updateCACAuthentication()V
    .locals 3

    .prologue
    .line 3532
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isCACPasswordEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/internal/widget/LockPatternUtils;->cacPasswordSetProgress:Z

    if-nez v1, :cond_0

    .line 3533
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.smartcard.pinservice.action.SMARTCARD_PIN_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3535
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3536
    const-string v1, "LockPatternUtils"

    const-string/jumbo v2, "updateCACAuthentication: send broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3537
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/widget/LockPatternUtils;->cacPasswordSetProgress:Z

    .line 3539
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private updateCACAuthentication(II)V
    .locals 6
    .param p1, "quality"    # I
    .param p2, "userId"    # I

    .prologue
    const/high16 v5, 0x70000

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3559
    sget-boolean v0, Lcom/android/internal/widget/LockPatternUtils;->mIsCallerUCM:Z

    if-eqz v0, :cond_0

    .line 3560
    const-string v0, "LockPatternUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCACAuthentication called from ucm: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v3, Lcom/android/internal/widget/LockPatternUtils;->mIsCallerUCM:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3561
    sput-boolean v2, Lcom/android/internal/widget/LockPatternUtils;->mIsCallerUCM:Z

    .line 3568
    :goto_0
    return-void

    .line 3564
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->updateCACAuthentication()V

    .line 3565
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->update_lockscreen_type(I)V

    .line 3566
    if-ne p1, v5, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->setCACPasswordEnabled(ZI)Z

    .line 3567
    const-string v0, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCACPasswordEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne p1, v5, :cond_2

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v0, v2

    .line 3566
    goto :goto_1

    :cond_2
    move v1, v2

    .line 3567
    goto :goto_2
.end method

.method private updateCryptoUserInfo(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 1024
    if-eqz p1, :cond_0

    .line 1043
    :goto_0
    return-void

    .line 1028
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v2

    .line 1030
    .local v2, "ownerInfo":Ljava/lang/String;
    :goto_1
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1031
    .local v3, "service":Landroid/os/IBinder;
    if-nez v3, :cond_2

    .line 1032
    const-string v4, "LockPatternUtils"

    const-string v5, "Could not find the mount service to update the user info"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1028
    .end local v2    # "ownerInfo":Ljava/lang/String;
    .end local v3    # "service":Landroid/os/IBinder;
    :cond_1
    const-string v2, ""

    goto :goto_1

    .line 1036
    .restart local v2    # "ownerInfo":Ljava/lang/String;
    .restart local v3    # "service":Landroid/os/IBinder;
    :cond_2
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 1038
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    const-string v4, "LockPatternUtils"

    const-string v5, "Setting owner info"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    const-string v4, "OwnerInfo"

    invoke-interface {v1, v4, v2}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "LockPatternUtils"

    const-string v5, "Error changing user info"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateEncryptionPassword(ILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 1177
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1199
    :goto_0
    return-void

    .line 1180
    :cond_0
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1181
    .local v0, "service":Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 1182
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not find the mount service to update the encryption password"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1186
    :cond_1
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils$1;-><init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/IBinder;ILjava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private updateEnterpriseIdentityLock(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 524
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "lockscreen.enterpriseidentity_selected"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 526
    .local v1, "eIdChoosenByUser":I
    const-string v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateEnterpriseIdentityLock: eIdChoosenByUser: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Enterprise ID status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const/4 v2, 0x0

    .line 530
    .local v2, "isEidLockNeedToSet":Z
    if-lez v1, :cond_0

    .line 531
    const/4 v2, 0x1

    .line 533
    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setEnterpriseIdentitySelected(ZI)Z

    .line 536
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v3

    if-eq v3, v2, :cond_1

    .line 537
    invoke-virtual {p0, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->setEnterpriseIdentityLock(ZI)Z

    .line 539
    :cond_1
    const-string v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateEnterpriseIdentityLock: EidState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    .end local v1    # "eIdChoosenByUser":I
    .end local v2    # "isEidLockNeedToSet":Z
    :goto_0
    return-void

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private update_lockscreen_type(I)V
    .locals 4
    .param p1, "quality"    # I

    .prologue
    .line 3546
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.smartcard.pinservice.action.SMARTCARD_LOCKTYPE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3548
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x70000

    if-ne p1, v1, :cond_0

    .line 3549
    const-string v1, "Type"

    const-string v2, "Smartcard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3553
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3554
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCACAuthentication: send broadcast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3555
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/widget/LockPatternUtils;->cacPasswordSetProgress:Z

    .line 3556
    return-void

    .line 3551
    :cond_0
    const-string v1, "Type"

    const-string v2, "Other"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public checkAppLockPassword(Ljava/lang/String;Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;I)Z
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "lockType"    # Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;
    .param p3, "userId"    # I

    .prologue
    .line 2680
    :try_start_0
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v1, :cond_0

    .line 2681
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/android/internal/widget/ILockSettings;->checkAppLockPin(Ljava/lang/String;I)Z

    move-result v1

    .line 2691
    :goto_0
    return v1

    .line 2682
    :cond_0
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Password:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v1, :cond_1

    .line 2683
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/android/internal/widget/ILockSettings;->checkAppLockPassword(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    .line 2684
    :cond_1
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v1, :cond_2

    .line 2685
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/android/internal/widget/ILockSettings;->checkAppLockPattern(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    .line 2686
    :cond_2
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v1, :cond_3

    .line 2687
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/android/internal/widget/ILockSettings;->checkAppLockBackupPin(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2689
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 2690
    :catch_0
    move-exception v0

    .line 2691
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkBackupPassword(Ljava/lang/String;IZ)Z
    .locals 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "useKeystore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3613
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    .line 3614
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v6

    invoke-interface {v6, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->checkBackupPassword(Ljava/lang/String;IZ)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v3

    .line 3617
    .local v3, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    const-string v6, "LockPatternUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkBackupPassword resCode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "useKeystore:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3618
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v6

    if-nez v6, :cond_1

    .line 3621
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/app/admin/DevicePolicyManager;->isSupportFingerprintForODE(Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3622
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v6, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 3623
    .local v0, "dem":Landroid/dirEncryption/DirEncryptionManager;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/dirEncryption/DirEncryptionManager;->setNeedToCreateKey(Z)V

    .line 3624
    invoke-virtual {v0, p1}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    .line 3625
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/app/admin/DevicePolicyManager;->setNeedToGetAlternativePasswdForODE(Landroid/content/ComponentName;Z)V

    .line 3636
    .end local v0    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v3    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_0
    :goto_0
    return v4

    .line 3629
    .restart local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v3    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v6

    if-ne v6, v4, :cond_2

    .line 3630
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v6

    invoke-direct {v4, v6}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v4

    .line 3635
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v3    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v2

    .local v2, "re":Landroid/os/RemoteException;
    move v4, v5

    .line 3636
    goto :goto_0

    .line 3632
    .end local v2    # "re":Landroid/os/RemoteException;
    .restart local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v3    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_2
    const-string v4, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkBackupPassword resCode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 3633
    goto :goto_0
.end method

.method public checkBackupPin(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2388
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkBackupPin(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 2390
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_0

    .line 2399
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_0
    return v2

    .line 2392
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 2393
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    invoke-direct {v2, v4}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v2

    .line 2398
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    move v2, v3

    .line 2399
    goto :goto_0

    .line 2395
    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    const-string v2, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkBackupPin resCode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 2396
    goto :goto_0
.end method

.method public checkFingerprintPassword(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 3304
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkFingerprintPassword(Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method public checkFingerprintPassword(Ljava/lang/String;IZ)Z
    .locals 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "useKeystore"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3309
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    .line 3310
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v6

    invoke-interface {v6, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->checkBackupPassword(Ljava/lang/String;IZ)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v3

    .line 3312
    .local v3, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    const-string v6, "LockPatternUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkBackupPassword resCode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "useKeystore:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3313
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v6

    if-nez v6, :cond_1

    .line 3316
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/app/admin/DevicePolicyManager;->isSupportFingerprintForODE(Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3317
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v6, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 3318
    .local v0, "dem":Landroid/dirEncryption/DirEncryptionManager;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/dirEncryption/DirEncryptionManager;->setNeedToCreateKey(Z)V

    .line 3319
    invoke-virtual {v0, p1}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    .line 3320
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/app/admin/DevicePolicyManager;->setNeedToGetAlternativePasswdForODE(Landroid/content/ComponentName;Z)V

    .line 3329
    .end local v0    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v3    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_0
    :goto_0
    return v4

    .line 3325
    .restart local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v3    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    const-string v4, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkBackupPassword resCode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 3326
    goto :goto_0

    .line 3328
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v3    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v2

    .local v2, "re":Landroid/os/RemoteException;
    move v4, v5

    .line 3329
    goto :goto_0
.end method

.method public checkParentControlPassword(Ljava/lang/String;)Z
    .locals 5
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2740
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    .line 2748
    .local v2, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/internal/widget/ILockSettings;->getParentControlPasswordHashSize(I)I

    move-result v0

    .line 2753
    .local v0, "length":I
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/android/internal/widget/ILockSettings;->checkParentControlPassword([BI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2758
    .end local v0    # "length":I
    :goto_0
    return v3

    .line 2757
    :catch_0
    move-exception v1

    .line 2758
    .local v1, "re":Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public checkPassword(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 656
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 658
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_0

    .line 673
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_0
    return v2

    .line 660
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 661
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    invoke-direct {v2, v4}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    .line 668
    .local v0, "re":Landroid/os/RemoteException;
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isKnoxUser(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 669
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v2, v3

    .line 670
    goto :goto_0

    .line 663
    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    :try_start_1
    const-string v2, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkPassword resCode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v3

    .line 664
    goto :goto_0

    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local v0    # "re":Landroid/os/RemoteException;
    :cond_2
    move v2, v3

    .line 673
    goto :goto_0
.end method

.method public checkPasswordHistory(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 698
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 700
    .local v2, "passwordHashString":Ljava/lang/String;
    const-string v6, "lockscreen.passwordhistory"

    invoke-direct {p0, v6, p2}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 701
    .local v3, "passwordHistory":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 715
    :cond_0
    :goto_0
    return v5

    .line 705
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 706
    .local v1, "passwordHashLength":I
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength(I)I

    move-result v4

    .line 707
    .local v4, "passwordHistoryLength":I
    if-eqz v4, :cond_0

    .line 710
    mul-int v6, v1, v4

    add-int/2addr v6, v4

    add-int/lit8 v0, v6, -0x1

    .line 712
    .local v0, "neededPasswordHistoryLength":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v0, :cond_2

    .line 713
    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 715
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    goto :goto_0
.end method

.method public checkPasswordWithCAC(Ljava/lang/String;)I
    .locals 5
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 3428
    const-string v2, "LockPatternUtils"

    const-string v3, "checkPasswordWithCAC: "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3429
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/widget/LockPatternUtils;->mIsCallbackCalled:Z

    .line 3430
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 3433
    .local v0, "cv":Landroid/os/ConditionVariable;
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getSmartcardPinManager()Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    new-instance v4, Lcom/android/internal/widget/LockPatternUtils$2;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/widget/LockPatternUtils$2;-><init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/ConditionVariable;)V

    iget-object v4, v4, Lcom/android/internal/widget/LockPatternUtils$2;->mVerifyCallback:Lcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;

    invoke-virtual {v2, v3, v4}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->verifyCard([CLcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3456
    sget-boolean v2, Lcom/android/internal/widget/LockPatternUtils;->mIsCallbackCalled:Z

    if-nez v2, :cond_0

    .line 3457
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 3461
    :cond_0
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPasswordWithCAC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/widget/LockPatternUtils;->mScVerifyStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3462
    sget v2, Lcom/android/internal/widget/LockPatternUtils;->mScVerifyStatus:I

    :goto_0
    return v2

    .line 3448
    :catch_0
    move-exception v1

    .line 3449
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3450
    const/4 v2, 0x5

    goto :goto_0
.end method

.method public checkPattern(Ljava/util/List;I)Z
    .locals 6
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 493
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Lcom/android/internal/widget/ILockSettings;->checkPattern(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 496
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_0

    .line 510
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_0
    return v2

    .line 498
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 499
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    invoke-direct {v2, v4}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    .line 505
    .local v0, "re":Landroid/os/RemoteException;
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isKnoxUser(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 506
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v2, v3

    .line 507
    goto :goto_0

    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    move v2, v3

    .line 501
    goto :goto_0

    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local v0    # "re":Landroid/os/RemoteException;
    :cond_2
    move v2, v3

    .line 510
    goto :goto_0
.end method

.method public checkPersonalModeFingerPrintPassword(Ljava/lang/String;)Z
    .locals 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2643
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 2645
    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModeFingerprintPassword(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2647
    :goto_0
    return v2

    .line 2646
    :catch_0
    move-exception v0

    .line 2647
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public checkPersonalModeLockBackupPin(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 2614
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 2616
    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModeBackupPin(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2618
    :goto_0
    return v2

    .line 2617
    :catch_0
    move-exception v0

    .line 2618
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public checkPersonalModeLockPassword(Ljava/lang/String;)Z
    .locals 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2557
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 2559
    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePassword(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2561
    :goto_0
    return v2

    .line 2560
    :catch_0
    move-exception v0

    .line 2561
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public checkPersonalModeLockPin(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 2528
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 2530
    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePin(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2532
    :goto_0
    return v2

    .line 2531
    :catch_0
    move-exception v0

    .line 2532
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public checkPersonalModePattern(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2584
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 2586
    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePattern(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2588
    :goto_0
    return v2

    .line 2587
    :catch_0
    move-exception v0

    .line 2588
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public checkPrivateModePassword(Ljava/lang/String;Ljava/util/List;Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;I)Z
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p3, "mode"    # Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 2486
    .local p2, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :try_start_0
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p3, v1, :cond_0

    .line 2487
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p4}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePin(Ljava/lang/String;I)Z

    move-result v1

    .line 2496
    :goto_0
    return v1

    .line 2488
    :cond_0
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Password:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p3, v1, :cond_1

    .line 2489
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p4}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePassword(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    .line 2490
    :cond_1
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p3, v1, :cond_2

    .line 2491
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-static {p2}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p4}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePattern(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    .line 2492
    :cond_2
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p3, v1, :cond_3

    .line 2493
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p4}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModeBackupPin(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2494
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 2495
    :catch_0
    move-exception v0

    .line 2496
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkRemoteLockPassword(ILjava/lang/String;I)Z
    .locals 8
    .param p1, "whichlock"    # I
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2941
    if-nez p1, :cond_1

    .line 2942
    :try_start_0
    const-string v4, "SHA-1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 2943
    .local v3, "sha1":[B
    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 2945
    .local v0, "base64":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    invoke-interface {v4, v0, p3}, Lcom/android/internal/widget/ILockSettings;->checkFMMPassword(Ljava/lang/String;I)Z

    move-result v4

    .line 2954
    .end local v0    # "base64":Ljava/lang/String;
    .end local v3    # "sha1":[B
    :cond_0
    :goto_0
    return v4

    .line 2946
    :cond_1
    if-ne p1, v4, :cond_0

    .line 2947
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    invoke-interface {v4, p2, p3}, Lcom/android/internal/widget/ILockSettings;->checkCarrierPassword(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    goto :goto_0

    .line 2949
    :catch_0
    move-exception v2

    .line 2950
    .local v2, "re":Landroid/os/RemoteException;
    const-string v4, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to save lock ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") Password "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 2951
    goto :goto_0

    .line 2952
    .end local v2    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2953
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "LockPatternUtils"

    const-string v6, "Failed to encode string because of missing algorithm: SHA-1"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 2954
    goto :goto_0
.end method

.method public checkVoldPassword(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 684
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->checkVoldPassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 686
    :goto_0
    return v1

    .line 685
    :catch_0
    move-exception v0

    .line 686
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearEncryptionPassword()V
    .locals 2

    .prologue
    .line 1380
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V

    .line 1381
    return-void
.end method

.method public clearLock(I)V
    .locals 13
    .param p1, "userHandle"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v1, 0x0

    .line 791
    const-string v0, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearLock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setFingerPrintLockscreen(II)V

    .line 793
    invoke-virtual {p0, v1, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricLockscreen(III)V

    .line 794
    const-string v0, "lockscreen.password_type"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 796
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    move v9, p1

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 800
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, p1}, Lcom/android/internal/widget/ILockSettings;->setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V

    .line 801
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, p1}, Lcom/android/internal/widget/ILockSettings;->setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V

    .line 802
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/android/internal/widget/ILockSettings;->setLockFMMPassword(Ljava/lang/String;I)V

    .line 803
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, p1}, Lcom/android/internal/widget/ILockSettings;->setLockBackupPin(Ljava/lang/String;Ljava/lang/String;I)V

    .line 804
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->clearLockoutAttemptDeadline()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    :goto_0
    if-nez p1, :cond_0

    .line 811
    invoke-direct {p0, v12, v11}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V

    .line 814
    if-nez p1, :cond_0

    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    new-instance v10, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-direct {v10, v0}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 816
    .local v10, "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v10, v12}, Landroid/dirEncryption/DirEncryptionManager;->setNeedToCreateKey(Z)V

    .line 817
    invoke-virtual {v10, v11}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    .line 822
    .end local v10    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    .line 824
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->onAfterChangingPassword(I)V

    .line 825
    return-void

    .line 805
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clearLockUniversal(Z)V
    .locals 4
    .param p1, "isFallback"    # Z

    .prologue
    .line 833
    const-string v0, "lockscreen.password_type"

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 837
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings;->setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateCACAuthentication(II)V

    .line 842
    return-void

    .line 838
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clearLockoutAttemptDeadline()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1903
    sput-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    .line 1904
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen.failedUnlockAttemptNumber"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1905
    const-string v0, "lockscreen.lockoutattempttimeoutmss"

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1906
    const-string v0, "lockscreen.lockoutattemptdeadline"

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1907
    return-void
.end method

.method public decryptCarrierLockPlusMsg(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "input"    # Ljava/lang/String;

    .prologue
    .line 2856
    const/4 v3, 0x0

    .line 2859
    .local v3, "output":Ljava/lang/String;
    :try_start_0
    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 2860
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/internal/widget/LockPatternUtils;->getKey(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v6

    sget-object v7, Lcom/android/internal/widget/LockPatternUtils;->ivParamSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1, v5, v6, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 2861
    const/4 v5, 0x0

    invoke-static {p2, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2862
    .local v0, "buff":[B
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .end local v3    # "output":Ljava/lang/String;
    .local v4, "output":Ljava/lang/String;
    move-object v3, v4

    .line 2875
    .end local v0    # "buff":[B
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "output":Ljava/lang/String;
    .restart local v3    # "output":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 2863
    :catch_0
    move-exception v2

    .line 2864
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sec_encrypt.decrypt() NoSuchAlgorithmException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2865
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    .line 2866
    .local v2, "e":Ljavax/crypto/NoSuchPaddingException;
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sec_encrypt.decrypt() NoSuchPaddingException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2867
    .end local v2    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v2

    .line 2868
    .local v2, "e":Ljava/security/InvalidKeyException;
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sec_encrypt.decrypt() InvalidKeyException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2869
    .end local v2    # "e":Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v2

    .line 2870
    .local v2, "e":Ljava/security/InvalidAlgorithmParameterException;
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sec_encrypt.decrypt() InvalidAlgorithmParameterException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2871
    .end local v2    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_4
    move-exception v2

    .line 2872
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sec_encrypt.decrypt() Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public deinitializeCACAuthentication()V
    .locals 3

    .prologue
    .line 3423
    const-string v0, "LockPatternUtils"

    const-string v1, "deinitializeCACAuthentication: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3424
    invoke-static {}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->getInstance()Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->deinitializeCAC(Landroid/os/UserHandle;)V

    .line 3425
    return-void
.end method

.method public getActivePasswordQuality(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 757
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 759
    .local v0, "quality":I
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 784
    .end local v0    # "quality":I
    :cond_0
    :goto_0
    return v0

    .line 764
    .restart local v0    # "quality":I
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 769
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockUniversalEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 771
    const/16 v0, 0x1000

    goto :goto_0

    .line 774
    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 776
    const v0, 0x9100

    goto :goto_0

    .line 779
    :cond_3
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isFingerPrintLockscreen(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 781
    const v0, 0x61000

    goto :goto_0

    .line 784
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttemptTimeoutMs()J
    .locals 8

    .prologue
    const-wide/16 v0, 0x7530

    const-wide/16 v6, 0x4

    .line 1879
    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1892
    :cond_0
    :goto_0
    return-wide v0

    .line 1881
    :cond_1
    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 1882
    const-wide/32 v0, 0xea60

    goto :goto_0

    .line 1883
    :cond_2
    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 1884
    const-wide/32 v0, 0x493e0

    goto :goto_0

    .line 1885
    :cond_3
    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    const-wide/16 v4, 0x3

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 1886
    const-wide/32 v0, 0x927c0

    goto :goto_0

    .line 1887
    :cond_4
    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_5

    .line 1888
    const-wide/32 v0, 0x1b7740

    goto :goto_0

    .line 1889
    :cond_5
    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    .line 1890
    const-wide/32 v0, 0x36ee80

    goto :goto_0
.end method

.method public getBiometricLockscreen(II)I
    .locals 6
    .param p1, "biometric_type"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x1

    .line 3151
    const-string v3, "lockscreen.samsung_biometric"

    const-wide/16 v4, 0x0

    invoke-direct {p0, v3, v4, v5, p2}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    long-to-int v0, v4

    .line 3155
    .local v0, "biometric":I
    if-ne p1, v2, :cond_0

    .line 3156
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isFingerPrintLockscreen(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3172
    :goto_0
    return v2

    .line 3162
    :cond_0
    and-int v3, v0, p1

    if-ne v3, p1, :cond_1

    .line 3163
    const-string v3, "LockPatternUtils"

    const-string v4, "getBiometricLockscreen( biometric_type is main )"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3166
    :cond_1
    add-int v1, p1, p1

    .line 3167
    .local v1, "biometricOptional":I
    and-int v2, v0, v1

    if-ne v2, v1, :cond_2

    .line 3168
    const-string v2, "LockPatternUtils"

    const-string v3, "getBiometricLockscreen( biometric_type is Optional )"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3169
    const/4 v2, 0x2

    goto :goto_0

    .line 3172
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getBiometricState(I)I
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 3176
    const-string v0, "lockscreen.samsung_biometric"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getCarrierLockoutAttemptDeadline(I)J
    .locals 7
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 2886
    const-string/jumbo v6, "sktlockscreen.lockoutdeadline"

    invoke-direct {p0, v6, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    .line 2887
    .local v0, "deadline":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2888
    .local v2, "now":J
    cmp-long v6, v0, v2

    if-gtz v6, :cond_0

    move-wide v0, v4

    .line 2891
    .end local v0    # "deadline":J
    :cond_0
    return-wide v0
.end method

.method public getCurrentUser()I
    .locals 3

    .prologue
    .line 595
    sget v1, Lcom/android/internal/widget/LockPatternUtils;->sCurrentUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    .line 597
    sget v1, Lcom/android/internal/widget/LockPatternUtils;->sCurrentUserId:I

    .line 602
    :goto_0
    return v1

    .line 600
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 601
    :catch_0
    move-exception v0

    .line 602
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 4

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 344
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 345
    const-string v0, "LockPatternUtils"

    const-string v1, "Can\'t get DevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getEnabledTrustAgents(I)Ljava/util/List;
    .locals 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2081
    const-string v7, "lockscreen.enabledtrustagents"

    invoke-direct {p0, v7, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 2082
    .local v5, "serialized":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2083
    const/4 v0, 0x0

    .line 2092
    :cond_0
    return-object v0

    .line 2085
    :cond_1
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2086
    .local v6, "split":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    array-length v7, v6

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2087
    .local v0, "activeTrustAgents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    move-object v1, v6

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 2088
    .local v4, "s":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2089
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2087
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getFingerPrintLockscreenState(I)I
    .locals 4
    .param p1, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3098
    const-string v0, "lockscreen.enabled_fingerprint"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getFingerPrintMigrated(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1064
    const-string/jumbo v0, "migrated_fingerprint_fota_key"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public getKeyguardStoredPasswordQuality()I
    .locals 1

    .prologue
    .line 1390
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    return v0
.end method

.method public getKeyguardStoredPasswordQuality(I)I
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    .line 1400
    const-string v0, "lockscreen.password_type"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLockoutAttemptDeadline(I)J
    .locals 10
    .param p1, "userId"    # I

    .prologue
    .line 1833
    const-string v6, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    .line 1834
    .local v0, "deadline":J
    const-string v6, "lockscreen.lockoutattempttimeoutmss"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    .line 1835
    .local v4, "timeoutMs":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1836
    .local v2, "now":J
    cmp-long v6, v0, v2

    if-gez v6, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-eqz v6, :cond_1

    .line 1838
    const-string v6, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1839
    const-string v6, "lockscreen.lockoutattempttimeoutmss"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1840
    const-wide/16 v0, 0x0

    .line 1875
    .end local v0    # "deadline":J
    :cond_0
    :goto_0
    return-wide v0

    .line 1843
    .restart local v0    # "deadline":J
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-eqz v6, :cond_0

    .line 1845
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    add-long v6, v2, v4

    cmp-long v6, v0, v6

    if-lez v6, :cond_2

    .line 1846
    invoke-direct {p0, p1, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadlineInAbnormalCase(IJ)J

    goto :goto_0

    .line 1849
    :cond_2
    sget-wide v6, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    const-wide/16 v8, 0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    const-wide/16 v6, 0x7530

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_3

    .line 1850
    const-wide/16 v6, 0x7530

    invoke-direct {p0, p1, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadlineInAbnormalCase(IJ)J

    goto :goto_0

    .line 1851
    :cond_3
    sget-wide v6, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    const-wide/16 v8, 0x2

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    const-wide/32 v6, 0xea60

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_4

    .line 1853
    const-wide/32 v6, 0xea60

    invoke-direct {p0, p1, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadlineInAbnormalCase(IJ)J

    goto :goto_0

    .line 1854
    :cond_4
    sget-wide v6, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    const-wide/16 v8, 0x3

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    const-wide/32 v6, 0x493e0

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_5

    .line 1856
    const-wide/32 v6, 0x493e0

    invoke-direct {p0, p1, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadlineInAbnormalCase(IJ)J

    goto :goto_0

    .line 1857
    :cond_5
    sget-wide v6, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    const-wide/16 v8, 0x4

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    const-wide/32 v6, 0x927c0

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_6

    .line 1859
    const-wide/32 v6, 0x927c0

    invoke-direct {p0, p1, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadlineInAbnormalCase(IJ)J

    goto :goto_0

    .line 1860
    :cond_6
    sget-wide v6, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    const-wide/16 v8, 0x5

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    const-wide/32 v6, 0x1b7740

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_7

    .line 1862
    const-wide/32 v6, 0x1b7740

    invoke-direct {p0, p1, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadlineInAbnormalCase(IJ)J

    goto/16 :goto_0

    .line 1863
    :cond_7
    sget-wide v6, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    const-wide/16 v8, 0x5

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    const-wide/32 v6, 0x36ee80

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    .line 1865
    const-wide/32 v6, 0x36ee80

    invoke-direct {p0, p1, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadlineInAbnormalCase(IJ)J

    goto/16 :goto_0
.end method

.method public getOwnerInfo(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1056
    const-string v0, "lock_screen_owner_info"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordRecoverable(I)Z
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 3366
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordRecoverable(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getPowerButtonInstantlyLocks(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 2003
    const-string v0, "lockscreen.power_button_instantly_locks"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public getRecoveryPassword(I)Ljava/lang/String;
    .locals 13
    .param p1, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2013
    const/4 v8, 0x0

    .line 2014
    .local v8, "recoveryPassword":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v12, [Ljava/lang/String;

    const-string/jumbo v3, "password"

    aput-object v3, v2, v11

    const-string/jumbo v3, "user_id=?"

    new-array v4, v12, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2022
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2024
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v12, :cond_0

    .line 2025
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2026
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 2031
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2036
    :cond_1
    :goto_0
    if-nez v8, :cond_2

    .line 2037
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->generateRecoveryPassword()Ljava/lang/String;

    move-result-object v8

    .line 2041
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->removeRecoveryPasswords(I)V

    .line 2044
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 2045
    .local v9, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "password"

    invoke-virtual {v9, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2046
    const-string/jumbo v0, "set_date"

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2047
    const-string/jumbo v0, "user_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2048
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2051
    .end local v9    # "values":Landroid/content/ContentValues;
    :cond_2
    return-object v8

    .line 2028
    :catch_0
    move-exception v7

    .line 2029
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2031
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getRecoveryScreenLocked()Z
    .locals 2

    .prologue
    .line 2458
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    .line 2459
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getRecoveryScreenLocked(I)Z

    move-result v1

    return v1
.end method

.method public getRecoveryScreenLocked(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 2463
    const-string v0, "lockscreen.lockedoutRecovery"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public getRequestedMinimumPasswordLength(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLetters(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLowerCase(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNonLetter(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNumeric(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumSymbols(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumUpperCase(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordQuality(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public initializeCACAuthentication()V
    .locals 2

    .prologue
    .line 3401
    const-string v0, "LockPatternUtils"

    const-string v1, "initializeCACAuthentication: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3402
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartcardAuthInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3403
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getSmartcardPinManager()Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    .line 3405
    :cond_0
    return-void
.end method

.method public initializeCACAuthentication_Sync()V
    .locals 2

    .prologue
    .line 3416
    const-string v0, "LockPatternUtils"

    const-string v1, "initializeCACAuthentication: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3417
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartcardAuthInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3418
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getSmartcardPinManager_Sync()Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    .line 3420
    :cond_0
    return-void
.end method

.method public isAppLockFingerPrintLockscreen(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 2717
    const-string v0, "lockscreen.applock_fingerprint"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isBiometricWeakInstalled()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 887
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 889
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.android.facelock"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    const-string v4, "android.hardware.camera.front"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 912
    :cond_0
    :goto_0
    return v3

    .line 890
    :catch_0
    move-exception v0

    .line 891
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 898
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 903
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v2

    .line 905
    .local v2, "restrictionPolicy":Landroid/sec/enterprise/RestrictionPolicy;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Landroid/sec/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v3

    goto :goto_0
.end method

.method public isCACCardRegistered()Z
    .locals 4

    .prologue
    .line 3478
    const/4 v0, 0x0

    .line 3480
    .local v0, "ret":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->isCardRegistered(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3484
    :goto_0
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCardRegistered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3485
    return v0

    .line 3481
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isCACPasswordEnabled()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3390
    const-string v0, "LockPatternUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCACPasswordEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lockscreen.smartcard_type"

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-direct {p0, v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3391
    const-string v0, "lockscreen.smartcard_type"

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-direct {p0, v0, v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isCarrierLockEnabled()Z
    .locals 2

    .prologue
    .line 2803
    const/4 v0, 0x0

    .line 2817
    .local v0, "mCarrierlockMode":Ljava/lang/String;
    const/4 v1, 0x0

    return v1
.end method

.method public isCarrierLockPlusEnabled()Z
    .locals 1

    .prologue
    .line 2828
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isCarrierLockPlusEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 2833
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->getCarrierLockPlusMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2835
    :goto_0
    return v1

    .line 2834
    :catch_0
    move-exception v0

    .line 2835
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCarrierPasswordSaved()Z
    .locals 3

    .prologue
    .line 2966
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->haveCarrierPassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2968
    :goto_0
    return v1

    .line 2967
    :catch_0
    move-exception v0

    .line 2968
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCredentialRequiredToDecrypt(Z)Z
    .locals 4
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v3, -0x1

    .line 2129
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "require_password_to_decrypt"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2131
    .local v0, "value":I
    if-ne v0, v3, :cond_0

    .end local p1    # "defaultValue":Z
    :goto_0
    return p1

    .restart local p1    # "defaultValue":Z
    :cond_0
    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public isDeviceConnectedWithCACCard()Z
    .locals 4

    .prologue
    .line 3489
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getSmartcardPinManager()Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->isDeviceConnectedWithCard()Z

    move-result v0

    .line 3490
    .local v0, "ret":Z
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCACCardRegistred: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3491
    return v0
.end method

.method public isDevicePasswordSimple(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2008
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "is_smpw_key"

    invoke-static {v2, v3, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isEnterpriseIdentityLockSet()Z
    .locals 1

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v0

    return v0
.end method

.method public isEnterpriseIdentityLockSet(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 570
    const-string v0, "LockPatternUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsEnterpriseIdSet = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lockscreen.enterpriseidentity_type"

    invoke-direct {p0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const-string v0, "lockscreen.enterpriseidentity_type"

    invoke-direct {p0, v0, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isFMMLockEnabled()Z
    .locals 1

    .prologue
    .line 2785
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isFMMLockEnabled(I)Z
    .locals 2
    .param p1, "userid"    # I

    .prologue
    .line 2790
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->haveFMMPassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2792
    :goto_0
    return v1

    .line 2791
    :catch_0
    move-exception v0

    .line 2792
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFingerPrintLockscreen(I)Z
    .locals 6
    .param p1, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 3083
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isRemoteLockEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getRecoveryScreenLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3086
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "lockscreen.enabled_fingerprint"

    invoke-direct {p0, v1, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFingerPrintLockscreen(II)Z
    .locals 4
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3180
    const v3, 0x61000

    if-ne p1, v3, :cond_0

    move v0, v1

    .line 3181
    .local v0, "isFingerPrintEnabled":Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isFingerPrintLockscreen(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    return v1

    .end local v0    # "isFingerPrintEnabled":Z
    :cond_0
    move v0, v2

    .line 3180
    goto :goto_0

    .restart local v0    # "isFingerPrintEnabled":Z
    :cond_1
    move v1, v2

    .line 3181
    goto :goto_1
.end method

.method public isLockFingerprintEnabled(I)Z
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const-wide/32 v4, 0x61000

    const/4 v0, 0x0

    .line 3342
    const-string v1, "lockscreen.enabled_fingerprint"

    invoke-direct {p0, v1, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "lockscreen.password_type"

    invoke-direct {p0, v1, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isLockPasswordEnabled(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1583
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(II)Z

    move-result v0

    return v0
.end method

.method public isLockPasswordEnabledNoCache(I)Z
    .locals 10
    .param p1, "userId"    # I

    .prologue
    .line 1606
    const-string v6, "lockscreen.password_type"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v6

    long-to-int v6, v6

    int-to-long v4, v6

    .line 1607
    .local v4, "mode":J
    const-string v6, "lockscreen.password_type_alternate"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v6

    long-to-int v6, v6

    int-to-long v2, v6

    .line 1608
    .local v2, "backupMode":J
    const-wide/32 v6, 0x40000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x20000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x30000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x50000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x60000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x70000

    cmp-long v6, v4, v6

    if-nez v6, :cond_3

    :cond_0
    const/4 v1, 0x1

    .line 1614
    .local v1, "passwordEnabled":Z
    :goto_0
    const-wide/32 v6, 0x40000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    const-wide/32 v6, 0x20000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    const-wide/32 v6, 0x30000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    const-wide/32 v6, 0x50000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    const-wide/32 v6, 0x60000

    cmp-long v6, v2, v6

    if-nez v6, :cond_4

    :cond_1
    const/4 v0, 0x1

    .line 1620
    .local v0, "backupEnabled":Z
    :goto_1
    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak(I)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v0, :cond_5

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExistsNoCache()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    :goto_2
    return v6

    .line 1608
    .end local v0    # "backupEnabled":Z
    .end local v1    # "passwordEnabled":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 1614
    .restart local v1    # "passwordEnabled":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1620
    .restart local v0    # "backupEnabled":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public isLockPatternEnabled(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1641
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(II)Z

    move-result v0

    return v0
.end method

.method public isLockScreenDisabled(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 864
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 865
    .local v0, "pm":Landroid/os/PersonaManager;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "lockscreen.disabled"

    invoke-direct {p0, v2, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isLockUniversalEnabled(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1105
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockUniversalEnabled(II)Z

    move-result v0

    return v0
.end method

.method public isOwnerInfoEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1060
    const-string v0, "lock_screen_owner_info_enabled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isParentControlLockEnabled()Z
    .locals 1

    .prologue
    .line 2780
    const/4 v0, 0x0

    return v0
.end method

.method public isPatternEverChosen(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 749
    const-string v0, "lockscreen.patterneverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isPermanentlyLocked(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1915
    const-string v0, "lockscreen.lockedoutpermanently"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isPrevLockFingerprintEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 3352
    const-string/jumbo v0, "prev_lock_type"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isPrivateModeFingerPrintLockscreen(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 3361
    const-string v0, "lockscreen.privatemode_fingerprint"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isRejectModeLocked()Z
    .locals 1

    .prologue
    .line 3660
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isRejectModeLocked(I)Z

    move-result v0

    return v0
.end method

.method public isRejectModeLocked(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 3664
    const-string v0, "lockscreen.lgt_reject_cause"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isRemoteLockEnabled(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 3676
    const/4 v1, 0x0

    .line 3677
    .local v1, "lockState":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    .line 3678
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "locked"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3679
    const/4 v1, 0x1

    .line 3683
    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2

    .line 3677
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isSecure(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1574
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 1575
    .local v0, "mode":I
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockUniversalEnabled(II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isFingerPrintLockscreen(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isRemoteLockEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSmartCardPasswordEnabled()Z
    .locals 7

    .prologue
    .line 3513
    const/4 v2, 0x0

    .line 3514
    .local v2, "ret":Z
    const-string v3, "lockscreen.password_type"

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v6

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    .line 3516
    .local v0, "mode":J
    const-wide/32 v4, 0x70000

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    .line 3517
    const/4 v2, 0x1

    .line 3519
    :cond_0
    return v2
.end method

.method public isSmartUnlockEnabled()Z
    .locals 1

    .prologue
    .line 1739
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isSmartUnlockEnabled(I)Z
    .locals 2
    .param p1, "userid"    # I

    .prologue
    const/4 v0, 0x0

    .line 1743
    const-string v1, "lock_smart_unlock_enabled"

    invoke-direct {p0, v1, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->usingSmartUnlock(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSmartUnlockEnabled(II)Z
    .locals 2
    .param p1, "quality"    # I
    .param p2, "userid"    # I

    .prologue
    const/4 v0, 0x0

    .line 1747
    const v1, 0x9100

    if-eq p1, v1, :cond_0

    const/high16 v1, 0x90000

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "lock_smart_unlock_enabled"

    invoke-direct {p0, v1, v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isSmartcardAuthInstalled()Z
    .locals 5

    .prologue
    .line 3499
    const/4 v1, 0x0

    .line 3501
    .local v1, "ret":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->isSmartCardAuthenticationInstalled(Landroid/content/Context;)Z

    move-result v1

    .line 3502
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSmartCardAuthenticationAvailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3506
    :goto_0
    return v1

    .line 3503
    :catch_0
    move-exception v0

    .line 3504
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "LockPatternUtils"

    const-string v3, "RuntimeException : isSmartCardAuthenticationAvailable"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSwipeSmartLock()Z
    .locals 1

    .prologue
    .line 2978
    sget-boolean v0, Lcom/android/internal/widget/LockPatternUtils;->mSwipeSmartLock:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1783
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisiblePatternDisabledByMDM()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1673
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/sec/enterprise/PasswordPolicy;

    move-result-object v0

    .line 1674
    .local v0, "passPolicy":Landroid/sec/enterprise/PasswordPolicy;
    if-eqz v0, :cond_0

    .line 1675
    invoke-virtual {v0}, Landroid/sec/enterprise/PasswordPolicy;->isScreenLockPatternVisibilityEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 1677
    :cond_0
    return v1
.end method

.method public isVisiblePatternEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1668
    const-string v0, "lock_pattern_visible_pattern"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public passwordToHash(Ljava/lang/String;I)[B
    .locals 12
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1531
    if-nez p1, :cond_0

    .line 1532
    const/4 v8, 0x0

    .line 1553
    :goto_0
    return-object v8

    .line 1541
    :cond_0
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getSalt(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 1542
    .local v6, "saltedPassword":[B
    const/4 v7, 0x0

    .line 1543
    .local v7, "sha":[B
    const-string v8, "SHA-1"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 1544
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1545
    .local v4, "s":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v8, 0x400

    if-ge v2, v8, :cond_2

    .line 1546
    if-eqz v7, :cond_1

    invoke-virtual {v3, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 1547
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 1548
    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 1549
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    .line 1545
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1551
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1552
    .local v0, "e":J
    const-string v8, "LockPatternUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "passwordToHash time = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v0, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    invoke-static {v7}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto/16 :goto_0

    .line 1554
    .end local v0    # "e":J
    .end local v2    # "i":I
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v4    # "s":J
    .end local v6    # "saltedPassword":[B
    .end local v7    # "sha":[B
    :catch_0
    move-exception v0

    .line 1555
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v8, Ljava/lang/AssertionError;

    const-string v9, "Missing digest algorithm: "

    invoke-direct {v8, v9, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method public passwordToHashOriginal(Ljava/lang/String;I)[B
    .locals 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1509
    if-nez p1, :cond_0

    .line 1510
    const/4 v6, 0x0

    .line 1523
    :goto_0
    return-object v6

    .line 1514
    :cond_0
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getSalt(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 1515
    .local v4, "saltedPassword":[B
    const-string v6, "SHA-1"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 1516
    .local v5, "sha1":[B
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 1518
    .local v3, "md5":[B
    array-length v6, v5

    array-length v7, v3

    add-int/2addr v6, v7

    new-array v0, v6, [B

    .line 1519
    .local v0, "combined":[B
    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, v5

    invoke-static {v5, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1520
    const/4 v6, 0x0

    array-length v7, v5

    array-length v8, v3

    invoke-static {v3, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1522
    invoke-static {v0}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v2

    .line 1523
    .local v2, "hexEncoded":[C
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([C)V

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 1524
    .end local v0    # "combined":[B
    .end local v2    # "hexEncoded":[C
    .end local v3    # "md5":[B
    .end local v4    # "saltedPassword":[B
    .end local v5    # "sha1":[B
    :catch_0
    move-exception v1

    .line 1525
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "Missing digest algorithm: "

    invoke-direct {v6, v7, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public recoverPassword(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 3371
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->recoverPassword(I)V

    .line 3372
    return-void
.end method

.method public registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V
    .locals 3
    .param p1, "strongAuthTracker"    # Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    .prologue
    .line 2156
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStub:Landroid/app/trust/IStrongAuthTracker$Stub;

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2160
    return-void

    .line 2157
    :catch_0
    move-exception v0

    .line 2158
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not register StrongAuthTracker"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeBiometricLockscreen(II)V
    .locals 6
    .param p1, "biometric_type"    # I
    .param p2, "userId"    # I

    .prologue
    .line 3142
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(I)I

    move-result v2

    .line 3143
    .local v2, "oldValue":I
    add-int v3, p1, p1

    or-int v0, p1, v3

    .line 3144
    .local v0, "biometric_value":I
    xor-int/lit8 v3, v0, -0x1

    and-int v1, v2, v3

    .line 3145
    .local v1, "newValue":I
    const-string v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeBiometricLockscreen ( oldValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , biometric_value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , newValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3147
    const-string v3, "lockscreen.samsung_biometric"

    int-to-long v4, v1

    invoke-direct {p0, v3, v4, v5, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 3148
    return-void
.end method

.method public removeRecoveryPasswords(I)V
    .locals 6
    .param p1, "userHandle"    # I

    .prologue
    .line 2056
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "user_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2061
    return-void
.end method

.method public reportFailedPasswordAttempt(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt(I)V

    .line 425
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/trust/TrustManager;->reportUnlockAttempt(ZI)V

    .line 426
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 427
    return-void
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 430
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt(I)V

    .line 431
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/trust/TrustManager;->reportUnlockAttempt(ZI)V

    .line 432
    sput-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    .line 433
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen.failedUnlockAttemptNumber"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 434
    const-string v0, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 435
    const-string v0, "lockscreen.lockoutattempttimeoutmss"

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 436
    return-void
.end method

.method public requireCredentialEntry(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 2103
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 2104
    return-void
.end method

.method public requireStrongAuth(II)V
    .locals 4
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .prologue
    .line 2118
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/widget/ILockSettings;->requireStrongAuth(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2122
    :goto_0
    return-void

    .line 2119
    :catch_0
    move-exception v0

    .line 2120
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while requesting strong auth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sanitizePassword()V
    .locals 4

    .prologue
    .line 1017
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/widget/ILockSettings;->sanitizePassword()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1021
    :goto_0
    return-void

    .line 1018
    :catch_0
    move-exception v0

    .line 1019
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t sanitize password"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveAppLockPassword(Ljava/lang/String;Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;I)V
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "lockType"    # Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;
    .param p3, "userId"    # I

    .prologue
    .line 2664
    :try_start_0
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v1, :cond_1

    .line 2665
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/android/internal/widget/ILockSettings;->setAppLockPin(Ljava/lang/String;I)V

    .line 2676
    :cond_0
    :goto_0
    return-void

    .line 2666
    :cond_1
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Password:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v1, :cond_2

    .line 2667
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/android/internal/widget/ILockSettings;->setAppLockPassword(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2673
    :catch_0
    move-exception v0

    .line 2674
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2668
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v1, :cond_3

    .line 2669
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/android/internal/widget/ILockSettings;->setAppLockPattern(Ljava/lang/String;I)V

    goto :goto_0

    .line 2670
    :cond_3
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v1, :cond_0

    .line 2671
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/android/internal/widget/ILockSettings;->setAppLockBackupPin(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public saveLockBackupPassword(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedPassword"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 3596
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ILockSettings;->setLockBackupPassword(Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3601
    :goto_0
    return-void

    .line 3597
    :catch_0
    move-exception v0

    .line 3599
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock Backup PIN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveLockBackupPin(Ljava/lang/String;I)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I

    .prologue
    .line 2431
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockBackupPin(Ljava/lang/String;II)V

    .line 2432
    return-void
.end method

.method public saveLockBackupPin(Ljava/lang/String;II)V
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2438
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, p3}, Lcom/android/internal/widget/ILockSettings;->setLockBackupPin(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2443
    :goto_0
    return-void

    .line 2439
    :catch_0
    move-exception v0

    .line 2441
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock Backup PIN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveLockBackupPin(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedPassword"    # Ljava/lang/String;
    .param p3, "quality"    # I
    .param p4, "userHandle"    # I

    .prologue
    .line 2448
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p4}, Lcom/android/internal/widget/ILockSettings;->setLockBackupPin(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2453
    :goto_0
    return-void

    .line 2449
    :catch_0
    move-exception v0

    .line 2451
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock Backup PIN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveLockFingerprint(I)V
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    const/4 v1, 0x1

    .line 3185
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLockFingerprintEnabled(ZI)V

    .line 3186
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setPrevLockFingerprintEnabled(ZI)V

    .line 3187
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x61000

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 3189
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 3190
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->copyAlternativeToActivePasswordState(I)V

    .line 3191
    return-void
.end method

.method public saveLockFingerprintPassword(Ljava/lang/String;I)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 3200
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockFingerprintPasswordwithoutQuality(Ljava/lang/String;I)V

    .line 3201
    return-void
.end method

.method public saveLockFingerprintPassword(Ljava/lang/String;IIZ)V
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "quality"    # I
    .param p4, "skipUpdateEncryptionPassword"    # Z

    .prologue
    .line 3204
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockFingerprintPassword(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 3205
    return-void
.end method

.method public saveLockFingerprintPassword(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 21
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedpassword"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "quality"    # I
    .param p5, "skipUpdateEncryptionPassword"    # Z

    .prologue
    .line 3209
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    .line 3210
    .local v4, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_6

    .line 3211
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v5, v0, v1, v2, v6}, Lcom/android/internal/widget/ILockSettings;->setLockBackupPassword(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 3212
    if-nez p3, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    move/from16 v0, p3

    if-ne v0, v5, :cond_0

    const/4 v5, 0x1

    move/from16 v0, p5

    if-eq v0, v5, :cond_0

    .line 3215
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v5, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V

    .line 3217
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3218
    new-instance v15, Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-direct {v15, v5}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 3219
    .local v15, "dem":Landroid/dirEncryption/DirEncryptionManager;
    const/4 v5, 0x1

    invoke-virtual {v15, v5}, Landroid/dirEncryption/DirEncryptionManager;->setNeedToCreateKey(Z)V

    .line 3220
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    .line 3221
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/admin/DevicePolicyManager;->setNeedToGetAlternativePasswdForODE(Landroid/content/ComponentName;Z)V

    .line 3225
    .end local v15    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v14

    .line 3226
    .local v14, "computedQuality":I
    const-string v5, "lockscreen.password_type_alternate"

    move/from16 v0, p4

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-long v6, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 3227
    if-eqz v14, :cond_3

    .line 3228
    invoke-virtual/range {p0 .. p3}, Lcom/android/internal/widget/LockPatternUtils;->setContainerPasswordState(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3239
    :goto_0
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v5

    if-nez v5, :cond_2

    .line 3244
    const-string v5, "lockscreen.passwordhistory"

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 3246
    .local v18, "passwordHistory":Ljava/lang/String;
    if-nez v18, :cond_1

    .line 3247
    new-instance v18, Ljava/lang/String;

    .end local v18    # "passwordHistory":Ljava/lang/String;
    invoke-direct/range {v18 .. v18}, Ljava/lang/String;-><init>()V

    .line 3249
    .restart local v18    # "passwordHistory":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength(I)I

    move-result v19

    .line 3250
    .local v19, "passwordHistoryLength":I
    if-nez v19, :cond_4

    .line 3251
    const-string v18, ""

    .line 3265
    :goto_1
    const-string v5, "lockscreen.passwordhistory"

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1, v6}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3274
    .end local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v14    # "computedQuality":I
    .end local v18    # "passwordHistory":Ljava/lang/String;
    .end local v19    # "passwordHistoryLength":I
    :cond_2
    :goto_2
    return-void

    .line 3231
    .restart local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v14    # "computedQuality":I
    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v13

    invoke-virtual/range {v4 .. v13}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3271
    .end local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v14    # "computedQuality":I
    :catch_0
    move-exception v20

    .line 3272
    .local v20, "re":Ljava/lang/Exception;
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to save Fingerprint lock password "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3253
    .end local v20    # "re":Ljava/lang/Exception;
    .restart local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v14    # "computedQuality":I
    .restart local v18    # "passwordHistory":Ljava/lang/String;
    .restart local v19    # "passwordHistoryLength":I
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v16

    .line 3254
    .local v16, "hash":[B
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 3255
    .local v17, "hashString":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 3256
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 3260
    :cond_5
    const/4 v5, 0x0

    move-object/from16 v0, v16

    array-length v6, v0

    mul-int v6, v6, v19

    add-int v6, v6, v19

    add-int/lit8 v6, v6, -0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_1

    .line 3268
    .end local v14    # "computedQuality":I
    .end local v16    # "hash":[B
    .end local v17    # "hashString":Ljava/lang/String;
    .end local v18    # "passwordHistory":Ljava/lang/String;
    .end local v19    # "passwordHistoryLength":I
    :cond_6
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v13

    invoke-virtual/range {v4 .. v13}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public saveLockParentControlPassword(Ljava/lang/String;I)V
    .locals 6
    .param p1, "spare"    # Ljava/lang/String;
    .param p2, "quality"    # I

    .prologue
    .line 2764
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    .line 2765
    .local v2, "userId":I
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2768
    .local v0, "hash":[B
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v4

    invoke-interface {v3, v0, v4}, Lcom/android/internal/widget/ILockSettings;->setLockParentControlPassword([BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2774
    :goto_0
    return-void

    .line 2770
    :catch_0
    move-exception v1

    .line 2772
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to save lock parent control password "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 41
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedPassword"    # Ljava/lang/String;
    .param p3, "quality"    # I
    .param p4, "userHandle"    # I

    .prologue
    .line 1213
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    .line 1214
    .local v4, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ge v5, v6, :cond_2

    .line 1215
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "password must not be null and at least of length 4"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1342
    .end local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :catch_0
    move-exception v37

    .line 1344
    .local v37, "re":Landroid/os/RemoteException;
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to save lock password "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    .end local v37    # "re":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void

    .line 1219
    .restart local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_2
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-interface {v5, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings;->setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1220
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v24

    .line 1223
    .local v24, "computedQuality":I
    if-nez p4, :cond_3

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1225
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->shouldEncryptWithCredentials(Z)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1226
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->clearEncryptionPassword()V

    .line 1237
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->updateCACAuthentication(II)V

    .line 1238
    const-string v5, "lockscreen.password_type"

    move/from16 v0, p3

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-long v14, v6

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v5, v14, v15, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1239
    if-eqz v24, :cond_13

    .line 1240
    const/4 v7, 0x0

    .line 1241
    .local v7, "letters":I
    const/4 v8, 0x0

    .line 1242
    .local v8, "uppercase":I
    const/4 v9, 0x0

    .line 1243
    .local v9, "lowercase":I
    const/4 v10, 0x0

    .line 1244
    .local v10, "numbers":I
    const/4 v11, 0x0

    .line 1245
    .local v11, "symbols":I
    const/4 v12, 0x0

    .line 1246
    .local v12, "nonletter":I
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v28

    if-ge v0, v5, :cond_c

    .line 1247
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    .line 1248
    .local v23, "c":C
    const/16 v5, 0x41

    move/from16 v0, v23

    if-lt v0, v5, :cond_9

    const/16 v5, 0x5a

    move/from16 v0, v23

    if-gt v0, v5, :cond_9

    .line 1249
    add-int/lit8 v7, v7, 0x1

    .line 1250
    add-int/lit8 v8, v8, 0x1

    .line 1246
    :goto_3
    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    .line 1228
    .end local v7    # "letters":I
    .end local v8    # "uppercase":I
    .end local v9    # "lowercase":I
    .end local v10    # "numbers":I
    .end local v11    # "symbols":I
    .end local v12    # "nonletter":I
    .end local v23    # "c":C
    .end local v28    # "i":I
    :cond_4
    const/high16 v5, 0x20000

    move/from16 v0, v24

    if-ne v0, v5, :cond_6

    const/16 v33, 0x1

    .line 1230
    .local v33, "numeric":Z
    :goto_4
    const/high16 v5, 0x30000

    move/from16 v0, v24

    if-ne v0, v5, :cond_7

    const/16 v34, 0x1

    .line 1232
    .local v34, "numericComplex":Z
    :goto_5
    if-nez v33, :cond_5

    if-eqz v34, :cond_8

    :cond_5
    const/16 v39, 0x3

    .line 1234
    .local v39, "type":I
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v39

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V

    goto :goto_1

    .line 1228
    .end local v33    # "numeric":Z
    .end local v34    # "numericComplex":Z
    .end local v39    # "type":I
    :cond_6
    const/16 v33, 0x0

    goto :goto_4

    .line 1230
    .restart local v33    # "numeric":Z
    :cond_7
    const/16 v34, 0x0

    goto :goto_5

    .line 1232
    .restart local v34    # "numericComplex":Z
    :cond_8
    const/16 v39, 0x0

    goto :goto_6

    .line 1251
    .end local v33    # "numeric":Z
    .end local v34    # "numericComplex":Z
    .restart local v7    # "letters":I
    .restart local v8    # "uppercase":I
    .restart local v9    # "lowercase":I
    .restart local v10    # "numbers":I
    .restart local v11    # "symbols":I
    .restart local v12    # "nonletter":I
    .restart local v23    # "c":C
    .restart local v28    # "i":I
    :cond_9
    const/16 v5, 0x61

    move/from16 v0, v23

    if-lt v0, v5, :cond_a

    const/16 v5, 0x7a

    move/from16 v0, v23

    if-gt v0, v5, :cond_a

    .line 1252
    add-int/lit8 v7, v7, 0x1

    .line 1253
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1254
    :cond_a
    const/16 v5, 0x30

    move/from16 v0, v23

    if-lt v0, v5, :cond_b

    const/16 v5, 0x39

    move/from16 v0, v23

    if-gt v0, v5, :cond_b

    .line 1255
    add-int/lit8 v10, v10, 0x1

    .line 1256
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1258
    :cond_b
    add-int/lit8 v11, v11, 0x1

    .line 1259
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1262
    .end local v23    # "c":C
    :cond_c
    move/from16 v0, p3

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v13, p4

    invoke-virtual/range {v4 .. v13}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 1267
    if-eqz p2, :cond_11

    .line 1268
    invoke-static/range {p2 .. p2}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v25

    .line 1269
    .local v25, "computedQuality_old":I
    const/16 v29, 0x0

    .line 1270
    .local v29, "letters_old":I
    const/16 v40, 0x0

    .line 1271
    .local v40, "uppercase_old":I
    const/16 v30, 0x0

    .line 1272
    .local v30, "lowercase_old":I
    const/16 v32, 0x0

    .line 1273
    .local v32, "numbers_old":I
    const/16 v38, 0x0

    .line 1274
    .local v38, "symbols_old":I
    const/16 v31, 0x0

    .line 1275
    .local v31, "nonletter_old":I
    const/16 v28, 0x0

    :goto_7
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v28

    if-ge v0, v5, :cond_10

    .line 1276
    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    .line 1277
    .restart local v23    # "c":C
    const/16 v5, 0x41

    move/from16 v0, v23

    if-lt v0, v5, :cond_d

    const/16 v5, 0x5a

    move/from16 v0, v23

    if-gt v0, v5, :cond_d

    .line 1278
    add-int/lit8 v29, v29, 0x1

    .line 1279
    add-int/lit8 v40, v40, 0x1

    .line 1275
    :goto_8
    add-int/lit8 v28, v28, 0x1

    goto :goto_7

    .line 1280
    :cond_d
    const/16 v5, 0x61

    move/from16 v0, v23

    if-lt v0, v5, :cond_e

    const/16 v5, 0x7a

    move/from16 v0, v23

    if-gt v0, v5, :cond_e

    .line 1281
    add-int/lit8 v29, v29, 0x1

    .line 1282
    add-int/lit8 v30, v30, 0x1

    goto :goto_8

    .line 1283
    :cond_e
    const/16 v5, 0x30

    move/from16 v0, v23

    if-lt v0, v5, :cond_f

    const/16 v5, 0x39

    move/from16 v0, v23

    if-gt v0, v5, :cond_f

    .line 1284
    add-int/lit8 v32, v32, 0x1

    .line 1285
    add-int/lit8 v31, v31, 0x1

    goto :goto_8

    .line 1287
    :cond_f
    add-int/lit8 v38, v38, 0x1

    .line 1288
    add-int/lit8 v31, v31, 0x1

    goto :goto_8

    .line 1292
    .end local v23    # "c":C
    :cond_10
    move/from16 v0, v25

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_11

    move/from16 v0, v29

    if-ne v0, v7, :cond_11

    move/from16 v0, v40

    if-ne v0, v8, :cond_11

    move/from16 v0, v30

    if-ne v0, v9, :cond_11

    move/from16 v0, v32

    if-ne v0, v10, :cond_11

    move/from16 v0, v38

    if-ne v0, v11, :cond_11

    move/from16 v0, v31

    if-ne v0, v12, :cond_11

    .line 1297
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_11

    .line 1298
    move/from16 v0, p3

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v13, p4

    invoke-virtual/range {v4 .. v13}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordStateForEAS(IIIIIIIII)V

    .line 1314
    .end local v7    # "letters":I
    .end local v8    # "uppercase":I
    .end local v9    # "lowercase":I
    .end local v10    # "numbers":I
    .end local v11    # "symbols":I
    .end local v12    # "nonletter":I
    .end local v25    # "computedQuality_old":I
    .end local v28    # "i":I
    .end local v29    # "letters_old":I
    .end local v30    # "lowercase_old":I
    .end local v31    # "nonletter_old":I
    .end local v32    # "numbers_old":I
    .end local v38    # "symbols_old":I
    .end local v40    # "uppercase_old":I
    :cond_11
    :goto_9
    const-string v5, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v5, v1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    .line 1315
    .local v35, "passwordHistory":Ljava/lang/String;
    if-nez v35, :cond_12

    .line 1316
    const-string v35, ""

    .line 1318
    :cond_12
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength(I)I

    move-result v36

    .line 1319
    .local v36, "passwordHistoryLength":I
    if-nez v36, :cond_14

    .line 1320
    const-string v35, ""

    .line 1330
    :goto_a
    const-string v5, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, p4

    invoke-direct {v0, v5, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1331
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEnterpriseIdentityLock(I)V

    .line 1332
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->onAfterChangingPassword(I)V

    .line 1335
    if-nez p4, :cond_1

    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1336
    new-instance v26, Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 1337
    .local v26, "dem":Landroid/dirEncryption/DirEncryptionManager;
    const/4 v5, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/dirEncryption/DirEncryptionManager;->setNeedToCreateKey(Z)V

    .line 1338
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1307
    .end local v26    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    .end local v35    # "passwordHistory":Ljava/lang/String;
    .end local v36    # "passwordHistoryLength":I
    :cond_13
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v13, v4

    move/from16 v22, p4

    invoke-virtual/range {v13 .. v22}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    goto :goto_9

    .line 1322
    .restart local v35    # "passwordHistory":Ljava/lang/String;
    .restart local v36    # "passwordHistoryLength":I
    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v27

    .line 1323
    .local v27, "hash":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/String;

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v27

    invoke-direct {v6, v0, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 1326
    const/4 v5, 0x0

    move-object/from16 v0, v27

    array-length v6, v0

    mul-int v6, v6, v36

    add-int v6, v6, v36

    add-int/lit8 v6, v6, -0x1

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {v6, v13}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v35

    goto/16 :goto_a
.end method

.method public saveLockPattern(Ljava/util/List;I)V
    .locals 1
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 934
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V

    .line 935
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V
    .locals 1
    .param p2, "savedPattern"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 943
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;IZ)V

    .line 944
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;Ljava/lang/String;IZ)V
    .locals 6
    .param p2, "savedPattern"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "isDirectionLock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 954
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;IZZ)V

    .line 955
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;Ljava/lang/String;IZZ)V
    .locals 15
    .param p2, "savedPattern"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "isDirectionLock"    # Z
    .param p5, "isSmartUnlock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    .prologue
    .line 958
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const-string v4, "LockPatternUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LockPatternUtils.saveLockPattern() userId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isSmartUnlock: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isDirectionLock "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_2

    .line 961
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "pattern must not be null and at least 4 dots long."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    :catch_0
    move-exception v13

    .line 1008
    .local v13, "re":Landroid/os/RemoteException;
    const-string v4, "LockPatternUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t save lock pattern "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    .end local v13    # "re":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void

    .line 965
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v4, v5, v0, v1}, Lcom/android/internal/widget/ILockSettings;->setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V

    .line 966
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 969
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez p3, :cond_3

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 971
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/internal/widget/LockPatternUtils;->shouldEncryptWithCredentials(Z)Z

    move-result v4

    if-nez v4, :cond_5

    .line 972
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->clearEncryptionPassword()V

    .line 985
    :cond_3
    :goto_1
    const-string v4, "lockscreen.patterneverchosen"

    const/4 v5, 0x1

    move/from16 v0, p3

    invoke-direct {p0, v4, v5, v0}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 986
    const/high16 v4, 0x10000

    move/from16 v0, p3

    invoke-direct {p0, v4, v0}, Lcom/android/internal/widget/LockPatternUtils;->updateCACAuthentication(II)V

    .line 987
    const/high16 v3, 0x10000

    .line 988
    .local v3, "passwordQuality":I
    if-eqz p4, :cond_7

    .line 989
    const/16 v3, 0x1000

    .line 994
    :cond_4
    :goto_2
    const-string v4, "lockscreen.password_type"

    int-to-long v6, v3

    move/from16 v0, p3

    invoke-direct {p0, v4, v6, v7, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 995
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v11, p3

    invoke-virtual/range {v2 .. v11}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 997
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->onAfterChangingPassword(I)V

    .line 998
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->updateEnterpriseIdentityLock(I)V

    .line 1000
    if-nez p3, :cond_1

    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1001
    new-instance v12, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-direct {v12, v4}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 1002
    .local v12, "dem":Landroid/dirEncryption/DirEncryptionManager;
    const/4 v4, 0x1

    invoke-virtual {v12, v4}, Landroid/dirEncryption/DirEncryptionManager;->setNeedToCreateKey(Z)V

    .line 1003
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v14

    .line 1004
    .local v14, "stringPattern":Ljava/lang/String;
    invoke-virtual {v12, v14}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    goto :goto_0

    .line 974
    .end local v3    # "passwordQuality":I
    .end local v12    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    .end local v14    # "stringPattern":Ljava/lang/String;
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v14

    .line 975
    .restart local v14    # "stringPattern":Ljava/lang/String;
    if-eqz p4, :cond_6

    .line 977
    const/4 v4, 0x4

    invoke-direct {p0, v4, v14}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V

    goto :goto_1

    .line 980
    :cond_6
    const/4 v4, 0x2

    invoke-direct {p0, v4, v14}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 990
    .end local v14    # "stringPattern":Ljava/lang/String;
    .restart local v3    # "passwordQuality":I
    :cond_7
    if-eqz p5, :cond_4

    .line 991
    const v3, 0x9100

    goto :goto_2
.end method

.method public saveLockUniversal(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p2, "savedPattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 924
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;IZ)V

    .line 925
    return-void
.end method

.method public savePersonalModeFingerPrintPassword(Ljava/lang/String;)V
    .locals 5
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2633
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 2635
    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeFingerprintPassword(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2640
    :goto_0
    return-void

    .line 2636
    :catch_0
    move-exception v0

    .line 2638
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save lock password "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public savePersonalModeLockBackupPin(Ljava/lang/String;)V
    .locals 5
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 2603
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 2605
    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockBackupPin(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2610
    :goto_0
    return-void

    .line 2606
    :catch_0
    move-exception v0

    .line 2608
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save lock pin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public savePersonalModeLockPassword(Ljava/lang/String;)V
    .locals 5
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2547
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 2549
    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPassword(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2554
    :goto_0
    return-void

    .line 2550
    :catch_0
    move-exception v0

    .line 2552
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save lock password "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public savePersonalModeLockPattern(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2575
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 2577
    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPattern(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2581
    :goto_0
    return-void

    .line 2578
    :catch_0
    move-exception v0

    .line 2579
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save lock pattern "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public savePersonalModeLockPin(Ljava/lang/String;)V
    .locals 5
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 2518
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 2520
    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPin(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2525
    :goto_0
    return-void

    .line 2521
    :catch_0
    move-exception v0

    .line 2523
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save lock pin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public savePrivateModePassword(Ljava/lang/String;Ljava/util/List;Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;I)V
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p3, "mode"    # Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 2470
    .local p2, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :try_start_0
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p3, v1, :cond_1

    .line 2471
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p4}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPin(Ljava/lang/String;I)V

    .line 2482
    :cond_0
    :goto_0
    return-void

    .line 2472
    :cond_1
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Password:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p3, v1, :cond_2

    .line 2473
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p4}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPassword(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2479
    :catch_0
    move-exception v0

    .line 2480
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2474
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p3, v1, :cond_3

    .line 2475
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-static {p2}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p4}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPattern(Ljava/lang/String;I)V

    goto :goto_0

    .line 2476
    :cond_3
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p3, v1, :cond_0

    .line 2477
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p4}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockBackupPin(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public saveRemoteLockPassword(ILjava/lang/String;)V
    .locals 1
    .param p1, "whichlock"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 2894
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(ILjava/lang/String;I)V

    .line 2895
    return-void
.end method

.method public saveRemoteLockPassword(ILjava/lang/String;I)V
    .locals 4
    .param p1, "whichlock"    # I
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 2906
    packed-switch p1, :pswitch_data_0

    .line 2929
    :goto_0
    return-void

    .line 2910
    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Lcom/android/internal/widget/ILockSettings;->setLockFMMPassword(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2911
    :catch_0
    move-exception v0

    .line 2913
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock FMM Password "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2919
    .end local v0    # "re":Landroid/os/RemoteException;
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setLockCarrierPassword(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2920
    :catch_1
    move-exception v0

    .line 2922
    .restart local v0    # "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock Carrier Password "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2906
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public saveUCMLockPassword(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedPassword"    # Ljava/lang/String;
    .param p3, "quality"    # I
    .param p4, "userHandle"    # I

    .prologue
    .line 3687
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/widget/LockPatternUtils;->mIsCallerUCM:Z

    .line 3688
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    .line 3689
    return-void
.end method

.method public savedAppLockPasswordExists(Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;I)Z
    .locals 3
    .param p1, "lockType"    # Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 2697
    :try_start_0
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p1, v2, :cond_1

    .line 2698
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/internal/widget/ILockSettings;->haveAppLockPin(I)Z

    move-result v1

    .line 2708
    :cond_0
    :goto_0
    return v1

    .line 2699
    :cond_1
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Password:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p1, v2, :cond_2

    .line 2700
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/internal/widget/ILockSettings;->haveAppLockPassword(I)Z

    move-result v1

    goto :goto_0

    .line 2701
    :cond_2
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p1, v2, :cond_3

    .line 2702
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/internal/widget/ILockSettings;->haveAppLockPattern(I)Z

    move-result v1

    goto :goto_0

    .line 2703
    :cond_3
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p1, v2, :cond_0

    .line 2704
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/internal/widget/ILockSettings;->haveAppLockBackupPin(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2707
    :catch_0
    move-exception v0

    .line 2708
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public savedBackupPasswordExists(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 3605
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->haveBackupPassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3607
    :goto_0
    return v1

    .line 3606
    :catch_0
    move-exception v0

    .line 3607
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public savedBackupPinExists()Z
    .locals 3

    .prologue
    .line 2380
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->haveBackupPin(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2382
    :goto_0
    return v1

    .line 2381
    :catch_0
    move-exception v0

    .line 2382
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public savedFingerprintPasswordExists(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 3335
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->haveBackupPassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3337
    :goto_0
    return v1

    .line 3336
    :catch_0
    move-exception v0

    .line 3337
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public savedParentControlPasswordExists()Z
    .locals 3

    .prologue
    .line 2730
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->haveParentControlPassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2732
    :goto_0
    return v1

    .line 2731
    :catch_0
    move-exception v0

    .line 2732
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public savedPatternExists(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 724
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->havePattern(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 726
    :goto_0
    return v1

    .line 725
    :catch_0
    move-exception v0

    .line 726
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public savedPersonalModeBackupPinExists()Z
    .locals 3

    .prologue
    .line 2623
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 2625
    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModeBackupPin(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2627
    :goto_0
    return v2

    .line 2626
    :catch_0
    move-exception v0

    .line 2627
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public savedPersonalModeFingerPrintPasswordExists()Z
    .locals 3

    .prologue
    .line 2652
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 2654
    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModeFingerprintPassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2656
    :goto_0
    return v2

    .line 2655
    :catch_0
    move-exception v0

    .line 2656
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public savedPersonalModePasswordExists()Z
    .locals 3

    .prologue
    .line 2566
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 2568
    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2570
    :goto_0
    return v2

    .line 2569
    :catch_0
    move-exception v0

    .line 2570
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public savedPersonalModePatternExists()Z
    .locals 3

    .prologue
    .line 2593
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 2595
    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePattern(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2597
    :goto_0
    return v2

    .line 2596
    :catch_0
    move-exception v0

    .line 2597
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public savedPersonalModePinExists()Z
    .locals 3

    .prologue
    .line 2537
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 2539
    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePin(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2541
    :goto_0
    return v2

    .line 2540
    :catch_0
    move-exception v0

    .line 2541
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public savedPrivateModePasswordExists(Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;I)Z
    .locals 3
    .param p1, "mode"    # Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 2502
    :try_start_0
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p1, v2, :cond_1

    .line 2503
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePin(I)Z

    move-result v1

    .line 2512
    :cond_0
    :goto_0
    return v1

    .line 2504
    :cond_1
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Password:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p1, v2, :cond_2

    .line 2505
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePassword(I)Z

    move-result v1

    goto :goto_0

    .line 2506
    :cond_2
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p1, v2, :cond_3

    .line 2507
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePattern(I)Z

    move-result v1

    goto :goto_0

    .line 2508
    :cond_3
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p1, v2, :cond_0

    .line 2509
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/internal/widget/ILockSettings;->havePersonalModeBackupPin(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2511
    :catch_0
    move-exception v0

    .line 2512
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setAppLockFingerPrintLockscreen(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 2713
    const-string v0, "lockscreen.applock_fingerprint"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 2714
    return-void
.end method

.method public setBiometricLockscreen(II)V
    .locals 8
    .param p1, "biometric_type"    # I
    .param p2, "userId"    # I

    .prologue
    .line 3102
    if-nez p1, :cond_0

    .line 3103
    const-string v5, "lockscreen.samsung_biometric"

    const-wide/16 v6, 0x0

    invoke-direct {p0, v5, v6, v7, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 3117
    :goto_0
    return-void

    .line 3105
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(I)I

    move-result v2

    .line 3106
    .local v2, "oldValue":I
    const/4 v0, 0x0

    .line 3109
    .local v0, "biometric_value":I
    add-int v5, p1, p1

    or-int v3, p1, v5

    .line 3110
    .local v3, "removeType":I
    xor-int/lit8 v5, p1, -0x1

    and-int v4, v2, v5

    .line 3113
    .local v4, "removedvalue":I
    or-int v1, v4, p1

    .line 3114
    .local v1, "newValue":I
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setBiometricLockscreen ( oldValue = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , biometric_value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , newValue = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3115
    const-string v5, "lockscreen.samsung_biometric"

    int-to-long v6, v1

    invoke-direct {p0, v5, v6, v7, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    goto :goto_0
.end method

.method public setBiometricLockscreen(III)V
    .locals 8
    .param p1, "biometric_type"    # I
    .param p2, "state"    # I
    .param p3, "userId"    # I

    .prologue
    .line 3120
    if-nez p1, :cond_0

    .line 3121
    const-string v5, "lockscreen.samsung_biometric"

    const-wide/16 v6, 0x0

    invoke-direct {p0, v5, v6, v7, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 3139
    :goto_0
    return-void

    .line 3123
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(I)I

    move-result v2

    .line 3124
    .local v2, "oldValue":I
    const/4 v0, 0x0

    .line 3127
    .local v0, "biometric_value":I
    add-int v5, p1, p1

    or-int v3, p1, v5

    .line 3128
    .local v3, "removeType":I
    xor-int/lit8 v5, v3, -0x1

    and-int v4, v2, v5

    .line 3130
    .local v4, "removedvalue":I
    const/4 v5, 0x1

    if-ne p2, v5, :cond_2

    .line 3131
    move v0, p1

    .line 3135
    :cond_1
    :goto_1
    or-int v1, v4, v0

    .line 3136
    .local v1, "newValue":I
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setBiometricLockscreen ( oldValue = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , biometric_value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , newValue = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    const-string v5, "lockscreen.samsung_biometric"

    int-to-long v6, v1

    invoke-direct {p0, v5, v6, v7, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    goto :goto_0

    .line 3132
    .end local v1    # "newValue":I
    :cond_2
    const/4 v5, 0x2

    if-ne p2, v5, :cond_1

    .line 3133
    add-int v0, p1, p1

    goto :goto_1
.end method

.method public setCACPasswordEnabled(ZI)Z
    .locals 3
    .param p1, "status"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 3395
    const-string v0, "LockPatternUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCACPasswordEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3396
    const-string v0, "lockscreen.smartcard_type"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 3397
    const/4 v0, 0x1

    return v0
.end method

.method public setCarrierLockoutAttemptDeadline(I)J
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 2880
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x927c0

    add-long v0, v2, v4

    .line 2881
    .local v0, "deadline":J
    const-string/jumbo v2, "sktlockscreen.lockoutdeadline"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2882
    return-wide v0
.end method

.method public setContainerPasswordState(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 19
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedPassword"    # Ljava/lang/String;
    .param p3, "containerId"    # I

    .prologue
    .line 2984
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 2985
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v4, 0x0

    .line 2986
    .local v4, "letters":I
    const/4 v5, 0x0

    .line 2987
    .local v5, "uppercase":I
    const/4 v6, 0x0

    .line 2988
    .local v6, "lowercase":I
    const/4 v7, 0x0

    .line 2989
    .local v7, "numbers":I
    const/4 v8, 0x0

    .line 2990
    .local v8, "symbols":I
    const/4 v9, 0x0

    .line 2992
    .local v9, "nonletter":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v12, v3, :cond_3

    .line 2993
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 2994
    .local v11, "c":C
    const/16 v3, 0x41

    if-lt v11, v3, :cond_0

    const/16 v3, 0x5a

    if-gt v11, v3, :cond_0

    .line 2995
    add-int/lit8 v4, v4, 0x1

    .line 2996
    add-int/lit8 v5, v5, 0x1

    .line 2992
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2997
    :cond_0
    const/16 v3, 0x61

    if-lt v11, v3, :cond_1

    const/16 v3, 0x7a

    if-gt v11, v3, :cond_1

    .line 2998
    add-int/lit8 v4, v4, 0x1

    .line 2999
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3000
    :cond_1
    const/16 v3, 0x30

    if-lt v11, v3, :cond_2

    const/16 v3, 0x39

    if-gt v11, v3, :cond_2

    .line 3001
    add-int/lit8 v7, v7, 0x1

    .line 3002
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 3004
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 3005
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 3009
    .end local v11    # "c":C
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v10, p3

    invoke-virtual/range {v2 .. v10}, Landroid/app/admin/DevicePolicyManager;->setAlternativePasswordState(IIIIIIII)V

    .line 3012
    if-eqz p2, :cond_8

    .line 3013
    const/4 v13, 0x0

    .line 3014
    .local v13, "letters_old":I
    const/16 v18, 0x0

    .line 3015
    .local v18, "uppercase_old":I
    const/4 v14, 0x0

    .line 3016
    .local v14, "lowercase_old":I
    const/16 v16, 0x0

    .line 3017
    .local v16, "numbers_old":I
    const/16 v17, 0x0

    .line 3018
    .local v17, "symbols_old":I
    const/4 v15, 0x0

    .line 3019
    .local v15, "nonletter_old":I
    const/4 v12, 0x0

    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v12, v3, :cond_7

    .line 3020
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 3021
    .restart local v11    # "c":C
    const/16 v3, 0x41

    if-lt v11, v3, :cond_4

    const/16 v3, 0x5a

    if-gt v11, v3, :cond_4

    .line 3022
    add-int/lit8 v13, v13, 0x1

    .line 3023
    add-int/lit8 v18, v18, 0x1

    .line 3019
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 3024
    :cond_4
    const/16 v3, 0x61

    if-lt v11, v3, :cond_5

    const/16 v3, 0x7a

    if-gt v11, v3, :cond_5

    .line 3025
    add-int/lit8 v13, v13, 0x1

    .line 3026
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 3027
    :cond_5
    const/16 v3, 0x30

    if-lt v11, v3, :cond_6

    const/16 v3, 0x39

    if-gt v11, v3, :cond_6

    .line 3028
    add-int/lit8 v16, v16, 0x1

    .line 3029
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 3031
    :cond_6
    add-int/lit8 v17, v17, 0x1

    .line 3032
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 3036
    .end local v11    # "c":C
    :cond_7
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v3, v10, :cond_8

    if-ne v13, v4, :cond_8

    move/from16 v0, v18

    if-ne v0, v5, :cond_8

    if-ne v14, v6, :cond_8

    move/from16 v0, v16

    if-ne v0, v7, :cond_8

    move/from16 v0, v17

    if-ne v0, v8, :cond_8

    if-ne v15, v9, :cond_8

    .line 3040
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_8

    .line 3041
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v10, p3

    invoke-virtual/range {v2 .. v10}, Landroid/app/admin/DevicePolicyManager;->setAlternativePasswordStateForEAS(IIIIIIII)V

    .line 3047
    .end local v13    # "letters_old":I
    .end local v14    # "lowercase_old":I
    .end local v15    # "nonletter_old":I
    .end local v16    # "numbers_old":I
    .end local v17    # "symbols_old":I
    .end local v18    # "uppercase_old":I
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v3

    const v10, 0x61000

    if-ne v3, v10, :cond_9

    .line 3048
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyManager;->copyAlternativeToActivePasswordState(I)V

    .line 3050
    :cond_9
    return-void
.end method

.method public setCredentialRequiredToDecrypt(Z)V
    .locals 3
    .param p1, "required"    # Z

    .prologue
    .line 2135
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2136
    const-string v0, "LockPatternUtils"

    const-string v1, "Only device owner may call setCredentialRequiredForDecrypt()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    :cond_0
    :goto_0
    return-void

    .line 2140
    :cond_1
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2141
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "require_password_to_decrypt"

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 586
    sput p1, Lcom/android/internal/widget/LockPatternUtils;->sCurrentUserId:I

    .line 587
    return-void
.end method

.method public setEnabledTrustAgents(Ljava/util/Collection;I)V
    .locals 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2069
    .local p1, "activeTrustAgents":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/ComponentName;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2070
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 2071
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 2072
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2074
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2076
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_1
    const-string v3, "lockscreen.enabledtrustagents"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, p2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2077
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    .line 2078
    return-void
.end method

.method public setEnterpriseIdentityLock(Z)Z
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 565
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setEnterpriseIdentityLock(ZI)Z

    .line 566
    const/4 v0, 0x1

    return v0
.end method

.method public setEnterpriseIdentityLock(ZI)Z
    .locals 1
    .param p1, "status"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 575
    const-string v0, "lockscreen.enterpriseidentity_type"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 576
    const/4 v0, 0x1

    return v0
.end method

.method public setEnterpriseIdentitySelected(ZI)Z
    .locals 4
    .param p1, "select"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 557
    const/16 v2, 0x64

    if-lt p2, v2, :cond_0

    .line 558
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "lockscreen.enterpriseidentity_selected"

    if-ne p1, v0, :cond_1

    :goto_0
    invoke-static {v2, v3, v0, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v1

    .line 561
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 558
    goto :goto_0
.end method

.method public setFingerPrintLockscreen(II)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3072
    const-string v0, "lockscreen.enabled_fingerprint"

    int-to-long v2, p1

    invoke-direct {p0, v0, v2, v3, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 3073
    return-void
.end method

.method public setFingerPrintLockscreen(ZI)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3060
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 3061
    .local v0, "state":I
    :goto_0
    const-string v1, "lockscreen.enabled_fingerprint"

    int-to-long v2, v0

    invoke-direct {p0, v1, v2, v3, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 3062
    return-void

    .line 3060
    .end local v0    # "state":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFingerPrintMigrated(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1068
    const-string/jumbo v0, "migrated_fingerprint_fota_key"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1069
    return-void
.end method

.method public setLockFingerprintEnabled(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 3348
    const-string v0, "lockscreen.enabled_fingerprint"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 3349
    return-void
.end method

.method public setLockPatternEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1653
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(ZI)V

    .line 1654
    return-void
.end method

.method public setLockPatternEnabled(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userHandle"    # I

    .prologue
    .line 1660
    const-string v0, "lock_pattern_autolock"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1661
    return-void
.end method

.method public setLockScreenDisabled(ZI)V
    .locals 1
    .param p1, "disable"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 853
    const-string v0, "lockscreen.disabled"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 854
    return-void
.end method

.method public setLockoutAttemptDeadline(I)J
    .locals 8
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v6, 0x5

    const-wide/16 v4, 0x1

    .line 1806
    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    add-long/2addr v2, v4

    sput-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    .line 1807
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1808
    .local v0, "deadline":J
    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1809
    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    .line 1821
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen.failedUnlockAttemptNumber"

    sget-wide v4, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1823
    const-string v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1824
    return-wide v0

    .line 1810
    :cond_1
    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 1811
    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    goto :goto_0

    .line 1812
    :cond_2
    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    const-wide/16 v4, 0x3

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 1813
    const-wide/32 v2, 0x493e0

    add-long/2addr v0, v2

    goto :goto_0

    .line 1814
    :cond_3
    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 1815
    const-wide/32 v2, 0x927c0

    add-long/2addr v0, v2

    goto :goto_0

    .line 1816
    :cond_4
    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_5

    .line 1817
    const-wide/32 v2, 0x1b7740

    add-long/2addr v0, v2

    goto :goto_0

    .line 1818
    :cond_5
    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    .line 1819
    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public setLockoutAttemptDeadline(II)J
    .locals 6
    .param p1, "userId"    # I
    .param p2, "timeoutMs"    # I

    .prologue
    .line 1793
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p2

    add-long v0, v2, v4

    .line 1794
    .local v0, "deadline":J
    const-string v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1795
    const-string v2, "lockscreen.lockoutattempttimeoutmss"

    int-to-long v4, p2

    invoke-direct {p0, v2, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1796
    return-wide v0
.end method

.method public setOwnerInfo(Ljava/lang/String;I)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1046
    const-string v0, "lock_screen_owner_info"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1047
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->updateCryptoUserInfo(I)V

    .line 1048
    return-void
.end method

.method public setOwnerInfoEnabled(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1051
    const-string v0, "lock_screen_owner_info_enabled"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1052
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->updateCryptoUserInfo(I)V

    .line 1053
    return-void
.end method

.method public setPermanentlyLocked(Z)V
    .locals 1
    .param p1, "locked"    # Z

    .prologue
    .line 1927
    const-string v0, "lockscreen.lockedoutpermanently"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1928
    return-void
.end method

.method public setPowerButtonInstantlyLocks(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1999
    const-string v0, "lockscreen.power_button_instantly_locks"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 2000
    return-void
.end method

.method public setPrevLockFingerprintEnabled(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 3356
    const-string/jumbo v0, "prev_lock_type"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 3357
    return-void
.end method

.method public setPrivateModeFingerPrintLockscreen(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 3194
    const-string v0, "lockscreen.privatemode_fingerprint"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 3195
    return-void
.end method

.method public setRecoveryScreenLocked(Z)V
    .locals 1
    .param p1, "locked"    # Z

    .prologue
    .line 3376
    const-string v0, "lockscreen.lockedoutRecovery"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 3377
    return-void
.end method

.method public setRejectModeLocked(Z)V
    .locals 2
    .param p1, "locked"    # Z

    .prologue
    .line 3668
    const-string v0, "lockscreen.lgt_reject_cause"

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 3669
    return-void
.end method

.method public setRejectModeLocked(ZI)V
    .locals 1
    .param p1, "locked"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 3672
    const-string v0, "lockscreen.lgt_reject_cause"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 3673
    return-void
.end method

.method public setSmartUnlockEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1757
    const-string v0, "lock_smart_unlock_enabled"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1758
    return-void
.end method

.method public setSmartUnlockEnabled(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userid"    # I

    .prologue
    .line 1761
    const-string v0, "lock_smart_unlock_enabled"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1762
    return-void
.end method

.method public setSwipeSmartLock(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2974
    sput-boolean p1, Lcom/android/internal/widget/LockPatternUtils;->mSwipeSmartLock:Z

    .line 2975
    return-void
.end method

.method public setVisiblePasswordEnabled(ZI)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1717
    if-eqz p2, :cond_0

    .line 1733
    :goto_0
    return-void

    .line 1721
    :cond_0
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1722
    .local v2, "service":Landroid/os/IBinder;
    if-nez v2, :cond_1

    .line 1723
    const-string v3, "LockPatternUtils"

    const-string v4, "Could not find the mount service to update the user info"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1727
    :cond_1
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 1729
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    const-string v4, "PasswordVisible"

    if-eqz p1, :cond_2

    const-string v3, "1"

    :goto_1
    invoke-interface {v1, v4, v3}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1730
    :catch_0
    move-exception v0

    .line 1731
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "LockPatternUtils"

    const-string v4, "Error changing password visible state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1729
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    const-string v3, "0"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setVisiblePatternEnabled(ZI)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1686
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternDisabledByMDM()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    .line 1687
    const-string v3, "LockPatternUtils"

    const-string v4, "Could not enable visible pattern by IT admin."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    :cond_0
    :goto_0
    return-void

    .line 1691
    :cond_1
    const-string v3, "lock_pattern_visible_pattern"

    invoke-direct {p0, v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1694
    if-nez p2, :cond_0

    .line 1698
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1699
    .local v2, "service":Landroid/os/IBinder;
    if-nez v2, :cond_2

    .line 1700
    const-string v3, "LockPatternUtils"

    const-string v4, "Could not find the mount service to update the user info"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1704
    :cond_2
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 1706
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    const-string v4, "PatternVisible"

    if-eqz p1, :cond_3

    const-string v3, "1"

    :goto_1
    invoke-interface {v1, v4, v3}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1707
    :catch_0
    move-exception v0

    .line 1708
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "LockPatternUtils"

    const-string v4, "Error changing pattern visible state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1706
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    const-string v3, "0"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public showCardNotRegisteredDialog()V
    .locals 4

    .prologue
    .line 3466
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.smartcard.pinservice.CARD_NOT_REGISTERED_ERROR_DIALOG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3467
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3469
    :try_start_0
    const-string v2, "LockPatternUtils"

    const-string/jumbo v3, "showCardNotRegisteredDialog called "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3470
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3475
    :goto_0
    return-void

    .line 3471
    :catch_0
    move-exception v0

    .line 3472
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "LockPatternUtils"

    const-string/jumbo v3, "showCardNotRegisteredDialog "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V
    .locals 3
    .param p1, "strongAuthTracker"    # Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    .prologue
    .line 2164
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStub:Landroid/app/trust/IStrongAuthTracker$Stub;

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2168
    :goto_0
    return-void

    .line 2165
    :catch_0
    move-exception v0

    .line 2166
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not unregister StrongAuthTracker"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateCarrierLockPlus(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 2841
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->updateCarrierLockPlusMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2844
    :goto_0
    return v1

    .line 2842
    :catch_0
    move-exception v0

    .line 2843
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable updateCarrierLockPlus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2844
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public usingBiometricWeak(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 877
    const-string v1, "lockscreen.password_type"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int v0, v2

    .line 879
    .local v0, "quality":I
    const v1, 0x8000

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public usingSmartUnlock(I)Z
    .locals 4
    .param p1, "userid"    # I

    .prologue
    .line 1768
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int v0, v2

    .line 1770
    .local v0, "quality":I
    const v1, 0x9100

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x90000

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1773
    const/4 v1, 0x1

    .line 1775
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public verifyBackupPassword(Ljava/lang/String;JIZ)[B
    .locals 10
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .param p5, "useKeystore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 3643
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/widget/ILockSettings;->verifyBackupPassword(Ljava/lang/String;JIZ)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v7

    .line 3646
    .local v7, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 3647
    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v0

    .line 3654
    .end local v7    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_0
    return-object v0

    .line 3648
    .restart local v7    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_0
    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3649
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3653
    .end local v7    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v6

    .local v6, "re":Landroid/os/RemoteException;
    move-object v0, v8

    .line 3654
    goto :goto_0

    .end local v6    # "re":Landroid/os/RemoteException;
    .restart local v7    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    move-object v0, v8

    .line 3651
    goto :goto_0
.end method

.method public verifyBackupPin(Ljava/lang/String;JI)[B
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2406
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->verifyBackupPin(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 2409
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_1

    .line 2410
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v2

    .line 2417
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_0
    :goto_0
    return-object v2

    .line 2411
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2412
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2416
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    .line 2417
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public verifyPassword(Ljava/lang/String;JI)[B
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 633
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->verifyPassword(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 636
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_1

    .line 637
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v2

    .line 644
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_0
    :goto_0
    return-object v2

    .line 638
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 639
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    .line 644
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public verifyPattern(Ljava/util/List;JI)[B
    .locals 6
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;JI)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v2, 0x0

    .line 465
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->verifyPattern(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 467
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-nez v1, :cond_1

    .line 480
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_0
    :goto_0
    return-object v2

    .line 472
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_2

    .line 473
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v2

    goto :goto_0

    .line 474
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 475
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    .line 480
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

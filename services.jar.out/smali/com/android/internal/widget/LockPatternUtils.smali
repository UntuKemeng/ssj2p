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

.field private static final mSCafeName:Ljava/lang/String;

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

    const-string/jumbo v1, "i_love_office_tg"

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

    .line 277
    const-string/jumbo v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->mSCafeName:Ljava/lang/String;

    .line 281
    sput v2, Lcom/android/internal/widget/LockPatternUtils;->mScVerifyStatus:I

    .line 282
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    .line 283
    sput-boolean v2, Lcom/android/internal/widget/LockPatternUtils;->cacPasswordSetProgress:Z

    .line 318
    sput-boolean v2, Lcom/android/internal/widget/LockPatternUtils;->mSwipeSmartLock:Z

    .line 320
    const/16 v0, -0x2710

    sput v0, Lcom/android/internal/widget/LockPatternUtils;->sCurrentUserId:I

    .line 321
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    .line 371
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 376
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mMultiUserMode:Z

    .line 378
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen.failedUnlockAttemptNumber"

    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    .line 380
    return-void

    .line 376
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
    .line 1122
    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x0

    .line 1125
    :goto_0
    return v0

    .line 1123
    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 1124
    :cond_1
    const/16 v0, 0x30

    if-gt v0, p0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    .line 1125
    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static computePasswordQuality(Ljava/lang/String;)I
    .locals 6
    .param p0, "password"    # Ljava/lang/String;

    .prologue
    .line 1082
    const/4 v0, 0x0

    .line 1083
    .local v0, "hasDigit":Z
    const/4 v1, 0x0

    .line 1084
    .local v1, "hasNonDigit":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1085
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1086
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1087
    const/4 v0, 0x1

    .line 1085
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1089
    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 1093
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1094
    const/high16 v4, 0x50000

    .line 1104
    :goto_2
    return v4

    .line 1096
    :cond_2
    if-eqz v1, :cond_3

    .line 1097
    const/high16 v4, 0x40000

    goto :goto_2

    .line 1099
    :cond_3
    if-eqz v0, :cond_5

    .line 1100
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->maxLengthSequence(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_4

    const/high16 v4, 0x20000

    goto :goto_2

    :cond_4
    const/high16 v4, 0x30000

    goto :goto_2

    .line 1104
    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private generateRecoveryPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2058
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
    .line 1926
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result p2

    .line 1931
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .line 1927
    .restart local p2    # "defaultValue":Z
    :catch_0
    move-exception v1

    .line 1928
    .local v1, "re":Landroid/os/RemoteException;
    goto :goto_0

    .line 1929
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1930
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
    .line 620
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mMultiUserMode:Z

    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    .line 625
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
    .line 2843
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2844
    .local v0, "digest":Ljava/security/MessageDigest;
    const-string v2, "SKT : Find lost phone plus !!!"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 2845
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 2846
    .local v1, "key":Ljavax/crypto/spec/SecretKeySpec;
    return-object v1
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 2

    .prologue
    .line 383
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v1, :cond_0

    .line 384
    const-string/jumbo v1, "lock_settings"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 386
    .local v0, "service":Lcom/android/internal/widget/ILockSettings;
    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 388
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
    .line 1950
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide p2

    .line 1955
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .line 1951
    .restart local p2    # "defaultValue":J
    :catch_0
    move-exception v1

    .line 1952
    .local v1, "re":Landroid/os/RemoteException;
    goto :goto_0

    .line 1953
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1954
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
    .line 2167
    const/4 v3, 0x0

    .line 2169
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_0
    const-string/jumbo v9, "user"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v7

    .line 2171
    .local v7, "um":Landroid/os/IUserManager;
    if-eqz v7, :cond_1

    .line 2172
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2176
    .end local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_1
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v8

    .line 2177
    .local v8, "versionInfo":Landroid/os/Bundle;
    if-eqz v8, :cond_4

    const-string v9, "2.0"

    const-string/jumbo v10, "version"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2178
    invoke-interface {v7, p0}, Landroid/os/IUserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 2179
    .local v6, "uinfo":Landroid/content/pm/UserInfo;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2183
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v3, v4

    .line 2210
    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v6    # "uinfo":Landroid/content/pm/UserInfo;
    .end local v7    # "um":Landroid/os/IUserManager;
    .end local v8    # "versionInfo":Landroid/os/Bundle;
    .restart local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    :goto_0
    return-object v3

    .line 2188
    .end local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v6    # "uinfo":Landroid/content/pm/UserInfo;
    .restart local v7    # "um":Landroid/os/IUserManager;
    .restart local v8    # "versionInfo":Landroid/os/Bundle;
    :cond_2
    const/4 v9, 0x0

    invoke-interface {v7, p0, v9}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v5

    .line 2189
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

    .line 2190
    .local v2, "pi":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v9

    if-nez v9, :cond_3

    .line 2191
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 2205
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pi":Landroid/content/pm/UserInfo;
    .end local v5    # "profilesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v6    # "uinfo":Landroid/content/pm/UserInfo;
    .end local v8    # "versionInfo":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 2206
    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "um":Landroid/os/IUserManager;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2198
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

    .line 2207
    .end local v7    # "um":Landroid/os/IUserManager;
    .end local v8    # "versionInfo":Landroid/os/Bundle;
    :catch_1
    move-exception v0

    .line 2208
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2207
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

    .line 2205
    .end local v7    # "um":Landroid/os/IUserManager;
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method private getRequestedPasswordHistoryLength(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 404
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

    .line 1491
    const-string/jumbo v1, "lockscreen.password_salt"

    invoke-direct {p0, v1, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    .line 1492
    .local v2, "salt":J
    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1494
    :try_start_0
    const-string v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    .line 1495
    const-string/jumbo v1, "lockscreen.password_salt"

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1496
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

    .line 1502
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1497
    :catch_0
    move-exception v0

    .line 1499
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "Couldn\'t get SecureRandom number"

    invoke-direct {v1, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getSmartcardPinManager()Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    .locals 4

    .prologue
    .line 3375
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3376
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

    .line 3380
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils;->mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    return-object v1

    .line 3375
    .end local v0    # "tContext":Landroid/content/Context;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private getSmartcardPinManager_Sync()Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    .locals 4

    .prologue
    .line 3402
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3404
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

    .line 3406
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils;->mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    return-object v1

    .line 3402
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

    .line 1974
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p2}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1979
    :goto_0
    return-object v2

    .line 1975
    :catch_0
    move-exception v1

    .line 1976
    .local v1, "re":Landroid/os/RemoteException;
    goto :goto_0

    .line 1977
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1978
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
    .line 354
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "trust"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    .line 355
    .local v0, "trust":Landroid/app/trust/TrustManager;
    if-nez v0, :cond_0

    .line 356
    const-string v1, "LockPatternUtils"

    const-string v2, "Can\'t get TrustManagerService: is it running?"

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Stack trace:"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    :cond_0
    return-object v0
.end method

.method public static isDeviceEncrypted()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1360
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 1363
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

    .line 1368
    :goto_0
    return v2

    .line 1363
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1365
    :catch_0
    move-exception v1

    .line 1366
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "LockPatternUtils"

    const-string v4, "Error getting encryption state"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isDeviceEncryptionEnabled()Z
    .locals 3

    .prologue
    .line 1378
    const-string/jumbo v1, "ro.crypto.state"

    const-string/jumbo v2, "unsupported"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1379
    .local v0, "status":Ljava/lang/String;
    const-string v1, "encrypted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isDoNotAskCredentialsOnBootSet()Z
    .locals 1

    .prologue
    .line 2141
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    move-result v0

    return v0
.end method

.method private isFollowLegacyTimeoutPolicy()Z
    .locals 2

    .prologue
    .line 363
    const-string/jumbo v0, "mocha"

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils;->mSCafeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "americano"

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils;->mSCafeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    :cond_0
    const/4 v0, 0x1

    .line 366
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isKnoxUser(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 448
    const/4 v1, 0x0

    .line 450
    .local v1, "ret":Z
    const/16 v2, 0x64

    if-lt p1, v2, :cond_0

    const/16 v2, 0xc8

    if-gt p1, v2, :cond_0

    .line 452
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 453
    .local v0, "pm":Landroid/os/PersonaManager;
    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {v0, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v1

    .line 457
    .end local v0    # "pm":Landroid/os/PersonaManager;
    :cond_0
    return v1
.end method

.method private isLockPasswordEnabled(II)Z
    .locals 10
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1593
    const-string/jumbo v6, "lockscreen.password_type_alternate"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9, p2}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v6

    long-to-int v6, v6

    int-to-long v2, v6

    .line 1594
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
    move v1, v5

    .line 1600
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
    move v0, v5

    .line 1605
    .local v0, "backupEnabled":Z
    :goto_1
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists(I)Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v1, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak(I)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v0, :cond_5

    :cond_2
    :goto_2
    return v5

    .end local v0    # "backupEnabled":Z
    .end local v1    # "passwordEnabled":Z
    :cond_3
    move v1, v4

    .line 1594
    goto :goto_0

    .restart local v1    # "passwordEnabled":Z
    :cond_4
    move v0, v4

    .line 1600
    goto :goto_1

    .restart local v0    # "backupEnabled":Z
    :cond_5
    move v5, v4

    .line 1605
    goto :goto_2
.end method

.method private isLockPatternEnabled(II)Z
    .locals 1
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    .prologue
    .line 1652
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
    .line 1116
    const v0, 0x10001

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

    .line 1129
    if-eqz p0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1131
    :cond_0
    :goto_0
    return v0

    .line 1130
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const/16 v0, 0xa

    goto :goto_0

    .line 1131
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static maxLengthSequence(Ljava/lang/String;)I
    .locals 12
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1151
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_0

    .line 1179
    :goto_0
    return v7

    .line 1152
    :cond_0
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1153
    .local v8, "previousChar":C
    invoke-static {v8}, Lcom/android/internal/widget/LockPatternUtils;->categoryChar(C)I

    move-result v0

    .line 1154
    .local v0, "category":I
    const/4 v5, 0x0

    .line 1155
    .local v5, "diff":I
    const/4 v6, 0x0

    .line 1156
    .local v6, "hasDiff":Z
    const/4 v7, 0x0

    .line 1157
    .local v7, "maxLength":I
    const/4 v9, 0x0

    .line 1158
    .local v9, "startSequence":I
    const/4 v2, 0x1

    .local v2, "current":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v2, v10, :cond_4

    .line 1159
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1160
    .local v3, "currentChar":C
    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->categoryChar(C)I

    move-result v1

    .line 1161
    .local v1, "categoryCurrent":I
    sub-int v4, v3, v8

    .line 1162
    .local v4, "currentDiff":I
    if-ne v1, v0, :cond_1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->maxDiffCategory(I)I

    move-result v11

    if-le v10, v11, :cond_2

    .line 1163
    :cond_1
    sub-int v10, v2, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1164
    move v9, v2

    .line 1165
    const/4 v6, 0x0

    .line 1166
    move v0, v1

    .line 1176
    :goto_2
    move v8, v3

    .line 1158
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1169
    :cond_2
    if-eqz v6, :cond_3

    if-eq v4, v5, :cond_3

    .line 1170
    sub-int v10, v2, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1171
    add-int/lit8 v9, v2, -0x1

    .line 1173
    :cond_3
    move v5, v4

    .line 1174
    const/4 v6, 0x1

    goto :goto_2

    .line 1178
    .end local v1    # "categoryCurrent":I
    .end local v3    # "currentChar":C
    .end local v4    # "currentDiff":I
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1179
    goto :goto_0
.end method

.method private onAfterChangingPassword(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 2119
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    .line 2120
    return-void
.end method

.method public static patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "pattern"    # Ljava/lang/String;

    .prologue
    .line 1450
    if-nez p0, :cond_0

    .line 1451
    const-string v4, ""

    .line 1460
    :goto_0
    return-object v4

    .line 1453
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1455
    .local v2, "patternSize":I
    new-array v3, v2, [B

    .line 1456
    .local v3, "res":[B
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1457
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1458
    aget-byte v4, v0, v1

    add-int/lit8 v4, v4, -0x31

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 1457
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1460
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
    .line 1471
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_0

    .line 1472
    const/4 v1, 0x0

    .line 1486
    :goto_0
    return-object v1

    .line 1475
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 1476
    .local v5, "patternSize":I
    new-array v6, v5, [B

    .line 1477
    .local v6, "res":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 1478
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1479
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 1477
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1482
    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    :try_start_0
    const-string v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 1483
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1484
    .local v1, "hash":[B
    goto :goto_0

    .line 1485
    .end local v1    # "hash":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v4

    .local v4, "nsa":Ljava/security/NoSuchAlgorithmException;
    move-object v1, v6

    .line 1486
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
    .line 1436
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_0

    .line 1437
    const-string v4, ""

    .line 1446
    :goto_0
    return-object v4

    .line 1439
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 1441
    .local v2, "patternSize":I
    new-array v3, v2, [B

    .line 1442
    .local v3, "res":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1443
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1444
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

    .line 1442
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1446
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
    .line 3271
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockFingerprintPasswordwithoutQuality(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3272
    return-void
.end method

.method private saveLockFingerprintPasswordwithoutQuality(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedpassword"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 3276
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 3277
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_1

    .line 3278
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ILockSettings;->setLockBackupPassword(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 3279
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v10

    .line 3280
    .local v10, "computedQuality":I
    if-eqz v10, :cond_0

    .line 3281
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->setContainerPasswordState(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3294
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v10    # "computedQuality":I
    :goto_0
    return-void

    .line 3284
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

    .line 3291
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v10    # "computedQuality":I
    :catch_0
    move-exception v11

    .line 3292
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

    .line 3288
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
    .line 744
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->havePassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 746
    :goto_0
    return v1

    .line 745
    :catch_0
    move-exception v0

    .line 746
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private savedPasswordExistsNoCache()Z
    .locals 4

    .prologue
    .line 1631
    const-string/jumbo v2, "lock_settings"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    .line 1633
    .local v1, "lockSettingsService":Lcom/android/internal/widget/ILockSettings;
    if-eqz v1, :cond_0

    .line 1635
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->havePassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1640
    :goto_0
    return v2

    .line 1636
    :catch_0
    move-exception v0

    .line 1637
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    const-string v3, "Unable to reach LockSettingsService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
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
    .line 1945
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1946
    return-void
.end method

.method private setBoolean(Ljava/lang/String;ZI)V
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 1937
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1942
    :goto_0
    return-void

    .line 1938
    :catch_0
    move-exception v0

    .line 1940
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
    .line 1890
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1891
    .local v0, "deadline":J
    add-long/2addr v0, p2

    .line 1892
    const-string/jumbo v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1893
    return-wide v0
.end method

.method private setLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 1960
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1961
    return-void
.end method

.method private setLong(Ljava/lang/String;JI)V
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 1965
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1970
    :goto_0
    return-void

    .line 1966
    :catch_0
    move-exception v0

    .line 1968
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
    .line 1985
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1990
    :goto_0
    return-void

    .line 1986
    :catch_0
    move-exception v0

    .line 1988
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
    .line 2145
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
    .line 1416
    if-nez p0, :cond_1

    .line 1417
    const/4 v3, 0x0

    .line 1427
    :cond_0
    return-object v3

    .line 1420
    :cond_1
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1422
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1423
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 1424
    aget-byte v4, v1, v2

    add-int/lit8 v4, v4, -0x31

    int-to-byte v0, v4

    .line 1425
    .local v0, "b":B
    div-int/lit8 v4, v0, 0x3

    rem-int/lit8 v5, v0, 0x3

    invoke-static {v4, v5}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1423
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "ary"    # [B

    .prologue
    .line 1566
    const-string v0, "0123456789ABCDEF"

    .line 1567
    .local v0, "hex":Ljava/lang/String;
    const-string v2, ""

    .line 1568
    .local v2, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 1569
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

    .line 1570
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

    .line 1568
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1572
    :cond_0
    return-object v2
.end method

.method private updateCACAuthentication()V
    .locals 3

    .prologue
    .line 3521
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isCACPasswordEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/internal/widget/LockPatternUtils;->cacPasswordSetProgress:Z

    if-nez v1, :cond_0

    .line 3522
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.smartcard.pinservice.action.SMARTCARD_PIN_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3524
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3525
    const-string v1, "LockPatternUtils"

    const-string/jumbo v2, "updateCACAuthentication: send broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3526
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/widget/LockPatternUtils;->cacPasswordSetProgress:Z

    .line 3528
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

    .line 3548
    sget-boolean v0, Lcom/android/internal/widget/LockPatternUtils;->mIsCallerUCM:Z

    if-eqz v0, :cond_0

    .line 3549
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

    .line 3550
    sput-boolean v2, Lcom/android/internal/widget/LockPatternUtils;->mIsCallerUCM:Z

    .line 3557
    :goto_0
    return-void

    .line 3553
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->updateCACAuthentication()V

    .line 3554
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->update_lockscreen_type(I)V

    .line 3555
    if-ne p1, v5, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->setCACPasswordEnabled(ZI)Z

    .line 3556
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

    .line 3555
    goto :goto_1

    :cond_2
    move v1, v2

    .line 3556
    goto :goto_2
.end method

.method private updateCryptoUserInfo(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 1031
    if-eqz p1, :cond_0

    .line 1050
    :goto_0
    return-void

    .line 1035
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v2

    .line 1037
    .local v2, "ownerInfo":Ljava/lang/String;
    :goto_1
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1038
    .local v3, "service":Landroid/os/IBinder;
    if-nez v3, :cond_2

    .line 1039
    const-string v4, "LockPatternUtils"

    const-string v5, "Could not find the mount service to update the user info"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1035
    .end local v2    # "ownerInfo":Ljava/lang/String;
    .end local v3    # "service":Landroid/os/IBinder;
    :cond_1
    const-string v2, ""

    goto :goto_1

    .line 1043
    .restart local v2    # "ownerInfo":Ljava/lang/String;
    .restart local v3    # "service":Landroid/os/IBinder;
    :cond_2
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 1045
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    const-string v4, "LockPatternUtils"

    const-string v5, "Setting owner info"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    const-string v4, "OwnerInfo"

    invoke-interface {v1, v4, v2}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1047
    :catch_0
    move-exception v0

    .line 1048
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
    .line 1184
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1205
    :goto_0
    return-void

    .line 1187
    :cond_0
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1188
    .local v0, "service":Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 1189
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not find the mount service to update the encryption password"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1193
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
    .line 532
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "lockscreen.enterpriseidentity_selected"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 534
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

    .line 537
    const/4 v2, 0x0

    .line 538
    .local v2, "isEidLockNeedToSet":Z
    if-lez v1, :cond_0

    .line 539
    const/4 v2, 0x1

    .line 541
    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setEnterpriseIdentitySelected(ZI)Z

    .line 544
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v3

    if-eq v3, v2, :cond_1

    .line 545
    invoke-virtual {p0, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->setEnterpriseIdentityLock(ZI)Z

    .line 547
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

    .line 551
    .end local v1    # "eIdChoosenByUser":I
    .end local v2    # "isEidLockNeedToSet":Z
    :goto_0
    return-void

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private update_lockscreen_type(I)V
    .locals 4
    .param p1, "quality"    # I

    .prologue
    .line 3535
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.smartcard.pinservice.action.SMARTCARD_LOCKTYPE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3537
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x70000

    if-ne p1, v1, :cond_0

    .line 3538
    const-string v1, "Type"

    const-string v2, "Smartcard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3542
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3543
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

    .line 3544
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/widget/LockPatternUtils;->cacPasswordSetProgress:Z

    .line 3545
    return-void

    .line 3540
    :cond_0
    const-string v1, "Type"

    const-string v2, "Other"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public checkAppLockPassword(Ljava/lang/String;Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;I)Z
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "lockType"    # Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;
    .param p3, "userId"    # I

    .prologue
    const/4 v1, 0x1

    .line 2674
    :try_start_0
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v2, :cond_1

    .line 2675
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, p3}, Lcom/android/internal/widget/ILockSettings;->checkAppLockPin(Ljava/lang/String;I)Z

    move-result v1

    .line 2685
    :cond_0
    :goto_0
    return v1

    .line 2676
    :cond_1
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Password:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v2, :cond_2

    .line 2677
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, p3}, Lcom/android/internal/widget/ILockSettings;->checkAppLockPassword(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    .line 2678
    :cond_2
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v2, :cond_3

    .line 2679
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, p3}, Lcom/android/internal/widget/ILockSettings;->checkAppLockPattern(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    .line 2680
    :cond_3
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v2, :cond_0

    .line 2681
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, p3}, Lcom/android/internal/widget/ILockSettings;->checkAppLockBackupPin(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2684
    :catch_0
    move-exception v0

    .line 2685
    .local v0, "re":Landroid/os/RemoteException;
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
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3602
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    .line 3603
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v6

    invoke-interface {v6, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->checkBackupPassword(Ljava/lang/String;IZ)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v3

    .line 3606
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

    .line 3607
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v6

    if-nez v6, :cond_1

    .line 3610
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManager;->isSupportFingerprintForODE(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3611
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v5, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 3612
    .local v0, "dem":Landroid/dirEncryption/DirEncryptionManager;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/dirEncryption/DirEncryptionManager;->setNeedToCreateKey(Z)V

    .line 3613
    invoke-virtual {v0, p1}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    .line 3614
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/app/admin/DevicePolicyManager;->setNeedToGetAlternativePasswdForODE(Landroid/content/ComponentName;Z)V

    .line 3625
    .end local v0    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v3    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_0
    :goto_0
    return v4

    .line 3618
    .restart local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v3    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v6

    if-ne v6, v4, :cond_2

    .line 3619
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v5

    .line 3624
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v3    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v2

    .line 3625
    .local v2, "re":Landroid/os/RemoteException;
    goto :goto_0

    .line 3621
    .end local v2    # "re":Landroid/os/RemoteException;
    .restart local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v3    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_2
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

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 3622
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

    .line 2382
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkBackupPin(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 2384
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_0

    .line 2393
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_0
    return v2

    .line 2386
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 2387
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v3

    .line 2392
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    .line 2393
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0

    .line 2389
    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    const-string v3, "LockPatternUtils"

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

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2390
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public checkFingerprintPassword(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 3298
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
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3303
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    .line 3304
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v6

    invoke-interface {v6, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->checkBackupPassword(Ljava/lang/String;IZ)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v3

    .line 3306
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

    .line 3307
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v6

    if-nez v6, :cond_1

    .line 3310
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManager;->isSupportFingerprintForODE(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3311
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v5, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 3312
    .local v0, "dem":Landroid/dirEncryption/DirEncryptionManager;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/dirEncryption/DirEncryptionManager;->setNeedToCreateKey(Z)V

    .line 3313
    invoke-virtual {v0, p1}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    .line 3314
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/app/admin/DevicePolicyManager;->setNeedToGetAlternativePasswdForODE(Landroid/content/ComponentName;Z)V

    .line 3323
    .end local v0    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v3    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_0
    :goto_0
    return v4

    .line 3319
    .restart local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v3    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
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

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 3320
    goto :goto_0

    .line 3322
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v3    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v2

    .line 3323
    .local v2, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public checkParentControlPassword(Ljava/lang/String;)Z
    .locals 5
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2734
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    .line 2742
    .local v2, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/internal/widget/ILockSettings;->getParentControlPasswordHashSize(I)I

    move-result v0

    .line 2747
    .local v0, "length":I
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/android/internal/widget/ILockSettings;->checkParentControlPassword([BI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2752
    .end local v0    # "length":I
    :goto_0
    return v3

    .line 2751
    :catch_0
    move-exception v1

    .line 2752
    .local v1, "re":Landroid/os/RemoteException;
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public checkPassword(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 664
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 666
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_1

    .line 681
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_0
    :goto_0
    return v2

    .line 668
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 669
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    .line 676
    .local v0, "re":Landroid/os/RemoteException;
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isKnoxUser(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 677
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v2, v3

    .line 678
    goto :goto_0

    .line 671
    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_2
    :try_start_1
    const-string v4, "LockPatternUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkPassword resCode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v3

    .line 672
    goto :goto_0
.end method

.method public checkPasswordHistory(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 706
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 708
    .local v2, "passwordHashString":Ljava/lang/String;
    const-string/jumbo v6, "lockscreen.passwordhistory"

    invoke-direct {p0, v6, p2}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 709
    .local v3, "passwordHistory":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 723
    :cond_0
    :goto_0
    return v5

    .line 713
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 714
    .local v1, "passwordHashLength":I
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength(I)I

    move-result v4

    .line 715
    .local v4, "passwordHistoryLength":I
    if-eqz v4, :cond_0

    .line 718
    mul-int v6, v1, v4

    add-int/2addr v6, v4

    add-int/lit8 v0, v6, -0x1

    .line 720
    .local v0, "neededPasswordHistoryLength":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v0, :cond_2

    .line 721
    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 723
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    goto :goto_0
.end method

.method public checkPasswordWithCAC(Ljava/lang/String;)I
    .locals 5
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 3422
    const-string v2, "LockPatternUtils"

    const-string v3, "checkPasswordWithCAC: "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3423
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/widget/LockPatternUtils;->mIsCallbackCalled:Z

    .line 3424
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 3427
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

    .line 3450
    sget-boolean v2, Lcom/android/internal/widget/LockPatternUtils;->mIsCallbackCalled:Z

    if-nez v2, :cond_0

    .line 3451
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 3455
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

    .line 3456
    sget v2, Lcom/android/internal/widget/LockPatternUtils;->mScVerifyStatus:I

    :goto_0
    return v2

    .line 3442
    :catch_0
    move-exception v1

    .line 3443
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3444
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
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 501
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Lcom/android/internal/widget/ILockSettings;->checkPattern(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 504
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_1

    .line 518
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_0
    :goto_0
    return v2

    .line 506
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 507
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    .line 513
    .local v0, "re":Landroid/os/RemoteException;
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isKnoxUser(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 514
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v2, v3

    .line 515
    goto :goto_0

    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_2
    move v2, v3

    .line 509
    goto :goto_0
.end method

.method public checkPersonalModeFingerPrintPassword(Ljava/lang/String;)Z
    .locals 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2637
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 2639
    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModeFingerprintPassword(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2641
    :goto_0
    return v2

    .line 2640
    :catch_0
    move-exception v0

    .line 2641
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public checkPersonalModeLockBackupPin(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 2608
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 2610
    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModeBackupPin(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2612
    :goto_0
    return v2

    .line 2611
    :catch_0
    move-exception v0

    .line 2612
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public checkPersonalModeLockPassword(Ljava/lang/String;)Z
    .locals 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2551
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 2553
    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePassword(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2555
    :goto_0
    return v2

    .line 2554
    :catch_0
    move-exception v0

    .line 2555
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public checkPersonalModeLockPin(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 2522
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 2524
    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePin(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2526
    :goto_0
    return v2

    .line 2525
    :catch_0
    move-exception v0

    .line 2526
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
    .line 2578
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 2580
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

    .line 2582
    :goto_0
    return v2

    .line 2581
    :catch_0
    move-exception v0

    .line 2582
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public checkPrivateModePassword(Ljava/lang/String;Ljava/util/List;Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;I)Z
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
            "I)Z"
        }
    .end annotation

    .prologue
    .local p2, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v1, 0x1

    .line 2480
    :try_start_0
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p3, v2, :cond_1

    .line 2481
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, p4}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePin(Ljava/lang/String;I)Z

    move-result v1

    .line 2490
    :cond_0
    :goto_0
    return v1

    .line 2482
    :cond_1
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Password:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p3, v2, :cond_2

    .line 2483
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, p4}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePassword(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    .line 2484
    :cond_2
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p3, v2, :cond_3

    .line 2485
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-static {p2}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p4}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePattern(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    .line 2486
    :cond_3
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p3, v2, :cond_0

    .line 2487
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, p4}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModeBackupPin(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2489
    :catch_0
    move-exception v0

    .line 2490
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public checkRemoteLockPassword(ILjava/lang/String;I)Z
    .locals 8
    .param p1, "whichlock"    # I
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 2935
    if-nez p1, :cond_1

    .line 2936
    :try_start_0
    const-string v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 2937
    .local v3, "sha1":[B
    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 2939
    .local v0, "base64":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v5

    invoke-interface {v5, v0, p3}, Lcom/android/internal/widget/ILockSettings;->checkFMMPassword(Ljava/lang/String;I)Z

    move-result v4

    .line 2948
    .end local v0    # "base64":Ljava/lang/String;
    .end local v3    # "sha1":[B
    :cond_0
    :goto_0
    return v4

    .line 2940
    :cond_1
    if-ne p1, v4, :cond_0

    .line 2941
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v5

    invoke-interface {v5, p2, p3}, Lcom/android/internal/widget/ILockSettings;->checkCarrierPassword(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    goto :goto_0

    .line 2943
    :catch_0
    move-exception v2

    .line 2944
    .local v2, "re":Landroid/os/RemoteException;
    const-string v5, "LockPatternUtils"

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

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2946
    .end local v2    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2947
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "LockPatternUtils"

    const-string v5, "Failed to encode string because of missing algorithm: SHA-1"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2948
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public checkVoldPassword(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 692
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->checkVoldPassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 694
    :goto_0
    return v1

    .line 693
    :catch_0
    move-exception v0

    .line 694
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearEncryptionPassword()V
    .locals 2

    .prologue
    .line 1386
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V

    .line 1387
    return-void
.end method

.method public clearLock(I)V
    .locals 11
    .param p1, "userHandle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 799
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

    .line 800
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setFingerPrintLockscreen(II)V

    .line 801
    invoke-virtual {p0, v1, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricLockscreen(III)V

    .line 802
    const-string/jumbo v0, "lockscreen.password_type"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 805
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, p1}, Lcom/android/internal/widget/ILockSettings;->setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V

    .line 806
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, p1}, Lcom/android/internal/widget/ILockSettings;->setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V

    .line 807
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/android/internal/widget/ILockSettings;->setLockFMMPassword(Ljava/lang/String;I)V

    .line 808
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, p1}, Lcom/android/internal/widget/ILockSettings;->setLockBackupPin(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 813
    :goto_0
    if-nez p1, :cond_0

    .line 815
    invoke-direct {p0, v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V

    .line 818
    if-nez p1, :cond_0

    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    new-instance v10, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-direct {v10, v0}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 820
    .local v10, "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v10, v5}, Landroid/dirEncryption/DirEncryptionManager;->setNeedToCreateKey(Z)V

    .line 821
    invoke-virtual {v10, v4}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    .line 826
    .end local v10    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    .line 828
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

    .line 831
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->onAfterChangingPassword(I)V

    .line 832
    return-void

    .line 809
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clearLockUniversal(Z)V
    .locals 4
    .param p1, "isFallback"    # Z

    .prologue
    .line 840
    const-string/jumbo v0, "lockscreen.password_type"

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 844
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

    .line 848
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateCACAuthentication(II)V

    .line 849
    return-void

    .line 845
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clearLockoutAttemptDeadline()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1897
    sput-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    .line 1898
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen.failedUnlockAttemptNumber"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1899
    const-string/jumbo v0, "lockscreen.lockoutattempttimeoutmss"

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1900
    const-string/jumbo v0, "lockscreen.lockoutattemptdeadline"

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1901
    return-void
.end method

.method public decryptCarrierLockPlusMsg(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "input"    # Ljava/lang/String;

    .prologue
    .line 2850
    const/4 v3, 0x0

    .line 2853
    .local v3, "output":Ljava/lang/String;
    :try_start_0
    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 2854
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/internal/widget/LockPatternUtils;->getKey(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v6

    sget-object v7, Lcom/android/internal/widget/LockPatternUtils;->ivParamSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1, v5, v6, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 2855
    const/4 v5, 0x0

    invoke-static {p2, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2856
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

    .line 2869
    .end local v0    # "buff":[B
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "output":Ljava/lang/String;
    .restart local v3    # "output":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 2857
    :catch_0
    move-exception v2

    .line 2858
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

    .line 2859
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    .line 2860
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

    .line 2861
    .end local v2    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v2

    .line 2862
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

    .line 2863
    .end local v2    # "e":Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v2

    .line 2864
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

    .line 2865
    .end local v2    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_4
    move-exception v2

    .line 2866
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
    .line 3417
    const-string v0, "LockPatternUtils"

    const-string v1, "deinitializeCACAuthentication: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3418
    invoke-static {}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->getInstance()Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->deinitializeCAC(Landroid/os/UserHandle;)V

    .line 3419
    return-void
.end method

.method public getActivePasswordQuality(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 765
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 767
    .local v0, "quality":I
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 792
    .end local v0    # "quality":I
    :cond_0
    :goto_0
    return v0

    .line 772
    .restart local v0    # "quality":I
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 777
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockUniversalEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 779
    const v0, 0x10001

    goto :goto_0

    .line 782
    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 784
    const v0, 0x9100

    goto :goto_0

    .line 787
    :cond_3
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isFingerPrintLockscreen(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 789
    const v0, 0x61000

    goto :goto_0

    .line 792
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBiometricLockscreen(II)I
    .locals 6
    .param p1, "biometric_type"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x1

    .line 3145
    const-string/jumbo v3, "lockscreen.samsung_biometric"

    const-wide/16 v4, 0x0

    invoke-direct {p0, v3, v4, v5, p2}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    long-to-int v0, v4

    .line 3146
    .local v0, "biometric":I
    const-string v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getBiometricLockscreen ( biometric = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , biometric_type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3149
    if-ne p1, v2, :cond_0

    .line 3150
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isFingerPrintLockscreen(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3166
    :goto_0
    return v2

    .line 3156
    :cond_0
    and-int v3, v0, p1

    if-ne v3, p1, :cond_1

    .line 3157
    const-string v3, "LockPatternUtils"

    const-string/jumbo v4, "getBiometricLockscreen( biometric_type is main )"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3160
    :cond_1
    add-int v1, p1, p1

    .line 3161
    .local v1, "biometricOptional":I
    and-int v2, v0, v1

    if-ne v2, v1, :cond_2

    .line 3162
    const-string v2, "LockPatternUtils"

    const-string/jumbo v3, "getBiometricLockscreen( biometric_type is Optional )"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    const/4 v2, 0x2

    goto :goto_0

    .line 3165
    :cond_2
    const-string v2, "LockPatternUtils"

    const-string/jumbo v3, "getBiometricLockscreen( biometric_type is OFF )"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3166
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getBiometricState(I)I
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 3170
    const-string/jumbo v0, "lockscreen.samsung_biometric"

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

    .line 2880
    const-string/jumbo v6, "sktlockscreen.lockoutdeadline"

    invoke-direct {p0, v6, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    .line 2881
    .local v0, "deadline":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2882
    .local v2, "now":J
    cmp-long v6, v0, v2

    if-gtz v6, :cond_0

    move-wide v0, v4

    .line 2885
    .end local v0    # "deadline":J
    :cond_0
    return-wide v0
.end method

.method public getCurrentUser()I
    .locals 3

    .prologue
    .line 603
    sget v1, Lcom/android/internal/widget/LockPatternUtils;->sCurrentUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    .line 605
    sget v1, Lcom/android/internal/widget/LockPatternUtils;->sCurrentUserId:I

    .line 610
    :goto_0
    return v1

    .line 608
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

    .line 609
    :catch_0
    move-exception v0

    .line 610
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 4

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 345
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 346
    const-string v0, "LockPatternUtils"

    const-string v1, "Can\'t get DevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
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
    .line 2075
    const-string/jumbo v7, "lockscreen.enabledtrustagents"

    invoke-direct {p0, v7, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 2076
    .local v5, "serialized":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2077
    const/4 v0, 0x0

    .line 2086
    :cond_0
    return-object v0

    .line 2079
    :cond_1
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2080
    .local v6, "split":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    array-length v7, v6

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2081
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

    .line 2082
    .local v4, "s":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2083
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2081
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
    .line 3092
    const-string/jumbo v0, "lockscreen.enabled_fingerprint"

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
    .line 1071
    const-string/jumbo v0, "migrated_fingerprint_fota_key"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public getKeyguardStoredPasswordQuality()I
    .locals 1

    .prologue
    .line 1396
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
    .line 1406
    const-string/jumbo v0, "lockscreen.password_type"

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
    .line 1840
    const-string/jumbo v6, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    .line 1841
    .local v0, "deadline":J
    const-string/jumbo v6, "lockscreen.lockoutattempttimeoutmss"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    .line 1842
    .local v4, "timeoutMs":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1843
    .local v2, "now":J
    cmp-long v6, v0, v2

    if-gez v6, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-eqz v6, :cond_1

    .line 1845
    const-string/jumbo v6, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1846
    const-string/jumbo v6, "lockscreen.lockoutattempttimeoutmss"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1847
    const-wide/16 v0, 0x0

    .line 1886
    .end local v0    # "deadline":J
    :cond_0
    :goto_0
    return-wide v0

    .line 1850
    .restart local v0    # "deadline":J
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->isFollowLegacyTimeoutPolicy()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1851
    const-wide/16 v6, 0x7530

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    .line 1852
    const-wide/16 v6, 0x7530

    invoke-direct {p0, p1, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadlineInAbnormalCase(IJ)J

    goto :goto_0

    .line 1854
    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-eqz v6, :cond_0

    .line 1856
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3

    add-long v6, v2, v4

    cmp-long v6, v0, v6

    if-lez v6, :cond_3

    .line 1857
    invoke-direct {p0, p1, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadlineInAbnormalCase(IJ)J

    goto :goto_0

    .line 1860
    :cond_3
    sget-wide v6, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    const-wide/16 v8, 0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    const-wide/16 v6, 0x7530

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_4

    .line 1861
    const-wide/16 v6, 0x7530

    invoke-direct {p0, p1, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadlineInAbnormalCase(IJ)J

    goto :goto_0

    .line 1862
    :cond_4
    sget-wide v6, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    const-wide/16 v8, 0x2

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    const-wide/32 v6, 0xea60

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_5

    .line 1864
    const-wide/32 v6, 0xea60

    invoke-direct {p0, p1, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadlineInAbnormalCase(IJ)J

    goto :goto_0

    .line 1865
    :cond_5
    sget-wide v6, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    const-wide/16 v8, 0x3

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    const-wide/32 v6, 0x493e0

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_6

    .line 1867
    const-wide/32 v6, 0x493e0

    invoke-direct {p0, p1, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadlineInAbnormalCase(IJ)J

    goto :goto_0

    .line 1868
    :cond_6
    sget-wide v6, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    const-wide/16 v8, 0x4

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    const-wide/32 v6, 0x927c0

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_7

    .line 1870
    const-wide/32 v6, 0x927c0

    invoke-direct {p0, p1, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadlineInAbnormalCase(IJ)J

    goto/16 :goto_0

    .line 1871
    :cond_7
    sget-wide v6, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    const-wide/16 v8, 0x5

    cmp-long v6, v6, v8

    if-nez v6, :cond_8

    const-wide/32 v6, 0x1b7740

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_8

    .line 1873
    const-wide/32 v6, 0x1b7740

    invoke-direct {p0, p1, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadlineInAbnormalCase(IJ)J

    goto/16 :goto_0

    .line 1874
    :cond_8
    sget-wide v6, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    const-wide/16 v8, 0x5

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    const-wide/32 v6, 0x36ee80

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    .line 1876
    const-wide/32 v6, 0x36ee80

    invoke-direct {p0, p1, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadlineInAbnormalCase(IJ)J

    goto/16 :goto_0
.end method

.method public getOwnerInfo(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1063
    const-string/jumbo v0, "lock_screen_owner_info"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordRecoverable(I)Z
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 3360
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
    .line 1997
    const-string/jumbo v0, "lockscreen.power_button_instantly_locks"

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

    .line 2007
    const/4 v8, 0x0

    .line 2008
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

    .line 2016
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2018
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v12, :cond_0

    .line 2019
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2020
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 2025
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2030
    :cond_1
    :goto_0
    if-nez v8, :cond_2

    .line 2031
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->generateRecoveryPassword()Ljava/lang/String;

    move-result-object v8

    .line 2035
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->removeRecoveryPasswords(I)V

    .line 2038
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 2039
    .local v9, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "password"

    invoke-virtual {v9, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2040
    const-string/jumbo v0, "set_date"

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2041
    const-string/jumbo v0, "user_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2042
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2045
    .end local v9    # "values":Landroid/content/ContentValues;
    :cond_2
    return-object v8

    .line 2022
    :catch_0
    move-exception v7

    .line 2023
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2025
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
    .line 2452
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    .line 2453
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getRecoveryScreenLocked(I)Z

    move-result v1

    return v1
.end method

.method public getRecoveryScreenLocked(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 2457
    const-string/jumbo v0, "lockscreen.lockedoutRecovery"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public getRequestedMinimumPasswordLength(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 392
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
    .line 408
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
    .line 416
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
    .line 428
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
    .line 420
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
    .line 424
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
    .line 412
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
    .line 400
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
    .line 3395
    const-string v0, "LockPatternUtils"

    const-string/jumbo v1, "initializeCACAuthentication: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3396
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartcardAuthInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3397
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getSmartcardPinManager()Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    .line 3399
    :cond_0
    return-void
.end method

.method public initializeCACAuthentication_Sync()V
    .locals 2

    .prologue
    .line 3410
    const-string v0, "LockPatternUtils"

    const-string/jumbo v1, "initializeCACAuthentication: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3411
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartcardAuthInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3412
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getSmartcardPinManager_Sync()Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    .line 3414
    :cond_0
    return-void
.end method

.method public isAppLockFingerPrintLockscreen(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 2711
    const-string/jumbo v0, "lockscreen.applock_fingerprint"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isBiometricWeakInstalled()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 894
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 896
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.android.facelock"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    const-string v4, "android.hardware.camera.front"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 919
    :cond_0
    :goto_0
    return v3

    .line 897
    :catch_0
    move-exception v0

    .line 898
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 905
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

    .line 910
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v2

    .line 912
    .local v2, "restrictionPolicy":Landroid/sec/enterprise/RestrictionPolicy;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Landroid/sec/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v3

    goto :goto_0
.end method

.method public isCACCardRegistered()Z
    .locals 4

    .prologue
    .line 3472
    const/4 v0, 0x0

    .line 3474
    .local v0, "ret":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->isCardRegistered(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3478
    :goto_0
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isCardRegistered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3479
    return v0

    .line 3475
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isCACPasswordEnabled()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3384
    const-string v0, "LockPatternUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isCACPasswordEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "lockscreen.smartcard_type"

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-direct {p0, v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3385
    const-string/jumbo v0, "lockscreen.smartcard_type"

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-direct {p0, v0, v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isCarrierLockEnabled()Z
    .locals 2

    .prologue
    .line 2797
    const/4 v0, 0x0

    .line 2811
    .local v0, "mCarrierlockMode":Ljava/lang/String;
    const/4 v1, 0x0

    return v1
.end method

.method public isCarrierLockPlusEnabled()Z
    .locals 1

    .prologue
    .line 2822
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
    .line 2827
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->getCarrierLockPlusMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2829
    :goto_0
    return v1

    .line 2828
    :catch_0
    move-exception v0

    .line 2829
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCarrierPasswordSaved()Z
    .locals 3

    .prologue
    .line 2960
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->haveCarrierPassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2962
    :goto_0
    return v1

    .line 2961
    :catch_0
    move-exception v0

    .line 2962
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCredentialRequiredToDecrypt(Z)Z
    .locals 4
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v3, -0x1

    .line 2123
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "require_password_to_decrypt"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2125
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
    .line 3483
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getSmartcardPinManager()Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->isDeviceConnectedWithCard()Z

    move-result v0

    .line 3484
    .local v0, "ret":Z
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isCACCardRegistred: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3485
    return v0
.end method

.method public isDevicePasswordSimple(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2002
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "is_smpw_key"

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
    .line 557
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

    .line 578
    const-string v0, "LockPatternUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsEnterpriseIdSet = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "lockscreen.enterpriseidentity_type"

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

    .line 579
    const-string/jumbo v0, "lockscreen.enterpriseidentity_type"

    invoke-direct {p0, v0, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isFMMLockEnabled()Z
    .locals 1

    .prologue
    .line 2779
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
    .line 2784
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->haveFMMPassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2786
    :goto_0
    return v1

    .line 2785
    :catch_0
    move-exception v0

    .line 2786
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

    .line 3077
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getRecoveryScreenLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3080
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "lockscreen.enabled_fingerprint"

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

    .line 3174
    const v3, 0x61000

    if-ne p1, v3, :cond_0

    move v0, v1

    .line 3175
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

    .line 3174
    goto :goto_0

    .restart local v0    # "isFingerPrintEnabled":Z
    :cond_1
    move v1, v2

    .line 3175
    goto :goto_1
.end method

.method public isLockFingerprintEnabled(I)Z
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const-wide/32 v4, 0x61000

    const/4 v0, 0x0

    .line 3336
    const-string/jumbo v1, "lockscreen.enabled_fingerprint"

    invoke-direct {p0, v1, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "lockscreen.password_type"

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
    .line 1589
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
    .line 1612
    const-string/jumbo v6, "lockscreen.password_type"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v6

    long-to-int v6, v6

    int-to-long v4, v6

    .line 1613
    .local v4, "mode":J
    const-string/jumbo v6, "lockscreen.password_type_alternate"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v6

    long-to-int v6, v6

    int-to-long v2, v6

    .line 1614
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

    .line 1620
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

    .line 1626
    .local v0, "backupEnabled":Z
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExistsNoCache()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak(I)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v0, :cond_5

    :cond_2
    const/4 v6, 0x1

    :goto_2
    return v6

    .line 1614
    .end local v0    # "backupEnabled":Z
    .end local v1    # "passwordEnabled":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 1620
    .restart local v1    # "passwordEnabled":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1626
    .restart local v0    # "backupEnabled":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public isLockPatternEnabled(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1648
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

    .line 871
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 872
    .local v0, "pm":Landroid/os/PersonaManager;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "lockscreen.disabled"

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
    .line 1112
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
    .line 1067
    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isParentControlLockEnabled()Z
    .locals 1

    .prologue
    .line 2774
    const/4 v0, 0x0

    return v0
.end method

.method public isPatternEverChosen(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 757
    const-string/jumbo v0, "lockscreen.patterneverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isPermanentlyLocked(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1909
    const-string/jumbo v0, "lockscreen.lockedoutpermanently"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isPrevLockFingerprintEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 3346
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
    .line 3355
    const-string/jumbo v0, "lockscreen.privatemode_fingerprint"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isRejectModeLocked()Z
    .locals 1

    .prologue
    .line 3649
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
    .line 3653
    const-string/jumbo v0, "lockscreen.lgt_reject_cause"

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

    .line 3665
    const/4 v1, 0x0

    .line 3666
    .local v1, "lockState":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    .line 3667
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "locked"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3668
    const/4 v1, 0x1

    .line 3672
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

    .line 3666
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isSecure(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1580
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 1581
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
    .line 3502
    const/4 v2, 0x0

    .line 3503
    .local v2, "ret":Z
    const-string/jumbo v3, "lockscreen.password_type"

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v6

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    .line 3505
    .local v0, "mode":J
    const-wide/32 v4, 0x70000

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    .line 3506
    const/4 v2, 0x1

    .line 3508
    :cond_0
    return v2
.end method

.method public isSmartUnlockEnabled()Z
    .locals 1

    .prologue
    .line 1746
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

    .line 1750
    const-string/jumbo v1, "lock_smart_unlock_enabled"

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

    .line 1754
    const v1, 0x9100

    if-eq p1, v1, :cond_0

    const/high16 v1, 0x90000

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "lock_smart_unlock_enabled"

    invoke-direct {p0, v1, v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isSmartcardAuthInstalled()Z
    .locals 4

    .prologue
    .line 3493
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->isSmartCardAuthenticationInstalled(Landroid/content/Context;)Z

    move-result v0

    .line 3494
    .local v0, "ret":Z
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSmartCardAuthenticationAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3495
    return v0
.end method

.method public isSwipeSmartLock()Z
    .locals 1

    .prologue
    .line 2972
    sget-boolean v0, Lcom/android/internal/widget/LockPatternUtils;->mSwipeSmartLock:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1790
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "haptic_feedback_enabled"

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

    .line 1680
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/sec/enterprise/PasswordPolicy;

    move-result-object v0

    .line 1681
    .local v0, "passPolicy":Landroid/sec/enterprise/PasswordPolicy;
    if-eqz v0, :cond_0

    .line 1682
    invoke-virtual {v0}, Landroid/sec/enterprise/PasswordPolicy;->isScreenLockPatternVisibilityEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 1684
    :cond_0
    return v1
.end method

.method public isVisiblePatternEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1675
    const-string/jumbo v0, "lock_pattern_visible_pattern"

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
    .line 1537
    if-nez p1, :cond_0

    .line 1538
    const/4 v8, 0x0

    .line 1559
    :goto_0
    return-object v8

    .line 1547
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

    .line 1548
    .local v6, "saltedPassword":[B
    const/4 v7, 0x0

    .line 1549
    .local v7, "sha":[B
    const-string v8, "SHA-1"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 1550
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1551
    .local v4, "s":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v8, 0x400

    if-ge v2, v8, :cond_2

    .line 1552
    if-eqz v7, :cond_1

    invoke-virtual {v3, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 1553
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

    .line 1554
    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 1555
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    .line 1551
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1557
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1558
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

    .line 1559
    invoke-static {v7}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto/16 :goto_0

    .line 1560
    .end local v0    # "e":J
    .end local v2    # "i":I
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v4    # "s":J
    .end local v6    # "saltedPassword":[B
    .end local v7    # "sha":[B
    :catch_0
    move-exception v0

    .line 1561
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
    .line 1515
    if-nez p1, :cond_0

    .line 1516
    const/4 v6, 0x0

    .line 1529
    :goto_0
    return-object v6

    .line 1520
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

    .line 1521
    .local v4, "saltedPassword":[B
    const-string v6, "SHA-1"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 1522
    .local v5, "sha1":[B
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 1524
    .local v3, "md5":[B
    array-length v6, v5

    array-length v7, v3

    add-int/2addr v6, v7

    new-array v0, v6, [B

    .line 1525
    .local v0, "combined":[B
    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, v5

    invoke-static {v5, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1526
    const/4 v6, 0x0

    array-length v7, v5

    array-length v8, v3

    invoke-static {v3, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1528
    invoke-static {v0}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v2

    .line 1529
    .local v2, "hexEncoded":[C
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([C)V

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 1530
    .end local v0    # "combined":[B
    .end local v2    # "hexEncoded":[C
    .end local v3    # "md5":[B
    .end local v4    # "saltedPassword":[B
    .end local v5    # "sha1":[B
    :catch_0
    move-exception v1

    .line 1531
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
    .line 3365
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->recoverPassword(I)V

    .line 3366
    return-void
.end method

.method public registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V
    .locals 3
    .param p1, "strongAuthTracker"    # Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    .prologue
    .line 2150
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStub:Landroid/app/trust/IStrongAuthTracker$Stub;

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2154
    return-void

    .line 2151
    :catch_0
    move-exception v0

    .line 2152
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
    .line 3136
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(I)I

    move-result v2

    .line 3137
    .local v2, "oldValue":I
    add-int v3, p1, p1

    or-int v0, p1, v3

    .line 3138
    .local v0, "biometric_value":I
    xor-int/lit8 v3, v0, -0x1

    and-int v1, v2, v3

    .line 3139
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

    .line 3141
    const-string/jumbo v3, "lockscreen.samsung_biometric"

    int-to-long v4, v1

    invoke-direct {p0, v3, v4, v5, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 3142
    return-void
.end method

.method public removeRecoveryPasswords(I)V
    .locals 6
    .param p1, "userHandle"    # I

    .prologue
    .line 2050
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

    .line 2055
    return-void
.end method

.method public reportFailedPasswordAttempt(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt(I)V

    .line 433
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/trust/TrustManager;->reportUnlockAttempt(ZI)V

    .line 434
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 435
    return-void
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 438
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt(I)V

    .line 439
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/trust/TrustManager;->reportUnlockAttempt(ZI)V

    .line 440
    sput-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    .line 441
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen.failedUnlockAttemptNumber"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 442
    const-string/jumbo v0, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 443
    const-string/jumbo v0, "lockscreen.lockoutattempttimeoutmss"

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 444
    return-void
.end method

.method public requireCredentialEntry(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 2097
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 2098
    return-void
.end method

.method public requireStrongAuth(II)V
    .locals 4
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .prologue
    .line 2112
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/widget/ILockSettings;->requireStrongAuth(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2116
    :goto_0
    return-void

    .line 2113
    :catch_0
    move-exception v0

    .line 2114
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
    .line 1024
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/widget/ILockSettings;->sanitizePassword()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1028
    :goto_0
    return-void

    .line 1025
    :catch_0
    move-exception v0

    .line 1026
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
    .line 2658
    :try_start_0
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v1, :cond_1

    .line 2659
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/android/internal/widget/ILockSettings;->setAppLockPin(Ljava/lang/String;I)V

    .line 2670
    :cond_0
    :goto_0
    return-void

    .line 2660
    :cond_1
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Password:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v1, :cond_2

    .line 2661
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/android/internal/widget/ILockSettings;->setAppLockPassword(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2667
    :catch_0
    move-exception v0

    .line 2668
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

    .line 2662
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v1, :cond_3

    .line 2663
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/android/internal/widget/ILockSettings;->setAppLockPattern(Ljava/lang/String;I)V

    goto :goto_0

    .line 2664
    :cond_3
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v1, :cond_0

    .line 2665
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
    .line 3585
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ILockSettings;->setLockBackupPassword(Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3590
    :goto_0
    return-void

    .line 3586
    :catch_0
    move-exception v0

    .line 3588
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
    .line 2425
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockBackupPin(Ljava/lang/String;II)V

    .line 2426
    return-void
.end method

.method public saveLockBackupPin(Ljava/lang/String;II)V
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2432
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, p3}, Lcom/android/internal/widget/ILockSettings;->setLockBackupPin(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2437
    :goto_0
    return-void

    .line 2433
    :catch_0
    move-exception v0

    .line 2435
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
    .line 2442
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p4}, Lcom/android/internal/widget/ILockSettings;->setLockBackupPin(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2447
    :goto_0
    return-void

    .line 2443
    :catch_0
    move-exception v0

    .line 2445
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

    .line 3179
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLockFingerprintEnabled(ZI)V

    .line 3180
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setPrevLockFingerprintEnabled(ZI)V

    .line 3181
    const-string/jumbo v1, "lockscreen.password_type"

    const-wide/32 v2, 0x61000

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 3183
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 3184
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->copyAlternativeToActivePasswordState(I)V

    .line 3185
    return-void
.end method

.method public saveLockFingerprintPassword(Ljava/lang/String;I)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 3194
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockFingerprintPasswordwithoutQuality(Ljava/lang/String;I)V

    .line 3195
    return-void
.end method

.method public saveLockFingerprintPassword(Ljava/lang/String;IIZ)V
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "quality"    # I
    .param p4, "skipUpdateEncryptionPassword"    # Z

    .prologue
    .line 3198
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockFingerprintPassword(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 3199
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
    .line 3203
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    .line 3204
    .local v4, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_6

    .line 3205
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v5, v0, v1, v2, v6}, Lcom/android/internal/widget/ILockSettings;->setLockBackupPassword(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 3206
    if-nez p3, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    move/from16 v0, p3

    if-ne v0, v5, :cond_0

    const/4 v5, 0x1

    move/from16 v0, p5

    if-eq v0, v5, :cond_0

    .line 3209
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v5, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V

    .line 3211
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3212
    new-instance v15, Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-direct {v15, v5}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 3213
    .local v15, "dem":Landroid/dirEncryption/DirEncryptionManager;
    const/4 v5, 0x1

    invoke-virtual {v15, v5}, Landroid/dirEncryption/DirEncryptionManager;->setNeedToCreateKey(Z)V

    .line 3214
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    .line 3215
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/admin/DevicePolicyManager;->setNeedToGetAlternativePasswdForODE(Landroid/content/ComponentName;Z)V

    .line 3219
    .end local v15    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v14

    .line 3220
    .local v14, "computedQuality":I
    const-string/jumbo v5, "lockscreen.password_type_alternate"

    move/from16 v0, p4

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-long v6, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 3221
    if-eqz v14, :cond_3

    .line 3222
    invoke-virtual/range {p0 .. p3}, Lcom/android/internal/widget/LockPatternUtils;->setContainerPasswordState(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3233
    :goto_0
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v5

    if-nez v5, :cond_2

    .line 3238
    const-string/jumbo v5, "lockscreen.passwordhistory"

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 3240
    .local v18, "passwordHistory":Ljava/lang/String;
    if-nez v18, :cond_1

    .line 3241
    new-instance v18, Ljava/lang/String;

    .end local v18    # "passwordHistory":Ljava/lang/String;
    invoke-direct/range {v18 .. v18}, Ljava/lang/String;-><init>()V

    .line 3243
    .restart local v18    # "passwordHistory":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength(I)I

    move-result v19

    .line 3244
    .local v19, "passwordHistoryLength":I
    if-nez v19, :cond_4

    .line 3245
    const-string v18, ""

    .line 3259
    :goto_1
    const-string/jumbo v5, "lockscreen.passwordhistory"

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1, v6}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3268
    .end local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v14    # "computedQuality":I
    .end local v18    # "passwordHistory":Ljava/lang/String;
    .end local v19    # "passwordHistoryLength":I
    :cond_2
    :goto_2
    return-void

    .line 3225
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

    .line 3265
    .end local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v14    # "computedQuality":I
    :catch_0
    move-exception v20

    .line 3266
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

    .line 3247
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

    .line 3248
    .local v16, "hash":[B
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 3249
    .local v17, "hashString":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 3250
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

    .line 3254
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

    .line 3262
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
    .line 2758
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    .line 2759
    .local v2, "userId":I
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2762
    .local v0, "hash":[B
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v4

    invoke-interface {v3, v0, v4}, Lcom/android/internal/widget/ILockSettings;->setLockParentControlPassword([BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2768
    :goto_0
    return-void

    .line 2764
    :catch_0
    move-exception v1

    .line 2766
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
    .line 1219
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    .line 1220
    .local v4, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ge v5, v6, :cond_2

    .line 1221
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "password must not be null and at least of length 4"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1348
    .end local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :catch_0
    move-exception v37

    .line 1350
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

    .line 1352
    .end local v37    # "re":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void

    .line 1225
    .restart local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_2
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-interface {v5, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings;->setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1226
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v24

    .line 1229
    .local v24, "computedQuality":I
    if-nez p4, :cond_3

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1231
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->shouldEncryptWithCredentials(Z)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1232
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->clearEncryptionPassword()V

    .line 1243
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->updateCACAuthentication(II)V

    .line 1244
    const-string/jumbo v5, "lockscreen.password_type"

    move/from16 v0, p3

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-long v14, v6

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v5, v14, v15, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1245
    if-eqz v24, :cond_13

    .line 1246
    const/4 v7, 0x0

    .line 1247
    .local v7, "letters":I
    const/4 v8, 0x0

    .line 1248
    .local v8, "uppercase":I
    const/4 v9, 0x0

    .line 1249
    .local v9, "lowercase":I
    const/4 v10, 0x0

    .line 1250
    .local v10, "numbers":I
    const/4 v11, 0x0

    .line 1251
    .local v11, "symbols":I
    const/4 v12, 0x0

    .line 1252
    .local v12, "nonletter":I
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v28

    if-ge v0, v5, :cond_c

    .line 1253
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    .line 1254
    .local v23, "c":C
    const/16 v5, 0x41

    move/from16 v0, v23

    if-lt v0, v5, :cond_9

    const/16 v5, 0x5a

    move/from16 v0, v23

    if-gt v0, v5, :cond_9

    .line 1255
    add-int/lit8 v7, v7, 0x1

    .line 1256
    add-int/lit8 v8, v8, 0x1

    .line 1252
    :goto_3
    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    .line 1234
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

    .line 1236
    .local v33, "numeric":Z
    :goto_4
    const/high16 v5, 0x30000

    move/from16 v0, v24

    if-ne v0, v5, :cond_7

    const/16 v34, 0x1

    .line 1238
    .local v34, "numericComplex":Z
    :goto_5
    if-nez v33, :cond_5

    if-eqz v34, :cond_8

    :cond_5
    const/16 v39, 0x3

    .line 1240
    .local v39, "type":I
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v39

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V

    goto :goto_1

    .line 1234
    .end local v33    # "numeric":Z
    .end local v34    # "numericComplex":Z
    .end local v39    # "type":I
    :cond_6
    const/16 v33, 0x0

    goto :goto_4

    .line 1236
    .restart local v33    # "numeric":Z
    :cond_7
    const/16 v34, 0x0

    goto :goto_5

    .line 1238
    .restart local v34    # "numericComplex":Z
    :cond_8
    const/16 v39, 0x0

    goto :goto_6

    .line 1257
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

    .line 1258
    add-int/lit8 v7, v7, 0x1

    .line 1259
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1260
    :cond_a
    const/16 v5, 0x30

    move/from16 v0, v23

    if-lt v0, v5, :cond_b

    const/16 v5, 0x39

    move/from16 v0, v23

    if-gt v0, v5, :cond_b

    .line 1261
    add-int/lit8 v10, v10, 0x1

    .line 1262
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1264
    :cond_b
    add-int/lit8 v11, v11, 0x1

    .line 1265
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1268
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

    .line 1273
    if-eqz p2, :cond_11

    .line 1274
    invoke-static/range {p2 .. p2}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v25

    .line 1275
    .local v25, "computedQuality_old":I
    const/16 v29, 0x0

    .line 1276
    .local v29, "letters_old":I
    const/16 v40, 0x0

    .line 1277
    .local v40, "uppercase_old":I
    const/16 v30, 0x0

    .line 1278
    .local v30, "lowercase_old":I
    const/16 v32, 0x0

    .line 1279
    .local v32, "numbers_old":I
    const/16 v38, 0x0

    .line 1280
    .local v38, "symbols_old":I
    const/16 v31, 0x0

    .line 1281
    .local v31, "nonletter_old":I
    const/16 v28, 0x0

    :goto_7
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v28

    if-ge v0, v5, :cond_10

    .line 1282
    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    .line 1283
    .restart local v23    # "c":C
    const/16 v5, 0x41

    move/from16 v0, v23

    if-lt v0, v5, :cond_d

    const/16 v5, 0x5a

    move/from16 v0, v23

    if-gt v0, v5, :cond_d

    .line 1284
    add-int/lit8 v29, v29, 0x1

    .line 1285
    add-int/lit8 v40, v40, 0x1

    .line 1281
    :goto_8
    add-int/lit8 v28, v28, 0x1

    goto :goto_7

    .line 1286
    :cond_d
    const/16 v5, 0x61

    move/from16 v0, v23

    if-lt v0, v5, :cond_e

    const/16 v5, 0x7a

    move/from16 v0, v23

    if-gt v0, v5, :cond_e

    .line 1287
    add-int/lit8 v29, v29, 0x1

    .line 1288
    add-int/lit8 v30, v30, 0x1

    goto :goto_8

    .line 1289
    :cond_e
    const/16 v5, 0x30

    move/from16 v0, v23

    if-lt v0, v5, :cond_f

    const/16 v5, 0x39

    move/from16 v0, v23

    if-gt v0, v5, :cond_f

    .line 1290
    add-int/lit8 v32, v32, 0x1

    .line 1291
    add-int/lit8 v31, v31, 0x1

    goto :goto_8

    .line 1293
    :cond_f
    add-int/lit8 v38, v38, 0x1

    .line 1294
    add-int/lit8 v31, v31, 0x1

    goto :goto_8

    .line 1298
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

    .line 1303
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_11

    .line 1304
    move/from16 v0, p3

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v13, p4

    invoke-virtual/range {v4 .. v13}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordStateForEAS(IIIIIIIII)V

    .line 1320
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
    const-string/jumbo v5, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v5, v1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    .line 1321
    .local v35, "passwordHistory":Ljava/lang/String;
    if-nez v35, :cond_12

    .line 1322
    const-string v35, ""

    .line 1324
    :cond_12
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength(I)I

    move-result v36

    .line 1325
    .local v36, "passwordHistoryLength":I
    if-nez v36, :cond_14

    .line 1326
    const-string v35, ""

    .line 1336
    :goto_a
    const-string/jumbo v5, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, p4

    invoke-direct {v0, v5, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1337
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEnterpriseIdentityLock(I)V

    .line 1338
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->onAfterChangingPassword(I)V

    .line 1341
    if-nez p4, :cond_1

    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1342
    new-instance v26, Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 1343
    .local v26, "dem":Landroid/dirEncryption/DirEncryptionManager;
    const/4 v5, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/dirEncryption/DirEncryptionManager;->setNeedToCreateKey(Z)V

    .line 1344
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1313
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

    .line 1328
    .restart local v35    # "passwordHistory":Ljava/lang/String;
    .restart local v36    # "passwordHistoryLength":I
    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v27

    .line 1329
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

    .line 1332
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
    .line 941
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V

    .line 942
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
    .line 950
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;IZ)V

    .line 951
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
    .line 961
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;IZZ)V

    .line 962
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
    .line 965
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

    .line 967
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_2

    .line 968
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "pattern must not be null and at least 4 dots long."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1014
    :catch_0
    move-exception v13

    .line 1015
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

    .line 1017
    .end local v13    # "re":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void

    .line 972
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v4, v5, v0, v1}, Lcom/android/internal/widget/ILockSettings;->setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V

    .line 973
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 976
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez p3, :cond_3

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 978
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/internal/widget/LockPatternUtils;->shouldEncryptWithCredentials(Z)Z

    move-result v4

    if-nez v4, :cond_5

    .line 979
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->clearEncryptionPassword()V

    .line 992
    :cond_3
    :goto_1
    const-string/jumbo v4, "lockscreen.patterneverchosen"

    const/4 v5, 0x1

    move/from16 v0, p3

    invoke-direct {p0, v4, v5, v0}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 993
    const/high16 v4, 0x10000

    move/from16 v0, p3

    invoke-direct {p0, v4, v0}, Lcom/android/internal/widget/LockPatternUtils;->updateCACAuthentication(II)V

    .line 994
    const/high16 v3, 0x10000

    .line 995
    .local v3, "passwordQuality":I
    if-eqz p4, :cond_7

    .line 996
    const v3, 0x10001

    .line 1001
    :cond_4
    :goto_2
    const-string/jumbo v4, "lockscreen.password_type"

    int-to-long v6, v3

    move/from16 v0, p3

    invoke-direct {p0, v4, v6, v7, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1002
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

    .line 1004
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->onAfterChangingPassword(I)V

    .line 1005
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->updateEnterpriseIdentityLock(I)V

    .line 1007
    if-nez p3, :cond_1

    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1008
    new-instance v12, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-direct {v12, v4}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 1009
    .local v12, "dem":Landroid/dirEncryption/DirEncryptionManager;
    const/4 v4, 0x1

    invoke-virtual {v12, v4}, Landroid/dirEncryption/DirEncryptionManager;->setNeedToCreateKey(Z)V

    .line 1010
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v14

    .line 1011
    .local v14, "stringPattern":Ljava/lang/String;
    invoke-virtual {v12, v14}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    goto :goto_0

    .line 981
    .end local v3    # "passwordQuality":I
    .end local v12    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    .end local v14    # "stringPattern":Ljava/lang/String;
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v14

    .line 982
    .restart local v14    # "stringPattern":Ljava/lang/String;
    if-eqz p4, :cond_6

    .line 984
    const/4 v4, 0x4

    invoke-direct {p0, v4, v14}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V

    goto :goto_1

    .line 987
    :cond_6
    const/4 v4, 0x2

    invoke-direct {p0, v4, v14}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 997
    .end local v14    # "stringPattern":Ljava/lang/String;
    .restart local v3    # "passwordQuality":I
    :cond_7
    if-eqz p5, :cond_4

    .line 998
    const v3, 0x9100

    goto :goto_2
.end method

.method public saveLockUniversal(Ljava/util/List;)V
    .locals 3
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
    .line 931
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;IZ)V

    .line 932
    return-void
.end method

.method public savePersonalModeFingerPrintPassword(Ljava/lang/String;)V
    .locals 5
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2627
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 2629
    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeFingerprintPassword(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2634
    :goto_0
    return-void

    .line 2630
    :catch_0
    move-exception v0

    .line 2632
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
    .line 2597
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 2599
    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockBackupPin(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2604
    :goto_0
    return-void

    .line 2600
    :catch_0
    move-exception v0

    .line 2602
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
    .line 2541
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 2543
    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPassword(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2548
    :goto_0
    return-void

    .line 2544
    :catch_0
    move-exception v0

    .line 2546
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
    .line 2569
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 2571
    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPattern(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2575
    :goto_0
    return-void

    .line 2572
    :catch_0
    move-exception v0

    .line 2573
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
    .line 2512
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 2514
    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPin(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2519
    :goto_0
    return-void

    .line 2515
    :catch_0
    move-exception v0

    .line 2517
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
    .line 2464
    .local p2, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :try_start_0
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p3, v1, :cond_1

    .line 2465
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p4}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPin(Ljava/lang/String;I)V

    .line 2476
    :cond_0
    :goto_0
    return-void

    .line 2466
    :cond_1
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Password:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p3, v1, :cond_2

    .line 2467
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p4}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPassword(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2473
    :catch_0
    move-exception v0

    .line 2474
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

    .line 2468
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p3, v1, :cond_3

    .line 2469
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-static {p2}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p4}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPattern(Ljava/lang/String;I)V

    goto :goto_0

    .line 2470
    :cond_3
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p3, v1, :cond_0

    .line 2471
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
    .line 2888
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(ILjava/lang/String;I)V

    .line 2889
    return-void
.end method

.method public saveRemoteLockPassword(ILjava/lang/String;I)V
    .locals 4
    .param p1, "whichlock"    # I
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 2900
    packed-switch p1, :pswitch_data_0

    .line 2923
    :goto_0
    return-void

    .line 2904
    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Lcom/android/internal/widget/ILockSettings;->setLockFMMPassword(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2905
    :catch_0
    move-exception v0

    .line 2907
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

    .line 2913
    .end local v0    # "re":Landroid/os/RemoteException;
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setLockCarrierPassword(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2914
    :catch_1
    move-exception v0

    .line 2916
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

    .line 2900
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
    .line 3676
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/widget/LockPatternUtils;->mIsCallerUCM:Z

    .line 3677
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    .line 3678
    return-void
.end method

.method public savedAppLockPasswordExists(Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;I)Z
    .locals 3
    .param p1, "lockType"    # Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 2691
    :try_start_0
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p1, v2, :cond_1

    .line 2692
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/internal/widget/ILockSettings;->haveAppLockPin(I)Z

    move-result v1

    .line 2702
    :cond_0
    :goto_0
    return v1

    .line 2693
    :cond_1
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Password:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p1, v2, :cond_2

    .line 2694
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/internal/widget/ILockSettings;->haveAppLockPassword(I)Z

    move-result v1

    goto :goto_0

    .line 2695
    :cond_2
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p1, v2, :cond_3

    .line 2696
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/internal/widget/ILockSettings;->haveAppLockPattern(I)Z

    move-result v1

    goto :goto_0

    .line 2697
    :cond_3
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p1, v2, :cond_0

    .line 2698
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/internal/widget/ILockSettings;->haveAppLockBackupPin(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2701
    :catch_0
    move-exception v0

    .line 2702
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public savedBackupPasswordExists(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 3594
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->haveBackupPassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3596
    :goto_0
    return v1

    .line 3595
    :catch_0
    move-exception v0

    .line 3596
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public savedBackupPinExists()Z
    .locals 3

    .prologue
    .line 2374
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->haveBackupPin(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2376
    :goto_0
    return v1

    .line 2375
    :catch_0
    move-exception v0

    .line 2376
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public savedFingerprintPasswordExists(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 3329
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->haveBackupPassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3331
    :goto_0
    return v1

    .line 3330
    :catch_0
    move-exception v0

    .line 3331
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public savedParentControlPasswordExists()Z
    .locals 3

    .prologue
    .line 2724
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->haveParentControlPassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2726
    :goto_0
    return v1

    .line 2725
    :catch_0
    move-exception v0

    .line 2726
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public savedPatternExists(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 732
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->havePattern(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 734
    :goto_0
    return v1

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public savedPersonalModeBackupPinExists()Z
    .locals 3

    .prologue
    .line 2617
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 2619
    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModeBackupPin(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2621
    :goto_0
    return v2

    .line 2620
    :catch_0
    move-exception v0

    .line 2621
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public savedPersonalModeFingerPrintPasswordExists()Z
    .locals 3

    .prologue
    .line 2646
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 2648
    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModeFingerprintPassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2650
    :goto_0
    return v2

    .line 2649
    :catch_0
    move-exception v0

    .line 2650
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public savedPersonalModePasswordExists()Z
    .locals 3

    .prologue
    .line 2560
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 2562
    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2564
    :goto_0
    return v2

    .line 2563
    :catch_0
    move-exception v0

    .line 2564
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public savedPersonalModePatternExists()Z
    .locals 3

    .prologue
    .line 2587
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 2589
    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePattern(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2591
    :goto_0
    return v2

    .line 2590
    :catch_0
    move-exception v0

    .line 2591
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public savedPersonalModePinExists()Z
    .locals 3

    .prologue
    .line 2531
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 2533
    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePin(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2535
    :goto_0
    return v2

    .line 2534
    :catch_0
    move-exception v0

    .line 2535
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

    .line 2496
    :try_start_0
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p1, v2, :cond_1

    .line 2497
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePin(I)Z

    move-result v1

    .line 2506
    :cond_0
    :goto_0
    return v1

    .line 2498
    :cond_1
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Password:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p1, v2, :cond_2

    .line 2499
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePassword(I)Z

    move-result v1

    goto :goto_0

    .line 2500
    :cond_2
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p1, v2, :cond_3

    .line 2501
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePattern(I)Z

    move-result v1

    goto :goto_0

    .line 2502
    :cond_3
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p1, v2, :cond_0

    .line 2503
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/internal/widget/ILockSettings;->havePersonalModeBackupPin(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2505
    :catch_0
    move-exception v0

    .line 2506
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setAppLockFingerPrintLockscreen(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 2707
    const-string/jumbo v0, "lockscreen.applock_fingerprint"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 2708
    return-void
.end method

.method public setBiometricLockscreen(II)V
    .locals 8
    .param p1, "biometric_type"    # I
    .param p2, "userId"    # I

    .prologue
    .line 3096
    if-nez p1, :cond_0

    .line 3097
    const-string/jumbo v5, "lockscreen.samsung_biometric"

    const-wide/16 v6, 0x0

    invoke-direct {p0, v5, v6, v7, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 3111
    :goto_0
    return-void

    .line 3099
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(I)I

    move-result v2

    .line 3100
    .local v2, "oldValue":I
    const/4 v0, 0x0

    .line 3103
    .local v0, "biometric_value":I
    add-int v5, p1, p1

    or-int v3, p1, v5

    .line 3104
    .local v3, "removeType":I
    xor-int/lit8 v5, p1, -0x1

    and-int v4, v2, v5

    .line 3107
    .local v4, "removedvalue":I
    or-int v1, v4, p1

    .line 3108
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

    .line 3109
    const-string/jumbo v5, "lockscreen.samsung_biometric"

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
    .line 3114
    if-nez p1, :cond_0

    .line 3115
    const-string/jumbo v5, "lockscreen.samsung_biometric"

    const-wide/16 v6, 0x0

    invoke-direct {p0, v5, v6, v7, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 3133
    :goto_0
    return-void

    .line 3117
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(I)I

    move-result v2

    .line 3118
    .local v2, "oldValue":I
    const/4 v0, 0x0

    .line 3121
    .local v0, "biometric_value":I
    add-int v5, p1, p1

    or-int v3, p1, v5

    .line 3122
    .local v3, "removeType":I
    xor-int/lit8 v5, v3, -0x1

    and-int v4, v2, v5

    .line 3124
    .local v4, "removedvalue":I
    const/4 v5, 0x1

    if-ne p2, v5, :cond_2

    .line 3125
    move v0, p1

    .line 3129
    :cond_1
    :goto_1
    or-int v1, v4, v0

    .line 3130
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

    .line 3131
    const-string/jumbo v5, "lockscreen.samsung_biometric"

    int-to-long v6, v1

    invoke-direct {p0, v5, v6, v7, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    goto :goto_0

    .line 3126
    .end local v1    # "newValue":I
    :cond_2
    const/4 v5, 0x2

    if-ne p2, v5, :cond_1

    .line 3127
    add-int v0, p1, p1

    goto :goto_1
.end method

.method public setCACPasswordEnabled(ZI)Z
    .locals 3
    .param p1, "status"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 3389
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

    .line 3390
    const-string/jumbo v0, "lockscreen.smartcard_type"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 3391
    const/4 v0, 0x1

    return v0
.end method

.method public setCarrierLockoutAttemptDeadline(I)J
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 2874
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x927c0

    add-long v0, v2, v4

    .line 2875
    .local v0, "deadline":J
    const-string/jumbo v2, "sktlockscreen.lockoutdeadline"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2876
    return-wide v0
.end method

.method public setContainerPasswordState(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 19
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedPassword"    # Ljava/lang/String;
    .param p3, "containerId"    # I

    .prologue
    .line 2978
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 2979
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v4, 0x0

    .line 2980
    .local v4, "letters":I
    const/4 v5, 0x0

    .line 2981
    .local v5, "uppercase":I
    const/4 v6, 0x0

    .line 2982
    .local v6, "lowercase":I
    const/4 v7, 0x0

    .line 2983
    .local v7, "numbers":I
    const/4 v8, 0x0

    .line 2984
    .local v8, "symbols":I
    const/4 v9, 0x0

    .line 2986
    .local v9, "nonletter":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v12, v3, :cond_3

    .line 2987
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 2988
    .local v11, "c":C
    const/16 v3, 0x41

    if-lt v11, v3, :cond_0

    const/16 v3, 0x5a

    if-gt v11, v3, :cond_0

    .line 2989
    add-int/lit8 v4, v4, 0x1

    .line 2990
    add-int/lit8 v5, v5, 0x1

    .line 2986
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2991
    :cond_0
    const/16 v3, 0x61

    if-lt v11, v3, :cond_1

    const/16 v3, 0x7a

    if-gt v11, v3, :cond_1

    .line 2992
    add-int/lit8 v4, v4, 0x1

    .line 2993
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2994
    :cond_1
    const/16 v3, 0x30

    if-lt v11, v3, :cond_2

    const/16 v3, 0x39

    if-gt v11, v3, :cond_2

    .line 2995
    add-int/lit8 v7, v7, 0x1

    .line 2996
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2998
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 2999
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 3003
    .end local v11    # "c":C
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v10, p3

    invoke-virtual/range {v2 .. v10}, Landroid/app/admin/DevicePolicyManager;->setAlternativePasswordState(IIIIIIII)V

    .line 3006
    if-eqz p2, :cond_8

    .line 3007
    const/4 v13, 0x0

    .line 3008
    .local v13, "letters_old":I
    const/16 v18, 0x0

    .line 3009
    .local v18, "uppercase_old":I
    const/4 v14, 0x0

    .line 3010
    .local v14, "lowercase_old":I
    const/16 v16, 0x0

    .line 3011
    .local v16, "numbers_old":I
    const/16 v17, 0x0

    .line 3012
    .local v17, "symbols_old":I
    const/4 v15, 0x0

    .line 3013
    .local v15, "nonletter_old":I
    const/4 v12, 0x0

    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v12, v3, :cond_7

    .line 3014
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 3015
    .restart local v11    # "c":C
    const/16 v3, 0x41

    if-lt v11, v3, :cond_4

    const/16 v3, 0x5a

    if-gt v11, v3, :cond_4

    .line 3016
    add-int/lit8 v13, v13, 0x1

    .line 3017
    add-int/lit8 v18, v18, 0x1

    .line 3013
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 3018
    :cond_4
    const/16 v3, 0x61

    if-lt v11, v3, :cond_5

    const/16 v3, 0x7a

    if-gt v11, v3, :cond_5

    .line 3019
    add-int/lit8 v13, v13, 0x1

    .line 3020
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 3021
    :cond_5
    const/16 v3, 0x30

    if-lt v11, v3, :cond_6

    const/16 v3, 0x39

    if-gt v11, v3, :cond_6

    .line 3022
    add-int/lit8 v16, v16, 0x1

    .line 3023
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 3025
    :cond_6
    add-int/lit8 v17, v17, 0x1

    .line 3026
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 3030
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

    .line 3034
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_8

    .line 3035
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v10, p3

    invoke-virtual/range {v2 .. v10}, Landroid/app/admin/DevicePolicyManager;->setAlternativePasswordStateForEAS(IIIIIIII)V

    .line 3041
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

    .line 3042
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyManager;->copyAlternativeToActivePasswordState(I)V

    .line 3044
    :cond_9
    return-void
.end method

.method public setCredentialRequiredToDecrypt(Z)V
    .locals 3
    .param p1, "required"    # Z

    .prologue
    .line 2129
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2130
    const-string v0, "LockPatternUtils"

    const-string v1, "Only device owner may call setCredentialRequiredForDecrypt()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    :cond_0
    :goto_0
    return-void

    .line 2134
    :cond_1
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2135
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
    .line 594
    sput p1, Lcom/android/internal/widget/LockPatternUtils;->sCurrentUserId:I

    .line 595
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
    .line 2063
    .local p1, "activeTrustAgents":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/ComponentName;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2064
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

    .line 2065
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 2066
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2068
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2070
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_1
    const-string/jumbo v3, "lockscreen.enabledtrustagents"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, p2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2071
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    .line 2072
    return-void
.end method

.method public setEnterpriseIdentityLock(Z)Z
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setEnterpriseIdentityLock(ZI)Z

    .line 574
    const/4 v0, 0x1

    return v0
.end method

.method public setEnterpriseIdentityLock(ZI)Z
    .locals 1
    .param p1, "status"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 583
    const-string/jumbo v0, "lockscreen.enterpriseidentity_type"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 584
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

    .line 565
    const/16 v2, 0x64

    if-lt p2, v2, :cond_0

    .line 566
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "lockscreen.enterpriseidentity_selected"

    if-ne p1, v0, :cond_1

    :goto_0
    invoke-static {v2, v3, v0, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v1

    .line 569
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 566
    goto :goto_0
.end method

.method public setFingerPrintLockscreen(II)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3066
    const-string/jumbo v0, "lockscreen.enabled_fingerprint"

    int-to-long v2, p1

    invoke-direct {p0, v0, v2, v3, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 3067
    return-void
.end method

.method public setFingerPrintLockscreen(ZI)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3054
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 3055
    .local v0, "state":I
    :goto_0
    const-string/jumbo v1, "lockscreen.enabled_fingerprint"

    int-to-long v2, v0

    invoke-direct {p0, v1, v2, v3, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 3056
    return-void

    .line 3054
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
    .line 1075
    const-string/jumbo v0, "migrated_fingerprint_fota_key"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1076
    return-void
.end method

.method public setLockFingerprintEnabled(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 3342
    const-string/jumbo v0, "lockscreen.enabled_fingerprint"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 3343
    return-void
.end method

.method public setLockPatternEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1660
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(ZI)V

    .line 1661
    return-void
.end method

.method public setLockPatternEnabled(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userHandle"    # I

    .prologue
    .line 1667
    const-string/jumbo v0, "lock_pattern_autolock"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1668
    return-void
.end method

.method public setLockScreenDisabled(ZI)V
    .locals 1
    .param p1, "disable"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 860
    const-string/jumbo v0, "lockscreen.disabled"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 861
    return-void
.end method

.method public setLockoutAttemptDeadline(I)J
    .locals 8
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v6, 0x5

    const-wide/16 v4, 0x1

    .line 1813
    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    add-long/2addr v2, v4

    sput-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    .line 1814
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1815
    .local v0, "deadline":J
    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->isFollowLegacyTimeoutPolicy()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1816
    :cond_0
    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    .line 1828
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lockscreen.failedUnlockAttemptNumber"

    sget-wide v4, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1830
    const-string/jumbo v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1831
    return-wide v0

    .line 1817
    :cond_2
    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 1818
    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    goto :goto_0

    .line 1819
    :cond_3
    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    const-wide/16 v4, 0x3

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 1820
    const-wide/32 v2, 0x493e0

    add-long/2addr v0, v2

    goto :goto_0

    .line 1821
    :cond_4
    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 1822
    const-wide/32 v2, 0x927c0

    add-long/2addr v0, v2

    goto :goto_0

    .line 1823
    :cond_5
    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_6

    .line 1824
    const-wide/32 v2, 0x1b7740

    add-long/2addr v0, v2

    goto :goto_0

    .line 1825
    :cond_6
    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    .line 1826
    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public setLockoutAttemptDeadline(II)J
    .locals 6
    .param p1, "userId"    # I
    .param p2, "timeoutMs"    # I

    .prologue
    .line 1800
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p2

    add-long v0, v2, v4

    .line 1801
    .local v0, "deadline":J
    const-string/jumbo v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1802
    const-string/jumbo v2, "lockscreen.lockoutattempttimeoutmss"

    int-to-long v4, p2

    invoke-direct {p0, v2, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1803
    return-wide v0
.end method

.method public setOwnerInfo(Ljava/lang/String;I)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1053
    const-string/jumbo v0, "lock_screen_owner_info"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1054
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->updateCryptoUserInfo(I)V

    .line 1055
    return-void
.end method

.method public setOwnerInfoEnabled(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1058
    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1059
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->updateCryptoUserInfo(I)V

    .line 1060
    return-void
.end method

.method public setPermanentlyLocked(Z)V
    .locals 1
    .param p1, "locked"    # Z

    .prologue
    .line 1921
    const-string/jumbo v0, "lockscreen.lockedoutpermanently"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1922
    return-void
.end method

.method public setPowerButtonInstantlyLocks(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1993
    const-string/jumbo v0, "lockscreen.power_button_instantly_locks"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1994
    return-void
.end method

.method public setPrevLockFingerprintEnabled(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 3350
    const-string/jumbo v0, "prev_lock_type"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 3351
    return-void
.end method

.method public setPrivateModeFingerPrintLockscreen(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 3188
    const-string/jumbo v0, "lockscreen.privatemode_fingerprint"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 3189
    return-void
.end method

.method public setRecoveryScreenLocked(Z)V
    .locals 1
    .param p1, "locked"    # Z

    .prologue
    .line 3370
    const-string/jumbo v0, "lockscreen.lockedoutRecovery"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 3371
    return-void
.end method

.method public setRejectModeLocked(Z)V
    .locals 2
    .param p1, "locked"    # Z

    .prologue
    .line 3657
    const-string/jumbo v0, "lockscreen.lgt_reject_cause"

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 3658
    return-void
.end method

.method public setRejectModeLocked(ZI)V
    .locals 1
    .param p1, "locked"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 3661
    const-string/jumbo v0, "lockscreen.lgt_reject_cause"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 3662
    return-void
.end method

.method public setSmartUnlockEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1764
    const-string/jumbo v0, "lock_smart_unlock_enabled"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1765
    return-void
.end method

.method public setSmartUnlockEnabled(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userid"    # I

    .prologue
    .line 1768
    const-string/jumbo v0, "lock_smart_unlock_enabled"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1769
    return-void
.end method

.method public setSwipeSmartLock(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2968
    sput-boolean p1, Lcom/android/internal/widget/LockPatternUtils;->mSwipeSmartLock:Z

    .line 2969
    return-void
.end method

.method public setVisiblePasswordEnabled(ZI)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1724
    if-eqz p2, :cond_0

    .line 1740
    :goto_0
    return-void

    .line 1728
    :cond_0
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1729
    .local v2, "service":Landroid/os/IBinder;
    if-nez v2, :cond_1

    .line 1730
    const-string v3, "LockPatternUtils"

    const-string v4, "Could not find the mount service to update the user info"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1734
    :cond_1
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 1736
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

    .line 1737
    :catch_0
    move-exception v0

    .line 1738
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "LockPatternUtils"

    const-string v4, "Error changing password visible state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1736
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
    .line 1693
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternDisabledByMDM()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    .line 1694
    const-string v3, "LockPatternUtils"

    const-string v4, "Could not enable visible pattern by IT admin."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    :cond_0
    :goto_0
    return-void

    .line 1698
    :cond_1
    const-string/jumbo v3, "lock_pattern_visible_pattern"

    invoke-direct {p0, v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1701
    if-nez p2, :cond_0

    .line 1705
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1706
    .local v2, "service":Landroid/os/IBinder;
    if-nez v2, :cond_2

    .line 1707
    const-string v3, "LockPatternUtils"

    const-string v4, "Could not find the mount service to update the user info"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1711
    :cond_2
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 1713
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

    .line 1714
    :catch_0
    move-exception v0

    .line 1715
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "LockPatternUtils"

    const-string v4, "Error changing pattern visible state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1713
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
    .line 3460
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.smartcard.pinservice.CARD_NOT_REGISTERED_ERROR_DIALOG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3461
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3463
    :try_start_0
    const-string v2, "LockPatternUtils"

    const-string/jumbo v3, "showCardNotRegisteredDialog called "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3464
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3469
    :goto_0
    return-void

    .line 3465
    :catch_0
    move-exception v0

    .line 3466
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
    .line 2158
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStub:Landroid/app/trust/IStrongAuthTracker$Stub;

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2162
    :goto_0
    return-void

    .line 2159
    :catch_0
    move-exception v0

    .line 2160
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
    .line 2835
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->updateCarrierLockPlusMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2838
    :goto_0
    return v1

    .line 2836
    :catch_0
    move-exception v0

    .line 2837
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

    .line 2838
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public usingBiometricWeak(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 884
    const-string/jumbo v1, "lockscreen.password_type"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int v0, v2

    .line 886
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
    .line 1775
    const-string/jumbo v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int v0, v2

    .line 1777
    .local v0, "quality":I
    const v1, 0x9100

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x90000

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1780
    const/4 v1, 0x1

    .line 1782
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

    .line 3632
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/widget/ILockSettings;->verifyBackupPassword(Ljava/lang/String;JIZ)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v7

    .line 3635
    .local v7, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 3636
    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v0

    .line 3643
    .end local v7    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_0
    return-object v0

    .line 3637
    .restart local v7    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_0
    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3638
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3642
    .end local v7    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v6

    .local v6, "re":Landroid/os/RemoteException;
    move-object v0, v8

    .line 3643
    goto :goto_0

    .end local v6    # "re":Landroid/os/RemoteException;
    .restart local v7    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    move-object v0, v8

    .line 3640
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

    .line 2400
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->verifyBackupPin(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 2403
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_1

    .line 2404
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v2

    .line 2411
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_0
    :goto_0
    return-object v2

    .line 2405
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2406
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2410
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    .line 2411
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

    .line 641
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->verifyPassword(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 644
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_1

    .line 645
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v2

    .line 652
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_0
    :goto_0
    return-object v2

    .line 646
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 647
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    .line 652
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

    .line 473
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->verifyPattern(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 475
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-nez v1, :cond_1

    .line 488
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_0
    :goto_0
    return-object v2

    .line 480
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_2

    .line 481
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v2

    goto :goto_0

    .line 482
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 483
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    .line 488
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.class public Lcom/android/server/usb/UsbHostRestrictor;
.super Ljava/lang/Object;
.source "UsbHostRestrictor.java"


# static fields
.field private static final ALLOW:I = 0x0

.field private static final DISALLOW:I = 0x1

.field private static final INIT:I = 0x2

.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "UsbHostRestrictor"

.field private static final USB_HOST_DISABLE_FILE_PATH:Ljava/lang/String; = "/sys/class/usb_notify/usb_control/disable"
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private static final USB_HOST_ENABLE_PATH:Ljava/lang/String; = "/sys/class/usb_notify"

.field private static final USB_HOST_PATH:Ljava/lang/String; = "/devices/virtual/host_notify"

.field private static final USB_HOST_UEVENT:Ljava/lang/String; = "DEVPATH=/devices/virtual/host_notify"

.field private static final USB_RESTRICTION_INTENT:Ljava/lang/String; = "com.sec.enterprise.intent.action.UPDATE_ALLOW_USB_HOST_STORAGE_STATE_INTERNAL"

.field private static isMDMBlock:Z

.field private static isSIMBlock:Z

.field private static isUPSMBlock:Z

.field private static mCurrentSysNodeValue:Ljava/lang/String;

.field private static mPowerManager:Landroid/os/PowerManager;

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private mBootCompleted:Z

.field private final mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field private final mLock:Ljava/lang/Object;

.field private final mSubscriptionIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUEventHostObserver:Landroid/os/UEventObserver;

.field private final mUPSMReceiver:Landroid/content/BroadcastReceiver;

.field private final mUsbHostRestrictionReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    const-string v0, "OFF"

    sput-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    .line 111
    sput-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    .line 112
    sput-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isUPSMBlock:Z

    .line 113
    sput-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    .line 116
    sput-object v2, Lcom/android/server/usb/UsbHostRestrictor;->mPowerManager:Landroid/os/PowerManager;

    .line 117
    sput-object v2, Lcom/android/server/usb/UsbHostRestrictor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mUsbDeviceManager"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mLock:Ljava/lang/Object;

    .line 170
    new-instance v0, Lcom/android/server/usb/UsbHostRestrictor$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostRestrictor$1;-><init>(Lcom/android/server/usb/UsbHostRestrictor;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mBootCompleted:Z

    .line 290
    new-instance v0, Lcom/android/server/usb/UsbHostRestrictor$2;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostRestrictor$2;-><init>(Lcom/android/server/usb/UsbHostRestrictor;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mUsbHostRestrictionReceiver:Landroid/content/BroadcastReceiver;

    .line 346
    new-instance v0, Lcom/android/server/usb/UsbHostRestrictor$3;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostRestrictor$3;-><init>(Lcom/android/server/usb/UsbHostRestrictor;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mSubscriptionIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 386
    new-instance v0, Lcom/android/server/usb/UsbHostRestrictor$4;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostRestrictor$4;-><init>(Lcom/android/server/usb/UsbHostRestrictor;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mUPSMReceiver:Landroid/content/BroadcastReceiver;

    .line 713
    new-instance v0, Lcom/android/server/usb/UsbHostRestrictor$5;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostRestrictor$5;-><init>(Lcom/android/server/usb/UsbHostRestrictor;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mUEventHostObserver:Landroid/os/UEventObserver;

    .line 123
    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    .line 125
    iput-object p2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 127
    new-instance v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 129
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mUEventHostObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/host_notify"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mUsbHostRestrictionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sec.enterprise.intent.action.UPDATE_ALLOW_USB_HOST_STORAGE_STATE_INTERNAL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mSubscriptionIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 151
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mUPSMReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->handleBootCompleteBroadcast()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 92
    sget-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getPowerManager()V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 92
    sput-boolean p0, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->turnOnLcd()V

    return-void
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->showAlertDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->showToast()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->showMDMToast()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 92
    sget-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->isUPSMBlock:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 92
    sput-boolean p0, Lcom/android/server/usb/UsbHostRestrictor;->isUPSMBlock:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbHostRestrictor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 92
    sget-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 92
    sput-boolean p0, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/usb/UsbHostRestrictor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/usb/UsbHostRestrictor;)Lcom/android/server/usb/UsbDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->showToastByIntent()V

    return-void
.end method

.method private checkBuildType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 485
    const-string/jumbo v2, "ro.build.type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, "checkType":Ljava/lang/String;
    const-string v2, "eng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 490
    const-string v0, "ENG"

    .line 497
    .local v0, "buildType":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 491
    .end local v0    # "buildType":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 492
    const-string v0, "USER"

    .restart local v0    # "buildType":Ljava/lang/String;
    goto :goto_0

    .line 494
    .end local v0    # "buildType":Ljava/lang/String;
    :cond_1
    const-string v0, "ENG"

    .restart local v0    # "buildType":Ljava/lang/String;
    goto :goto_0
.end method

.method private checkUsbBlockingCondition(Ljava/lang/String;)Z
    .locals 4
    .param p1, "disableValue"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 557
    const-string v2, "ENG"

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->checkBuildType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 558
    const-string v1, "UsbHostRestrictor"

    const-string v2, "Cannot DISABLE USB at ENG BINARY"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :goto_0
    return v0

    .line 560
    :cond_0
    const-string v2, "USER"

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->checkBuildType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 561
    const-string v2, "CHM"

    const-string/jumbo v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 562
    const-string v2, "ON_ALL_SIM"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ON_ALL_UPSM"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ON_ALL_BOTH"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ON_HOST_MDM"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 565
    :cond_1
    const-string v0, "UsbHostRestrictor"

    const-string v2, "DISABLE USB for USER BINARY and CMCC MODEL"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 566
    goto :goto_0

    .line 567
    :cond_2
    const-string v1, "OFF"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 568
    const-string v1, "UsbHostRestrictor"

    const-string v2, "NOT DISABLE USB 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 571
    :cond_3
    const-string v1, "UsbHostRestrictor"

    const-string v2, "NOT DISABLE USB 2"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 575
    :cond_4
    const-string v2, "ON_ALL_UPSM"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "ON_ALL_BOTH"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "ON_HOST_MDM"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 578
    :cond_5
    const-string v0, "UsbHostRestrictor"

    const-string v2, "DISABLE USB for USER BINARY and Ultra Power Save Mode or MDM block"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 579
    goto :goto_0

    .line 580
    :cond_6
    const-string v1, "OFF"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 581
    const-string v1, "UsbHostRestrictor"

    const-string v2, "NOT DISABLE USB 3"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 584
    :cond_7
    const-string v1, "UsbHostRestrictor"

    const-string v2, "NOT DISABLE USB 4"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 589
    :cond_8
    const-string v1, "UsbHostRestrictor"

    const-string v2, "NOT DISABLE USB 5"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getPowerManager()V
    .locals 3

    .prologue
    .line 696
    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mPowerManager:Landroid/os/PowerManager;

    .line 698
    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "UsbHost"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 699
    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 701
    :cond_0
    return-void
.end method

.method private getUsbHostDisableSysNodeWritable()Z
    .locals 5

    .prologue
    .line 625
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/usb_notify"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 629
    .local v0, "path":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 630
    const/4 v1, 0x1

    .line 635
    .local v1, "writableHostSysNode":Z
    :goto_0
    const-string v2, "UsbHostRestrictor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writableHostSysNode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    return v1

    .line 632
    .end local v1    # "writableHostSysNode":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "writableHostSysNode":Z
    goto :goto_0
.end method

.method private handleBootCompleteBroadcast()V
    .locals 2

    .prologue
    .line 182
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mBootCompleted:Z

    .line 186
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->initSetUsbBlock()V

    .line 187
    monitor-exit v1

    .line 188
    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initSetUsbBlock()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 436
    const/4 v0, -0x1

    .line 438
    .local v0, "count":I
    const-string/jumbo v4, "sys.config.usbSIMblock"

    const-string/jumbo v5, "true"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 439
    .local v1, "isNeedSimBlock":Z
    :goto_0
    const-string v4, "UsbHostRestrictor"

    const-string/jumbo v5, "initSetUsbBlock STARTED"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getAllSubInfoCount()I

    move-result v0

    .line 442
    if-nez v0, :cond_2

    const-string v4, "CHM"

    const-string/jumbo v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    sput-boolean v2, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    .line 449
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/usb/UsbHostRestrictor;->isUPSMBlock:Z

    .line 451
    sget-boolean v2, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    if-eqz v2, :cond_5

    sget-boolean v2, Lcom/android/server/usb/UsbHostRestrictor;->isUPSMBlock:Z

    if-eqz v2, :cond_5

    .line 452
    const-string v2, "UsbHostRestrictor"

    const-string v3, "SIM was never inserted and UPSM is ON"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 456
    const-string v2, "ON_ALL_BOTH"

    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    .line 481
    :goto_2
    return-void

    .end local v1    # "isNeedSimBlock":Z
    :cond_1
    move v1, v3

    .line 438
    goto :goto_0

    .line 443
    .restart local v1    # "isNeedSimBlock":Z
    :cond_2
    if-lez v0, :cond_3

    sput-boolean v3, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    goto :goto_1

    .line 444
    :cond_3
    if-gez v0, :cond_0

    .line 445
    sput-boolean v3, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    .line 446
    const-string v2, "UsbHostRestrictor"

    const-string v3, "SUBINFO value is abnormal"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 458
    :cond_4
    const-string v2, "UsbHostRestrictor"

    const-string v3, "Can NOT Write Disable Sys Node to [ON] 1"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 460
    :cond_5
    sget-boolean v2, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    if-eqz v2, :cond_7

    .line 461
    const-string v2, "UsbHostRestrictor"

    const-string v3, "SIM was never inserted"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 465
    const-string v2, "ON_ALL_SIM"

    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    goto :goto_2

    .line 467
    :cond_6
    const-string v2, "UsbHostRestrictor"

    const-string v3, "Can NOT Write Disable Sys Node to [ON] 1"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 469
    :cond_7
    sget-boolean v2, Lcom/android/server/usb/UsbHostRestrictor;->isUPSMBlock:Z

    if-eqz v2, :cond_9

    .line 470
    const-string v2, "UsbHostRestrictor"

    const-string v3, "SIM was already inserted, but UPSM is ON"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 474
    const-string v2, "ON_ALL_UPSM"

    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    goto :goto_2

    .line 476
    :cond_8
    const-string v2, "UsbHostRestrictor"

    const-string v3, "Can NOT Write Disable Sys Node to [ON] 1"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 479
    :cond_9
    const-string v2, "UsbHostRestrictor"

    const-string/jumbo v3, "isSIMBlock, isUPSMBlock are false"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static isUsbBlocked()Z
    .locals 3

    .prologue
    .line 678
    const/4 v0, 0x0

    .line 680
    .local v0, "returnUsbBlockState":Z
    sget-object v1, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    const/4 v0, 0x1

    .line 692
    :goto_0
    return v0

    .line 683
    :cond_0
    sget-object v1, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    const-string v2, "OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 685
    const/4 v0, 0x0

    goto :goto_0

    .line 687
    :cond_1
    const-string v1, "UsbHostRestrictor"

    const-string v2, "Current USB BLOCK STATE is UNKNOWN!! So USB is UNBLOCKED as a default value"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readDisableSysNodefromFile()Ljava/lang/String;
    .locals 5

    .prologue
    .line 595
    const-string v1, ""

    .line 599
    .local v1, "returnVal":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/usb_notify/usb_control/disable"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 608
    :goto_0
    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 611
    sput-object v1, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    .line 612
    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    sget-object v3, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbDeviceManager;->setUsbDisableVariable(Ljava/lang/String;)V

    .line 618
    :goto_1
    return-object v1

    .line 601
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "UsbHostRestrictor"

    const-string v3, "Failed to read from DISABLE FILE"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 614
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const-string v2, "OFF"

    sput-object v2, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    .line 615
    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    sget-object v3, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbDeviceManager;->setUsbDisableVariable(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private showAlertDialog()V
    .locals 5

    .prologue
    .line 641
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 642
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.SettingsReceiverActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 643
    const-string v2, "cmcc_block_usb"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 644
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 647
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    :goto_0
    return-void

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "UsbHostRestrictor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to start activity to show the USB BLOCK Dialog : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showMDMToast()V
    .locals 4

    .prologue
    .line 667
    const-string v2, "UsbHostRestrictor"

    const-string/jumbo v3, "showMDMToast"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 671
    .local v0, "mEDM":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_0

    .line 672
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    .line 673
    .local v1, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/enterprise/RestrictionPolicy;->isUsbHostStorageAllowed(Z)Z

    .line 675
    .end local v1    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_0
    return-void
.end method

.method private showToast()V
    .locals 2

    .prologue
    .line 655
    const-string v0, "UsbHostRestrictor"

    const-string/jumbo v1, "showToast"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->showUsbBlockToastbyUPSM()V

    .line 658
    return-void
.end method

.method private showToastByIntent()V
    .locals 2

    .prologue
    .line 661
    const-string v0, "UsbHostRestrictor"

    const-string/jumbo v1, "showToastByIntent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->showUsbBlockToastbyUPSMIntent()V

    .line 664
    return-void
.end method

.method private turnOnLcd()V
    .locals 4

    .prologue
    .line 704
    const-string v0, "UsbHostRestrictor"

    const-string/jumbo v1, "turnOnLcd :: "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getPowerManager()V

    .line 706
    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 707
    :cond_0
    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 708
    :cond_1
    return-void
.end method

.method private writeDisableSysNodetoFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "writeValue"    # Ljava/lang/String;

    .prologue
    .line 501
    const-string v1, "UsbHostRestrictor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Write Disable Sys Node with ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const-string v1, "OFF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 505
    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isUPSMBlock:Z

    if-eqz v1, :cond_2

    const-string p1, "ON_ALL_BOTH"

    .line 510
    :cond_0
    :goto_0
    const-string v1, "UsbHostRestrictor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Write Disable Sys Node change to ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const-string v1, "OFF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 513
    const-string v1, "UsbHostRestrictor"

    const-string v2, "FINALLY Write Disable Sys Node OFF, then change the USB MODE to DEFAULT"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v2}, Lcom/android/server/usb/UsbDeviceManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;)V

    .line 537
    :cond_1
    :goto_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostRestrictor;->checkUsbBlockingCondition(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 538
    const-string v1, "/sys/class/usb_notify/usb_control/disable"

    invoke-static {v1, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    sput-object p1, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    .line 540
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    sget-object v2, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceManager;->setUsbDisableVariable(Ljava/lang/String;)V

    .line 541
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbDeviceManager;->updateUsbNotificationRefresh()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :goto_2
    return-void

    .line 506
    :cond_2
    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    if-eqz v1, :cond_3

    const-string p1, "ON_ALL_SIM"

    goto :goto_0

    .line 507
    :cond_3
    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isUPSMBlock:Z

    if-eqz v1, :cond_4

    const-string p1, "ON_ALL_UPSM"

    goto :goto_0

    .line 508
    :cond_4
    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    if-eqz v1, :cond_0

    const-string p1, "ON_HOST_MDM"

    goto :goto_0

    .line 515
    :cond_5
    const-string v1, "ON_ALL_SIM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "ON_HOST_MDM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 516
    :cond_6
    const-string v1, "UsbHostRestrictor"

    const-string v2, "For SIM Block and MDM HOST Block, change the USB MODE to DEFAULT"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v2}, Lcom/android/server/usb/UsbDeviceManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;)V

    goto :goto_1

    .line 520
    :cond_7
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v2, "none"

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;)V

    goto :goto_1

    .line 522
    :cond_8
    const-string v1, "ON_ALL_UPSM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "ON_ALL_SIM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 523
    :cond_9
    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    if-eqz v1, :cond_a

    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isUPSMBlock:Z

    if-eqz v1, :cond_a

    const-string p1, "ON_ALL_BOTH"

    .line 524
    :cond_a
    const-string v1, "UsbHostRestrictor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Write Disable Sys Node change to ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const-string v1, "ON_ALL_SIM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 527
    const-string v1, "UsbHostRestrictor"

    const-string v2, "For SIM Block , change the USB MODE to DEFAULT"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v2}, Lcom/android/server/usb/UsbDeviceManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 531
    :cond_b
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v2, "none"

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 543
    :cond_c
    :try_start_1
    const-string v1, "/sys/class/usb_notify/usb_control/disable"

    const-string v2, "OFF"

    invoke-static {v1, v2}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v1, "OFF"

    sput-object v1, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    .line 545
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    sget-object v2, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceManager;->setUsbDisableVariable(Ljava/lang/String;)V

    .line 546
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbDeviceManager;->updateUsbNotificationRefresh()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "UsbHostRestrictor"

    const-string v2, "Failed to write to DISABLE FILE"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const-string v1, "OFF"

    sput-object v1, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    .line 551
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    sget-object v2, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceManager;->setUsbDisableVariable(Ljava/lang/String;)V

    .line 552
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbDeviceManager;->updateUsbNotificationRefresh()V

    goto/16 :goto_2
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 157
    :try_start_0
    const-string v0, "USB Host Restrictor State:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor mBootCompleted:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mBootCompleted:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor MultiSimManager.getAllSubInfoCount:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getAllSubInfoCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor Disable Sys Node Value :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor Disable Sys Node Writable :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor mCurrentSysNodeValue :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor UPSM ON/OFF :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor SUPPORT UPSM :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor MDM ON/OFF :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor SIM BLOCK ON/OFF :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 167
    monitor-exit v1

    .line 168
    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

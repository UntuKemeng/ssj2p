.class public Lcom/android/server/usb/UsbPortManager;
.super Ljava/lang/Object;
.source "UsbPortManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;,
        Lcom/android/server/usb/UsbPortManager$PortInfo;,
        Lcom/android/server/usb/UsbPortManager$UsbPortManagerHandler;
    }
.end annotation


# static fields
.field private static final COMBO_SINK_DEVICE:I

.field private static final COMBO_SINK_HOST:I

.field private static final COMBO_SOURCE_DEVICE:I

.field private static final COMBO_SOURCE_HOST:I

.field private static final MSG_UPDATE_PORTS:I = 0x1

.field private static final PORT_DATA_ROLE_DEVICE:Ljava/lang/String; = "device"

.field private static final PORT_DATA_ROLE_HOST:Ljava/lang/String; = "host"

.field private static final PORT_MODE_DFP:Ljava/lang/String; = "dfp"

.field private static final PORT_MODE_UFP:Ljava/lang/String; = "ufp"

.field private static final PORT_POWER_ROLE_SINK:Ljava/lang/String; = "sink"

.field private static final PORT_POWER_ROLE_SOURCE:Ljava/lang/String; = "source"

.field private static final SYSFS_CLASS:Ljava/lang/String; = "/sys/class/dual_role_usb"

.field private static final SYSFS_PORT_DATA_ROLE:Ljava/lang/String; = "data_role"

.field private static final SYSFS_PORT_MODE:Ljava/lang/String; = "mode"

.field private static final SYSFS_PORT_POWER_ROLE:Ljava/lang/String; = "power_role"

.field private static final SYSFS_PORT_SUPPORTED_MODES:Ljava/lang/String; = "supported_modes"

.field private static final TAG:Ljava/lang/String; = "UsbPortManager"

.field private static final UEVENT_FILTER:Ljava/lang/String; = "SUBSYSTEM=dual_role_usb"

.field private static final USB_PERSISTENT_DUALROLE_PROPERTY:Ljava/lang/String; = "persist.sys.usb.dualrole"

.field private static final USB_TYPEC_PROP_PREFIX:Ljava/lang/String; = "sys.usb.typec."

.field private static final USB_TYPEC_STATE:Ljava/lang/String; = "sys.usb.typec.state"

.field private static mCanChangeDataRole:Z

.field private static mCanChangeMode:Z

.field private static mCanChangePowerRole:Z

.field private static mPrePowerRole:I

.field private static mSupportedModes:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHaveKernelSupport:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPorts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/usb/UsbPortManager$PortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSimulatedPorts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUEventObserver:Landroid/os/UEventObserver;

.field private mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 105
    invoke-static {v1, v1}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v0

    sput v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    .line 107
    invoke-static {v1, v2}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v0

    sput v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_DEVICE:I

    .line 109
    invoke-static {v2, v1}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v0

    sput v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_HOST:I

    .line 111
    invoke-static {v2, v2}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v0

    sput v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_DEVICE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "usbDeviceManager"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    .line 130
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    .line 133
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    .line 957
    new-instance v1, Lcom/android/server/usb/UsbPortManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbPortManager$2;-><init>(Lcom/android/server/usb/UsbPortManager;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mUEventObserver:Landroid/os/UEventObserver;

    .line 171
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    .line 172
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/dual_role_usb"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/usb/UsbPortManager;->mHaveKernelSupport:Z

    .line 173
    const/4 v1, -0x1

    sput v1, Lcom/android/server/usb/UsbPortManager;->mPrePowerRole:I

    .line 174
    iput-object p2, p0, Lcom/android/server/usb/UsbPortManager;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 176
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UsbPortManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, "hthread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 178
    new-instance v1, Lcom/android/server/usb/UsbPortManager$UsbPortManagerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/usb/UsbPortManager$UsbPortManagerHandler;-><init>(Lcom/android/server/usb/UsbPortManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    .line 180
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbPortManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbPortManager;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbPortManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbPortManager;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;Landroid/os/UEventObserver$UEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbPortManager;
    .param p1, "x1"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "x2"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Landroid/os/UEventObserver$UEvent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbPortManager;Landroid/os/UEventObserver$UEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbPortManager;
    .param p1, "x1"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbPortManager;->scheduleUpdatePorts(Landroid/os/UEventObserver$UEvent;)V

    return-void
.end method

.method private addOrUpdatePortLocked(Ljava/lang/String;IIZIZIZLcom/android/internal/util/IndentingPrintWriter;)V
    .locals 9
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "supportedModes"    # I
    .param p3, "currentMode"    # I
    .param p4, "canChangeMode"    # Z
    .param p5, "currentPowerRole"    # I
    .param p6, "canChangePowerRole"    # Z
    .param p7, "currentDataRole"    # I
    .param p8, "canChangeDataRole"    # Z
    .param p9, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 607
    const-string v2, "UsbPortManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addOrUpdatePortLocked()++ : portId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", supportedModes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currentMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", canChangeMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currentPowerRole="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p5}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", canChangePowerRole="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currentDataRole="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p7 .. p7}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", canChangeDataRole="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    .line 618
    const/4 p4, 0x0

    .line 619
    if-eqz p3, :cond_0

    if-eq p3, p2, :cond_0

    .line 620
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring inconsistent current mode from USB port driver: supportedModes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currentMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-static {v2, v0, v3}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 623
    const/4 p3, 0x0

    .line 630
    :cond_0
    move/from16 v0, p7

    invoke-static {p5, v0}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v8

    .line 632
    .local v8, "supportedRoleCombinations":I
    if-eqz p3, :cond_1

    if-eqz p5, :cond_1

    if-eqz p7, :cond_1

    .line 633
    if-eqz p6, :cond_2

    if-eqz p8, :cond_2

    .line 636
    sget v2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    sget v3, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_DEVICE:I

    or-int/2addr v2, v3

    sget v3, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_HOST:I

    or-int/2addr v2, v3

    sget v3, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_DEVICE:I

    or-int/2addr v2, v3

    or-int/2addr v8, v2

    .line 661
    :cond_1
    :goto_0
    const-string v2, "UsbPortManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addOrUpdatePortLocked() supportedRoleCombinations="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 665
    .local v1, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    if-nez v1, :cond_5

    .line 666
    new-instance v1, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .end local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    invoke-direct {v1, p1, p2}, Lcom/android/server/usb/UsbPortManager$PortInfo;-><init>(Ljava/lang/String;I)V

    .restart local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 667
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usb/UsbPortManager$PortInfo;->setStatus(IZIZIZI)Z

    .line 671
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    const-string v2, "UsbPortManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPorts("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") put size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :goto_1
    const-string v2, "UsbPortManager"

    const-string v3, "addOrUpdatePortLocked()--"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    return-void

    .line 639
    .end local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :cond_2
    if-eqz p6, :cond_3

    .line 642
    const/4 v2, 0x1

    move/from16 v0, p7

    invoke-static {v2, v0}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v2

    or-int/2addr v8, v2

    .line 644
    const/4 v2, 0x2

    move/from16 v0, p7

    invoke-static {v2, v0}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v2

    or-int/2addr v8, v2

    goto :goto_0

    .line 646
    :cond_3
    if-eqz p8, :cond_4

    .line 649
    const/4 v2, 0x1

    invoke-static {p5, v2}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v2

    or-int/2addr v8, v2

    .line 651
    const/4 v2, 0x2

    invoke-static {p5, v2}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v2

    or-int/2addr v8, v2

    goto/16 :goto_0

    .line 653
    :cond_4
    if-eqz p4, :cond_1

    .line 657
    sget v2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    sget v3, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_DEVICE:I

    or-int/2addr v2, v3

    or-int/2addr v8, v2

    goto/16 :goto_0

    .line 675
    .restart local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :cond_5
    iget-object v2, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPort;->getSupportedModes()I

    move-result v2

    if-eq p2, v2, :cond_6

    .line 676
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring inconsistent list of supported modes from USB port driver (should be immutable): previous="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->getSupportedModes()I

    move-result v4

    invoke-static {v4}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", current="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-static {v2, v0, v3}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 682
    :cond_6
    const-string v2, "UsbPortManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addOrUpdatePortLocked() supportedModes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 684
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usb/UsbPortManager$PortInfo;->setStatus(IZIZIZI)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 688
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    .line 689
    const-string v2, "UsbPortManager"

    const-string v3, "addOrUpdatePortLocked() mPorts DISPOSITION_REMOVED -> DISPOSITION_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 691
    :cond_7
    const/4 v2, 0x2

    iput v2, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    .line 692
    const-string v2, "UsbPortManager"

    const-string v3, "addOrUpdatePortLocked() mPorts DISPOSITION_REMOVED -> DISPOSITION_READY"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private static canChangeDataRole(Ljava/io/File;)Z
    .locals 2
    .param p0, "portDir"    # Ljava/io/File;

    .prologue
    .line 868
    new-instance v0, Ljava/io/File;

    const-string v1, "data_role"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/usb/UsbPortManager;->fileIsRootWritable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static canChangeMode(Ljava/io/File;)Z
    .locals 2
    .param p0, "portDir"    # Ljava/io/File;

    .prologue
    .line 860
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "mode"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/usb/UsbPortManager;->fileIsRootWritable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static canChangePowerRole(Ljava/io/File;)Z
    .locals 2
    .param p0, "portDir"    # Ljava/io/File;

    .prologue
    .line 864
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "power_role"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/usb/UsbPortManager;->fileIsRootWritable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static fileIsRootWritable(Ljava/lang/String;)Z
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 853
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v2

    iget v2, v2, Landroid/system/StructStat;->st_mode:I

    sget v3, Landroid/system/OsConstants;->S_IWUSR:I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 855
    :cond_0
    :goto_0
    return v1

    .line 854
    :catch_0
    move-exception v0

    .line 855
    .local v0, "e":Landroid/system/ErrnoException;
    goto :goto_0
.end method

.method private handlePortAddedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 701
    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USB port added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 702
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbPortManager;->sendPortChangedBroadcastLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V

    .line 703
    return-void
.end method

.method private handlePortChangedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 706
    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USB port changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 707
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbPortManager;->sendPortChangedBroadcastLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V

    .line 708
    return-void
.end method

.method private handlePortRemovedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 711
    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USB port removed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 712
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbPortManager;->sendPortChangedBroadcastLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V

    .line 713
    return-void
.end method

.method private static logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p0, "priority"    # I
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 909
    const-string v0, "UsbPortManager"

    invoke-static {p0, v0, p2}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 910
    if-eqz p1, :cond_0

    .line 911
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 913
    :cond_0
    return-void
.end method

.method private static propertyFromFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sys.usb.typec."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readCurrentDataRole(Ljava/io/File;)I
    .locals 2
    .param p0, "portDir"    # Ljava/io/File;

    .prologue
    .line 823
    const-string v1, "data_role"

    invoke-static {p0, v1}, Lcom/android/server/usb/UsbPortManager;->readFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 824
    .local v0, "contents":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 825
    const-string/jumbo v1, "host"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 826
    const/4 v1, 0x1

    .line 832
    :goto_0
    return v1

    .line 828
    :cond_0
    const-string v1, "device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 829
    const/4 v1, 0x2

    goto :goto_0

    .line 832
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static readCurrentDataRoleByUevent(Landroid/os/UEventObserver$UEvent;)I
    .locals 2
    .param p0, "uevent_info"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 837
    const-string v1, "DUAL_ROLE_DATA_ROLE"

    invoke-virtual {p0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 838
    .local v0, "contents":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 839
    const-string/jumbo v1, "host"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 840
    const/4 v1, 0x1

    .line 846
    :goto_0
    return v1

    .line 842
    :cond_0
    const-string v1, "device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 843
    const/4 v1, 0x2

    goto :goto_0

    .line 846
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static readCurrentMode(Ljava/io/File;)I
    .locals 2
    .param p0, "portDir"    # Ljava/io/File;

    .prologue
    .line 767
    const-string/jumbo v1, "mode"

    invoke-static {p0, v1}, Lcom/android/server/usb/UsbPortManager;->readFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 768
    .local v0, "contents":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 769
    const-string v1, "dfp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 770
    const/4 v1, 0x1

    .line 776
    :goto_0
    return v1

    .line 772
    :cond_0
    const-string/jumbo v1, "ufp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 773
    const/4 v1, 0x2

    goto :goto_0

    .line 776
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static readCurrentModeByUevent(Landroid/os/UEventObserver$UEvent;)I
    .locals 2
    .param p0, "uevent_info"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 781
    const-string v1, "DUAL_ROLE_MODE"

    invoke-virtual {p0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 782
    .local v0, "contents":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 783
    const-string v1, "dfp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 784
    const/4 v1, 0x1

    .line 790
    :goto_0
    return v1

    .line 786
    :cond_0
    const-string/jumbo v1, "ufp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 787
    const/4 v1, 0x2

    goto :goto_0

    .line 790
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static readCurrentPowerRole(Ljava/io/File;)I
    .locals 2
    .param p0, "portDir"    # Ljava/io/File;

    .prologue
    .line 795
    const-string/jumbo v1, "power_role"

    invoke-static {p0, v1}, Lcom/android/server/usb/UsbPortManager;->readFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 796
    .local v0, "contents":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 797
    const-string/jumbo v1, "source"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 798
    const/4 v1, 0x1

    .line 804
    :goto_0
    return v1

    .line 800
    :cond_0
    const-string/jumbo v1, "sink"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 801
    const/4 v1, 0x2

    goto :goto_0

    .line 804
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static readCurrentPowerRoleByUevent(Landroid/os/UEventObserver$UEvent;)I
    .locals 2
    .param p0, "uevent_info"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 809
    const-string v1, "DUAL_ROLE_POWER_ROLE"

    invoke-virtual {p0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 810
    .local v0, "contents":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 811
    const-string/jumbo v1, "source"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 812
    const/4 v1, 0x1

    .line 818
    :goto_0
    return v1

    .line 814
    :cond_0
    const-string/jumbo v1, "sink"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 815
    const/4 v1, 0x2

    goto :goto_0

    .line 818
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static readFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 872
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 874
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 876
    :goto_0
    return-object v2

    .line 875
    :catch_0
    move-exception v0

    .line 876
    .local v0, "ex":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static readSupportedModes(Ljava/io/File;)I
    .locals 3
    .param p0, "portDir"    # Ljava/io/File;

    .prologue
    .line 753
    const/4 v1, 0x0

    .line 754
    .local v1, "modes":I
    const-string/jumbo v2, "supported_modes"

    invoke-static {p0, v2}, Lcom/android/server/usb/UsbPortManager;->readFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, "contents":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 756
    const-string v2, "dfp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 757
    or-int/lit8 v1, v1, 0x1

    .line 759
    :cond_0
    const-string/jumbo v2, "ufp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 760
    or-int/lit8 v1, v1, 0x2

    .line 763
    :cond_1
    return v1
.end method

.method private scheduleUpdatePorts()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 735
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 738
    :cond_0
    return-void
.end method

.method private scheduleUpdatePorts(Landroid/os/UEventObserver$UEvent;)V
    .locals 3
    .param p1, "uevent_info"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    const/4 v2, 0x1

    .line 742
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 743
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 744
    .local v0, "m":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 745
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 749
    .end local v0    # "m":Landroid/os/Message;
    :goto_0
    return-void

    .line 747
    :cond_0
    const-string v1, "UsbPortManager"

    const-string/jumbo v2, "scheduleUpdatePorts() : MSG_UPDATE_PORTS is exist!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendPortChangedBroadcastLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V
    .locals 4
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;

    .prologue
    .line 716
    const-string v1, "UsbPortManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendPortChangedBroadcastLocked("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/usb/UsbPortManager$PortInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_PORT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 718
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 719
    const-string/jumbo v1, "port"

    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 720
    const-string/jumbo v1, "portStatus"

    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 724
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/usb/UsbPortManager$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/usb/UsbPortManager$1;-><init>(Lcom/android/server/usb/UsbPortManager;Landroid/content/Intent;Lcom/android/server/usb/UsbPortManager$PortInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 732
    return-void
.end method

.method private updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 1
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 471
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Landroid/os/UEventObserver$UEvent;)V

    .line 472
    return-void
.end method

.method private updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Landroid/os/UEventObserver$UEvent;)V
    .locals 24
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "uevent_info"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 476
    const-string v3, "UsbPortManager"

    const-string/jumbo v12, "updatePortsLocked()++"

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .local v15, "i":I
    move/from16 v16, v15

    .end local v15    # "i":I
    .local v16, "i":I
    :goto_0
    add-int/lit8 v15, v16, -0x1

    .end local v16    # "i":I
    .restart local v15    # "i":I
    if-lez v16, :cond_0

    .line 480
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbPortManager$PortInfo;

    const/4 v12, 0x3

    iput v12, v3, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    move/from16 v16, v15

    .end local v15    # "i":I
    .restart local v16    # "i":I
    goto :goto_0

    .line 484
    .end local v16    # "i":I
    .restart local v15    # "i":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 485
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 486
    .local v14, "count":I
    const-string v3, "UsbPortManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "updatePortsLocked() mSimulatedPorts : "

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_9

    .line 488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;

    .line 489
    .local v21, "portInfo":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mPortId:Ljava/lang/String;

    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mSupportedModes:I

    move-object/from16 v0, v21

    iget v6, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentMode:I

    move-object/from16 v0, v21

    iget-boolean v7, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangeMode:Z

    move-object/from16 v0, v21

    iget v8, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentPowerRole:I

    move-object/from16 v0, v21

    iget-boolean v9, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangePowerRole:Z

    move-object/from16 v0, v21

    iget v10, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentDataRole:I

    move-object/from16 v0, v21

    iget-boolean v11, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangeDataRole:Z

    move-object/from16 v3, p0

    move-object/from16 v12, p1

    invoke-direct/range {v3 .. v12}, Lcom/android/server/usb/UsbPortManager;->addOrUpdatePortLocked(Ljava/lang/String;IIZIZIZLcom/android/internal/util/IndentingPrintWriter;)V

    .line 487
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 494
    .end local v14    # "count":I
    .end local v21    # "portInfo":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/usb/UsbPortManager;->mHaveKernelSupport:Z

    if-eqz v3, :cond_9

    .line 495
    new-instance v3, Ljava/io/File;

    const-string v12, "/sys/class/dual_role_usb"

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v20

    .line 496
    .local v20, "portDirs":[Ljava/io/File;
    if-eqz v20, :cond_8

    .line 497
    move-object/from16 v13, v20

    .local v13, "arr$":[Ljava/io/File;
    array-length v0, v13

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    aget-object v19, v13, v17

    .line 498
    .local v19, "portDir":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    .line 497
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 525
    :cond_2
    if-eqz p2, :cond_7

    .line 526
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 527
    .local v4, "portId":Ljava/lang/String;
    sget v5, Lcom/android/server/usb/UsbPortManager;->mSupportedModes:I

    .line 528
    .local v5, "supportedModes":I
    invoke-static/range {p2 .. p2}, Lcom/android/server/usb/UsbPortManager;->readCurrentModeByUevent(Landroid/os/UEventObserver$UEvent;)I

    move-result v6

    .line 529
    .local v6, "currentMode":I
    sget-boolean v7, Lcom/android/server/usb/UsbPortManager;->mCanChangeMode:Z

    .line 530
    .local v7, "canChangeMode":Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/usb/UsbPortManager;->readCurrentPowerRoleByUevent(Landroid/os/UEventObserver$UEvent;)I

    move-result v8

    .line 531
    .local v8, "currentPowerRole":I
    sget-boolean v9, Lcom/android/server/usb/UsbPortManager;->mCanChangePowerRole:Z

    .line 532
    .local v9, "canChangePowerRole":Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/usb/UsbPortManager;->readCurrentDataRoleByUevent(Landroid/os/UEventObserver$UEvent;)I

    move-result v10

    .line 533
    .local v10, "currentDataRole":I
    sget-boolean v11, Lcom/android/server/usb/UsbPortManager;->mCanChangeDataRole:Z

    .local v11, "canChangeDataRole":Z
    :goto_4
    move-object/from16 v3, p0

    move-object/from16 v12, p1

    .line 545
    invoke-direct/range {v3 .. v12}, Lcom/android/server/usb/UsbPortManager;->addOrUpdatePortLocked(Ljava/lang/String;IIZIZIZLcom/android/internal/util/IndentingPrintWriter;)V

    .line 550
    const/16 v22, 0x0

    .line 551
    .local v22, "skipChargingToastPopUp":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v3}, Lcom/android/server/usb/UsbDeviceManager;->getUsbDisableVariable()Ljava/lang/String;

    move-result-object v3

    const-string v12, "ON_ALL"

    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v3}, Lcom/android/server/usb/UsbDeviceManager;->getUsbDisableVariable()Ljava/lang/String;

    move-result-object v3

    const-string v12, "ON_DEVICE"

    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v10}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v3

    const-string v12, "device"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v3}, Lcom/android/server/usb/UsbDeviceManager;->getUsbDisableVariable()Ljava/lang/String;

    move-result-object v3

    const-string v12, "ON_HOST"

    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v10}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v12, "host"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 554
    :cond_4
    const-string v3, "UsbPortManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "skip charging_connected_via_usb Toast Toast Pop-up!! blocking mode :"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbPortManager;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/usb/UsbDeviceManager;->getUsbDisableVariable()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/16 v22, 0x1

    .line 558
    :cond_5
    const/4 v3, 0x1

    if-ne v8, v3, :cond_6

    sget v3, Lcom/android/server/usb/UsbPortManager;->mPrePowerRole:I

    const/4 v12, 0x1

    if-eq v3, v12, :cond_6

    if-nez v22, :cond_6

    .line 559
    const-string v3, "UsbPortManager"

    const-string v12, "charging_connected_via_usb Toast"

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    const v12, 0x1040c2f

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-static {v3, v12, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 562
    :cond_6
    sput v8, Lcom/android/server/usb/UsbPortManager;->mPrePowerRole:I

    goto/16 :goto_3

    .line 535
    .end local v4    # "portId":Ljava/lang/String;
    .end local v5    # "supportedModes":I
    .end local v6    # "currentMode":I
    .end local v7    # "canChangeMode":Z
    .end local v8    # "currentPowerRole":I
    .end local v9    # "canChangePowerRole":Z
    .end local v10    # "currentDataRole":I
    .end local v11    # "canChangeDataRole":Z
    .end local v22    # "skipChargingToastPopUp":Z
    :cond_7
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 536
    .restart local v4    # "portId":Ljava/lang/String;
    sget v5, Lcom/android/server/usb/UsbPortManager;->mSupportedModes:I

    .line 537
    .restart local v5    # "supportedModes":I
    invoke-static/range {v19 .. v19}, Lcom/android/server/usb/UsbPortManager;->readCurrentMode(Ljava/io/File;)I

    move-result v6

    .line 538
    .restart local v6    # "currentMode":I
    sget-boolean v7, Lcom/android/server/usb/UsbPortManager;->mCanChangeMode:Z

    .line 539
    .restart local v7    # "canChangeMode":Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/usb/UsbPortManager;->readCurrentPowerRole(Ljava/io/File;)I

    move-result v8

    .line 540
    .restart local v8    # "currentPowerRole":I
    sget-boolean v9, Lcom/android/server/usb/UsbPortManager;->mCanChangePowerRole:Z

    .line 541
    .restart local v9    # "canChangePowerRole":Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/usb/UsbPortManager;->readCurrentDataRole(Ljava/io/File;)I

    move-result v10

    .line 542
    .restart local v10    # "currentDataRole":I
    sget-boolean v11, Lcom/android/server/usb/UsbPortManager;->mCanChangeDataRole:Z

    .restart local v11    # "canChangeDataRole":Z
    goto/16 :goto_4

    .line 565
    .end local v4    # "portId":Ljava/lang/String;
    .end local v5    # "supportedModes":I
    .end local v6    # "currentMode":I
    .end local v7    # "canChangeMode":Z
    .end local v8    # "currentPowerRole":I
    .end local v9    # "canChangePowerRole":Z
    .end local v10    # "currentDataRole":I
    .end local v11    # "canChangeDataRole":Z
    .end local v13    # "arr$":[Ljava/io/File;
    .end local v17    # "i$":I
    .end local v18    # "len$":I
    .end local v19    # "portDir":Ljava/io/File;
    :cond_8
    const-string v3, "UsbPortManager"

    const-string/jumbo v12, "updatePortsLocked() portDirs is NULL"

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    .end local v20    # "portDirs":[Ljava/io/File;
    :cond_9
    const-string v3, "UsbPortManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "mPorts size: "

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/ArrayMap;->size()I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v15

    move/from16 v16, v15

    .end local v15    # "i":I
    .restart local v16    # "i":I
    :goto_5
    add-int/lit8 v15, v16, -0x1

    .end local v16    # "i":I
    .restart local v15    # "i":I
    if-lez v16, :cond_a

    .line 573
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 574
    .local v21, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    packed-switch v3, :pswitch_data_0

    .line 592
    :pswitch_0
    const-string v3, "UsbPortManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "mPorts("

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v23, ") default - mDisposition : "

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    move/from16 v16, v15

    .line 595
    .end local v15    # "i":I
    .restart local v16    # "i":I
    goto :goto_5

    .line 576
    .end local v16    # "i":I
    .restart local v15    # "i":I
    :pswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->handlePortAddedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 577
    const/4 v3, 0x2

    move-object/from16 v0, v21

    iput v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    .line 578
    const-string v3, "UsbPortManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "mPorts("

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v23, ") DISPOSITION_ADDED -> DISPOSITION_READY"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 581
    :pswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->handlePortChangedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 582
    const/4 v3, 0x2

    move-object/from16 v0, v21

    iput v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    .line 583
    const-string v3, "UsbPortManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "mPorts("

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v23, ") DISPOSITION_CHANGED -> DISPOSITION_READY"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 586
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 587
    const-string v3, "UsbPortManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "mPorts("

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v23, ") DISPOSITION_REMOVED size="

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/ArrayMap;->size()I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 589
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->handlePortRemovedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    goto/16 :goto_6

    .line 597
    .end local v21    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :cond_a
    const-string v3, "UsbPortManager"

    const-string/jumbo v12, "updatePortsLocked()--"

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    return-void

    .line 574
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static waitForState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 885
    const/4 v1, 0x0

    .line 886
    .local v1, "value":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x64

    if-ge v0, v2, :cond_1

    .line 888
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 889
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 893
    :goto_1
    return v2

    .line 890
    :cond_0
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 886
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 892
    :cond_1
    const-string v2, "UsbPortManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "waitForState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " FAILED: got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static writeFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "contents"    # Ljava/lang/String;

    .prologue
    .line 901
    invoke-static {p1}, Lcom/android/server/usb/UsbPortManager;->propertyFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addSimulatedPort(Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "supportedModes"    # I
    .param p3, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 356
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const-string v0, "Port with same name already exists.  Please remove it first."

    invoke-virtual {p3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 359
    monitor-exit v1

    .line 368
    :goto_0
    return-void

    .line 362
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding simulated port: portId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", supportedModes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;

    invoke-direct {v2, p1, p2}, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    invoke-direct {p0, p3}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 367
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public connectSimulatedPort(Ljava/lang/String;IZIZIZLcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "canChangeMode"    # Z
    .param p4, "powerRole"    # I
    .param p5, "canChangePowerRole"    # Z
    .param p6, "dataRole"    # I
    .param p7, "canChangeDataRole"    # Z
    .param p8, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 373
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 374
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;

    .line 375
    .local v0, "portInfo":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    if-nez v0, :cond_0

    .line 376
    const-string v1, "Cannot connect simulated port which does not exist."

    invoke-virtual {p8, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 377
    monitor-exit v2

    .line 406
    :goto_0
    return-void

    .line 380
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    if-nez p6, :cond_2

    .line 381
    :cond_1
    const-string v1, "Cannot connect simulated port in null mode, power role, or data role."

    invoke-virtual {p8, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 383
    monitor-exit v2

    goto :goto_0

    .line 405
    .end local v0    # "portInfo":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 386
    .restart local v0    # "portInfo":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    :cond_2
    :try_start_1
    iget v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mSupportedModes:I

    and-int/2addr v1, p2

    if-nez v1, :cond_3

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Simulated port does not support mode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p8, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 388
    monitor-exit v2

    goto :goto_0

    .line 391
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connecting simulated port: portId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", canChangeMode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", powerRole="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", canChangePowerRole="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", dataRole="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p6}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", canChangeDataRole="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p8, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 398
    iput p2, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentMode:I

    .line 399
    iput-boolean p3, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangeMode:Z

    .line 400
    iput p4, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentPowerRole:I

    .line 401
    iput-boolean p5, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangePowerRole:Z

    .line 402
    iput p6, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentDataRole:I

    .line 403
    iput-boolean p7, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangeDataRole:Z

    .line 404
    invoke-direct {p0, p8}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 405
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public disconnectSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 409
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 410
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;

    .line 411
    .local v0, "portInfo":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    if-nez v0, :cond_0

    .line 412
    const-string v1, "Cannot disconnect simulated port which does not exist."

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 413
    monitor-exit v2

    .line 425
    :goto_0
    return-void

    .line 416
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnecting simulated port: portId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 417
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentMode:I

    .line 418
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangeMode:Z

    .line 419
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentPowerRole:I

    .line 420
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangePowerRole:Z

    .line 421
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentDataRole:I

    .line 422
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangeDataRole:Z

    .line 423
    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 424
    monitor-exit v2

    goto :goto_0

    .end local v0    # "portInfo":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 452
    iget-object v3, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 453
    :try_start_0
    const-string v2, "USB Port State:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 454
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 455
    const-string v2, " (simulation active; end with \'dumpsys usb reset\')"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 457
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 459
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 460
    const-string v2, "  <no ports>"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 466
    :cond_1
    monitor-exit v3

    .line 467
    return-void

    .line 462
    :cond_2
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 463
    .local v1, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 466
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;
    .locals 5
    .param p1, "portId"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 207
    .local v0, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    if-nez v0, :cond_0

    .line 208
    const-string v1, "UsbPortManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPortStatus("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") portInfo=NULL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    :goto_0
    monitor-exit v2

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 210
    .end local v0    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPorts()[Landroid/hardware/usb/UsbPort;
    .locals 7

    .prologue
    .line 193
    iget-object v4, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 194
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 195
    .local v0, "count":I
    new-array v2, v0, [Landroid/hardware/usb/UsbPort;

    .line 196
    .local v2, "result":[Landroid/hardware/usb/UsbPort;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 197
    iget-object v3, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbPortManager$PortInfo;

    iget-object v3, v3, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    aput-object v3, v2, v1

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    :cond_0
    const-string v3, "UsbPortManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPorts() count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    monitor-exit v4

    return-object v2

    .line 201
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "result":[Landroid/hardware/usb/UsbPort;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public init_port_role_data()V
    .locals 8

    .prologue
    .line 149
    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/class/dual_role_usb"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 150
    .local v4, "portDirs":[Ljava/io/File;
    if-eqz v4, :cond_1

    .line 151
    move-object v0, v4

    .local v0, "arr$":[Ljava/io/File;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 152
    .local v3, "portDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    .line 151
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_0
    invoke-static {v3}, Lcom/android/server/usb/UsbPortManager;->readSupportedModes(Ljava/io/File;)I

    move-result v5

    sput v5, Lcom/android/server/usb/UsbPortManager;->mSupportedModes:I

    .line 156
    invoke-static {v3}, Lcom/android/server/usb/UsbPortManager;->canChangeMode(Ljava/io/File;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/usb/UsbPortManager;->mCanChangeMode:Z

    .line 157
    invoke-static {v3}, Lcom/android/server/usb/UsbPortManager;->canChangePowerRole(Ljava/io/File;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/usb/UsbPortManager;->mCanChangePowerRole:Z

    .line 158
    invoke-static {v3}, Lcom/android/server/usb/UsbPortManager;->canChangeDataRole(Ljava/io/File;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/usb/UsbPortManager;->mCanChangeDataRole:Z

    .line 160
    const-string v5, "UsbPortManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "init_port_role_data() mSupportedModes("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/server/usb/UsbPortManager;->mSupportedModes:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), mCanChangeMode("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/server/usb/UsbPortManager;->mCanChangeMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), mCanChangePowerRole("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/server/usb/UsbPortManager;->mCanChangePowerRole:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), mCanChangeDataRole("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/server/usb/UsbPortManager;->mCanChangeDataRole:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 166
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "portDir":Ljava/io/File;
    :cond_1
    return-void
.end method

.method public removeSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 428
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 429
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 430
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 431
    const-string v1, "Cannot remove simulated port which does not exist."

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 432
    monitor-exit v2

    .line 439
    :goto_0
    return-void

    .line 435
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnecting simulated port: portId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 436
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 437
    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 438
    monitor-exit v2

    goto :goto_0

    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetSimulation(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 442
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 443
    :try_start_0
    const-string v0, "Removing all simulated ports and ending simulation."

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 446
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 448
    :cond_0
    monitor-exit v1

    .line 449
    return-void

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V
    .locals 16
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "newPowerRole"    # I
    .param p3, "newDataRole"    # I
    .param p4, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 216
    const-string v12, "UsbPortManager"

    const-string/jumbo v13, "setPortRoles()++"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 218
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 219
    .local v10, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    if-nez v10, :cond_1

    .line 220
    if-eqz p4, :cond_0

    .line 221
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No such USB port: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 223
    :cond_0
    const-string v12, "UsbPortManager"

    const-string/jumbo v14, "setPortRoles()-- : portInfo = NULL"

    invoke-static {v12, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    monitor-exit v13

    .line 353
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v12, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v12, v0, v1}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v12

    if-nez v12, :cond_2

    .line 229
    const/4 v12, 0x6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setPortRoles()-- : Attempted to set USB port into unsupported role combination: portId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newPowerRole="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newDataRole="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-static {v12, v0, v14}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 233
    monitor-exit v13

    goto :goto_0

    .line 351
    .end local v10    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 237
    .restart local v10    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :cond_2
    :try_start_1
    iget-object v12, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v12}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v5

    .line 238
    .local v5, "currentDataRole":I
    iget-object v12, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v12}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v7

    .line 239
    .local v7, "currentPowerRole":I
    move/from16 v0, p3

    if-ne v5, v0, :cond_4

    move/from16 v0, p2

    if-ne v7, v0, :cond_4

    .line 240
    if-eqz p4, :cond_3

    .line 241
    const-string v12, "No change."

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 243
    :cond_3
    const-string v12, "UsbPortManager"

    const-string/jumbo v14, "setPortRoles()-- : No change."

    invoke-static {v12, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    monitor-exit v13

    goto :goto_0

    .line 253
    :cond_4
    iget-boolean v3, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    .line 254
    .local v3, "canChangeMode":Z
    iget-boolean v4, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    .line 255
    .local v4, "canChangePowerRole":Z
    iget-boolean v2, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    .line 256
    .local v2, "canChangeDataRole":Z
    iget-object v12, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v12}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v6

    .line 258
    .local v6, "currentMode":I
    if-nez v4, :cond_5

    move/from16 v0, p2

    if-ne v7, v0, :cond_6

    :cond_5
    if-nez v2, :cond_a

    move/from16 v0, p3

    if-eq v5, v0, :cond_a

    .line 260
    :cond_6
    if-eqz v3, :cond_8

    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_8

    const/4 v12, 0x1

    move/from16 v0, p3

    if-ne v0, v12, :cond_8

    .line 262
    const/4 v8, 0x1

    .line 278
    .local v8, "newMode":I
    :goto_1
    const/4 v12, 0x4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setPortRoles() : Setting USB port mode and role: portId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", currentMode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v6}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", currentPowerRole="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v7}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", currentDataRole="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v5}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newMode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v8}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newPowerRole="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newDataRole="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-static {v12, v0, v14}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;

    .line 287
    .local v11, "sim":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    if-eqz v11, :cond_b

    .line 289
    iput v8, v11, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentMode:I

    .line 290
    move/from16 v0, p2

    iput v0, v11, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentPowerRole:I

    .line 291
    move/from16 v0, p3

    iput v0, v11, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentDataRole:I

    .line 350
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 351
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    const-string v12, "UsbPortManager"

    const-string/jumbo v13, "setPortRoles()--"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 263
    .end local v8    # "newMode":I
    .end local v11    # "sim":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    :cond_8
    if-eqz v3, :cond_9

    const/4 v12, 0x2

    move/from16 v0, p2

    if-ne v0, v12, :cond_9

    const/4 v12, 0x2

    move/from16 v0, p3

    if-ne v0, v12, :cond_9

    .line 265
    const/4 v8, 0x2

    .restart local v8    # "newMode":I
    goto/16 :goto_1

    .line 267
    .end local v8    # "newMode":I
    :cond_9
    const/4 v12, 0x6

    :try_start_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setPortRoles()-- : Found mismatch in supported USB role combinations while attempting to change role: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newPowerRole="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newDataRole="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-static {v12, v0, v14}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 271
    monitor-exit v13

    goto/16 :goto_0

    .line 274
    :cond_a
    move v8, v6

    .restart local v8    # "newMode":I
    goto/16 :goto_1

    .line 292
    .restart local v11    # "sim":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/usb/UsbPortManager;->mHaveKernelSupport:Z

    if-eqz v12, :cond_7

    .line 294
    new-instance v9, Ljava/io/File;

    const-string v12, "/sys/class/dual_role_usb"

    move-object/from16 v0, p1

    invoke-direct {v9, v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .local v9, "portDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_c

    .line 296
    const/4 v12, 0x6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setPortRoles()-- : USB port not found: portId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-static {v12, v0, v14}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 297
    monitor-exit v13

    goto/16 :goto_0

    .line 300
    :cond_c
    if-eq v6, v8, :cond_f

    .line 307
    const-string/jumbo v14, "mode"

    const/4 v12, 0x1

    if-ne v8, v12, :cond_d

    const-string v12, "dfp"

    :goto_3
    invoke-static {v9, v14, v12}, Lcom/android/server/usb/UsbPortManager;->writeFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_e

    .line 309
    const/4 v12, 0x6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setPortRoles()-- : Failed to set the USB port mode: portId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newMode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v8}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-static {v12, v0, v14}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 312
    monitor-exit v13

    goto/16 :goto_0

    .line 307
    :cond_d
    const-string/jumbo v12, "ufp"

    goto :goto_3

    .line 314
    :cond_e
    const-string v12, "UsbPortManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setPortRoles()-- : Success to set the USB port mode: portId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newMode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v8}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 320
    :cond_f
    move/from16 v0, p2

    if-eq v7, v0, :cond_12

    .line 321
    const-string/jumbo v14, "power_role"

    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_10

    const-string/jumbo v12, "source"

    :goto_4
    invoke-static {v9, v14, v12}, Lcom/android/server/usb/UsbPortManager;->writeFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_11

    .line 324
    const/4 v12, 0x6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setPortRoles()-- : Failed to set the USB port power role: portId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newPowerRole="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-static {v12, v0, v14}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 327
    monitor-exit v13

    goto/16 :goto_0

    .line 321
    :cond_10
    const-string/jumbo v12, "sink"

    goto :goto_4

    .line 329
    :cond_11
    const-string v12, "UsbPortManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setPortRoles()-- : Success to set the USB port power role: portId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newPowerRole="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_12
    move/from16 v0, p3

    if-eq v5, v0, :cond_7

    .line 335
    const-string v14, "data_role"

    const/4 v12, 0x1

    move/from16 v0, p3

    if-ne v0, v12, :cond_13

    const-string/jumbo v12, "host"

    :goto_5
    invoke-static {v9, v14, v12}, Lcom/android/server/usb/UsbPortManager;->writeFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_14

    .line 338
    const/4 v12, 0x6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setPortRoles()-- : Failed to set the USB port data role: portId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newDataRole="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-static {v12, v0, v14}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 341
    monitor-exit v13

    goto/16 :goto_0

    .line 335
    :cond_13
    const-string v12, "device"

    goto :goto_5

    .line 343
    :cond_14
    const-string v12, "UsbPortManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setPortRoles()-- : Success to set the USB port data role: portId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newDataRole="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 183
    const-string v0, "UsbPortManager"

    const-string/jumbo v1, "systemReady()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string/jumbo v1, "persist.sys.usb.dualrole"

    iget-boolean v0, p0, Lcom/android/server/usb/UsbPortManager;->mHaveKernelSupport:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/server/usb/UsbPortManager;->init_port_role_data()V

    .line 188
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v1, "SUBSYSTEM=dual_role_usb"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 189
    invoke-direct {p0}, Lcom/android/server/usb/UsbPortManager;->scheduleUpdatePorts()V

    .line 190
    return-void

    .line 184
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

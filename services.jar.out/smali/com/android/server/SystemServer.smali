.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final AOD_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.aod.AODManagerService"

.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final COCKTAIL_BAR_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.cocktailbar.CocktailBarManagerService"

.field private static final DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/dock/state"

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final FRONT_LED_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.frontled.FrontLEDManagerService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final MOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.MountService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_HS20_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.hs20.WifiHs20Service"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static final is3LMAllowed:Z

.field private static final isMobilePaymentAllowed:Z

.field private static final isRLLAllowed:Z


# instance fields
.field private final IS_ELASTIC_ENABLED:Z

.field private final IS_OVERLAY_THEMES_ENABLED:Z

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mAlarmManagerService:Lcom/android/server/AlarmManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDesktopSystemService:Lcom/android/server/desktop/DesktopSystemService;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mMultiWindowFacadeService:Lcom/android/server/am/MultiWindowFacadeService;

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPluginManager:Landroid/app/epm/PluginManager;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field safeModeValueForTheme:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-boolean v0, p0, Lcom/android/server/SystemServer;->IS_ELASTIC_ENABLED:Z

    .line 360
    iput-boolean v0, p0, Lcom/android/server/SystemServer;->IS_OVERLAY_THEMES_ENABLED:Z

    .line 390
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 391
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SystemServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 281
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 563
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 564
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 565
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x103013f

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 566
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 385
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 386
    return-void
.end method

.method private performPendingShutdown()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 546
    const-string/jumbo v4, "sys.shutdown.requested"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 548
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 549
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_0

    move v1, v3

    .line 552
    .local v1, "reboot":Z
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 553
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, "reason":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    invoke-static {v3, v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 560
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "reboot":Z
    :cond_1
    return-void

    .line 555
    .restart local v1    # "reboot":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_0
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 541
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 543
    return-void
.end method

.method private run()V
    .locals 11

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v10, 0x1

    .line 398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 399
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 411
    :cond_0
    const-string/jumbo v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 412
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    .line 414
    .local v8, "languageTag":Ljava/lang/String;
    const-string/jumbo v0, "persist.sys.locale"

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string/jumbo v0, "persist.sys.language"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string/jumbo v0, "persist.sys.country"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string/jumbo v0, "persist.sys.localevar"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .end local v8    # "languageTag":Ljava/lang/String;
    :cond_1
    const-string v0, "SystemServer"

    const-string v1, "!@Boot: Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 425
    const/16 v0, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 434
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string/jumbo v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 437
    .local v6, "cryptState":Ljava/lang/String;
    const-string/jumbo v0, "trigger_restart_min_framework"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 447
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 448
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 449
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 450
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 459
    :cond_3
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 463
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 467
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 471
    invoke-static {v10}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 474
    invoke-static {v10}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 481
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 482
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 485
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 495
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 498
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 501
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 502
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 506
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 507
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 508
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 518
    const-string v0, "SystemServer"

    const-string v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_4
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-string v1, "com.samsung.galaxybetaservice"

    const/16 v2, 0x80

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 526
    .local v9, "mobileCareInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v9, :cond_5

    .line 527
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 528
    const-string/jumbo v0, "sys.mobilecare.preload"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 535
    .end local v9    # "mobileCareInfo":Landroid/content/pm/ApplicationInfo;
    :cond_5
    :goto_1
    const-string v0, "SystemServer"

    const-string v1, "!@Boot: Loop forever"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 537
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_6
    const-string/jumbo v0, "trigger_restart_min_framework"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 442
    invoke-static {}, Lcom/android/server/pm/PackagePrefetcher;->getInstance()Lcom/android/server/pm/PackagePrefetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackagePrefetcher;->prefetchPermissions()V

    .line 443
    invoke-static {}, Lcom/android/server/pm/PackagePrefetcher;->getInstance()Lcom/android/server/pm/PackagePrefetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackagePrefetcher;->prefetchPackages()V

    goto/16 :goto_0

    .line 510
    :catch_0
    move-exception v7

    .line 511
    .local v7, "ex":Ljava/lang/Throwable;
    const-string v0, "System"

    const-string v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const-string v0, "System"

    const-string v1, "************ Failure starting system services"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 513
    throw v7

    .line 531
    .end local v7    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private startBootstrapServices()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 579
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/pm/Installer;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Installer;

    .line 582
    .local v1, "installer":Lcom/android/server/pm/Installer;
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 584
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 585
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 591
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 595
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 598
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/lights/LightsService;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 602
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 605
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 608
    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 609
    .local v0, "cryptState":Ljava/lang/String;
    const-string/jumbo v2, "trigger_restart_min_framework"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 610
    const-string v2, "SystemServer"

    const-string v4, "Detected encryption in progress - only parsing core apps"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 625
    :cond_0
    :goto_0
    const-string v2, "SystemServer"

    const-string v4, "Package Manager"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const-string v2, "SystemServer"

    const-string v4, "!@Boot: Start PackageManagerService"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    iget-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v4, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 629
    const-string v2, "SystemServer"

    const-string v3, "!@Boot: End PackageManagerService"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 631
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 633
    const-string v2, "SystemServer"

    const-string v3, "User Service"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const-string/jumbo v2, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 637
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 640
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 645
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 646
    return-void

    .line 612
    :cond_1
    const-string/jumbo v2, "trigger_restart_min_framework"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 613
    const-string v2, "SystemServer"

    const-string v4, "Device encrypted - only parsing core apps"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_0

    .line 627
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 656
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 657
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 660
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getUsageStatsIfNoPackageUsageInfo()V

    .line 663
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 664
    return-void
.end method

.method private static final startDpmService(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2774
    const/4 v4, 0x0

    .line 2775
    .local v4, "dpmObj":Ljava/lang/Object;
    :try_start_0
    const-string/jumbo v6, "persist.dpm.feature"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2776
    .local v3, "dpmFeature":I
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DPM configuration set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    if-lez v3, :cond_0

    const/16 v6, 0x10

    if-ge v3, v6, :cond_0

    .line 2779
    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/com.qti.dpmframework.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2782
    .local v1, "dpmClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.qti.dpm.DpmService"

    invoke-virtual {v1, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2783
    .local v0, "dpmClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 2785
    .local v2, "dpmConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 2787
    if-eqz v4, :cond_0

    :try_start_1
    instance-of v6, v4, Landroid/os/IBinder;

    if-eqz v6, :cond_0

    .line 2788
    const-string v6, "dpmservice"

    check-cast v4, Landroid/os/IBinder;

    .end local v4    # "dpmObj":Ljava/lang/Object;
    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2789
    const-string v6, "SystemServer"

    const-string v7, "Created DPM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 2798
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    :cond_0
    :goto_0
    return-void

    .line 2791
    .restart local v0    # "dpmClass":Ljava/lang/Class;
    .restart local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .restart local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .restart local v3    # "dpmFeature":I
    :catch_0
    move-exception v5

    .line 2792
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "SystemServer"

    const-string/jumbo v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2795
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 2796
    .local v5, "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string/jumbo v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static final startEmergencyModeService(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2830
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2833
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    .line 2834
    .local v1, "emMgr":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->readyEmergencyMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2839
    .end local v1    # "emMgr":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_1
    :goto_0
    return-void

    .line 2835
    :catch_0
    move-exception v0

    .line 2836
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SystemServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting emergency service failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static final startFingerprintService(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2826
    return-void
.end method

.method private startOtherServices()V
    .locals 209

    .prologue
    .line 674
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 675
    .local v5, "context":Landroid/content/Context;
    const/16 v42, 0x0

    .line 676
    .local v42, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v74, 0x0

    .line 677
    .local v74, "contentService":Lcom/android/server/content/ContentService;
    const/16 v196, 0x0

    .line 678
    .local v196, "vibrator":Lcom/android/server/VibratorService;
    const/16 v44, 0x0

    .line 679
    .local v44, "alarm":Landroid/app/IAlarmManager;
    const/16 v147, 0x0

    .line 680
    .local v147, "mountService":Landroid/os/storage/IMountService;
    const/4 v9, 0x0

    .line 681
    .local v9, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v8, 0x0

    .line 682
    .local v8, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v152, 0x0

    .line 683
    .local v152, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v66, 0x0

    .line 684
    .local v66, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v153, 0x0

    .line 685
    .local v153, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v178, 0x0

    .line 686
    .local v178, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v208, 0x0

    .line 687
    .local v208, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v194, 0x0

    .line 688
    .local v194, "usb":Lcom/android/server/usb/UsbService;
    const/16 v176, 0x0

    .line 689
    .local v176, "serial":Lcom/android/server/SerialService;
    const/16 v156, 0x0

    .line 690
    .local v156, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v63, 0x0

    .line 691
    .local v63, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v122, 0x0

    .line 692
    .local v122, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v183, 0x0

    .line 693
    .local v183, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v72, 0x0

    .line 695
    .local v72, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v83, 0x0

    .line 697
    .local v83, "dEncService":Lcom/android/server/DirEncryptService;
    const/16 v133, 0x0

    .line 698
    .local v133, "mHMS":Lcom/android/server/HarmonyEASService;
    const/16 v51, 0x0

    .line 699
    .local v51, "audioService":Lcom/android/server/audio/AudioService;
    const/16 v86, 0x0

    .line 700
    .local v86, "deviceManager":Lcom/android/server/DeviceManager3LMService;
    const/16 v108, 0x0

    .line 701
    .local v108, "extControlDevice":Lcom/sec/rll/ExtControlDeviceService;
    const/16 v144, 0x0

    .line 702
    .local v144, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v104, 0x0

    .line 703
    .local v104, "entropyMixer":Lcom/android/server/EntropyMixer;
    const/16 v54, 0x0

    .line 705
    .local v54, "cameraService":Lcom/android/server/camera/CameraService;
    const/16 v164, 0x0

    .line 707
    .local v164, "quickconnect":Lcom/android/server/QuickConnectService;
    const/16 v188, 0x0

    .line 708
    .local v188, "timaService":Lcom/android/server/TimaService;
    const/16 v161, 0x0

    .line 709
    .local v161, "pkmService":Lcom/android/server/PKMService;
    const/16 v186, 0x0

    .line 711
    .local v186, "timaObserver":Lcom/android/server/TimaObserver;
    const/16 v79, 0x0

    .line 714
    .local v79, "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    const/16 v135, 0x0

    .line 715
    .local v135, "mPersonaService":Lcom/android/server/pm/PersonaManagerService;
    const/16 v137, 0x0

    .line 719
    .local v137, "mRCPManagerService":Lcom/android/server/RCPManagerService;
    const/16 v174, 0x0

    .line 720
    .local v174, "sdpService":Lcom/android/server/SdpManagerService;
    const/16 v172, 0x0

    .line 723
    .local v172, "sdpLogService":Lcom/android/server/SdpLogService;
    const/16 v96, 0x0

    .line 726
    .local v96, "dlpService":Lcom/android/server/DLPManagerService;
    const/16 v85, 0x0

    .line 729
    .local v85, "dLSManager":Lcom/android/server/LSManager;
    const/16 v206, 0x0

    .line 739
    .local v206, "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    const-string v6, "config.disable_storage"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v94

    .line 740
    .local v94, "disableStorage":Z
    const-string v6, "config.disable_bluetooth"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v88

    .line 741
    .local v88, "disableBluetooth":Z
    const-string v6, "config.disable_location"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v90

    .line 742
    .local v90, "disableLocation":Z
    const-string v6, "config.disable_systemui"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v95

    .line 743
    .local v95, "disableSystemUI":Z
    const-string v6, "config.disable_noncore"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v93

    .line 744
    .local v93, "disableNonCoreServices":Z
    const-string v6, "config.disable_network"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v91

    .line 745
    .local v91, "disableNetwork":Z
    const-string v6, "config.disable_networktime"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v92

    .line 746
    .local v92, "disableNetworkTime":Z
    const-string/jumbo v6, "ro.kernel.qemu"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v126

    .line 751
    .local v126, "isEmulator":Z
    const/16 v87, 0x1

    .line 754
    .local v87, "disableAtlas":Z
    :try_start_0
    const-string v6, "SystemServer"

    const-string v7, "Reading configuration..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 757
    const-string v6, "SystemServer"

    const-string v7, "Scheduling Policy"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const-string/jumbo v6, "scheduling_policy"

    new-instance v7, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v7}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 760
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 762
    const-string v6, "SystemServer"

    const-string v7, "Telephony Registry"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    new-instance v184, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v184

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_81

    .line 764
    .end local v183    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v184, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string/jumbo v6, "telephony.registry"

    move-object/from16 v0, v184

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 766
    const-string v6, "SystemServer"

    const-string v7, "Entropy Mixer"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    new-instance v105, Lcom/android/server/EntropyMixer;

    move-object/from16 v0, v105

    invoke-direct {v0, v5}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_82

    .line 770
    .end local v104    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v105, "entropyMixer":Lcom/android/server/EntropyMixer;
    :try_start_2
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v195

    .line 771
    .local v195, "versionInfo":Landroid/os/Bundle;
    const-string v6, "2.0"

    const-string/jumbo v7, "version"

    move-object/from16 v0, v195

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v6

    if-eqz v6, :cond_0

    .line 773
    :try_start_3
    const-string v6, "SystemServer"

    const-string v7, "Persona Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->getInstance()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v135

    .line 775
    const-string/jumbo v6, "persona"

    move-object/from16 v0, v135

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 783
    :cond_0
    :goto_0
    :try_start_4
    const-string v6, "SystemServer"

    const-string v7, "Remote Mobile Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 785
    :try_start_5
    new-instance v165, Lcom/android/server/rmm/RmmService;

    move-object/from16 v0, v165

    invoke-direct {v0, v5}, Lcom/android/server/rmm/RmmService;-><init>(Landroid/content/Context;)V

    .line 786
    .local v165, "rmmService":Lcom/android/server/rmm/RmmService;
    invoke-virtual/range {v165 .. v165}, Lcom/android/server/rmm/RmmService;->startRmm()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 797
    .end local v165    # "rmmService":Lcom/android/server/rmm/RmmService;
    :goto_1
    :try_start_6
    const-string v6, "SystemServer"

    const-string v7, "SEAMS"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const-string v6, "SEAMService"

    new-instance v7, Lcom/android/server/SEAMService;

    invoke-direct {v7, v5}, Lcom/android/server/SEAMService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 805
    :goto_2
    :try_start_7
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 807
    const-string v6, "SystemServer"

    const-string v7, "Camera Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/camera/CameraService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 813
    :try_start_8
    const-string v6, "SystemServer"

    const-string v7, "Account Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    new-instance v43, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v43

    invoke-direct {v0, v5}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    .line 815
    .end local v42    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v43, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_9
    const-string v6, "account"

    move-object/from16 v0, v43

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_8c
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_83

    move-object/from16 v42, v43

    .line 821
    .end local v43    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v42    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_3
    :try_start_a
    const-string/jumbo v6, "ro.product.name"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v136

    .line 822
    .local v136, "mProductName":Ljava/lang/String;
    const-string/jumbo v6, "ktt"

    move-object/from16 v0, v136

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v6

    if-nez v6, :cond_1

    .line 833
    :cond_1
    const-string v6, "SystemServer"

    const-string v7, "Content Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_41

    const/4 v6, 0x1

    :goto_4
    invoke-static {v5, v6}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v74

    .line 839
    new-instance v84, Lcom/android/server/DirEncryptService;

    move-object/from16 v0, v84

    invoke-direct {v0, v5}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1

    .line 841
    .end local v83    # "dEncService":Lcom/android/server/DirEncryptService;
    .local v84, "dEncService":Lcom/android/server/DirEncryptService;
    :try_start_b
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 842
    const-string v6, "DirEncryptService"

    move-object/from16 v0, v84

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_84

    :cond_2
    move-object/from16 v83, v84

    .line 866
    .end local v84    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v83    # "dEncService":Lcom/android/server/DirEncryptService;
    :goto_5
    :try_start_c
    const-string v6, "SystemServer"

    const-string v7, "SecurityManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_1

    .line 868
    :try_start_d
    invoke-static {v5}, Lcom/android/server/SystemServer;->startSecurityManagerService(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_1

    .line 875
    :goto_6
    :try_start_e
    const-string v6, "SystemServer"

    const-string v7, "Reactive Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_1

    .line 877
    :try_start_f
    const-string v6, "ReactiveService"

    new-instance v7, Lcom/android/server/ReactiveService;

    invoke-direct {v7, v5}, Lcom/android/server/ReactiveService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_1

    .line 885
    :goto_7
    :try_start_10
    const-string v6, "SystemServer"

    const-string v7, "VaultKeeper Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_1

    .line 887
    :try_start_11
    const-string v6, "VaultKeeperService"

    new-instance v7, Lcom/android/server/VaultKeeperService;

    invoke-direct {v7, v5}, Lcom/android/server/VaultKeeperService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_1

    .line 896
    :goto_8
    :try_start_12
    const-string v6, "SystemServer"

    const-string v7, "DeviceRootKeyService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_1

    .line 898
    :try_start_13
    const-string v6, "DeviceRootKeyService"

    new-instance v7, Lcom/android/server/DeviceRootKeyService;

    invoke-direct {v7, v5}, Lcom/android/server/DeviceRootKeyService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1

    .line 907
    :goto_9
    :try_start_14
    const-string v6, "SystemServer"

    const-string v7, "EngineeringModeService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_1

    .line 909
    :try_start_15
    const-string v6, "EngineeringModeService"

    new-instance v7, Lcom/android/server/EngineeringModeService;

    invoke-direct {v7, v5}, Lcom/android/server/EngineeringModeService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1

    .line 918
    :goto_a
    :try_start_16
    const-string v6, "SystemServer"

    const-string v7, "SATS: Secure AT Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_1

    .line 920
    :try_start_17
    const-string v6, "SatsService"

    new-instance v7, Lcom/android/server/SatsService;

    invoke-direct {v7, v5}, Lcom/android/server/SatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_1

    .line 927
    :goto_b
    :try_start_18
    const-string v6, "SystemServer"

    const-string v7, "System Content Providers"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_1

    .line 931
    :try_start_19
    const-string/jumbo v6, "sedenial"

    new-instance v7, Lcom/android/server/SEDenialService;

    invoke-direct {v7, v5}, Lcom/android/server/SEDenialService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 932
    const-string v6, "SystemServer"

    const-string v7, "SEDenial service added"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_1

    .line 937
    :goto_c
    :try_start_1a
    const-string v6, "SystemServer"

    const-string v7, "Vibrator Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    new-instance v197, Lcom/android/server/VibratorService;

    move-object/from16 v0, v197

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_1

    .line 939
    .end local v196    # "vibrator":Lcom/android/server/VibratorService;
    .local v197, "vibrator":Lcom/android/server/VibratorService;
    :try_start_1b
    const-string/jumbo v6, "vibrator"

    move-object/from16 v0, v197

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 942
    sget-boolean v6, Lcom/samsung/android/toolbox/TwToolBoxService;->TOOLBOX_SUPPORT:Z

    if-eqz v6, :cond_3

    .line 943
    const-string v6, "SystemServer"

    const-string v7, "Tw ToolBox Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    new-instance v191, Lcom/samsung/android/toolbox/TwToolBoxService;

    move-object/from16 v0, v191

    invoke-direct {v0, v5}, Lcom/samsung/android/toolbox/TwToolBoxService;-><init>(Landroid/content/Context;)V

    .line 945
    .local v191, "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    const-string/jumbo v6, "tw_toolbox"

    move-object/from16 v0, v191

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 956
    .end local v191    # "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    :cond_3
    const-string v6, "1"

    const-string/jumbo v7, "ro.config.tima"

    const-string v10, "0"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_e

    move-result v185

    .line 957
    .local v185, "timaEnabled":Z
    if-eqz v185, :cond_4

    .line 959
    :try_start_1c
    const-string v6, "SystemServer"

    const-string v7, "TIMA Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    const/4 v6, -0x2

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 963
    new-instance v189, Lcom/android/server/TimaService;

    move-object/from16 v0, v189

    invoke-direct {v0, v5}, Lcom/android/server/TimaService;-><init>(Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_e

    .line 964
    .end local v188    # "timaService":Lcom/android/server/TimaService;
    .local v189, "timaService":Lcom/android/server/TimaService;
    :try_start_1d
    const-string/jumbo v6, "tima"

    move-object/from16 v0, v189

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 966
    new-instance v162, Lcom/android/server/PKMService;

    move-object/from16 v0, v162

    invoke-direct {v0, v5}, Lcom/android/server/PKMService;-><init>(Landroid/content/Context;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_8a
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_85

    .line 967
    .end local v161    # "pkmService":Lcom/android/server/PKMService;
    .local v162, "pkmService":Lcom/android/server/PKMService;
    :try_start_1e
    const-string/jumbo v6, "pkm"

    move-object/from16 v0, v162

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_8b
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_86

    move-object/from16 v161, v162

    .end local v162    # "pkmService":Lcom/android/server/PKMService;
    .restart local v161    # "pkmService":Lcom/android/server/PKMService;
    move-object/from16 v188, v189

    .line 972
    .end local v189    # "timaService":Lcom/android/server/TimaService;
    .restart local v188    # "timaService":Lcom/android/server/TimaService;
    :goto_d
    const/16 v6, -0x13

    :try_start_1f
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_e

    .line 976
    :try_start_20
    const-string v6, "SystemServer"

    const-string v7, "TIMA Observer"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    new-instance v187, Lcom/android/server/TimaObserver;

    move-object/from16 v0, v187

    invoke-direct {v0, v5}, Lcom/android/server/TimaObserver;-><init>(Landroid/content/Context;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_e

    .end local v186    # "timaObserver":Lcom/android/server/TimaObserver;
    .local v187, "timaObserver":Lcom/android/server/TimaObserver;
    move-object/from16 v186, v187

    .line 985
    .end local v187    # "timaObserver":Lcom/android/server/TimaObserver;
    .restart local v186    # "timaObserver":Lcom/android/server/TimaObserver;
    :goto_e
    :try_start_21
    const-string v6, "3.0"

    const-string/jumbo v7, "ro.config.timaversion"

    const-string v10, "0"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v190

    .line 986
    .local v190, "timaversion":Z
    if-eqz v190, :cond_4

    .line 989
    const/16 v118, 0x0

    .line 990
    .local v118, "icccService":Lcom/android/server/IcccManagerService;
    new-instance v118, Lcom/android/server/IcccManagerService;

    .end local v118    # "icccService":Lcom/android/server/IcccManagerService;
    move-object/from16 v0, v118

    invoke-direct {v0, v5}, Lcom/android/server/IcccManagerService;-><init>(Landroid/content/Context;)V

    .line 991
    .restart local v118    # "icccService":Lcom/android/server/IcccManagerService;
    const-string/jumbo v6, "iccc"

    move-object/from16 v0, v118

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 993
    const-string v6, "SystemServer"

    const-string/jumbo v7, "initialization"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_e

    .line 995
    :try_start_22
    invoke-virtual/range {v118 .. v118}, Lcom/android/server/IcccManagerService;->getTrustedBootData()I

    move-result v119

    .line 996
    .local v119, "iccc_result":I
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getTrustedBootData result : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v119

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    if-nez v119, :cond_42

    .line 999
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "trustboot write result: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v10, -0xdfffff

    const/4 v11, 0x0

    move-object/from16 v0, v118

    invoke-virtual {v0, v10, v11}, Lcom/android/server/IcccManagerService;->setSecureData(II)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_e

    .line 1012
    .end local v119    # "iccc_result":I
    :goto_f
    :try_start_23
    const-string v6, "com.sec.tima.TimaKeyStoreProvider"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v128

    .line 1014
    .local v128, "keyStoreClass":Ljava/lang/Class;
    invoke-virtual/range {v128 .. v128}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/Provider;

    invoke-static {v6}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 1015
    const-string v6, "SystemServer"

    const-string v7, "Added TimaKesytore provider"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    invoke-static {}, Lcom/sec/tima/keystore/util/Utility;->isFipsTimaEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1019
    const-string v6, "com.sec.tima.FipsTimaKeyStoreProvider"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v35

    .line 1021
    .local v35, "FipsKeyStoreClass":Ljava/lang/Class;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/Provider;

    invoke-static {v6}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 1022
    const-string v6, "SystemServer"

    const-string v7, "Added FipsTimaKesytore provider"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_e

    .line 1040
    .end local v35    # "FipsKeyStoreClass":Ljava/lang/Class;
    .end local v118    # "icccService":Lcom/android/server/IcccManagerService;
    .end local v128    # "keyStoreClass":Ljava/lang/Class;
    .end local v190    # "timaversion":Z
    :cond_4
    :goto_10
    :try_start_24
    const-string v6, "SystemServer"

    const-string v7, "CEP Proxy KS Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    const-string v6, "cepproxyks"

    new-instance v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;

    invoke-direct {v7, v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_e

    .line 1050
    :goto_11
    :try_start_25
    const-string v6, "SystemServer"

    const-string v7, "Email Keystore Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    const-string v6, "emailksproxy"

    new-instance v7, Lcom/android/server/emailksproxy/EmailKeystoreService;

    invoke-direct {v7, v5}, Lcom/android/server/emailksproxy/EmailKeystoreService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_e

    .line 1057
    :goto_12
    :try_start_26
    const-string v6, "SystemServer"

    const-string v7, "SSRM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_e

    .line 1059
    :try_start_27
    new-instance v56, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/ssrm.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v56

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1060
    .local v56, "cfmsClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.android.server.ssrm.CustomFrequencyManagerService"

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v55

    .line 1061
    .local v55, "cfmsClass":Ljava/lang/Class;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    const/4 v7, 0x1

    const-class v10, Landroid/app/IActivityManager;

    aput-object v10, v6, v7

    move-object/from16 v0, v55

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v57

    .line 1062
    .local v57, "cfmsConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    aput-object v10, v6, v7

    move-object/from16 v0, v57

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v179

    check-cast v179, Landroid/os/IBinder;

    .line 1063
    .local v179, "ssrmService":Landroid/os/IBinder;
    const-string v6, "CustomFrequencyManagerService"

    move-object/from16 v0, v179

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_27} :catch_e

    .line 1069
    .end local v55    # "cfmsClass":Ljava/lang/Class;
    .end local v56    # "cfmsClassLoader":Ldalvik/system/PathClassLoader;
    .end local v57    # "cfmsConstructor":Ljava/lang/reflect/Constructor;
    .end local v179    # "ssrmService":Landroid/os/IBinder;
    :goto_13
    :try_start_28
    const-string v6, "SystemServer"

    const-string v7, "Consumer IR Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    new-instance v73, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v73

    invoke-direct {v0, v5}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_28} :catch_e

    .line 1071
    .end local v72    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v73, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_29
    const-string v6, "consumer_ir"

    move-object/from16 v0, v73

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->mAlarmManagerService:Lcom/android/server/AlarmManagerService;

    .line 1074
    const-string v6, "alarm"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v44

    .line 1077
    const-string v6, "SystemServer"

    const-string v7, "Init Watchdog"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v202

    .line 1079
    .local v202, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v202

    invoke-virtual {v0, v5, v6}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 1081
    const-string v6, "SystemServer"

    const-string v7, "Input Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    new-instance v123, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v123

    invoke-direct {v0, v5}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_29} :catch_87

    .line 1084
    .end local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v123, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_2a
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.feature.sensorhub"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1085
    const-string v6, "SystemServer"

    const-string v7, "Context Aware Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    const-string v6, "context_aware"

    new-instance v7, Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-direct {v7, v5}, Lcom/samsung/android/contextaware/manager/ContextAwareService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2a} :catch_16

    .line 1090
    :cond_5
    :try_start_2b
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.feature.sensorhub"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.feature.scontext_lite"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1092
    :cond_6
    const-string v6, "SystemServer"

    const-string v7, "SContext Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    new-instance v171, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/motionrecognitionservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v171

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1094
    .local v171, "scontextClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "android.hardware.scontext.SContextService"

    move-object/from16 v0, v171

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v61

    .line 1095
    .local v61, "class_SContextService":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v61

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v71

    .line 1096
    .local v71, "constructor_SContextService":Ljava/lang/reflect/Constructor;
    const-string/jumbo v7, "scontext"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    move-object/from16 v0, v71

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2b} :catch_16

    .line 1103
    .end local v61    # "class_SContextService":Ljava/lang/Class;
    .end local v71    # "constructor_SContextService":Ljava/lang/reflect/Constructor;
    .end local v171    # "scontextClassLoader":Ldalvik/system/PathClassLoader;
    :cond_7
    :goto_14
    :try_start_2c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "com.sec.feature.barcode_emulator"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_2c
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_2c} :catch_16

    move-result v6

    if-eqz v6, :cond_8

    .line 1105
    :try_start_2d
    const-string v6, "SystemServer"

    const-string v7, "BarBeamService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    new-instance v53, Landroid/app/BarBeamService;

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Landroid/app/BarBeamService;-><init>(Landroid/content/Context;)V

    .line 1108
    .local v53, "barbeam":Landroid/app/BarBeamService;
    const-string v6, "barbeam"

    move-object/from16 v0, v53

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_2d} :catch_16

    .line 1120
    .end local v53    # "barbeam":Landroid/app/BarBeamService;
    :cond_8
    :goto_15
    const/4 v6, 0x0

    :try_start_2e
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->mMultiWindowFacadeService:Lcom/android/server/am/MultiWindowFacadeService;

    .line 1130
    const-string v6, "SystemServer"

    const-string v7, "Window Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_43

    const/4 v6, 0x1

    move v7, v6

    :goto_16
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-nez v6, :cond_44

    const/4 v6, 0x1

    :goto_17
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move-object/from16 v0, v123

    invoke-static {v5, v0, v7, v6, v10}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v208

    .line 1134
    const-string/jumbo v6, "window"

    move-object/from16 v0, v208

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1135
    const-string/jumbo v6, "input"

    move-object/from16 v0, v123

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1137
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v208

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1147
    invoke-virtual/range {v208 .. v208}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v6

    move-object/from16 v0, v123

    invoke-virtual {v0, v6}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 1148
    invoke-virtual/range {v123 .. v123}, Lcom/android/server/input/InputManagerService;->start()V

    .line 1151
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v6}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 1156
    if-eqz v126, :cond_45

    .line 1157
    const-string v6, "SystemServer"

    const-string v7, "No Bluetooh Service (emulator)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    :goto_18
    const-string v6, "SystemServer"

    const-string v7, "RCP Manager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_2e} :catch_16

    .line 1179
    :try_start_2f
    new-instance v138, Lcom/android/server/RCPManagerService;

    move-object/from16 v0, v138

    invoke-direct {v0, v5}, Lcom/android/server/RCPManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_2f} :catch_16

    .line 1180
    .end local v137    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .local v138, "mRCPManagerService":Lcom/android/server/RCPManagerService;
    :try_start_30
    const-string/jumbo v6, "rcp"

    move-object/from16 v0, v138

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_89
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_30} :catch_88

    move-object/from16 v137, v138

    .line 1187
    .end local v138    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v137    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    :goto_19
    :try_start_31
    new-instance v6, Landroid/security/keystore/AndroidKeyStoreProvider;

    invoke-direct {v6}, Landroid/security/keystore/AndroidKeyStoreProvider;-><init>()V

    invoke-static {v6}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_31} :catch_16

    move-object/from16 v104, v105

    .end local v105    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v104    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v72, v73

    .end local v73    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v72    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v183, v184

    .end local v184    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v183    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v122, v123

    .end local v123    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v196, v197

    .line 1194
    .end local v136    # "mProductName":Ljava/lang/String;
    .end local v185    # "timaEnabled":Z
    .end local v195    # "versionInfo":Landroid/os/Bundle;
    .end local v197    # "vibrator":Lcom/android/server/VibratorService;
    .end local v202    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v196    # "vibrator":Lcom/android/server/VibratorService;
    :goto_1a
    const/16 v180, 0x0

    .line 1195
    .local v180, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v158, 0x0

    .line 1196
    .local v158, "notification":Landroid/app/INotificationManager;
    const/16 v120, 0x0

    .line 1197
    .local v120, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v200, 0x0

    .line 1198
    .local v200, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v129, 0x0

    .line 1199
    .local v129, "location":Lcom/android/server/LocationManagerService;
    const/16 v168, 0x0

    .line 1200
    .local v168, "sLocation":Landroid/os/IBinder;
    const/16 v75, 0x0

    .line 1201
    .local v75, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v192, 0x0

    .line 1202
    .local v192, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v131, 0x0

    .line 1204
    .local v131, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v198, 0x0

    .line 1206
    .local v198, "vrManager":Lcom/android/server/VRManagerService;
    const/16 v49, 0x0

    .line 1207
    .local v49, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v141, 0x0

    .line 1210
    .local v141, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/16 v102, 0x0

    .line 1214
    .local v102, "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const/16 v166, 0x0

    .line 1218
    .local v166, "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_9

    .line 1220
    :try_start_32
    const-string v6, "SystemServer"

    const-string v7, "Input Method Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    new-instance v121, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v121

    move-object/from16 v1, v208

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_19

    .line 1222
    .end local v120    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v121, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_33
    const-string/jumbo v6, "input_method"

    move-object/from16 v0, v121

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_80

    move-object/from16 v120, v121

    .line 1228
    .end local v121    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v120    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_1b
    :try_start_34
    const-string v6, "SystemServer"

    const-string v7, "Accessibility Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    const-string v6, "accessibility"

    new-instance v7, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v7, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1a

    .line 1237
    :cond_9
    :goto_1c
    :try_start_35
    invoke-virtual/range {v208 .. v208}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1b

    .line 1244
    :goto_1d
    :try_start_36
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v159

    .line 1245
    .local v159, "pM":Landroid/content/pm/PackageManager;
    if-eqz v159, :cond_a

    .line 1246
    const-string v6, "SystemServer"

    const-string v7, "PackageManager is not null!!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    const-string v6, "com.sec.feature.motionrecognition_service"

    move-object/from16 v0, v159

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "com.sec.feature.sensorhub"

    move-object/from16 v0, v159

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "com.sec.feature.scontext_lite"

    move-object/from16 v0, v159

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1249
    new-instance v146, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/motionrecognitionservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v146

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1250
    .local v146, "motionClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.samsung.android.motion.MotionRecognitionService"

    move-object/from16 v0, v146

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v60

    .line 1251
    .local v60, "class_MotionRecognitionService":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v60

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v70

    .line 1252
    .local v70, "constructor_MotionRecognitionService":Ljava/lang/reflect/Constructor;
    const-string/jumbo v7, "motion_recognition"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    move-object/from16 v0, v70

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1253
    const-string v6, "SystemServer"

    const-string v7, "MotionRecognitionService Service!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_1c

    .line 1262
    .end local v60    # "class_MotionRecognitionService":Ljava/lang/Class;
    .end local v70    # "constructor_MotionRecognitionService":Ljava/lang/reflect/Constructor;
    .end local v146    # "motionClassLoader":Ldalvik/system/PathClassLoader;
    .end local v159    # "pM":Landroid/content/pm/PackageManager;
    :cond_a
    :goto_1e
    const/16 v77, 0x0

    .line 1264
    .local v77, "coverService":Lcom/android/server/cover/CoverManagerService;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_c

    .line 1265
    const-string/jumbo v6, "vold.decrypt"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v81

    .line 1266
    .local v81, "cryptState":Ljava/lang/String;
    const-string/jumbo v6, "trigger_restart_min_framework"

    move-object/from16 v0, v81

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string/jumbo v6, "trigger_restart_min_framework"

    move-object/from16 v0, v81

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 1267
    :cond_b
    const-string v6, "SystemServer"

    const-string v7, "Detected encryption in progress - unable CoverManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    .end local v81    # "cryptState":Ljava/lang/String;
    :cond_c
    :goto_1f
    :try_start_37
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v163

    .line 1290
    .local v163, "pm":Landroid/content/pm/PackageManager;
    if-eqz v163, :cond_d

    .line 1291
    const-string v6, "com.sec.feature.cover.nfc_authentication"

    move-object/from16 v0, v163

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1292
    const-string v6, "SystemServer"

    const-string v7, "Samsung Accessory Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    new-instance v167, Lcom/samsung/accessory/manager/SAccessoryManager;

    move-object/from16 v0, v167

    move-object/from16 v1, v122

    invoke-direct {v0, v5, v1}, Lcom/samsung/accessory/manager/SAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1e

    .line 1294
    .end local v166    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .local v167, "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    :try_start_38
    const-string/jumbo v6, "saccessory_manager"

    move-object/from16 v0, v167

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1295
    move-object/from16 v0, v122

    move-object/from16 v1, v167

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->setUnVerifiedCoverAttachCallbacks(Lcom/android/server/input/InputManagerService$UnverifiedCoverAttachCallbacks;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_7e

    move-object/from16 v166, v167

    .line 1314
    .end local v163    # "pm":Landroid/content/pm/PackageManager;
    .end local v167    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .restart local v166    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    :cond_d
    :goto_20
    const-string v6, "8"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_e

    .line 1316
    :try_start_39
    const-string v6, "SystemServer"

    const-string v7, "Add FM_RADIO_SERVICE"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    const-string v6, "FMPlayer"

    new-instance v7, Lcom/android/server/FMRadioService;

    invoke-direct {v7, v5}, Lcom/android/server/FMRadioService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1318
    const-string v6, "SystemServer"

    const-string v7, "FMRadio service added.."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_1f

    .line 1324
    :cond_e
    :goto_21
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_10

    .line 1325
    if-nez v94, :cond_f

    const-string v6, "0"

    const-string/jumbo v7, "system_init.startmountservice"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 1332
    :try_start_3a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.MountService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1333
    const-string/jumbo v6, "mount"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_20

    move-result-object v147

    .line 1341
    :cond_f
    :goto_22
    :try_start_3b
    const-string v6, "SystemServer"

    const-string v7, "DirEncryptSerrvice"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    if-eqz v83, :cond_10

    .line 1343
    const-string v6, "SystemServer"

    const-string v7, "DirEncryptService.SystemReady"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/DirEncryptService;->systemReady()V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_21

    .line 1381
    :cond_10
    :goto_23
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1384
    :try_start_3c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_22

    .line 1390
    :goto_24
    :try_start_3d
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x1040389

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v10, 0x0

    invoke-interface {v6, v7, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_3d} :catch_7d

    .line 1397
    :goto_25
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_55

    .line 1398
    if-nez v93, :cond_12

    .line 1400
    :try_start_3e
    const-string v6, "SystemServer"

    const-string v7, "LockSettingsService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    new-instance v132, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v132

    invoke-direct {v0, v5}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_23

    .line 1402
    .end local v131    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v132, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_3f
    const-string/jumbo v6, "lock_settings"

    move-object/from16 v0, v132

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_7c

    move-object/from16 v131, v132

    .line 1407
    .end local v132    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v131    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_26
    const-string/jumbo v6, "ro.frp.pst"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 1408
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1411
    :cond_11
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1415
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1420
    :cond_12
    :try_start_40
    const-string v6, "SystemServer"

    const-string v7, "HarmonyEAS service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    new-instance v134, Lcom/android/server/HarmonyEASService;

    move-object/from16 v0, v134

    invoke-direct {v0, v5}, Lcom/android/server/HarmonyEASService;-><init>(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_24

    .line 1422
    .end local v133    # "mHMS":Lcom/android/server/HarmonyEASService;
    .local v134, "mHMS":Lcom/android/server/HarmonyEASService;
    :try_start_41
    const-string/jumbo v6, "harmony_eas_service"

    move-object/from16 v0, v134

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1423
    const-string v6, "SystemServer"

    const-string v7, "Harmony EAS service created..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_7b

    move-object/from16 v133, v134

    .line 1432
    .end local v134    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v133    # "mHMS":Lcom/android/server/HarmonyEASService;
    :goto_27
    :try_start_42
    const-string v6, "SystemServer"

    const-string v7, "SdpManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    new-instance v175, Lcom/android/server/SdpManagerService;

    move-object/from16 v0, v175

    invoke-direct {v0, v5}, Lcom/android/server/SdpManagerService;-><init>(Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_25

    .line 1434
    .end local v174    # "sdpService":Lcom/android/server/SdpManagerService;
    .local v175, "sdpService":Lcom/android/server/SdpManagerService;
    :try_start_43
    const-string/jumbo v6, "sdp"

    move-object/from16 v0, v175

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_7a

    move-object/from16 v174, v175

    .line 1440
    .end local v175    # "sdpService":Lcom/android/server/SdpManagerService;
    .restart local v174    # "sdpService":Lcom/android/server/SdpManagerService;
    :goto_28
    :try_start_44
    const-string v6, "SystemServer"

    const-string v7, "SdpLogService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    new-instance v173, Lcom/android/server/SdpLogService;

    move-object/from16 v0, v173

    invoke-direct {v0, v5}, Lcom/android/server/SdpLogService;-><init>(Landroid/content/Context;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_26

    .line 1442
    .end local v172    # "sdpLogService":Lcom/android/server/SdpLogService;
    .local v173, "sdpLogService":Lcom/android/server/SdpLogService;
    :try_start_45
    const-string/jumbo v6, "sdp_log"

    move-object/from16 v0, v173

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_79

    move-object/from16 v172, v173

    .line 1451
    .end local v173    # "sdpLogService":Lcom/android/server/SdpLogService;
    .restart local v172    # "sdpLogService":Lcom/android/server/SdpLogService;
    :goto_29
    :try_start_46
    const-string v6, "SystemServer"

    const-string v7, "DLPManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    new-instance v97, Lcom/android/server/DLPManagerService;

    move-object/from16 v0, v97

    invoke-direct {v0, v5}, Lcom/android/server/DLPManagerService;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_27

    .line 1453
    .end local v96    # "dlpService":Lcom/android/server/DLPManagerService;
    .local v97, "dlpService":Lcom/android/server/DLPManagerService;
    :try_start_47
    const-string v6, "dlp"

    move-object/from16 v0, v97

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_78

    move-object/from16 v96, v97

    .line 1460
    .end local v97    # "dlpService":Lcom/android/server/DLPManagerService;
    .restart local v96    # "dlpService":Lcom/android/server/DLPManagerService;
    :goto_2a
    if-nez v93, :cond_13

    .line 1462
    :try_start_48
    const-string v6, "SystemServer"

    const-string v7, "Enterprise Policy"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    new-instance v103, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    const/4 v7, 0x0

    move-object/from16 v0, v103

    invoke-direct {v0, v5, v6, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Landroid/app/admin/IDevicePolicyManager;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_28

    .line 1464
    .end local v102    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .local v103, "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :try_start_49
    const-string v6, "enterprise_policy"

    move-object/from16 v0, v103

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1465
    const-string v6, "SystemServer"

    const-string v7, "Enterprise Policymanager service created..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_77

    move-object/from16 v102, v103

    .line 1472
    .end local v103    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v102    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :cond_13
    :goto_2b
    if-nez v95, :cond_14

    .line 1474
    :try_start_4a
    const-string v6, "SystemServer"

    const-string v7, "Status Bar"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    new-instance v181, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v181

    move-object/from16 v1, v208

    invoke-direct {v0, v5, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_29

    .line 1476
    .end local v180    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v181, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_4b
    const-string/jumbo v6, "statusbar"

    move-object/from16 v0, v181

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_76

    move-object/from16 v180, v181

    .line 1482
    .end local v181    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v180    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_14
    :goto_2c
    if-nez v93, :cond_15

    .line 1484
    :try_start_4c
    const-string v6, "SystemServer"

    const-string v7, "Clipboard Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    const-string v6, "clipboard"

    new-instance v7, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v7, v5}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2a

    .line 1504
    :cond_15
    :goto_2d
    if-nez v91, :cond_16

    .line 1506
    :try_start_4d
    const-string v6, "SystemServer"

    const-string v7, "NetworkManagement Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v9

    .line 1508
    const-string/jumbo v6, "network_management"

    invoke-static {v6, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2b

    .line 1528
    :cond_16
    :goto_2e
    if-nez v93, :cond_17

    .line 1530
    :try_start_4e
    const-string v6, "SystemServer"

    const-string v7, "Text Service Manager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    new-instance v193, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v193

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_2c

    .line 1532
    .end local v192    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v193, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_4f
    const-string/jumbo v6, "textservices"

    move-object/from16 v0, v193

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_75

    move-object/from16 v192, v193

    .line 1538
    .end local v193    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v192    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_17
    :goto_2f
    if-nez v91, :cond_54

    .line 1540
    :try_start_50
    const-string v6, "SystemServer"

    const-string v7, "Network Score Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    new-instance v154, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v154

    invoke-direct {v0, v5}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_2d

    .line 1542
    .end local v153    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v154, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_51
    const-string/jumbo v6, "network_score"

    move-object/from16 v0, v154

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_74

    move-object/from16 v153, v154

    .line 1548
    .end local v154    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v153    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_30
    :try_start_52
    const-string v6, "SystemServer"

    const-string v7, "NetworkStats Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    new-instance v155, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v155

    move-object/from16 v1, v44

    invoke-direct {v0, v5, v9, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_2e

    .line 1550
    .end local v8    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v155, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_53
    const-string/jumbo v6, "netstats"

    move-object/from16 v0, v155

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_73

    move-object/from16 v8, v155

    .line 1556
    .end local v155    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v8    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_31
    :try_start_54
    const-string v6, "SystemServer"

    const-string v7, "NetworkPolicy Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    new-instance v4, Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v7, "power"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    check-cast v7, Landroid/os/IPowerManager;

    invoke-direct/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_2f

    .line 1561
    .end local v152    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v4, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_55
    const-string/jumbo v6, "netpolicy"

    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_72

    .line 1566
    :goto_32
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1567
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.WifiService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1569
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.hs20.WifiHs20Service"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1572
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.WifiScanningService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1575
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.RttService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1578
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1582
    :try_start_56
    const-string v6, "SystemServer"

    const-string v7, "Connectivity Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    new-instance v67, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v67

    invoke-direct {v0, v5, v9, v8, v4}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_30

    .line 1585
    .end local v66    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v67, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_57
    const-string v6, "connectivity"

    move-object/from16 v0, v67

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1586
    move-object/from16 v0, v67

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 1587
    move-object/from16 v0, v67

    invoke-virtual {v4, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_71

    move-object/from16 v66, v67

    .line 1611
    .end local v67    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v66    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_33
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_ConfigKeepRrcConnection"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v109

    .line 1612
    .local v109, "feature":Ljava/lang/String;
    if-eqz v109, :cond_18

    const-string/jumbo v6, "hongbao"

    move-object/from16 v0, v109

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 1614
    :try_start_58
    const-string v6, "SystemServer"

    const-string v7, "HongbaoMode Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v58

    .line 1616
    .local v58, "cl":Ljava/lang/ClassLoader;
    const-string v6, "com.samsung.android.hongbaomode.HongbaoModeService"

    const/4 v7, 0x1

    move-object/from16 v0, v58

    invoke-static {v6, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v59

    .line 1617
    .local v59, "class_HongbaoModeService":Ljava/lang/Class;
    const-string v6, "HONGBAO_MODE_SERVICE"

    move-object/from16 v0, v59

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v110

    .line 1619
    .local v110, "field_HONGBAOMODE_SERVICE":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v59

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v69

    .line 1621
    .local v69, "constructor_HongbaoModeService":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x0

    move-object/from16 v0, v110

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v7, v10

    move-object/from16 v0, v69

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1622
    const-string v6, "SystemServer"

    const-string v7, "HongbaoModeService loaded"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_31

    .line 1629
    .end local v58    # "cl":Ljava/lang/ClassLoader;
    .end local v59    # "class_HongbaoModeService":Ljava/lang/Class;
    .end local v69    # "constructor_HongbaoModeService":Ljava/lang/reflect/Constructor;
    .end local v110    # "field_HONGBAOMODE_SERVICE":Ljava/lang/reflect/Field;
    :cond_18
    :goto_34
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_SupportMptcp"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1631
    :try_start_59
    const-string v6, "SystemServer"

    const-string v7, "Mptcp Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    new-instance v149, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/mptcpservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v149

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1633
    .local v149, "mptcpClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.samsung.android.mptcp.MptcpService"

    move-object/from16 v0, v149

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v148

    .line 1634
    .local v148, "mptcpClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v148

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v150

    .line 1635
    .local v150, "mptcpConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v150

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v151

    check-cast v151, Landroid/os/IBinder;

    .line 1638
    .local v151, "mptcpService":Landroid/os/IBinder;
    const-string v6, "SystemServer"

    const-string v7, "MPTCP loaded"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_32

    .line 1645
    .end local v148    # "mptcpClass":Ljava/lang/Class;
    .end local v149    # "mptcpClassLoader":Ldalvik/system/PathClassLoader;
    .end local v150    # "mptcpConstructor":Ljava/lang/reflect/Constructor;
    .end local v151    # "mptcpService":Landroid/os/IBinder;
    :cond_19
    :goto_35
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_SupportEpdg"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 1647
    :try_start_5a
    const-string v6, "SystemServer"

    const-string v7, "Starting EPDG SERVICE"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    const/16 v106, 0x0

    .line 1649
    .local v106, "epdgclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "com.sec.epdg.EpdgService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v106

    .line 1650
    if-nez v106, :cond_4b

    .line 1651
    const-string v6, "SystemServer"

    const-string v7, "Epdg Service does not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_33

    .line 1709
    .end local v106    # "epdgclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1a
    :goto_36
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1712
    :try_start_5b
    const-string v6, "SystemServer"

    const-string v7, "Wi-Fi  Offload Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    new-instance v207, Lcom/android/server/wifioffload/WifiOffloadService;

    move-object/from16 v0, v207

    invoke-direct {v0, v5}, Lcom/android/server/wifioffload/WifiOffloadService;-><init>(Landroid/content/Context;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_34

    .line 1714
    .end local v206    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    .local v207, "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    :try_start_5c
    const-string/jumbo v6, "wifioffload"

    move-object/from16 v0, v207

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_70

    move-object/from16 v206, v207

    .line 1722
    .end local v207    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    .restart local v206    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    :cond_1b
    :goto_37
    :try_start_5d
    const-string v6, "SystemServer"

    const-string v7, "Network Service Discovery Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v178

    .line 1724
    const-string/jumbo v6, "servicediscovery"

    move-object/from16 v0, v178

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_35

    .line 1730
    :goto_38
    :try_start_5e
    const-string v6, "SystemServer"

    const-string v7, "DPM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    invoke-static {v5}, Lcom/android/server/SystemServer;->startDpmService(Landroid/content/Context;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_36

    .line 1737
    .end local v109    # "feature":Ljava/lang/String;
    :goto_39
    if-nez v93, :cond_1c

    .line 1739
    :try_start_5f
    const-string v6, "SystemServer"

    const-string v7, "UpdateLock Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    const-string/jumbo v6, "updatelock"

    new-instance v7, Lcom/android/server/UpdateLockService;

    invoke-direct {v7, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_37

    .line 1752
    :cond_1c
    :goto_3a
    if-eqz v147, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v6, :cond_1d

    .line 1755
    :try_start_60
    const-string/jumbo v6, "vold.decrypt"

    const-string/jumbo v7, "null"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "trigger_restart_min_framework"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    .line 1756
    invoke-interface/range {v147 .. v147}, Landroid/os/storage/IMountService;->waitForAsecScan()V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_60} :catch_6f

    .line 1762
    :cond_1d
    :goto_3b
    if-eqz v42, :cond_1e

    .line 1763
    :try_start_61
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_38

    .line 1769
    :cond_1e
    :goto_3c
    if-eqz v74, :cond_1f

    .line 1770
    :try_start_62
    invoke-virtual/range {v74 .. v74}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_39

    .line 1775
    :cond_1f
    :goto_3d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1776
    const-string/jumbo v6, "notification"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v158

    .line 1778
    move-object/from16 v0, v158

    invoke-virtual {v4, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 1780
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1782
    if-nez v90, :cond_20

    .line 1784
    :try_start_63
    const-string v6, "SystemServer"

    const-string v7, "Location Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    new-instance v130, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v130

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_3a

    .line 1786
    .end local v129    # "location":Lcom/android/server/LocationManagerService;
    .local v130, "location":Lcom/android/server/LocationManagerService;
    :try_start_64
    const-string/jumbo v6, "location"

    move-object/from16 v0, v130

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_6e

    move-object/from16 v129, v130

    .line 1792
    .end local v130    # "location":Lcom/android/server/LocationManagerService;
    .restart local v129    # "location":Lcom/android/server/LocationManagerService;
    :goto_3e
    :try_start_65
    const-string v6, "SystemServer"

    const-string v7, "Country Detector"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    new-instance v76, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v76

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_3b

    .line 1794
    .end local v75    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v76, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_66
    const-string v6, "country_detector"

    move-object/from16 v0, v76

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_66} :catch_6d

    move-object/from16 v75, v76

    .line 1801
    .end local v76    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v75    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_20
    :goto_3f
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_SupportHuxGpsEnableVzwLbsStack"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 1803
    const/16 v62, 0x0

    .line 1804
    .local v62, "clazz":Ljava/lang/Class;
    :try_start_67
    const-string v6, "SystemServer"

    const-string v7, "Starting VZW Location Manager "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    const-string v6, "com.samsung.vzwlbs"

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v45

    .line 1806
    .local v45, "apkServiceContext":Landroid/content/Context;
    const-string v6, "SystemServer"

    const-string v7, "Loading VzwLocationManagerService from the APK"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_67} :catch_3d

    .line 1808
    :try_start_68
    invoke-virtual/range {v45 .. v45}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string v7, "com.vzw.location.service.VzwLocationManagerService"

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v62

    .line 1809
    const-string v6, "SystemServer"

    const-string v7, "Loaded VzwLocationManagerService"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_68} :catch_3c
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_68} :catch_3d

    .line 1814
    :goto_40
    if-eqz v62, :cond_4d

    .line 1815
    const/4 v6, 0x1

    :try_start_69
    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v62

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v68

    .line 1816
    .local v68, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Object;

    move-object/from16 v48, v0

    const/4 v6, 0x0

    aput-object v5, v48, v6

    .line 1817
    .local v48, "arglist":[Ljava/lang/Object;
    move-object/from16 v0, v68

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v117

    check-cast v117, Landroid/os/IBinder;

    .line 1818
    .local v117, "ib":Landroid/os/IBinder;
    const-string v6, "SystemServer"

    const-string v7, "Adding VzwLocationManagerService"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    const-string v6, "VZW_LOCATION_SERVICE"

    move-object/from16 v0, v117

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_69} :catch_3d

    .line 1830
    .end local v45    # "apkServiceContext":Landroid/content/Context;
    .end local v48    # "arglist":[Ljava/lang/Object;
    .end local v62    # "clazz":Ljava/lang/Class;
    .end local v68    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v117    # "ib":Landroid/os/IBinder;
    :cond_21
    :goto_41
    :try_start_6a
    const-string v6, "SystemServer"

    const-string v7, "SLocation Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    const-string v6, "com.samsung.location.SLocationLoader"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v169

    .line 1832
    .local v169, "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v6, "getSLocationService"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v7, v10

    move-object/from16 v0, v169

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v116

    .line 1833
    .local v116, "getSLocationService":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v7, v10

    move-object/from16 v0, v116

    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/os/IBinder;

    move-object/from16 v168, v0

    .line 1834
    const-string/jumbo v6, "sec_location"

    move-object/from16 v0, v168

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6a} :catch_3e

    .line 1885
    .end local v116    # "getSLocationService":Ljava/lang/reflect/Method;
    .end local v169    # "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_42
    const-string v6, "SystemServer"

    const-string v7, "SEC_PRODUCT_FEATURE_FRAMEWORK_SUPPORT_CP_POSITIONING=FALSE"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    if-nez v93, :cond_22

    .line 1891
    :try_start_6b
    const-string v6, "SystemServer"

    const-string v7, "Search Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    const-string/jumbo v6, "search"

    new-instance v7, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v7, v5}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6b} :catch_3f

    .line 1899
    :cond_22
    :goto_43
    const-string v6, "0"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v107

    .line 1900
    .local v107, "executableVersion":I
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Execute Service Version: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v107

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    if-nez v93, :cond_23

    if-lez v107, :cond_23

    .line 1903
    :try_start_6c
    const-string v6, "SystemServer"

    const-string v7, "Execute Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    const-string v6, "execute"

    new-instance v7, Lcom/android/server/execute/ExecuteManagerService;

    invoke-direct {v7, v5}, Lcom/android/server/execute/ExecuteManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6c} :catch_40

    .line 1912
    :cond_23
    :goto_44
    :try_start_6d
    const-string v6, "SystemServer"

    const-string v7, "DropBox Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    const-string v6, "dropbox"

    new-instance v7, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v5, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_6d} :catch_41

    .line 1919
    :goto_45
    if-nez v93, :cond_24

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1120051

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 1922
    :try_start_6e
    const-string v6, "SystemServer"

    const-string v7, "Wallpaper Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    new-instance v201, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v201

    invoke-direct {v0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_6e} :catch_42

    .line 1924
    .end local v200    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v201, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_6f
    const-string/jumbo v6, "wallpaper"

    move-object/from16 v0, v201

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_6f} :catch_6c

    move-object/from16 v200, v201

    .line 1931
    .end local v201    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v200    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_24
    :goto_46
    :try_start_70
    const-string v6, "SystemServer"

    const-string v7, "Audio Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    new-instance v52, Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/audio/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_70} :catch_43

    .line 1933
    .end local v51    # "audioService":Lcom/android/server/audio/AudioService;
    .local v52, "audioService":Lcom/android/server/audio/AudioService;
    :try_start_71
    const-string v6, "audio"

    move-object/from16 v0, v52

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_71} :catch_6b

    move-object/from16 v51, v52

    .line 1938
    .end local v52    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v51    # "audioService":Lcom/android/server/audio/AudioService;
    :goto_47
    const/16 v89, 0x0

    .line 1940
    .local v89, "disableDockObserver":Z
    :try_start_72
    new-instance v111, Ljava/io/File;

    const-string v6, "/sys/class/switch/dock/state"

    move-object/from16 v0, v111

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1941
    .local v111, "file":Ljava/io/File;
    invoke-virtual/range {v111 .. v111}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_25

    .line 1942
    const-string v6, "SystemServer"

    const-string v7, "This kernel does not have dock station support , Do not Start DockObserver"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_72} :catch_44

    .line 1943
    const/16 v89, 0x1

    .line 1949
    .end local v111    # "file":Ljava/io/File;
    :cond_25
    :goto_48
    if-nez v93, :cond_26

    if-nez v89, :cond_26

    .line 1950
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/DockObserver;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1954
    :cond_26
    :try_start_73
    const-string v6, "SystemServer"

    const-string v7, "Wired Accessory Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    new-instance v6, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v122

    invoke-direct {v6, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v122

    invoke-virtual {v0, v6}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_73} :catch_45

    .line 1962
    :goto_49
    if-nez v93, :cond_2a

    .line 1963
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.midi"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 1965
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1968
    :cond_27
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.usb.host"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_28

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.usb.accessory"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 1972
    :cond_28
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1976
    :cond_29
    :try_start_74
    const-string v6, "SystemServer"

    const-string v7, "Serial Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    new-instance v177, Lcom/android/server/SerialService;

    move-object/from16 v0, v177

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_74} :catch_46

    .line 1979
    .end local v176    # "serial":Lcom/android/server/SerialService;
    .local v177, "serial":Lcom/android/server/SerialService;
    :try_start_75
    const-string/jumbo v6, "serial"

    move-object/from16 v0, v177

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_75} :catch_6a

    move-object/from16 v176, v177

    .line 1989
    .end local v177    # "serial":Lcom/android/server/SerialService;
    .restart local v176    # "serial":Lcom/android/server/SerialService;
    :cond_2a
    :goto_4a
    :try_start_76
    const-string v6, "SystemServer"

    const-string v7, "KiesUsb Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    const-string/jumbo v6, "kiesusb"

    new-instance v7, Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-direct {v7, v5}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_76} :catch_47

    .line 1997
    :goto_4b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1999
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2001
    if-nez v93, :cond_2e

    .line 2002
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.backup"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 2003
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2006
    :cond_2b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.app_widgets"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 2007
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2010
    :cond_2c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.voice_recognizers"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 2011
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2014
    :cond_2d
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 2015
    const-string v6, "SystemServer"

    const-string v7, "Gesture Launcher Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2020
    :cond_2e
    const-string/jumbo v6, "ro.SecEDS.enable"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 2021
    .local v38, "SecEDSEnable":Ljava/lang/String;
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SecEDS Service ro.tvout.enable = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    const-string/jumbo v6, "false"

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2f

    .line 2025
    :try_start_77
    const-string v6, "SystemServer"

    const-string v7, "Starting SecEDSEnable Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    const/16 v101, 0x0

    .line 2027
    .local v101, "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "com.android.server.SecExternalDisplayService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v101

    .line 2028
    if-nez v101, :cond_4e

    .line 2029
    const-string v6, "SystemServer"

    const-string v7, "eds Service not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_77} :catch_48

    .line 2045
    .end local v101    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2f
    :goto_4c
    :try_start_78
    const-string v6, "SystemServer"

    const-string v7, "DiskStats Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    const-string v6, "diskstats"

    new-instance v7, Lcom/android/server/DiskStatsService;

    invoke-direct {v7, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_78} :catch_49

    .line 2054
    :goto_4d
    :try_start_79
    const-string v6, "SystemServer"

    const-string v7, "UCM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    new-instance v80, Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    move-object/from16 v0, v80

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;-><init>(Landroid/content/Context;)V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_79} :catch_4a

    .line 2056
    .end local v79    # "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .local v80, "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    :try_start_7a
    const-string v6, "com.samsung.ucs.ucsservice"

    move-object/from16 v0, v80

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_7a} :catch_69

    move-object/from16 v79, v80

    .line 2064
    .end local v80    # "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .restart local v79    # "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    :goto_4e
    :try_start_7b
    const-string v6, "SystemServer"

    const-string/jumbo v7, "mDNIe Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    const/16 v139, 0x0

    .line 2066
    .local v139, "mdnieClass":Ljava/lang/Class;
    const-string v6, "com.samsung.android.mdnie.MdnieManagerService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v139

    .line 2067
    if-nez v139, :cond_4f

    .line 2068
    const-string v6, "SystemServer"

    const-string v7, "Mdnie Service does not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_7b} :catch_4b

    .line 2080
    .end local v139    # "mdnieClass":Ljava/lang/Class;
    :goto_4f
    :try_start_7c
    const-string v6, "SystemServer"

    const-string v7, "DisplaySolution Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    const/16 v98, 0x0

    .line 2082
    .local v98, "dsClass":Ljava/lang/Class;
    const-string v6, "com.samsung.android.displaysolution.DisplaySolutionManagerService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v98

    .line 2083
    if-nez v98, :cond_50

    .line 2084
    const-string v6, "SystemServer"

    const-string v7, "DisplaySolution Service does not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_7c} :catch_4c

    .line 2096
    .end local v98    # "dsClass":Ljava/lang/Class;
    :goto_50
    :try_start_7d
    const-string v6, "SystemServer"

    const-string v7, "AAS Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    const/16 v40, 0x0

    .line 2098
    .local v40, "aasClass":Ljava/lang/Class;
    const-string v6, "com.samsung.android.allaroundsensing.AASManagerService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v40

    .line 2099
    if-nez v40, :cond_51

    .line 2100
    const-string v6, "SystemServer"

    const-string v7, "AAS Service does not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_7d} :catch_4d

    .line 2128
    .end local v40    # "aasClass":Ljava/lang/Class;
    :goto_51
    const-string v6, "0"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v182

    .line 2130
    .local v182, "supportAODFeatureVersion":I
    const/4 v6, 0x2

    move/from16 v0, v182

    if-lt v0, v6, :cond_30

    .line 2131
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.aod.AODManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2149
    :cond_30
    :try_start_7e
    const-string v6, "SystemServer"

    const-string v7, "SamplingProfiler Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    const-string/jumbo v6, "samplingprofiler"

    new-instance v7, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v7, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_7e} :catch_4e

    .line 2156
    :goto_52
    if-nez v91, :cond_31

    if-nez v92, :cond_31

    .line 2158
    :try_start_7f
    const-string v6, "SystemServer"

    const-string v7, "NetworkTimeUpdateService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    new-instance v157, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v157

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_7f} :catch_4f

    .end local v156    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v157, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v156, v157

    .line 2174
    .end local v157    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v156    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_31
    :goto_53
    :try_start_80
    const-string v6, "SystemServer"

    const-string v7, "CommonTimeManagementService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    new-instance v64, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v64

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_80} :catch_50

    .line 2176
    .end local v63    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v64, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_81
    const-string v6, "commontime_management"

    move-object/from16 v0, v64

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_81} :catch_68

    move-object/from16 v63, v64

    .line 2181
    .end local v64    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v63    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_54
    if-nez v91, :cond_32

    .line 2183
    :try_start_82
    const-string v6, "SystemServer"

    const-string v7, "CertBlacklister"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    new-instance v6, Lcom/android/server/CertBlacklister;

    invoke-direct {v6, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_82} :catch_51

    .line 2190
    :cond_32
    :goto_55
    if-nez v93, :cond_33

    .line 2192
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2195
    :cond_33
    if-nez v93, :cond_34

    if-nez v87, :cond_34

    .line 2197
    :try_start_83
    const-string v6, "SystemServer"

    const-string v7, "Assets Atlas Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    new-instance v50, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v50

    invoke-direct {v0, v5}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_83} :catch_52

    .line 2199
    .end local v49    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v50, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_84
    const-string v6, "assetatlas"

    move-object/from16 v0, v50

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_84} :catch_67

    move-object/from16 v49, v50

    .line 2205
    .end local v50    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v49    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_34
    :goto_56
    if-nez v93, :cond_35

    .line 2206
    const-string/jumbo v6, "graphicsstats"

    new-instance v7, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v7, v5}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2210
    :cond_35
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.print"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 2211
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.print.PrintManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2214
    :cond_36
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2216
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2218
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.hdmi.cec"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 2219
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2222
    :cond_37
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.live_tv"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 2223
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2226
    :cond_38
    if-nez v93, :cond_39

    .line 2228
    :try_start_85
    const-string v6, "SystemServer"

    const-string v7, "Media Router Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    new-instance v142, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v142

    invoke-direct {v0, v5}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_85} :catch_53

    .line 2230
    .end local v141    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v142, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_86
    const-string/jumbo v6, "media_router"

    move-object/from16 v0, v142

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_86} :catch_66

    move-object/from16 v141, v142

    .line 2235
    .end local v142    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v141    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_57
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2237
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2240
    :try_start_87
    const-string v6, "SystemServer"

    const-string v7, "BackgroundDexOptService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;J)V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_87} :catch_54

    .line 2250
    :cond_39
    :goto_58
    :try_start_88
    const-string v6, "SystemServer"

    const-string v7, "BackgroundCompactionService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/android/server/os/BackgroundCompactionService;->schedule(Landroid/content/Context;I)V

    .line 2252
    invoke-static {v5}, Lcom/android/server/os/BackgroundCompactionService;->initBGC(Landroid/content/Context;)V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_88} :catch_55

    .line 2258
    :goto_59
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2287
    const-string/jumbo v6, "ro.bluetooth.wipower"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v127

    .line 2289
    .local v127, "isWipowerEnabled":Z
    if-eqz v127, :cond_52

    .line 2291
    :try_start_89
    const-string/jumbo v39, "wbc_service"

    .line 2292
    .local v39, "WBC_SERVICE_NAME":Ljava/lang/String;
    const-string v6, "SystemServer"

    const-string v7, "WipowerBatteryControl Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    new-instance v204, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/com.quicinc.wbc.jar:/system/framework/com.quicinc.wbcservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v204

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2297
    .local v204, "wbcClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.quicinc.wbcservice.WbcService"

    move-object/from16 v0, v204

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v203

    .line 2298
    .local v203, "wbcClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v203

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v82

    .line 2299
    .local v82, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v82

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v205

    .line 2300
    .local v205, "wbcObject":Ljava/lang/Object;
    const-string v6, "SystemServer"

    const-string v7, "Successfully loaded WbcService class"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    const-string/jumbo v6, "wbc_service"

    check-cast v205, Landroid/os/IBinder;

    .end local v205    # "wbcObject":Ljava/lang/Object;
    move-object/from16 v0, v205

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_89 .. :try_end_89} :catch_56

    .line 2312
    .end local v39    # "WBC_SERVICE_NAME":Ljava/lang/String;
    .end local v82    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v203    # "wbcClass":Ljava/lang/Class;
    .end local v204    # "wbcClassLoader":Ldalvik/system/PathClassLoader;
    :goto_5a
    :try_start_8a
    const-string v6, "SystemServer"

    const-string v7, "MiniModeAppManager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    sget-object v6, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-static {v6}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v124

    .line 2315
    .local v124, "instructionSet":Ljava/lang/String;
    new-instance v58, Ldalvik/system/DexClassLoader;

    const-string v6, "/system/framework/minimode.jar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/dalvik-cache/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v124

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    move-object/from16 v0, v58

    invoke-direct {v0, v6, v7, v10, v11}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2317
    .restart local v58    # "cl":Ljava/lang/ClassLoader;
    const-string v6, "com.sec.minimode.manager.MiniModeAppManagerService"

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v36

    .line 2318
    .local v36, "MiniModeAppManagerServiceClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v37

    .line 2319
    .local v37, "MiniModeAppManagerServiceContructor":Ljava/lang/reflect/Constructor;
    const-string/jumbo v7, "mini_mode_app_manager"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_8a} :catch_57

    .line 2328
    .end local v36    # "MiniModeAppManagerServiceClass":Ljava/lang/Class;
    .end local v37    # "MiniModeAppManagerServiceContructor":Ljava/lang/reflect/Constructor;
    .end local v58    # "cl":Ljava/lang/ClassLoader;
    .end local v124    # "instructionSet":Ljava/lang/String;
    :goto_5b
    :try_start_8b
    const-string v6, "SystemServer"

    const-string v7, "VoIPInterfaceManager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    const-string/jumbo v6, "voip"

    new-instance v7, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v7, v5}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_8b} :catch_58

    .line 2336
    .end local v38    # "SecEDSEnable":Ljava/lang/String;
    .end local v89    # "disableDockObserver":Z
    .end local v107    # "executableVersion":I
    .end local v127    # "isWipowerEnabled":Z
    .end local v182    # "supportAODFeatureVersion":I
    :goto_5c
    if-nez v93, :cond_3a

    .line 2337
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2341
    :cond_3a
    invoke-static {}, Lcom/samsung/appdisabler/AppDisablerService;->configurationFileExists()Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 2343
    :try_start_8c
    new-instance v46, Lcom/samsung/appdisabler/AppDisablerService;

    move-object/from16 v0, v46

    invoke-direct {v0, v5}, Lcom/samsung/appdisabler/AppDisablerService;-><init>(Landroid/content/Context;)V

    .line 2344
    .local v46, "appDisablerService":Lcom/samsung/appdisabler/AppDisablerService;
    const-string v6, "SamsungAppDisabler"

    move-object/from16 v0, v46

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_8c} :catch_59

    .line 2353
    .end local v46    # "appDisablerService":Lcom/samsung/appdisabler/AppDisablerService;
    :cond_3b
    :goto_5d
    :try_start_8d
    const-string v6, "SystemServer"

    const-string v7, "Lpnet Manager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    const-string/jumbo v6, "lpnet"

    new-instance v7, Lcom/android/server/LpnetManagerService;

    invoke-direct {v7, v5}, Lcom/android/server/LpnetManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_8d} :catch_5a

    .line 2363
    :goto_5e
    invoke-virtual/range {v208 .. v208}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v170

    .line 2364
    .local v170, "safeMode":Z
    move/from16 v0, v170

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/SystemServer;->safeModeValueForTheme:Z

    .line 2365
    if-eqz v170, :cond_53

    .line 2366
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    .line 2367
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 2369
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 2376
    :goto_5f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v144

    .end local v144    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v144, Lcom/android/server/MmsServiceBroker;

    .line 2401
    .restart local v144    # "mmsService":Lcom/android/server/MmsServiceBroker;
    :try_start_8e
    const-string v6, "SystemServer"

    const-string v7, "GameManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    new-instance v113, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/gamemanager.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v113

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2403
    .local v113, "gamemanagerClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.samsung.android.game.GameManagerService"

    move-object/from16 v0, v113

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v112

    .line 2404
    .local v112, "gamemanagerClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v112

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v114

    .line 2405
    .local v114, "gamemanagerConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v114

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v115

    check-cast v115, Landroid/os/IBinder;

    .line 2406
    .local v115, "gamemanagerService":Landroid/os/IBinder;
    const-string/jumbo v6, "gamemanager"

    move-object/from16 v0, v115

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2407
    const-string v6, "SystemServer"

    const-string v7, "GameManagerService loaded"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_8e} :catch_5b

    .line 2416
    .end local v112    # "gamemanagerClass":Ljava/lang/Class;
    .end local v113    # "gamemanagerClassLoader":Ldalvik/system/PathClassLoader;
    .end local v114    # "gamemanagerConstructor":Ljava/lang/reflect/Constructor;
    .end local v115    # "gamemanagerService":Landroid/os/IBinder;
    :goto_60
    :try_start_8f
    invoke-virtual/range {v196 .. v196}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_8f} :catch_5c

    .line 2421
    :goto_61
    if-eqz v131, :cond_3c

    .line 2423
    :try_start_90
    invoke-virtual/range {v131 .. v131}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_90} :catch_5d

    .line 2430
    :cond_3c
    :goto_62
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x1e0

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2432
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x1f4

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2435
    if-eqz v102, :cond_3d

    .line 2436
    invoke-virtual/range {v102 .. v102}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V

    .line 2437
    const-string v6, "SystemServer"

    const-string v7, "enterprisePolicy systemReady"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    :cond_3d
    if-eqz v79, :cond_3e

    .line 2445
    invoke-virtual/range {v79 .. v79}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->systemReady()V

    .line 2446
    const-string v6, "SystemServer"

    const-string v7, "credentialManagerService systemReady"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    :cond_3e
    :try_start_91
    invoke-virtual/range {v208 .. v208}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_91} :catch_5e

    .line 2456
    :goto_63
    if-eqz v170, :cond_3f

    .line 2457
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 2463
    :cond_3f
    invoke-virtual/range {v208 .. v208}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v65

    .line 2464
    .local v65, "config":Landroid/content/res/Configuration;
    new-instance v143, Landroid/util/DisplayMetrics;

    invoke-direct/range {v143 .. v143}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2465
    .local v143, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v199

    check-cast v199, Landroid/view/WindowManager;

    .line 2466
    .local v199, "w":Landroid/view/WindowManager;
    invoke-interface/range {v199 .. v199}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    move-object/from16 v0, v143

    invoke-virtual {v6, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2467
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object/from16 v0, v65

    move-object/from16 v1, v143

    invoke-virtual {v6, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2471
    :try_start_92
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_92} :catch_5f

    .line 2477
    :goto_64
    :try_start_93
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_93} :catch_60

    .line 2484
    :goto_65
    :try_start_94
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v170

    invoke-virtual {v6, v0, v7}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_94} :catch_61

    .line 2492
    :goto_66
    :try_start_95
    invoke-virtual/range {v174 .. v174}, Lcom/android/server/SdpManagerService;->systemReady()V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_95 .. :try_end_95} :catch_62

    .line 2498
    :goto_67
    :try_start_96
    invoke-virtual/range {v172 .. v172}, Lcom/android/server/SdpLogService;->systemReady()V
    :try_end_96
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_96} :catch_63

    .line 2506
    :goto_68
    :try_start_97
    invoke-virtual/range {v96 .. v96}, Lcom/android/server/DLPManagerService;->systemReady()V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_97 .. :try_end_97} :catch_64

    .line 2513
    :goto_69
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v195

    .line 2514
    .restart local v195    # "versionInfo":Landroid/os/Bundle;
    const-string v6, "2.0"

    const-string/jumbo v7, "version"

    move-object/from16 v0, v195

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 2516
    :try_start_98
    invoke-virtual/range {v135 .. v135}, Lcom/android/server/pm/PersonaManagerService;->systemReady()V
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_98 .. :try_end_98} :catch_65

    .line 2524
    :cond_40
    :goto_6a
    move-object v14, v9

    .line 2525
    .local v14, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v15, v8

    .line 2526
    .local v15, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v16, v4

    .line 2527
    .local v16, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v17, v66

    .line 2528
    .local v17, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v13, v153

    .line 2529
    .local v13, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v19, v200

    .line 2530
    .local v19, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v20, v120

    .line 2531
    .local v20, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v22, v129

    .line 2532
    .local v22, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v23, v168

    .line 2533
    .local v23, "sLocationF":Landroid/os/IBinder;
    move-object/from16 v24, v75

    .line 2534
    .local v24, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v25, v156

    .line 2535
    .local v25, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v26, v63

    .line 2536
    .local v26, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v27, v192

    .line 2537
    .local v27, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v21, v180

    .line 2539
    .local v21, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v28, v198

    .line 2541
    .local v28, "vrManagerF":Ljava/lang/Object;
    move-object/from16 v29, v49

    .line 2542
    .local v29, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v30, v122

    .line 2543
    .local v30, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v31, v183

    .line 2544
    .local v31, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v32, v141

    .line 2545
    .local v32, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v18, v51

    .line 2546
    .local v18, "audioServiceF":Lcom/android/server/audio/AudioService;
    move-object/from16 v145, v144

    .line 2548
    .local v145, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v33, v77

    .line 2552
    .local v33, "coverServiceF":Lcom/android/server/cover/CoverManagerService;
    move-object/from16 v34, v166

    .line 2560
    .local v34, "sAccessoryManagerF":Lcom/samsung/accessory/manager/SAccessoryManager;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v10, Lcom/android/server/SystemServer$2;

    move-object/from16 v11, p0

    move-object v12, v5

    invoke-direct/range {v10 .. v34}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/audio/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/VRManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/cover/CoverManagerService;Lcom/samsung/accessory/manager/SAccessoryManager;)V

    invoke-virtual {v6, v10}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 2752
    return-void

    .line 776
    .end local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v13    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v14    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v15    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v16    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v17    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v18    # "audioServiceF":Lcom/android/server/audio/AudioService;
    .end local v19    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v20    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v21    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v22    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v23    # "sLocationF":Landroid/os/IBinder;
    .end local v24    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v25    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v26    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v27    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v28    # "vrManagerF":Ljava/lang/Object;
    .end local v29    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v30    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v31    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v32    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v33    # "coverServiceF":Lcom/android/server/cover/CoverManagerService;
    .end local v34    # "sAccessoryManagerF":Lcom/samsung/accessory/manager/SAccessoryManager;
    .end local v49    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v65    # "config":Landroid/content/res/Configuration;
    .end local v75    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v77    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .end local v102    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v104    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v120    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v129    # "location":Lcom/android/server/LocationManagerService;
    .end local v131    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v141    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v143    # "metrics":Landroid/util/DisplayMetrics;
    .end local v145    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v158    # "notification":Landroid/app/INotificationManager;
    .end local v166    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .end local v168    # "sLocation":Landroid/os/IBinder;
    .end local v170    # "safeMode":Z
    .end local v180    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v183    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v192    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v198    # "vrManager":Lcom/android/server/VRManagerService;
    .end local v199    # "w":Landroid/view/WindowManager;
    .end local v200    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v105    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v152    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v184    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_0
    move-exception v100

    .line 777
    .local v100, "e":Ljava/lang/Throwable;
    :try_start_99
    const-string v6, "SystemServer"

    const-string v7, "Failure starting Persona Manager Service"

    move-object/from16 v0, v100

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_99
    .catch Ljava/lang/RuntimeException; {:try_start_99 .. :try_end_99} :catch_1

    goto/16 :goto_0

    .line 1189
    .end local v100    # "e":Ljava/lang/Throwable;
    .end local v195    # "versionInfo":Landroid/os/Bundle;
    :catch_1
    move-exception v100

    move-object/from16 v104, v105

    .end local v105    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v104    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v183, v184

    .line 1190
    .end local v184    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v100, "e":Ljava/lang/RuntimeException;
    .restart local v183    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :goto_6b
    const-string v6, "System"

    const-string v7, "******************************************"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    const-string v6, "System"

    const-string v7, "************ Failure starting core service"

    move-object/from16 v0, v100

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1a

    .line 787
    .end local v100    # "e":Ljava/lang/RuntimeException;
    .end local v104    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v183    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v105    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v184    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v195    # "versionInfo":Landroid/os/Bundle;
    :catch_2
    move-exception v100

    .line 789
    .local v100, "e":Ljava/lang/Throwable;
    :try_start_9a
    const-string v6, "SystemServer"

    const-string v7, "Failed to add Remote Mobile Manager."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 799
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v100

    .line 800
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting SE Android Manager Service"

    move-object/from16 v0, v100

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 816
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v100

    .line 817
    .restart local v100    # "e":Ljava/lang/Throwable;
    :goto_6c
    const-string v6, "SystemServer"

    const-string v7, "Failure starting Account Manager"

    move-object/from16 v0, v100

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9a
    .catch Ljava/lang/RuntimeException; {:try_start_9a .. :try_end_9a} :catch_1

    goto/16 :goto_3

    .line 834
    .end local v100    # "e":Ljava/lang/Throwable;
    .restart local v136    # "mProductName":Ljava/lang/String;
    :cond_41
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 844
    .end local v83    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v84    # "dEncService":Lcom/android/server/DirEncryptService;
    :catch_5
    move-exception v100

    .line 845
    .restart local v100    # "e":Ljava/lang/Throwable;
    :try_start_9b
    const-string v6, "SystemServer"

    const-string v7, "Failure starting DirEncryptService"

    move-object/from16 v0, v100

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9b
    .catch Ljava/lang/RuntimeException; {:try_start_9b .. :try_end_9b} :catch_84

    .line 846
    const/16 v83, 0x0

    .end local v84    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v83    # "dEncService":Lcom/android/server/DirEncryptService;
    goto/16 :goto_5

    .line 869
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v100

    .line 870
    .restart local v100    # "e":Ljava/lang/Throwable;
    :try_start_9c
    const-string v6, "SystemServer"

    const-string v7, "Failed to add SecurityManager Service."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 878
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v100

    .line 880
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failed to add Reactive Service."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 888
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v100

    .line 890
    .restart local v100    # "e":Ljava/lang/Throwable;
    invoke-virtual/range {v100 .. v100}, Ljava/lang/Throwable;->printStackTrace()V

    .line 891
    const-string v6, "SystemServer"

    const-string v7, "Failed to add VaultKeeper Service."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 899
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v100

    .line 901
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failed to add DeviceRootKeyService."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    invoke-virtual/range {v100 .. v100}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_9

    .line 910
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v100

    .line 912
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failed to add EngineeringModeService."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    invoke-virtual/range {v100 .. v100}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_a

    .line 921
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v100

    .line 923
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failed to add SATService."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 933
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v100

    .line 934
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Registration of denial service failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c
    .catch Ljava/lang/RuntimeException; {:try_start_9c .. :try_end_9c} :catch_1

    goto/16 :goto_c

    .line 968
    .end local v100    # "e":Ljava/lang/Throwable;
    .end local v196    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v185    # "timaEnabled":Z
    .restart local v197    # "vibrator":Lcom/android/server/VibratorService;
    :catch_d
    move-exception v100

    .line 969
    .restart local v100    # "e":Ljava/lang/Throwable;
    :goto_6d
    :try_start_9d
    const-string/jumbo v6, "starting TimaService"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 1189
    .end local v100    # "e":Ljava/lang/Throwable;
    .end local v185    # "timaEnabled":Z
    :catch_e
    move-exception v100

    move-object/from16 v104, v105

    .end local v105    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v104    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v183, v184

    .end local v184    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v183    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v196, v197

    .end local v197    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v196    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_6b

    .line 979
    .end local v104    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v183    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v196    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v105    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v184    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v185    # "timaEnabled":Z
    .restart local v197    # "vibrator":Lcom/android/server/VibratorService;
    :catch_f
    move-exception v100

    .line 980
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting TimaObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9d
    .catch Ljava/lang/RuntimeException; {:try_start_9d .. :try_end_9d} :catch_e

    goto/16 :goto_e

    .line 1002
    .end local v100    # "e":Ljava/lang/Throwable;
    .restart local v118    # "icccService":Lcom/android/server/IcccManagerService;
    .restart local v119    # "iccc_result":I
    .restart local v190    # "timaversion":Z
    :cond_42
    :try_start_9e
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "trustboot write result: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v10, -0xdfffff

    const/4 v11, 0x1

    move-object/from16 v0, v118

    invoke-virtual {v0, v10, v11}, Lcom/android/server/IcccManagerService;->setSecureData(II)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_9e} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_9e .. :try_end_9e} :catch_e

    goto/16 :goto_f

    .line 1004
    .end local v119    # "iccc_result":I
    :catch_10
    move-exception v100

    .line 1006
    .local v100, "e":Ljava/lang/Exception;
    :try_start_9f
    const-string/jumbo v6, "icccManager"

    const-string v7, "exception caught"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    invoke-virtual/range {v100 .. v100}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_9f} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_9f .. :try_end_9f} :catch_e

    goto/16 :goto_f

    .line 1025
    .end local v100    # "e":Ljava/lang/Exception;
    .end local v118    # "icccService":Lcom/android/server/IcccManagerService;
    .end local v190    # "timaversion":Z
    :catch_11
    move-exception v100

    .line 1026
    .restart local v100    # "e":Ljava/lang/Exception;
    :try_start_a0
    const-string v6, "SystemServer"

    const-string v7, "Unable to add TimaKesytore/FipsTimaKesytore provider"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    invoke-virtual/range {v100 .. v100}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_10

    .line 1042
    .end local v100    # "e":Ljava/lang/Exception;
    :catch_12
    move-exception v100

    .line 1043
    .local v100, "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting CEP Proxy Service"

    move-object/from16 v0, v100

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_11

    .line 1052
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v100

    .line 1053
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting Email Keystore Service"

    move-object/from16 v0, v100

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_12

    .line 1064
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v100

    .line 1065
    .local v100, "e":Ljava/lang/Exception;
    const-string v6, "SystemServer"

    const-string/jumbo v7, "ssrm.jar not found"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    invoke-virtual/range {v100 .. v100}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a0
    .catch Ljava/lang/RuntimeException; {:try_start_a0 .. :try_end_a0} :catch_e

    goto/16 :goto_13

    .line 1098
    .end local v72    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v100    # "e":Ljava/lang/Exception;
    .end local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v73    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v123    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v202    # "watchdog":Lcom/android/server/Watchdog;
    :catch_15
    move-exception v100

    .line 1099
    .restart local v100    # "e":Ljava/lang/Exception;
    :try_start_a1
    const-string v6, "SystemServer"

    const-string v7, "Failure starting SContextService"

    move-object/from16 v0, v100

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_14

    .line 1189
    .end local v100    # "e":Ljava/lang/Exception;
    :catch_16
    move-exception v100

    move-object/from16 v104, v105

    .end local v105    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v104    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v72, v73

    .end local v73    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v72    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v183, v184

    .end local v184    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v183    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v122, v123

    .end local v123    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v196, v197

    .end local v197    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v196    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_6b

    .line 1109
    .end local v72    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v104    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v183    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v196    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v73    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v105    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v123    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v184    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v197    # "vibrator":Lcom/android/server/VibratorService;
    :catch_17
    move-exception v100

    .line 1110
    .local v100, "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting BarBeam Service"

    move-object/from16 v0, v100

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    .line 1131
    .end local v100    # "e":Ljava/lang/Throwable;
    :cond_43
    const/4 v6, 0x0

    move v7, v6

    goto/16 :goto_16

    :cond_44
    const/4 v6, 0x0

    goto/16 :goto_17

    .line 1158
    :cond_45
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_46

    .line 1159
    const-string v6, "SystemServer"

    const-string v7, "No Bluetooth Service (factory test)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 1160
    :cond_46
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.bluetooth"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_47

    .line 1162
    const-string v6, "SystemServer"

    const-string v7, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 1163
    :cond_47
    if-eqz v88, :cond_48

    .line 1164
    const-string v6, "SystemServer"

    const-string v7, "Bluetooth Service disabled by config"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 1166
    :cond_48
    const-string v6, "SystemServer"

    const-string v7, "Bluetooth Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/BluetoothService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1170
    const-string v6, "SystemServer"

    const-string v7, "Bluetooth Secure Mode Manager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    const-string v6, "bluetooth_secure_mode_manager"

    new-instance v7, Landroid/app/BluetoothSecureManagerService;

    invoke-direct {v7, v5}, Landroid/app/BluetoothSecureManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_18

    .line 1181
    :catch_18
    move-exception v100

    .line 1182
    .restart local v100    # "e":Ljava/lang/Throwable;
    :goto_6e
    const-string v6, "SystemServer"

    const-string v7, "Failure starting RCP Manager Service"

    move-object/from16 v0, v100

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a1
    .catch Ljava/lang/RuntimeException; {:try_start_a1 .. :try_end_a1} :catch_16

    goto/16 :goto_19

    .line 1223
    .end local v73    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v100    # "e":Ljava/lang/Throwable;
    .end local v105    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v123    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v136    # "mProductName":Ljava/lang/String;
    .end local v184    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v185    # "timaEnabled":Z
    .end local v195    # "versionInfo":Landroid/os/Bundle;
    .end local v197    # "vibrator":Lcom/android/server/VibratorService;
    .end local v202    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v49    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v72    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v75    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v102    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v104    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v120    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v129    # "location":Lcom/android/server/LocationManagerService;
    .restart local v131    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v141    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v158    # "notification":Landroid/app/INotificationManager;
    .restart local v166    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .restart local v168    # "sLocation":Landroid/os/IBinder;
    .restart local v180    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v183    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v192    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v196    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v198    # "vrManager":Lcom/android/server/VRManagerService;
    .restart local v200    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_19
    move-exception v100

    .line 1224
    .restart local v100    # "e":Ljava/lang/Throwable;
    :goto_6f
    const-string/jumbo v6, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 1231
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v100

    .line 1232
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 1238
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v100

    .line 1239
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 1256
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v100

    .line 1257
    .local v100, "e":Ljava/lang/Exception;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting MotionRecognitionService"

    move-object/from16 v0, v100

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1e

    .line 1269
    .end local v100    # "e":Ljava/lang/Exception;
    .restart local v77    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v81    # "cryptState":Ljava/lang/String;
    :cond_49
    if-nez v93, :cond_c

    .line 1270
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v160

    .line 1271
    .local v160, "packageMgr":Landroid/content/pm/PackageManager;
    const-string v6, "com.sec.feature.cover.flip"

    move-object/from16 v0, v160

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4a

    const-string v6, "com.sec.feature.cover.sview"

    move-object/from16 v0, v160

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1274
    :cond_4a
    :try_start_a2
    const-string v6, "SystemServer"

    const-string v7, "CoverManager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    new-instance v78, Lcom/android/server/cover/CoverManagerService;

    move-object/from16 v0, v78

    move-object/from16 v1, v208

    move-object/from16 v2, v122

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/cover/CoverManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;)V
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_a2 .. :try_end_a2} :catch_1d

    .line 1276
    .end local v77    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .local v78, "coverService":Lcom/android/server/cover/CoverManagerService;
    :try_start_a3
    const-string v6, "cover"

    move-object/from16 v0, v78

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_a3 .. :try_end_a3} :catch_7f

    move-object/from16 v77, v78

    .line 1279
    .end local v78    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v77    # "coverService":Lcom/android/server/cover/CoverManagerService;
    goto/16 :goto_1f

    .line 1277
    :catch_1d
    move-exception v100

    .line 1278
    .local v100, "e":Ljava/lang/Throwable;
    :goto_70
    const-string v6, "SystemServer"

    const-string v7, "Failure starting CoverManager Service"

    move-object/from16 v0, v100

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f

    .line 1298
    .end local v81    # "cryptState":Ljava/lang/String;
    .end local v100    # "e":Ljava/lang/Throwable;
    .end local v160    # "packageMgr":Landroid/content/pm/PackageManager;
    :catch_1e
    move-exception v100

    .line 1299
    .restart local v100    # "e":Ljava/lang/Throwable;
    :goto_71
    const-string/jumbo v6, "starting SAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 1319
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v100

    .line 1320
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string v6, "Failure starting FM Radio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 1335
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v100

    .line 1336
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 1346
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v100

    .line 1347
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting DirEncryption service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 1385
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v100

    .line 1386
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 1403
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v100

    .line 1404
    .restart local v100    # "e":Ljava/lang/Throwable;
    :goto_72
    const-string/jumbo v6, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 1424
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v100

    .line 1425
    .restart local v100    # "e":Ljava/lang/Throwable;
    :goto_73
    const-string v6, "SystemServer"

    const-string v7, "Failure starting Harmony EAS service"

    move-object/from16 v0, v100

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_27

    .line 1435
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v100

    .line 1436
    .restart local v100    # "e":Ljava/lang/Throwable;
    :goto_74
    const-string/jumbo v6, "unable to start SdpManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 1443
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v100

    .line 1444
    .restart local v100    # "e":Ljava/lang/Throwable;
    :goto_75
    const-string v6, "SystemServer"

    const-string v7, "Failure starting SdpLogService Service"

    move-object/from16 v0, v100

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_29

    .line 1454
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v100

    .line 1455
    .restart local v100    # "e":Ljava/lang/Throwable;
    :goto_76
    const-string/jumbo v6, "unable to start DLPManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 1466
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_28
    move-exception v100

    .line 1467
    .restart local v100    # "e":Ljava/lang/Throwable;
    :goto_77
    const-string v6, "SystemServer"

    const-string v7, "Failure starting EnterpriseDeviceManagerService"

    move-object/from16 v0, v100

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b

    .line 1477
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v100

    .line 1478
    .restart local v100    # "e":Ljava/lang/Throwable;
    :goto_78
    const-string/jumbo v6, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 1487
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v100

    .line 1488
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 1509
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v100

    .line 1510
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 1533
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v100

    .line 1534
    .restart local v100    # "e":Ljava/lang/Throwable;
    :goto_79
    const-string/jumbo v6, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 1543
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v100

    .line 1544
    .restart local v100    # "e":Ljava/lang/Throwable;
    :goto_7a
    const-string/jumbo v6, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 1551
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v100

    .line 1552
    .restart local v100    # "e":Ljava/lang/Throwable;
    :goto_7b
    const-string/jumbo v6, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 1562
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_2f
    move-exception v100

    move-object/from16 v4, v152

    .line 1563
    .end local v152    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v100    # "e":Ljava/lang/Throwable;
    :goto_7c
    const-string/jumbo v6, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 1588
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_30
    move-exception v100

    .line 1589
    .restart local v100    # "e":Ljava/lang/Throwable;
    :goto_7d
    const-string/jumbo v6, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 1623
    .end local v100    # "e":Ljava/lang/Throwable;
    .restart local v109    # "feature":Ljava/lang/String;
    :catch_31
    move-exception v100

    .line 1624
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting HongbaoModeService Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 1639
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_32
    move-exception v100

    .line 1640
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "failed to start MptcpService"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 1653
    .end local v100    # "e":Ljava/lang/Throwable;
    .restart local v106    # "epdgclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4b
    :try_start_a4
    const-string v6, "SystemServer"

    const-string v7, "Epdg Service exists"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Class;

    move-object/from16 v47, v0

    .line 1655
    .local v47, "arg":[Ljava/lang/Class;
    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v47, v6

    .line 1657
    move-object/from16 v0, v106

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v68

    .line 1658
    .restart local v68    # "constructor":Ljava/lang/reflect/Constructor;
    const-string v7, "epdg"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    move-object/from16 v0, v68

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_a4 .. :try_end_a4} :catch_33

    goto/16 :goto_36

    .line 1660
    .end local v47    # "arg":[Ljava/lang/Class;
    .end local v68    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v106    # "epdgclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_33
    move-exception v100

    .line 1661
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string v6, "Failed To Start Epdg Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 1664
    .end local v100    # "e":Ljava/lang/Throwable;
    :cond_4c
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_ConfigEpdgExtraFunction"

    const-string v10, ""

    invoke-virtual {v6, v7, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NOTIVOWIFISUPPORT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1665
    new-instance v125, Landroid/content/Intent;

    invoke-direct/range {v125 .. v125}, Landroid/content/Intent;-><init>()V

    .line 1666
    .local v125, "intent":Landroid/content/Intent;
    const-string v6, "com.sec.epdg.VOWIFI_SUPPORT"

    move-object/from16 v0, v125

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1667
    const-string v6, "CAPABLILITY"

    const/4 v7, 0x0

    move-object/from16 v0, v125

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1668
    const/high16 v6, 0x4000000

    move-object/from16 v0, v125

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1669
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v125

    invoke-virtual {v6, v0, v7}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1670
    const-string v6, "SystemServer"

    const-string v7, "Broadcast intent: com.sec.epdg.VOWIFI_SUPPORT CAPABILITY false"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_36

    .line 1715
    .end local v125    # "intent":Landroid/content/Intent;
    :catch_34
    move-exception v100

    .line 1716
    .restart local v100    # "e":Ljava/lang/Throwable;
    :goto_7e
    const-string/jumbo v6, "starting Wi-Fi Offload Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 1726
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_35
    move-exception v100

    .line 1727
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 1732
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_36
    move-exception v100

    .line 1733
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting DpmService"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 1742
    .end local v100    # "e":Ljava/lang/Throwable;
    .end local v109    # "feature":Ljava/lang/String;
    :catch_37
    move-exception v100

    .line 1743
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 1764
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_38
    move-exception v100

    .line 1765
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 1771
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_39
    move-exception v100

    .line 1772
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 1787
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_3a
    move-exception v100

    .line 1788
    .restart local v100    # "e":Ljava/lang/Throwable;
    :goto_7f
    const-string/jumbo v6, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 1795
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_3b
    move-exception v100

    .line 1796
    .restart local v100    # "e":Ljava/lang/Throwable;
    :goto_80
    const-string/jumbo v6, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 1810
    .end local v100    # "e":Ljava/lang/Throwable;
    .restart local v45    # "apkServiceContext":Landroid/content/Context;
    .restart local v62    # "clazz":Ljava/lang/Class;
    :catch_3c
    move-exception v100

    .line 1811
    .local v100, "e":Ljava/lang/Exception;
    :try_start_a5
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception while loading the class "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v100

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_a5} :catch_3d

    goto/16 :goto_40

    .line 1823
    .end local v45    # "apkServiceContext":Landroid/content/Context;
    .end local v100    # "e":Ljava/lang/Exception;
    :catch_3d
    move-exception v100

    .line 1824
    .local v100, "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting VZW Location Manager"

    move-object/from16 v0, v100

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_41

    .line 1821
    .end local v100    # "e":Ljava/lang/Throwable;
    .restart local v45    # "apkServiceContext":Landroid/content/Context;
    :cond_4d
    :try_start_a6
    const-string v6, "SystemServer"

    const-string v7, "Failure starting VZW Location Manager"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_a6 .. :try_end_a6} :catch_3d

    goto/16 :goto_41

    .line 1835
    .end local v45    # "apkServiceContext":Landroid/content/Context;
    .end local v62    # "clazz":Ljava/lang/Class;
    :catch_3e
    move-exception v100

    .line 1836
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Loading SLocation has been failed, error or not support"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v100 .. v100}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_42

    .line 1894
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_3f
    move-exception v100

    .line 1895
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 1906
    .end local v100    # "e":Ljava/lang/Throwable;
    .restart local v107    # "executableVersion":I
    :catch_40
    move-exception v100

    .line 1907
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 1915
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_41
    move-exception v100

    .line 1916
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 1925
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_42
    move-exception v100

    .line 1926
    .restart local v100    # "e":Ljava/lang/Throwable;
    :goto_81
    const-string/jumbo v6, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 1934
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_43
    move-exception v100

    .line 1935
    .restart local v100    # "e":Ljava/lang/Throwable;
    :goto_82
    const-string/jumbo v6, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47

    .line 1945
    .end local v100    # "e":Ljava/lang/Throwable;
    .restart local v89    # "disableDockObserver":Z
    :catch_44
    move-exception v100

    .line 1946
    .local v100, "e":Ljava/lang/Exception;
    const-string v6, "SystemServer"

    const-string v7, ""

    move-object/from16 v0, v100

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_48

    .line 1958
    .end local v100    # "e":Ljava/lang/Exception;
    :catch_45
    move-exception v100

    .line 1959
    .local v100, "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49

    .line 1980
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_46
    move-exception v100

    .line 1981
    .restart local v100    # "e":Ljava/lang/Throwable;
    :goto_83
    const-string v6, "SystemServer"

    const-string v7, "Failure starting SerialService"

    move-object/from16 v0, v100

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4a

    .line 1991
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_47
    move-exception v100

    .line 1992
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string v6, "Failue staring KiesUsbObserver Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4b

    .line 2033
    .end local v100    # "e":Ljava/lang/Throwable;
    .restart local v38    # "SecEDSEnable":Ljava/lang/String;
    .restart local v101    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4e
    :try_start_a7
    const-string v6, "SystemServer"

    const-string v7, "edsclass Service exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Class;

    move-object/from16 v47, v0

    .line 2035
    .restart local v47    # "arg":[Ljava/lang/Class;
    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v47, v6

    .line 2036
    move-object/from16 v0, v101

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v68

    .line 2037
    .restart local v68    # "constructor":Ljava/lang/reflect/Constructor;
    const-string v7, "SecExternalDisplayService"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    move-object/from16 v0, v68

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a7
    .catch Ljava/lang/Throwable; {:try_start_a7 .. :try_end_a7} :catch_48

    goto/16 :goto_4c

    .line 2039
    .end local v47    # "arg":[Ljava/lang/Class;
    .end local v68    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v101    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_48
    move-exception v100

    .line 2040
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting eds Service"

    move-object/from16 v0, v100

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4c

    .line 2047
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_49
    move-exception v100

    .line 2048
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d

    .line 2057
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_4a
    move-exception v100

    .line 2058
    .restart local v100    # "e":Ljava/lang/Throwable;
    :goto_84
    const-string/jumbo v6, "starting UCMService"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4e

    .line 2070
    .end local v100    # "e":Ljava/lang/Throwable;
    .restart local v139    # "mdnieClass":Ljava/lang/Class;
    :cond_4f
    const/4 v6, 0x1

    :try_start_a8
    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v139

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v68

    .line 2071
    .restart local v68    # "constructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v68

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v140

    check-cast v140, Landroid/os/IBinder;

    .line 2072
    .local v140, "mdnieService":Landroid/os/IBinder;
    const-string/jumbo v6, "mDNIe"

    move-object/from16 v0, v140

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a8
    .catch Ljava/lang/Throwable; {:try_start_a8 .. :try_end_a8} :catch_4b

    goto/16 :goto_4f

    .line 2074
    .end local v68    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v139    # "mdnieClass":Ljava/lang/Class;
    .end local v140    # "mdnieService":Landroid/os/IBinder;
    :catch_4b
    move-exception v100

    .line 2075
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string v6, "Failed To Start Mdnie Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4f

    .line 2086
    .end local v100    # "e":Ljava/lang/Throwable;
    .restart local v98    # "dsClass":Ljava/lang/Class;
    :cond_50
    const/4 v6, 0x1

    :try_start_a9
    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v98

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v68

    .line 2087
    .restart local v68    # "constructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v68

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v99

    check-cast v99, Landroid/os/IBinder;

    .line 2088
    .local v99, "dsService":Landroid/os/IBinder;
    const-string v6, "DisplaySolution"

    move-object/from16 v0, v99

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a9
    .catch Ljava/lang/Throwable; {:try_start_a9 .. :try_end_a9} :catch_4c

    goto/16 :goto_50

    .line 2090
    .end local v68    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v98    # "dsClass":Ljava/lang/Class;
    .end local v99    # "dsService":Landroid/os/IBinder;
    :catch_4c
    move-exception v100

    .line 2091
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string v6, "Failed To Start DisplaySolution Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_50

    .line 2102
    .end local v100    # "e":Ljava/lang/Throwable;
    .restart local v40    # "aasClass":Ljava/lang/Class;
    :cond_51
    const/4 v6, 0x1

    :try_start_aa
    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v68

    .line 2103
    .restart local v68    # "constructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v68

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/IBinder;

    .line 2104
    .local v41, "aasService":Landroid/os/IBinder;
    const-string v6, "AAS"

    move-object/from16 v0, v41

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_aa
    .catch Ljava/lang/Throwable; {:try_start_aa .. :try_end_aa} :catch_4d

    goto/16 :goto_51

    .line 2106
    .end local v40    # "aasClass":Ljava/lang/Class;
    .end local v41    # "aasService":Landroid/os/IBinder;
    .end local v68    # "constructor":Ljava/lang/reflect/Constructor;
    :catch_4d
    move-exception v100

    .line 2107
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string v6, "Failed To Start AAS Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_51

    .line 2152
    .end local v100    # "e":Ljava/lang/Throwable;
    .restart local v182    # "supportAODFeatureVersion":I
    :catch_4e
    move-exception v100

    .line 2153
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_52

    .line 2160
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_4f
    move-exception v100

    .line 2161
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_53

    .line 2177
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_50
    move-exception v100

    .line 2178
    .restart local v100    # "e":Ljava/lang/Throwable;
    :goto_85
    const-string/jumbo v6, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_54

    .line 2185
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_51
    move-exception v100

    .line 2186
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_55

    .line 2200
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_52
    move-exception v100

    .line 2201
    .restart local v100    # "e":Ljava/lang/Throwable;
    :goto_86
    const-string/jumbo v6, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_56

    .line 2231
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_53
    move-exception v100

    .line 2232
    .restart local v100    # "e":Ljava/lang/Throwable;
    :goto_87
    const-string/jumbo v6, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_57

    .line 2242
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_54
    move-exception v100

    .line 2243
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_58

    .line 2253
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_55
    move-exception v100

    .line 2254
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting BackgroundCompactionService"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_59

    .line 2302
    .end local v100    # "e":Ljava/lang/Throwable;
    .restart local v127    # "isWipowerEnabled":Z
    :catch_56
    move-exception v100

    .line 2303
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting WipowerBatteryControl Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5a

    .line 2306
    .end local v100    # "e":Ljava/lang/Throwable;
    :cond_52
    const-string v6, "SystemServer"

    const-string v7, "Wipower not supported"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a

    .line 2321
    :catch_57
    move-exception v100

    .line 2322
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting MiniModeAppManager Service"

    move-object/from16 v0, v100

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5b

    .line 2330
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_58
    move-exception v100

    .line 2331
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5c

    .line 2345
    .end local v38    # "SecEDSEnable":Ljava/lang/String;
    .end local v89    # "disableDockObserver":Z
    .end local v100    # "e":Ljava/lang/Throwable;
    .end local v107    # "executableVersion":I
    .end local v127    # "isWipowerEnabled":Z
    .end local v182    # "supportAODFeatureVersion":I
    :catch_59
    move-exception v100

    .line 2346
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string v6, "Failure starting SamsungAppDisablerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5d

    .line 2355
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_5a
    move-exception v100

    .line 2356
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting Lpnet Manager Service "

    move-object/from16 v0, v100

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5e

    .line 2372
    .end local v100    # "e":Ljava/lang/Throwable;
    .restart local v170    # "safeMode":Z
    :cond_53
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_5f

    .line 2408
    :catch_5b
    move-exception v100

    .line 2409
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failed to add GameManagerService."

    move-object/from16 v0, v100

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_60

    .line 2417
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_5c
    move-exception v100

    .line 2418
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_61

    .line 2424
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_5d
    move-exception v100

    .line 2425
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_62

    .line 2452
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_5e
    move-exception v100

    .line 2453
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_63

    .line 2472
    .end local v100    # "e":Ljava/lang/Throwable;
    .restart local v65    # "config":Landroid/content/res/Configuration;
    .restart local v143    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v199    # "w":Landroid/view/WindowManager;
    :catch_5f
    move-exception v100

    .line 2473
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_64

    .line 2478
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_60
    move-exception v100

    .line 2479
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_65

    .line 2485
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_61
    move-exception v100

    .line 2486
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_66

    .line 2493
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_62
    move-exception v100

    .line 2494
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Sdp manager service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_67

    .line 2499
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_63
    move-exception v100

    .line 2500
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Sdp Log Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_68

    .line 2507
    .end local v100    # "e":Ljava/lang/Throwable;
    :catch_64
    move-exception v100

    .line 2508
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making EnterpriserRightsManagerService ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_69

    .line 2517
    .end local v100    # "e":Ljava/lang/Throwable;
    .restart local v195    # "versionInfo":Landroid/os/Bundle;
    :catch_65
    move-exception v100

    .line 2518
    .restart local v100    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Persona Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6a

    .line 2231
    .end local v65    # "config":Landroid/content/res/Configuration;
    .end local v100    # "e":Ljava/lang/Throwable;
    .end local v141    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v143    # "metrics":Landroid/util/DisplayMetrics;
    .end local v170    # "safeMode":Z
    .end local v195    # "versionInfo":Landroid/os/Bundle;
    .end local v199    # "w":Landroid/view/WindowManager;
    .restart local v38    # "SecEDSEnable":Ljava/lang/String;
    .restart local v89    # "disableDockObserver":Z
    .restart local v107    # "executableVersion":I
    .restart local v142    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v182    # "supportAODFeatureVersion":I
    :catch_66
    move-exception v100

    move-object/from16 v141, v142

    .end local v142    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v141    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_87

    .line 2200
    .end local v49    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v50    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_67
    move-exception v100

    move-object/from16 v49, v50

    .end local v50    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v49    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_86

    .line 2177
    .end local v63    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v64    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_68
    move-exception v100

    move-object/from16 v63, v64

    .end local v64    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v63    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_85

    .line 2057
    .end local v79    # "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .end local v182    # "supportAODFeatureVersion":I
    .restart local v80    # "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    :catch_69
    move-exception v100

    move-object/from16 v79, v80

    .end local v80    # "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .restart local v79    # "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    goto/16 :goto_84

    .line 1980
    .end local v38    # "SecEDSEnable":Ljava/lang/String;
    .end local v176    # "serial":Lcom/android/server/SerialService;
    .restart local v177    # "serial":Lcom/android/server/SerialService;
    :catch_6a
    move-exception v100

    move-object/from16 v176, v177

    .end local v177    # "serial":Lcom/android/server/SerialService;
    .restart local v176    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_83

    .line 1934
    .end local v51    # "audioService":Lcom/android/server/audio/AudioService;
    .end local v89    # "disableDockObserver":Z
    .restart local v52    # "audioService":Lcom/android/server/audio/AudioService;
    :catch_6b
    move-exception v100

    move-object/from16 v51, v52

    .end local v52    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v51    # "audioService":Lcom/android/server/audio/AudioService;
    goto/16 :goto_82

    .line 1925
    .end local v200    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v201    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_6c
    move-exception v100

    move-object/from16 v200, v201

    .end local v201    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v200    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_81

    .line 1795
    .end local v75    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v107    # "executableVersion":I
    .restart local v76    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_6d
    move-exception v100

    move-object/from16 v75, v76

    .end local v76    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v75    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_80

    .line 1787
    .end local v129    # "location":Lcom/android/server/LocationManagerService;
    .restart local v130    # "location":Lcom/android/server/LocationManagerService;
    :catch_6e
    move-exception v100

    move-object/from16 v129, v130

    .end local v130    # "location":Lcom/android/server/LocationManagerService;
    .restart local v129    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_7f

    .line 1757
    :catch_6f
    move-exception v6

    goto/16 :goto_3b

    .line 1715
    .end local v206    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    .restart local v109    # "feature":Ljava/lang/String;
    .restart local v207    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    :catch_70
    move-exception v100

    move-object/from16 v206, v207

    .end local v207    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    .restart local v206    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    goto/16 :goto_7e

    .line 1588
    .end local v66    # "connectivity":Lcom/android/server/ConnectivityService;
    .end local v109    # "feature":Ljava/lang/String;
    .restart local v67    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_71
    move-exception v100

    move-object/from16 v66, v67

    .end local v67    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v66    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_7d

    .line 1562
    :catch_72
    move-exception v100

    goto/16 :goto_7c

    .line 1551
    .end local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v8    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v152    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v155    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_73
    move-exception v100

    move-object/from16 v8, v155

    .end local v155    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v8    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_7b

    .line 1543
    .end local v153    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v154    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_74
    move-exception v100

    move-object/from16 v153, v154

    .end local v154    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v153    # "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_7a

    .line 1533
    .end local v192    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v193    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_75
    move-exception v100

    move-object/from16 v192, v193

    .end local v193    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v192    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_79

    .line 1477
    .end local v180    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v181    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_76
    move-exception v100

    move-object/from16 v180, v181

    .end local v181    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v180    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_78

    .line 1466
    .end local v102    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v103    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :catch_77
    move-exception v100

    move-object/from16 v102, v103

    .end local v103    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v102    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    goto/16 :goto_77

    .line 1454
    .end local v96    # "dlpService":Lcom/android/server/DLPManagerService;
    .restart local v97    # "dlpService":Lcom/android/server/DLPManagerService;
    :catch_78
    move-exception v100

    move-object/from16 v96, v97

    .end local v97    # "dlpService":Lcom/android/server/DLPManagerService;
    .restart local v96    # "dlpService":Lcom/android/server/DLPManagerService;
    goto/16 :goto_76

    .line 1443
    .end local v172    # "sdpLogService":Lcom/android/server/SdpLogService;
    .restart local v173    # "sdpLogService":Lcom/android/server/SdpLogService;
    :catch_79
    move-exception v100

    move-object/from16 v172, v173

    .end local v173    # "sdpLogService":Lcom/android/server/SdpLogService;
    .restart local v172    # "sdpLogService":Lcom/android/server/SdpLogService;
    goto/16 :goto_75

    .line 1435
    .end local v174    # "sdpService":Lcom/android/server/SdpManagerService;
    .restart local v175    # "sdpService":Lcom/android/server/SdpManagerService;
    :catch_7a
    move-exception v100

    move-object/from16 v174, v175

    .end local v175    # "sdpService":Lcom/android/server/SdpManagerService;
    .restart local v174    # "sdpService":Lcom/android/server/SdpManagerService;
    goto/16 :goto_74

    .line 1424
    .end local v133    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v134    # "mHMS":Lcom/android/server/HarmonyEASService;
    :catch_7b
    move-exception v100

    move-object/from16 v133, v134

    .end local v134    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v133    # "mHMS":Lcom/android/server/HarmonyEASService;
    goto/16 :goto_73

    .line 1403
    .end local v131    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v132    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_7c
    move-exception v100

    move-object/from16 v131, v132

    .end local v132    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v131    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_72

    .line 1394
    :catch_7d
    move-exception v6

    goto/16 :goto_25

    .line 1298
    .end local v166    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .restart local v163    # "pm":Landroid/content/pm/PackageManager;
    .restart local v167    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    :catch_7e
    move-exception v100

    move-object/from16 v166, v167

    .end local v167    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .restart local v166    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    goto/16 :goto_71

    .line 1277
    .end local v77    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .end local v163    # "pm":Landroid/content/pm/PackageManager;
    .restart local v78    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v81    # "cryptState":Ljava/lang/String;
    .restart local v160    # "packageMgr":Landroid/content/pm/PackageManager;
    :catch_7f
    move-exception v100

    move-object/from16 v77, v78

    .end local v78    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v77    # "coverService":Lcom/android/server/cover/CoverManagerService;
    goto/16 :goto_70

    .line 1223
    .end local v77    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .end local v81    # "cryptState":Ljava/lang/String;
    .end local v120    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v160    # "packageMgr":Landroid/content/pm/PackageManager;
    .restart local v121    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_80
    move-exception v100

    move-object/from16 v120, v121

    .end local v121    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v120    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_6f

    .line 1189
    .end local v49    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v75    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v102    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v120    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v129    # "location":Lcom/android/server/LocationManagerService;
    .end local v131    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v141    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v158    # "notification":Landroid/app/INotificationManager;
    .end local v166    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .end local v168    # "sLocation":Landroid/os/IBinder;
    .end local v180    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v192    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v198    # "vrManager":Lcom/android/server/VRManagerService;
    .end local v200    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_81
    move-exception v100

    goto/16 :goto_6b

    .end local v183    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v184    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_82
    move-exception v100

    move-object/from16 v183, v184

    .end local v184    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v183    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_6b

    .end local v42    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v104    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v183    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v43    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v105    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v184    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v195    # "versionInfo":Landroid/os/Bundle;
    :catch_83
    move-exception v100

    move-object/from16 v104, v105

    .end local v105    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v104    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v183, v184

    .end local v184    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v183    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v42, v43

    .end local v43    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v42    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_6b

    .end local v83    # "dEncService":Lcom/android/server/DirEncryptService;
    .end local v104    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v183    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v84    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v105    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v136    # "mProductName":Ljava/lang/String;
    .restart local v184    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_84
    move-exception v100

    move-object/from16 v104, v105

    .end local v105    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v104    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v83, v84

    .end local v84    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v83    # "dEncService":Lcom/android/server/DirEncryptService;
    move-object/from16 v183, v184

    .end local v184    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v183    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_6b

    .end local v104    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v183    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v188    # "timaService":Lcom/android/server/TimaService;
    .end local v196    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v105    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v184    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v185    # "timaEnabled":Z
    .restart local v189    # "timaService":Lcom/android/server/TimaService;
    .restart local v197    # "vibrator":Lcom/android/server/VibratorService;
    :catch_85
    move-exception v100

    move-object/from16 v188, v189

    .end local v189    # "timaService":Lcom/android/server/TimaService;
    .restart local v188    # "timaService":Lcom/android/server/TimaService;
    move-object/from16 v104, v105

    .end local v105    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v104    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v183, v184

    .end local v184    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v183    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v196, v197

    .end local v197    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v196    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_6b

    .end local v104    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v161    # "pkmService":Lcom/android/server/PKMService;
    .end local v183    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v188    # "timaService":Lcom/android/server/TimaService;
    .end local v196    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v105    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v162    # "pkmService":Lcom/android/server/PKMService;
    .restart local v184    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v189    # "timaService":Lcom/android/server/TimaService;
    .restart local v197    # "vibrator":Lcom/android/server/VibratorService;
    :catch_86
    move-exception v100

    move-object/from16 v161, v162

    .end local v162    # "pkmService":Lcom/android/server/PKMService;
    .restart local v161    # "pkmService":Lcom/android/server/PKMService;
    move-object/from16 v188, v189

    .end local v189    # "timaService":Lcom/android/server/TimaService;
    .restart local v188    # "timaService":Lcom/android/server/TimaService;
    move-object/from16 v104, v105

    .end local v105    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v104    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v183, v184

    .end local v184    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v183    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v196, v197

    .end local v197    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v196    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_6b

    .end local v72    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v104    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v183    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v196    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v73    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v105    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v184    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v197    # "vibrator":Lcom/android/server/VibratorService;
    :catch_87
    move-exception v100

    move-object/from16 v104, v105

    .end local v105    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v104    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v72, v73

    .end local v73    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v72    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v183, v184

    .end local v184    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v183    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v196, v197

    .end local v197    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v196    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_6b

    .end local v72    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v104    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v137    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .end local v183    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v196    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v73    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v105    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v123    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v138    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v184    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v197    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v202    # "watchdog":Lcom/android/server/Watchdog;
    :catch_88
    move-exception v100

    move-object/from16 v137, v138

    .end local v138    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v137    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    move-object/from16 v104, v105

    .end local v105    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v104    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v72, v73

    .end local v73    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v72    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v183, v184

    .end local v184    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v183    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v122, v123

    .end local v123    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v196, v197

    .end local v197    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v196    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_6b

    .line 1181
    .end local v72    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v104    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v137    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .end local v183    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v196    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v73    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v105    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v123    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v138    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v184    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v197    # "vibrator":Lcom/android/server/VibratorService;
    :catch_89
    move-exception v100

    move-object/from16 v137, v138

    .end local v138    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v137    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    goto/16 :goto_6e

    .line 968
    .end local v73    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v123    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v188    # "timaService":Lcom/android/server/TimaService;
    .end local v202    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v72    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v189    # "timaService":Lcom/android/server/TimaService;
    :catch_8a
    move-exception v100

    move-object/from16 v188, v189

    .end local v189    # "timaService":Lcom/android/server/TimaService;
    .restart local v188    # "timaService":Lcom/android/server/TimaService;
    goto/16 :goto_6d

    .end local v161    # "pkmService":Lcom/android/server/PKMService;
    .end local v188    # "timaService":Lcom/android/server/TimaService;
    .restart local v162    # "pkmService":Lcom/android/server/PKMService;
    .restart local v189    # "timaService":Lcom/android/server/TimaService;
    :catch_8b
    move-exception v100

    move-object/from16 v161, v162

    .end local v162    # "pkmService":Lcom/android/server/PKMService;
    .restart local v161    # "pkmService":Lcom/android/server/PKMService;
    move-object/from16 v188, v189

    .end local v189    # "timaService":Lcom/android/server/TimaService;
    .restart local v188    # "timaService":Lcom/android/server/TimaService;
    goto/16 :goto_6d

    .line 816
    .end local v42    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v136    # "mProductName":Ljava/lang/String;
    .end local v185    # "timaEnabled":Z
    .end local v197    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v43    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v196    # "vibrator":Lcom/android/server/VibratorService;
    :catch_8c
    move-exception v100

    move-object/from16 v42, v43

    .end local v43    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v42    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_6c

    .end local v105    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v184    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v195    # "versionInfo":Landroid/os/Bundle;
    .restart local v49    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v75    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v77    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v102    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v104    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v120    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v129    # "location":Lcom/android/server/LocationManagerService;
    .restart local v131    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v141    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v158    # "notification":Landroid/app/INotificationManager;
    .restart local v166    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .restart local v168    # "sLocation":Landroid/os/IBinder;
    .restart local v180    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v183    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v192    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v198    # "vrManager":Lcom/android/server/VRManagerService;
    .restart local v200    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_54
    move-object/from16 v4, v152

    .end local v152    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_39

    .end local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v152    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_55
    move-object/from16 v4, v152

    .end local v152    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_5c
.end method

.method static final startSecurityManagerService(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2802
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2803
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.service.sm"

    const-string v3, "com.sec.android.service.sm.service.SecurityManagerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2805
    const-string v1, "CMD"

    const-string v2, "START_SERVICE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2806
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2807
    return-void
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2765
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2766
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2769
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2770
    return-void
.end method

.method private startThemeService()V
    .locals 5

    .prologue
    .line 2755
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 2756
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2757
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.themecenter"

    const-string v4, "com.samsung.android.thememanager.ThemeManagerService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2759
    const-string/jumbo v2, "safeMode"

    iget-boolean v3, p0, Lcom/android/server/SystemServer;->safeModeValueForTheme:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2760
    const-string/jumbo v2, "isStartedBySystemServer"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2761
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2762
    return-void
.end method

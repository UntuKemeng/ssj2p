.class final Landroid/app/SystemServiceRegistry;
.super Ljava/lang/Object;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SystemServiceRegistry$StaticOuterContextServiceFetcher;,
        Landroid/app/SystemServiceRegistry$StaticServiceFetcher;,
        Landroid/app/SystemServiceRegistry$CachedServiceFetcher;,
        Landroid/app/SystemServiceRegistry$ServiceFetcher;
    }
.end annotation


# static fields
.field private static final SYSTEM_SERVICE_FETCHERS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SystemServiceRegistry"

.field private static sServiceCacheSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/HashMap;

    const-string v1, "accessibility"

    const-class v2, Landroid/view/accessibility/AccessibilityManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$1;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$1;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v1, "captioning"

    const-class v2, Landroid/view/accessibility/CaptioningManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$2;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$2;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v1, "account"

    const-class v2, Landroid/accounts/AccountManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$3;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$3;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v1, "activity"

    const-class v2, Landroid/app/ActivityManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$4;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$4;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "iccc"

    const-class v2, Lcom/samsung/android/iccc/IntegrityControlCheckCenter;

    new-instance v3, Landroid/app/SystemServiceRegistry$5;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$5;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v1, "alarm"

    const-class v2, Landroid/app/AlarmManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$6;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$6;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v1, "audio"

    const-class v2, Landroid/media/AudioManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$7;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$7;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "media_router"

    const-class v2, Landroid/media/MediaRouter;

    new-instance v3, Landroid/app/SystemServiceRegistry$8;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$8;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v1, "bluetooth"

    const-class v2, Landroid/bluetooth/BluetoothManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$9;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$9;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "hdmi_control"

    const-class v2, Landroid/hardware/hdmi/HdmiControlManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$10;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$10;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v1, "clipboard"

    const-class v2, Landroid/content/ClipboardManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$11;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$11;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    sget-object v1, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;

    const-class v2, Landroid/text/ClipboardManager;

    const-string v3, "clipboard"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clipboardEx"

    const-class v2, Landroid/sec/clipboard/ClipboardExManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$12;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$12;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v1, "connectivity"

    const-class v2, Landroid/net/ConnectivityManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$13;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$13;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v1, "country_detector"

    const-class v2, Landroid/location/CountryDetector;

    new-instance v3, Landroid/app/SystemServiceRegistry$14;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$14;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v1, "device_policy"

    const-class v2, Landroid/app/admin/DevicePolicyManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$15;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$15;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v1, "download"

    const-class v2, Landroid/app/DownloadManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$16;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$16;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v1, "batterymanager"

    const-class v2, Landroid/os/BatteryManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$17;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$17;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "nfc"

    const-class v2, Landroid/nfc/NfcManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$18;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$18;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v1, "dropbox"

    const-class v2, Landroid/os/DropBoxManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$19;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$19;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "input"

    const-class v2, Landroid/hardware/input/InputManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$20;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$20;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v1, "display"

    const-class v2, Landroid/hardware/display/DisplayManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$21;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$21;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "input_method"

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$22;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$22;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "textservices"

    const-class v2, Landroid/view/textservice/TextServicesManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$23;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$23;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "keyguard"

    const-class v2, Landroid/app/KeyguardManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$24;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$24;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "layout_inflater"

    const-class v2, Landroid/view/LayoutInflater;

    new-instance v3, Landroid/app/SystemServiceRegistry$25;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$25;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "location"

    const-class v2, Landroid/location/LocationManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$26;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$26;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "sec_location"

    const-class v2, Lcom/samsung/location/SLocationManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$27;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$27;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v1, "SystemServiceRegistry"

    const-string v2, "SEC_PRODUCT_FEATURE_FRAMEWORK_SUPPORT_CP_POSITIONING=FALSE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "netpolicy"

    const-class v2, Landroid/net/NetworkPolicyManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$29;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$29;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "notification"

    const-class v2, Landroid/app/NotificationManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$30;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$30;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "wifioffload"

    const-class v2, Landroid/net/wifi/WifiOffloadManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$31;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$31;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    :cond_0
    const-string/jumbo v1, "servicediscovery"

    const-class v2, Landroid/net/nsd/NsdManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$32;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$32;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "power"

    const-class v2, Landroid/os/PowerManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$33;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$33;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v1, "CustomFrequencyManagerService"

    const-class v2, Landroid/os/CustomFrequencyManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$34;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$34;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "search"

    const-class v2, Landroid/app/SearchManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$35;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$35;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "sensor"

    const-class v2, Landroid/hardware/SensorManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$36;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$36;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "sensorhub"

    const-class v2, Lcom/samsung/android/sensorhub/SensorHubManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$37;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$37;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "statusbar"

    const-class v2, Landroid/app/StatusBarManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$38;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$38;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "storage"

    const-class v2, Landroid/os/storage/StorageManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$39;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$39;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "phone"

    const-class v2, Landroid/telephony/TelephonyManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$40;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$40;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "telephony_subscription_service"

    const-class v2, Landroid/telephony/SubscriptionManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$41;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$41;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v1, "carrier_config"

    const-class v2, Landroid/telephony/CarrierConfigManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$42;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$42;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "telecom"

    const-class v2, Landroid/telecom/TelecomManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$43;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$43;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "uimode"

    const-class v2, Landroid/app/UiModeManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$44;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$44;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "usb"

    const-class v2, Landroid/hardware/usb/UsbManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$45;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$45;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "serial"

    const-class v2, Landroid/hardware/SerialManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$46;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$46;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "vibrator"

    const-class v2, Landroid/os/Vibrator;

    new-instance v3, Landroid/app/SystemServiceRegistry$47;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$47;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "wallpaper"

    const-class v2, Landroid/app/WallpaperManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$48;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$48;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v1, "context_aware"

    const-class v2, Lcom/samsung/android/contextaware/ContextAwareManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$49;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$49;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "scontext"

    const-class v2, Landroid/hardware/scontext/SContextManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$50;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$50;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "wifi"

    const-class v2, Landroid/net/wifi/WifiManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$51;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$51;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "wifihs20"

    const-class v2, Landroid/net/wifi/hs20/WifiHs20Manager;

    new-instance v3, Landroid/app/SystemServiceRegistry$52;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$52;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "wifip2p"

    const-class v2, Landroid/net/wifi/p2p/WifiP2pManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$53;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$53;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "wifiscanner"

    const-class v2, Landroid/net/wifi/WifiScanner;

    new-instance v3, Landroid/app/SystemServiceRegistry$54;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$54;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "rttmanager"

    const-class v2, Landroid/net/wifi/RttManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$55;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$55;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v1, "ethernet"

    const-class v2, Landroid/net/EthernetManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$56;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$56;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "window"

    const-class v2, Landroid/view/WindowManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$57;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$57;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "ktuca"

    const-class v2, Landroid/ktuca/KtUcaManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$58;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$58;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "user"

    const-class v2, Landroid/os/UserManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$59;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$59;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v1, "appops"

    const-class v2, Landroid/app/AppOpsManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$60;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$60;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v1, "camera"

    const-class v2, Landroid/hardware/camera2/CameraManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$61;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$61;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "launcherapps"

    const-class v2, Landroid/content/pm/LauncherApps;

    new-instance v3, Landroid/app/SystemServiceRegistry$62;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$62;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "restrictions"

    const-class v2, Landroid/content/RestrictionsManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$63;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$63;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "print"

    const-class v2, Landroid/print/PrintManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$64;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$64;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v1, "consumer_ir"

    const-class v2, Landroid/hardware/ConsumerIrManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$65;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$65;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "media_session"

    const-class v2, Landroid/media/session/MediaSessionManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$66;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$66;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "trust"

    const-class v2, Landroid/app/trust/TrustManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$67;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$67;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v1, "fingerprint"

    const-class v2, Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$68;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$68;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "tv_input"

    const-class v2, Landroid/media/tv/TvInputManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$69;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$69;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "network_score"

    const-class v2, Landroid/net/NetworkScoreManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$70;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$70;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "usagestats"

    const-class v2, Landroid/app/usage/UsageStatsManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$71;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$71;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "netstats"

    const-class v2, Landroid/app/usage/NetworkStatsManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$72;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$72;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "jobscheduler"

    const-class v2, Landroid/app/job/JobScheduler;

    new-instance v3, Landroid/app/SystemServiceRegistry$73;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$73;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "persistent_data_block"

    const-class v2, Landroid/service/persistentdata/PersistentDataBlockManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$74;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$74;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v1, "barbeam"

    const-class v2, Landroid/app/BarBeamCommandImpl;

    new-instance v3, Landroid/app/SystemServiceRegistry$75;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$75;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "media_projection"

    const-class v2, Landroid/media/projection/MediaProjectionManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$76;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$76;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v1, "appwidget"

    const-class v2, Landroid/appwidget/AppWidgetManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$77;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$77;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "motion_recognition"

    const-class v2, Landroid/hardware/motion/MotionRecognitionManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$78;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$78;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "midi"

    const-class v2, Landroid/media/midi/MidiManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$79;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$79;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "radio"

    const-class v2, Landroid/hardware/radio/RadioManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$80;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$80;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v1, "0"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "supportAODFeatureVersion":I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    const-string v1, "AODManagerService"

    const-class v2, Lcom/samsung/android/aod/AODManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$86;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$86;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    :cond_1
    const-string/jumbo v1, "vr"

    const-class v2, Landroid/app/VRManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$88;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$88;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "persona"

    const-class v2, Landroid/os/PersonaManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$89;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$89;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string/jumbo v1, "rcp"

    const-class v2, Landroid/os/RCPManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$90;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$90;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v1, "execute"

    const-class v2, Lcom/samsung/android/app/ExecuteManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$91;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$91;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SupportEpdg"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "epdg"

    const-class v2, Lcom/sec/epdg/EpdgManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$92;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$92;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    :cond_2
    const-string v1, "8"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "FMPlayer"

    const-class v2, Lcom/samsung/android/media/fmradio/SemFmPlayer;

    new-instance v3, Landroid/app/SystemServiceRegistry$94;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$94;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    :cond_3
    const-string/jumbo v1, "mDNIe"

    const-class v2, Lcom/samsung/android/mdnie/MdnieManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$95;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$95;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v1, "AAS"

    const-class v2, Lcom/samsung/android/allaroundsensing/AASManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$96;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$96;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v1, "DisplaySolution"

    const-class v2, Lcom/samsung/android/displaysolution/DisplaySolutionManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$97;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$97;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$008()I
    .locals 2

    .prologue
    sget v0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    return v0
.end method

.method public static createServiceCache()[Ljava/lang/Object;
    .locals 1

    .prologue
    sget v0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static getSystemService(Landroid/app/ContextImpl;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "ctx"    # Landroid/app/ContextImpl;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    sget-object v1, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SystemServiceRegistry$ServiceFetcher;

    .local v0, "fetcher":Landroid/app/SystemServiceRegistry$ServiceFetcher;, "Landroid/app/SystemServiceRegistry$ServiceFetcher<*>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/app/SystemServiceRegistry$ServiceFetcher;->getService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "serviceFetcher":Landroid/app/SystemServiceRegistry$ServiceFetcher;, "Landroid/app/SystemServiceRegistry$ServiceFetcher<TT;>;"
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

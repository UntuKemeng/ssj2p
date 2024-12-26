.class public Lcom/android/internal/policy/PhoneFallbackEventHandler;
.super Ljava/lang/Object;
.source "PhoneFallbackEventHandler.java"

# interfaces
.implements Landroid/view/FallbackEventHandler;


# static fields
.field private static final DEBUG:Z

.field private static TAG:Ljava/lang/String; = null

.field private static final USERKEY_TIMEOUT:I = 0xaa


# instance fields
.field private final DOUBLE_PRESS_LAUNCH:I

.field private final LONG_PRESS_LAUNCH:I

.field private final NO_LAUNCH:I

.field private final SHORT_PRESS_LAUNCH:I

.field private final SocialActivity:Ljava/lang/String;

.field private final SocialPackage:Ljava/lang/String;

.field mAudioManager:Landroid/media/AudioManager;

.field mContext:Landroid/content/Context;

.field mDouble_launch_app:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLaunchType:I

.field mSearchManager:Landroid/app/SearchManager;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUserDoubleTapPending:Z

.field private final mUserDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mView:Landroid/view/View;

.field mZoomKeyController:Lcom/android/internal/policy/samsung/ZoomKeyController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 59
    const-string v1, "PhoneFallbackEventHandler"

    sput-object v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    .line 60
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->NO_LAUNCH:I

    .line 75
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->SHORT_PRESS_LAUNCH:I

    .line 76
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->LONG_PRESS_LAUNCH:I

    .line 77
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DOUBLE_PRESS_LAUNCH:I

    .line 78
    iput v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mHandler:Landroid/os/Handler;

    .line 81
    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapPending:Z

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mDouble_launch_app:Ljava/lang/String;

    .line 87
    const-string v0, "com.sec.android.app.socialpage"

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->SocialPackage:Ljava/lang/String;

    .line 88
    const-string v0, "com.sec.android.app.socialpage.SocialSetActivity"

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->SocialActivity:Ljava/lang/String;

    .line 102
    new-instance v0, Lcom/android/internal/policy/PhoneFallbackEventHandler$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler$1;-><init>(Lcom/android/internal/policy/PhoneFallbackEventHandler;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 91
    iput-object p1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/PhoneFallbackEventHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneFallbackEventHandler;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/PhoneFallbackEventHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneFallbackEventHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/PhoneFallbackEventHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneFallbackEventHandler;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->handleDoubleTapUserKey()V

    return-void
.end method

.method private checkLaunchSetting()I
    .locals 4

    .prologue
    .line 854
    iget-object v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "active_key_on_lockscreen"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 855
    .local v0, "state":I
    sget-boolean v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLaunchSetting state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_0
    return v0
.end method

.method private getZoomKeyController()Lcom/android/internal/policy/samsung/ZoomKeyController;
    .locals 2

    .prologue
    .line 861
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mZoomKeyController:Lcom/android/internal/policy/samsung/ZoomKeyController;

    if-nez v0, :cond_0

    .line 862
    new-instance v0, Lcom/android/internal/policy/samsung/ZoomKeyController;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/samsung/ZoomKeyController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mZoomKeyController:Lcom/android/internal/policy/samsung/ZoomKeyController;

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mZoomKeyController:Lcom/android/internal/policy/samsung/ZoomKeyController;

    return-object v0
.end method

.method private handleDoubleTapUserKey()V
    .locals 3

    .prologue
    .line 113
    sget-boolean v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timeout userkey mLaunchType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 115
    iget v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchUserDefinedApp(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    sget-boolean v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v1, "There are no apps defined by the user key"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    .line 120
    return-void
.end method

.method private handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 652
    return-void
.end method

.method private isAppInstalled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 893
    iget-object v3, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 895
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 898
    :goto_0
    return v2

    .line 897
    :catch_0
    move-exception v0

    .line 898
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isStubPTTApp()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 887
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.kodiak.intent.action.PTT_BUTTON"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 888
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "com.bell.ptt"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 889
    iget-object v3, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isSupportActiveDouble()Z
    .locals 3

    .prologue
    .line 803
    const/4 v0, 0x0

    .line 804
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "double_press_app"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mDouble_launch_app:Ljava/lang/String;

    .line 806
    iget-object v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mDouble_launch_app:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 807
    const/4 v0, 0x0

    .line 811
    :goto_0
    return v0

    .line 809
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isUserSetupComplete()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 655
    iget-object v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "user_setup_complete"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private launchAppActivity(Landroid/content/Intent;Z)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isSupportBCM"    # Z

    .prologue
    const/4 v5, 0x0

    .line 815
    if-eqz p2, :cond_3

    .line 816
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 817
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->checkLaunchSetting()I

    move-result v3

    if-eqz v3, :cond_1

    .line 818
    iget-object v3, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, p1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 819
    .local v2, "pendIntent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 820
    .local v1, "fillInIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v3

    if-nez v3, :cond_0

    .line 821
    const-string v3, "dismissIfInsecure"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 822
    const-string v3, "afterKeyguardGone"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 824
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/app/KeyguardManager;->setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 825
    sget-object v3, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v4, "The pendingIntent sent to keyguard"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    .end local v1    # "fillInIntent":Landroid/content/Intent;
    .end local v2    # "pendIntent":Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 828
    :cond_1
    sget-object v3, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v4, "it is blocked to launch app by setting value"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 831
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V

    goto :goto_0

    .line 835
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    .line 838
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 842
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 847
    :catch_0
    move-exception v0

    .line 848
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 845
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 840
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private launchCameraApp()V
    .locals 6

    .prologue
    .line 556
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 557
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.camera"

    const-string v5, "com.sec.android.app.camera.Camera"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    .local v0, "CString":Landroid/content/ComponentName;
    const-string v4, "isSecure"

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 561
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 562
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 564
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 565
    const v4, 0x24001000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 571
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 572
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawnTarget(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 578
    :cond_0
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 583
    :goto_2
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 584
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_1

    .line 585
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 587
    :cond_1
    return-void

    .line 567
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    const/high16 v4, 0x200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 579
    :catch_0
    move-exception v1

    .line 580
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v4, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v5, "No activity to launch Camera."

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 574
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private launchPTTApp(Landroid/view/KeyEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 868
    const-string/jumbo v3, "true"

    const-string v4, "dev.knoxapp.running"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 869
    sget-object v3, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v4, "Knox is running. PTT Key wont work"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_0
    :goto_0
    return v2

    .line 873
    :cond_1
    const-string v3, "BMC"

    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.bell.ptt"

    invoke-direct {p0, v3}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isAppInstalled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isStubPTTApp()Z

    move-result v3

    if-nez v3, :cond_0

    .line 874
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.kodiak.intent.action.PTT_BUTTON"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 875
    .local v0, "i":Landroid/content/Intent;
    new-instance v1, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    const/16 v7, 0xe4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v11

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v12

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v13

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 877
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 878
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 879
    iget-object v2, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 880
    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "Broadcast sent PTT BUTTON"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private launchUserDefinedApp(I)Z
    .locals 13
    .param p1, "mode"    # I

    .prologue
    .line 662
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v10

    if-nez v10, :cond_0

    .line 663
    sget-object v10, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v11, "Not lauching User defined app because user setup is in progress."

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const/4 v10, 0x0

    .line 799
    :goto_0
    return v10

    .line 667
    :cond_0
    const/4 v7, 0x0

    .line 668
    .local v7, "launch_app":Ljava/lang/String;
    const/4 v8, 0x0

    .line 669
    .local v8, "package_index":I
    const/4 v9, 0x0

    .line 670
    .local v9, "package_name":Ljava/lang/String;
    const/4 v0, 0x0

    .line 672
    .local v0, "activity_name":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v2

    .line 673
    .local v2, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    const/4 v3, -0x1

    .line 674
    .local v3, "emMode":I
    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportBatteryConversingMode()Z

    move-result v5

    .line 676
    .local v5, "isSupportBCM":Z
    if-eqz v5, :cond_1

    .line 677
    invoke-virtual {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->getModeType()I

    move-result v3

    .line 678
    sget-object v10, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "now emMode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_1
    sget-object v10, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "userkey launch mode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    packed-switch p1, :pswitch_data_0

    .line 757
    :cond_2
    :goto_1
    const-string v10, ""

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 758
    sget-boolean v10, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v10, :cond_3

    sget-object v10, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "userkey set is off"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_3
    const/4 v10, 0x1

    goto :goto_0

    .line 684
    :pswitch_0
    const/4 v10, 0x1

    goto :goto_0

    .line 687
    :pswitch_1
    const/4 v10, 0x2

    if-ne v3, v10, :cond_4

    .line 688
    iget-object v10, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "short_press_app_battery_conserve"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 691
    :cond_4
    iget-object v10, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "short_press_app"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 694
    const-string/jumbo v10, "true"

    const-string v11, "dev.knoxapp.running"

    const-string v12, "false"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 696
    :try_start_0
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 697
    .local v6, "knoxShortcutIntent":Landroid/content/Intent;
    const-string v10, "com.sec.knox.shortcutsms"

    const-string v11, "com.sec.knox.shortcutsms.ActiveKeyPressShortcut"

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 698
    const-string v10, "launch_type"

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 699
    const/high16 v10, 0x10200000

    invoke-virtual {v6, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 700
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 701
    iget-object v10, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 703
    .end local v6    # "knoxShortcutIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 704
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v10, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v11, "KnoxShortcut Activity not started"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 712
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :pswitch_2
    const/4 v10, 0x2

    if-ne v3, v10, :cond_5

    .line 713
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 716
    :cond_5
    const-string/jumbo v10, "true"

    const-string v11, "dev.knoxapp.running"

    const-string v12, "false"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 718
    :try_start_1
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 719
    .restart local v6    # "knoxShortcutIntent":Landroid/content/Intent;
    const-string v10, "com.sec.knox.shortcutsms"

    const-string v11, "com.sec.knox.shortcutsms.ActiveKeyPressShortcut"

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    const-string v10, "launch_type"

    const/4 v11, 0x2

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 721
    const/high16 v10, 0x10200000

    invoke-virtual {v6, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 722
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 723
    iget-object v10, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 724
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 725
    .end local v6    # "knoxShortcutIntent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 726
    .restart local v1    # "e":Landroid/content/ActivityNotFoundException;
    sget-object v10, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v11, "KnoxShortcut Activity not started"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 731
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_6
    iget-object v10, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "long_press_app"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 733
    goto/16 :goto_1

    .line 736
    :pswitch_3
    iget-object v7, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mDouble_launch_app:Ljava/lang/String;

    .line 739
    const-string/jumbo v10, "true"

    const-string v11, "dev.knoxapp.running"

    const-string v12, "false"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 741
    :try_start_2
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 742
    .restart local v6    # "knoxShortcutIntent":Landroid/content/Intent;
    const-string v10, "com.sec.knox.shortcutsms"

    const-string v11, "com.sec.knox.shortcutsms.ActiveKeyPressShortcut"

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 743
    const-string v10, "launch_type"

    const/4 v11, 0x3

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 744
    const/high16 v10, 0x10200000

    invoke-virtual {v6, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 745
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 746
    iget-object v10, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 747
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 748
    .end local v6    # "knoxShortcutIntent":Landroid/content/Intent;
    :catch_2
    move-exception v1

    .line 749
    .restart local v1    # "e":Landroid/content/ActivityNotFoundException;
    sget-object v10, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v11, "KnoxShortcut Activity not started"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 763
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_7
    :try_start_3
    sget-boolean v10, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v10, :cond_8

    sget-object v10, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "launch for userkey launch_app = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_8
    if-eqz v7, :cond_b

    .line 765
    const/16 v10, 0x2f

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 766
    const/4 v10, 0x0

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 767
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    .line 782
    :goto_2
    if-eqz v9, :cond_9

    const-string v10, ""

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 783
    :cond_9
    sget-boolean v10, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v10, :cond_a

    sget-object v10, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v11, "None pkg name"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 770
    :cond_b
    :try_start_4
    sget-object v10, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "set package info for launching PTT app(Korea National Emergency Network)"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const-string v9, "com.sec.ptt"

    .line 773
    const-string v0, "com.sec.ptt.call.activities.callMainActivity"
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 776
    :catch_3
    move-exception v1

    .line 777
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    sget-boolean v10, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v10, :cond_c

    sget-object v10, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v11, "There is no launch app!"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_c
    const/4 v9, 0x0

    .line 779
    const/4 v0, 0x0

    goto :goto_2

    .line 786
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_d
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 787
    .local v4, "i":Landroid/content/Intent;
    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 788
    const/high16 v10, 0x10200000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 790
    invoke-virtual {v4, v9, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 792
    :try_start_5
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 793
    invoke-direct {p0, v4, v5}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchAppActivity(Landroid/content/Intent;Z)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    .line 799
    :cond_e
    :goto_3
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 794
    :catch_4
    move-exception v1

    .line 795
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-boolean v10, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v10, :cond_e

    sget-object v10, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v11, "Activity to be assigned by the key is not found."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 682
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 125
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 136
    .local v1, "keyCode":I
    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 139
    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method getSearchManager()Landroid/app/SearchManager;
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/high16 v9, 0x10000000

    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 148
    iget-object v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 150
    .local v1, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    move v4, v5

    .line 396
    :cond_1
    :goto_1
    return v4

    .line 154
    :sswitch_0
    iget-object v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v6

    invoke-virtual {v6, p2, v5}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_1

    .line 163
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    if-nez v5, :cond_1

    .line 169
    :sswitch_2
    const/16 v5, 0x4f

    if-ne p1, v5, :cond_2

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryPBAPhase()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 171
    sget-object v5, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v6, " KeyEvent.KEYCODE_HEADSETHOOK blocked..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 182
    :cond_2
    :sswitch_3
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 187
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_3

    .line 191
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_1

    .line 192
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 193
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 194
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 195
    iget-object v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 197
    iget-object v5, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.folder_type"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 198
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startCallActivity()V

    goto :goto_1

    .line 201
    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 204
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 205
    iget-object v5, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 206
    :catch_0
    move-exception v2

    .line 207
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startCallActivity()V

    goto/16 :goto_1

    .line 211
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    sget-object v5, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v6, "Not starting call activity because user setup is in progress."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 221
    :sswitch_5
    if-nez v1, :cond_6

    .line 222
    sget-boolean v4, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v6, "Camera key is blocked by policy or dispatcher is null"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 226
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_8

    .line 227
    sget-boolean v5, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v5, :cond_7

    sget-object v5, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v6, "Camera key start Tracking"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_7
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 229
    :cond_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_1

    .line 255
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_9

    .line 259
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 260
    :cond_9
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 261
    iget-object v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 262
    .local v0, "config":Landroid/content/res/Configuration;
    iget v6, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v6, v4, :cond_a

    iget v6, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v6, v8, :cond_0

    .line 264
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 266
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 269
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 270
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 271
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/SearchManager;->stopSearch()V

    .line 272
    iget-object v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V

    .line 276
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 278
    :catch_1
    move-exception v4

    goto/16 :goto_0

    .line 282
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_b
    sget-object v4, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v6, "Not dispatching SEARCH long press because user setup is in progress."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 292
    .end local v0    # "config":Landroid/content/res/Configuration;
    :sswitch_7
    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_c

    .line 297
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchPTTApp(Landroid/view/KeyEvent;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 302
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v6

    if-nez v6, :cond_0

    .line 306
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_11

    .line 307
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 309
    iget-boolean v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapPending:Z

    if-eqz v6, :cond_10

    .line 310
    iput-boolean v5, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapPending:Z

    .line 311
    iget-object v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 313
    const/4 v6, 0x3

    iput v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    .line 314
    iget v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    invoke-direct {p0, v6}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchUserDefinedApp(I)Z

    .line 325
    :cond_d
    :goto_2
    iget v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    if-ne v6, v8, :cond_1

    .line 326
    iget v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    invoke-direct {p0, v6}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchUserDefinedApp(I)Z

    move-result v6

    if-nez v6, :cond_f

    .line 327
    sget-boolean v6, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v6, :cond_e

    sget-object v6, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v7, "There are no apps defined by the user key"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 330
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 331
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 332
    const-string v6, "com.sec.android.app.popupuireceiver"

    const-string v7, "com.sec.android.app.popupuireceiver.popupCustomizeKey"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 336
    iget-object v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 345
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_f
    :goto_3
    iput v5, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    goto/16 :goto_1

    .line 316
    :cond_10
    iput v4, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    goto :goto_2

    .line 318
    :cond_11
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 319
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 320
    iget-object v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 321
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 322
    iput v8, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    goto :goto_2

    .line 337
    .restart local v3    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v2

    .line 338
    .restart local v2    # "e":Landroid/content/ActivityNotFoundException;
    sget-boolean v6, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v6, :cond_f

    sget-object v6, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "popupuireceiver is not found."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 341
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_12
    sget-object v6, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v7, "Not dispatching Active Key long press because user setup is in progress."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 353
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v1, :cond_0

    .line 357
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_13

    .line 358
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 359
    :cond_13
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 360
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 361
    iget-object v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 362
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 364
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 366
    const-string v5, "com.sec.android.app.socialpage"

    const-string v6, "com.sec.android.app.socialpage.SocialSetActivity"

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startSocialActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 368
    :cond_14
    sget-object v5, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v6, "Not dispatching APPSELECT Key long press because user setup is in progress."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 376
    :sswitch_9
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v6

    if-nez v6, :cond_15

    .line 377
    sget-object v4, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v6, "Not dispatching KEYCODE_BUTTON_GAME Key press because user setup is in progress."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 382
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v1, :cond_0

    .line 386
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_16

    .line 387
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 388
    :cond_16
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 389
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 390
    sget-object v5, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "no action about game button longpressed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 150
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_4
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_5
        0x4f -> :sswitch_2
        0x54 -> :sswitch_6
        0x55 -> :sswitch_1
        0x56 -> :sswitch_3
        0x57 -> :sswitch_3
        0x58 -> :sswitch_3
        0x59 -> :sswitch_3
        0x5a -> :sswitch_3
        0x5b -> :sswitch_2
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
        0x82 -> :sswitch_3
        0xa4 -> :sswitch_0
        0xde -> :sswitch_3
        0x3f7 -> :sswitch_7
        0x41a -> :sswitch_9
        0x431 -> :sswitch_8
    .end sparse-switch
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 400
    sget-boolean v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 401
    sget-object v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "up "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    iget-object v9, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 404
    .local v1, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_1

    .line 405
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 408
    :cond_1
    sparse-switch p1, :sswitch_data_0

    :cond_2
    :goto_0
    move v7, v8

    .line 552
    :cond_3
    :goto_1
    return v7

    .line 412
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v9

    if-nez v9, :cond_3

    .line 413
    iget-object v9, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v9

    invoke-virtual {v9, p2, v8}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_1

    .line 420
    :sswitch_1
    const/16 v8, 0x4f

    if-ne p1, v8, :cond_4

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryPBAPhase()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 422
    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v9, " KeyEvent.KEYCODE_HEADSETHOOK blocked..."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 437
    :cond_4
    :sswitch_2
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 442
    :sswitch_3
    sget-boolean v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v8, :cond_5

    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Camera key event.isTracking() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " event.isCanceled() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v8

    if-nez v8, :cond_3

    .line 445
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 446
    sget-boolean v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v8, :cond_6

    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v9, "launch camera"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 448
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchCameraApp()V

    goto :goto_1

    .line 450
    :cond_7
    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v9, "Not starting Camera activity because user setup is in progress."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 458
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v9

    if-nez v9, :cond_2

    .line 461
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v8

    if-nez v8, :cond_3

    .line 462
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 463
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startCallActivity()V

    goto/16 :goto_1

    .line 465
    :cond_8
    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v9, "Not starting call activity because user setup is in progress."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 474
    :sswitch_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v9

    if-nez v9, :cond_9

    .line 475
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchPTTApp(Landroid/view/KeyEvent;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 480
    :cond_9
    sget-boolean v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v9, :cond_a

    sget-object v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "userkey LaunchType = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isSupportActiveDouble()Z

    move-result v9

    if-eqz v9, :cond_b

    iget v9, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    if-ne v9, v7, :cond_b

    .line 482
    iput-boolean v7, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapPending:Z

    .line 483
    iget-object v8, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 484
    iget-object v8, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0xaa

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 485
    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "user doubletap timeout runnable posted!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 489
    :cond_b
    iget v9, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    if-ne v9, v7, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v9

    if-nez v9, :cond_3

    .line 490
    iget v9, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    invoke-direct {p0, v9}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchUserDefinedApp(I)Z

    move-result v9

    if-nez v9, :cond_c

    .line 491
    sget-boolean v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v9, :cond_c

    sget-object v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v10, "There are no apps defined by the user key"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_c
    iput v8, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    goto/16 :goto_1

    .line 501
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v9

    if-nez v9, :cond_2

    .line 505
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v9

    if-nez v9, :cond_3

    .line 507
    iget-object v9, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "short_press_app"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 508
    .local v3, "launch_app":Ljava/lang/String;
    const/4 v6, 0x0

    .line 509
    .local v6, "package_name":Ljava/lang/String;
    const/4 v0, 0x0

    .line 510
    .local v0, "activity_name":Ljava/lang/String;
    const/4 v5, 0x0

    .line 512
    .local v5, "package_index":I
    sget-boolean v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v9, :cond_d

    sget-object v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "app select short pressed!! app = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_d
    if-eqz v3, :cond_e

    .line 516
    const/16 v9, 0x2f

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 517
    const/4 v9, 0x0

    invoke-virtual {v3, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 518
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 530
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 531
    invoke-virtual {p0, v6, v0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startSocialActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 519
    :catch_0
    move-exception v2

    .line 520
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v6, 0x0

    .line 521
    const/4 v0, 0x0

    .line 522
    goto/16 :goto_0

    .line 525
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_e
    sget-boolean v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v8, :cond_f

    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v9, "There is no app that is selected so setting app will be launched"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_f
    const-string v6, "com.sec.android.app.socialpage"

    .line 527
    const-string v0, "com.sec.android.app.socialpage.SocialSetActivity"

    goto :goto_2

    .line 533
    :cond_10
    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v9, "Not dispatching APPSELECT Key short press because user setup is in progress."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 541
    .end local v0    # "activity_name":Ljava/lang/String;
    .end local v3    # "launch_app":Ljava/lang/String;
    .end local v5    # "package_index":I
    .end local v6    # "package_name":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v8

    if-nez v8, :cond_3

    .line 542
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.samsung.android.input.BUTTON_GAME"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 543
    .local v4, "notifyGameButton":Landroid/content/Intent;
    const-string v8, "deviceName"

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 544
    iget-object v8, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 545
    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v9, "Send BR for game button"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 408
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_4
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_3
        0x4f -> :sswitch_1
        0x55 -> :sswitch_2
        0x56 -> :sswitch_2
        0x57 -> :sswitch_2
        0x58 -> :sswitch_2
        0x59 -> :sswitch_2
        0x5a -> :sswitch_2
        0x5b -> :sswitch_2
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
        0x82 -> :sswitch_2
        0xa4 -> :sswitch_0
        0xde -> :sswitch_2
        0x3f7 -> :sswitch_5
        0x41a -> :sswitch_7
        0x431 -> :sswitch_6
    .end sparse-switch
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->preDispatchKeyEvent(Landroid/view/KeyEvent;I)V

    .line 100
    return-void
.end method

.method sendCloseSystemWindows()V
    .locals 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 648
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    .line 96
    return-void
.end method

.method startCallActivity()V
    .locals 4

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 608
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 609
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 611
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :goto_0
    return-void

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "No activity found for android.intent.action.CALL_BUTTON."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method startSocialActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "package_name"    # Ljava/lang/String;
    .param p2, "activity_name"    # Ljava/lang/String;

    .prologue
    .line 590
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 591
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 594
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 598
    iget-object v2, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-boolean v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_1
    const-string v2, "com.sec.android.app.socialpage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 602
    const-string v2, "com.sec.android.app.socialpage"

    const-string v3, "com.sec.android.app.socialpage.SocialSetActivity"

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startSocialActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

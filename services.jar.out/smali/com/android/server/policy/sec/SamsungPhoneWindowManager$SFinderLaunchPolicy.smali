.class Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SFinderLaunchPolicy"
.end annotation


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "com.sec.feature.findo"

.field private static final TAG:Ljava/lang/String; = "SFinderLaunchPolicy"


# instance fields
.field private mDeniedActivities:[Ljava/lang/String;

.field private mFeatureCached:Z

.field private mFeatureEnabled:Z

.field private mLaunchSFinder:Ljava/lang/Runnable;

.field private mSFinderIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3996
    iput-object p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3993
    iput-boolean v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureEnabled:Z

    .line 3994
    iput-boolean v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureCached:Z

    .line 4003
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "{com.android.phone/com.android.phone.UsimDownload}"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mDeniedActivities:[Ljava/lang/String;

    .line 4007
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy$1;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mLaunchSFinder:Ljava/lang/Runnable;

    .line 3997
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mSFinderIntent:Landroid/content/Intent;

    .line 3998
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mSFinderIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.galaxyfinder"

    const-string v3, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4000
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mSFinderIntent:Landroid/content/Intent;

    const-string v1, "callername"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4001
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    .param p2, "x1"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;

    .prologue
    .line 3987
    invoke-direct {p0, p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    .prologue
    .line 3987
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mSFinderIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    .prologue
    .line 3987
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->launch()Z

    move-result v0

    return v0
.end method

.method private ensureFeatureCached()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4028
    iget-boolean v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureCached:Z

    if-nez v1, :cond_0

    .line 4029
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 4030
    const/4 v0, 0x0

    .line 4037
    :cond_0
    :goto_0
    return v0

    .line 4033
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.findo"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureEnabled:Z

    .line 4034
    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureCached:Z

    goto :goto_0
.end method

.method private isDeniedActivity()Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 4041
    iget-object v7, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v5

    .line 4043
    .local v5, "topActivity":Landroid/content/ComponentName;
    if-nez v5, :cond_1

    .line 4055
    :cond_0
    :goto_0
    return v6

    .line 4047
    :cond_1
    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    .line 4049
    .local v1, "cmpName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mDeniedActivities:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 4050
    .local v2, "entry":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 4049
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4055
    .end local v2    # "entry":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private isLaunchable()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 4059
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->ensureFeatureCached()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4085
    :goto_0
    return v0

    .line 4063
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureEnabled:Z

    if-nez v1, :cond_1

    .line 4064
    const-string v1, "SFinderLaunchPolicy"

    const-string/jumbo v2, "isLaunchable: feature is disabled."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4065
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBootCompleted:Z

    if-nez v1, :cond_2

    .line 4066
    const-string v1, "SFinderLaunchPolicy"

    const-string/jumbo v2, "isLaunchable: mBootCompleted=false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4073
    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->isDeniedActivity()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4074
    const-string v1, "SFinderLaunchPolicy"

    const-string/jumbo v2, "isLaunchable: isDeniedActivity()=true"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4075
    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4076
    const-string v1, "SFinderLaunchPolicy"

    const-string/jumbo v2, "isLaunchable: device is not provisioned yet!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4077
    :cond_4
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4078
    const-string v1, "SFinderLaunchPolicy"

    const-string/jumbo v2, "isLaunchable: keyguard is on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4079
    :cond_5
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4080
    :cond_6
    const-string v1, "SFinderLaunchPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isLaunchable: isFactoryMode()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isAutomaticTestMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4082
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private launch()Z
    .locals 2

    .prologue
    .line 4089
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->ensureFeatureCached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4090
    const/4 v0, 0x0

    .line 4098
    :goto_0
    return v0

    .line 4093
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->isLaunchable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4094
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mLaunchSFinder:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4095
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mLaunchSFinder:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4098
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureEnabled:Z

    goto :goto_0
.end method
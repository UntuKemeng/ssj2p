.class public Lcom/android/server/notification/PackageVisibilityExtractor;
.super Ljava/lang/Object;
.source "PackageVisibilityExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "PackageVisibilityExtractor"


# instance fields
.field private mConfig:Lcom/android/server/notification/RankingConfig;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;

    .prologue
    iput-object p1, p0, Lcom/android/server/notification/PackageVisibilityExtractor;->mContext:Landroid/content/Context;

    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 9
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    const/4 v8, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    iget-object v5, p0, Lcom/android/server/notification/PackageVisibilityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .local v2, "pkgName":Ljava/lang/String;
    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    .local v4, "uid":I
    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->isAppGroupSummary()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getAppGroupKey()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/notification/PackageVisibilityExtractor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .local v3, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v5, "ongoing"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/server/notification/PackageVisibilityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    invoke-interface {v5, v2, v4}, Lcom/android/server/notification/RankingConfig;->getPackageVisibilityOverride(Ljava/lang/String;I)I

    move-result v1

    .local v1, "packageVisibility":I
    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->setPackageVisibilityOverride(I)V

    goto :goto_0

    .end local v1    # "packageVisibility":I
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "PackageVisibilityExtractor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to get uid for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    goto :goto_1
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/android/server/notification/RankingConfig;

    .prologue
    iput-object p1, p0, Lcom/android/server/notification/PackageVisibilityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    return-void
.end method

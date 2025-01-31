.class public Lcom/sec/epdg/EpdgPeriodicDns;
.super Ljava/lang/Object;
.source "EpdgPeriodicDns.java"


# static fields
.field private static INSTANCE:Lcom/sec/epdg/EpdgPeriodicDns; = null

.field private static final TAG:Ljava/lang/String; = "[EpdgPeriodicDns]"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mRetryManager:Lcom/android/internal/telephony/RetryManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/EpdgPeriodicDns;->INSTANCE:Lcom/sec/epdg/EpdgPeriodicDns;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "[EpdgPeriodicDns]"

    const-string v1, "EpdgPeriodicDns instance created"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgPeriodicDns;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/epdg/EpdgPeriodicDns;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/sec/epdg/EpdgPeriodicDns;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v0, Lcom/android/internal/telephony/RetryManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/RetryManager;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/EpdgPeriodicDns;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    iget-object v0, p0, Lcom/sec/epdg/EpdgPeriodicDns;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    const-string v1, "max_retries=infinite,30000,60000,120000,300000,900000"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[EpdgPeriodicDns]"

    const-string v1, "Error in DNS retry timer config: max_retries=infinite,30000,60000,120000,300000,900000"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error in DNS retry timer config"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/epdg/EpdgPeriodicDns;
    .locals 3

    .prologue
    const-class v1, Lcom/sec/epdg/EpdgPeriodicDns;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/epdg/EpdgPeriodicDns;->INSTANCE:Lcom/sec/epdg/EpdgPeriodicDns;

    if-nez v0, :cond_0

    const-string v0, "[EpdgPeriodicDns]"

    const-string v2, "Creating EpdgPeriodicDns instance"

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/epdg/EpdgPeriodicDns;

    invoke-direct {v0}, Lcom/sec/epdg/EpdgPeriodicDns;-><init>()V

    sput-object v0, Lcom/sec/epdg/EpdgPeriodicDns;->INSTANCE:Lcom/sec/epdg/EpdgPeriodicDns;

    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgPeriodicDns;->INSTANCE:Lcom/sec/epdg/EpdgPeriodicDns;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPeriodicDnsPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.epdg.PERIODIC_DNS_TIMER_EXPIRED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/epdg/EpdgPeriodicDns;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Lcom/sec/epdg/EpdgUtils;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public declared-synchronized removePeriodicDnsPendingIntent()V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/epdg/EpdgPeriodicDns;->getPeriodicDnsPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .local v0, "pIntent":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/sec/epdg/EpdgPeriodicDns;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgPeriodicDns;->resetTimerForPeriodicDns()V

    const-string v1, "[EpdgPeriodicDns]"

    const-string v2, "Periodic DNS intent is cancelled"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0    # "pIntent":Landroid/app/PendingIntent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized resetTimerForPeriodicDns()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgPeriodicDns;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    const-string v0, "[EpdgPeriodicDns]"

    const-string v1, "resetTimerForPeriodicDns: Reset DNS retry counter"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startTimerForPeriodicDns()V
    .locals 8

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/sec/epdg/EpdgPeriodicDns;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v5

    int-to-long v2, v5

    .local v2, "dnsRetryInterval":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long v0, v6, v2

    .local v0, "alarmExpTime":J
    iget-object v5, p0, Lcom/sec/epdg/EpdgPeriodicDns;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RetryManager;->increaseRetryCount()V

    const-string v5, "[EpdgPeriodicDns]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startTimerForPeriodicDns: dnsRetryInterval is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " alarmExpTime is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgPeriodicDns;->getPeriodicDnsPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    .local v4, "pIntent":Landroid/app/PendingIntent;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/sec/epdg/EpdgPeriodicDns;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v5, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    iget-object v5, p0, Lcom/sec/epdg/EpdgPeriodicDns;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v0, v1, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0    # "alarmExpTime":J
    .end local v2    # "dnsRetryInterval":J
    .end local v4    # "pIntent":Landroid/app/PendingIntent;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

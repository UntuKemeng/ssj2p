.class Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver$ScheduleReInitializationOfDaemonCache;
.super Ljava/util/TimerTask;
.source "DomainFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScheduleReInitializationOfDaemonCache"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;)V
    .locals 0

    .prologue
    .line 1351
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver$ScheduleReInitializationOfDaemonCache;->this$1:Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;Lcom/android/server/enterprise/firewall/DomainFilter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;
    .param p2, "x1"    # Lcom/android/server/enterprise/firewall/DomainFilter$1;

    .prologue
    .line 1351
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver$ScheduleReInitializationOfDaemonCache;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver$ScheduleReInitializationOfDaemonCache;->this$1:Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # invokes: Lcom/android/server/enterprise/firewall/DomainFilter;->initDaemonCache()V
    invoke-static {v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$900(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    .line 1355
    return-void
.end method

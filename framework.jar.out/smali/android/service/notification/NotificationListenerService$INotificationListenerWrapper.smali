.class Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;
.super Landroid/service/notification/INotificationListener$Stub;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "INotificationListenerWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/notification/NotificationListenerService;


# direct methods
.method private constructor <init>(Landroid/service/notification/NotificationListenerService;)V
    .locals 0

    .prologue
    .line 703
    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-direct {p0}, Landroid/service/notification/INotificationListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationListenerService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/service/notification/NotificationListenerService;
    .param p2, "x1"    # Landroid/service/notification/NotificationListenerService$1;

    .prologue
    .line 703
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;-><init>(Landroid/service/notification/NotificationListenerService;)V

    return-void
.end method


# virtual methods
.method public onEdgeNotificationPosted(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 814
    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1, p1, p2, p3}, Landroid/service/notification/NotificationListenerService;->onEdgeNotificationPosted(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    :goto_0
    return-void

    .line 815
    :catch_0
    move-exception v0

    .line 816
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error running onInterruptionFilterChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onEdgeNotificationRemoved(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 823
    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1, p1, p2, p3}, Landroid/service/notification/NotificationListenerService;->onEdgeNotificationRemoved(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    :goto_0
    return-void

    .line 824
    :catch_0
    move-exception v0

    .line 825
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error running onInterruptionFilterChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onInterruptionFilterChanged(I)V
    .locals 3
    .param p1, "interruptionFilter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 804
    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1, p1}, Landroid/service/notification/NotificationListenerService;->onInterruptionFilterChanged(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    :goto_0
    return-void

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error running onInterruptionFilterChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onListenerConnected(Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 4
    .param p1, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    .line 770
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$400(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    move-result-object v2

    monitor-enter v2

    .line 771
    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # invokes: Landroid/service/notification/NotificationListenerService;->applyUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    invoke-static {v1, p1}, Landroid/service/notification/NotificationListenerService;->access$500(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    :try_start_1
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 777
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 778
    return-void

    .line 774
    :catch_0
    move-exception v0

    .line 775
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Error running onListenerConnected"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 777
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onListenerHintsChanged(I)V
    .locals 3
    .param p1, "hints"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 795
    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1, p1}, Landroid/service/notification/NotificationListenerService;->onListenerHintsChanged(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    :goto_0
    return-void

    .line 796
    :catch_0
    move-exception v0

    .line 797
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error running onListenerHintsChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onNotificationPosted(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 6
    .param p1, "sbnHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .param p2, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    .line 709
    :try_start_0
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 717
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    :try_start_1
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v3, :cond_0

    .line 718
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # invokes: Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$200(Landroid/service/notification/NotificationListenerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-static {v3, v4}, Landroid/app/Notification$Builder;->rebuild(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification;

    .line 722
    :cond_0
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # invokes: Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$200(Landroid/service/notification/NotificationListenerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/app/Notification$Builder;->rebuild(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification;

    .line 724
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    # invokes: Landroid/service/notification/NotificationListenerService;->createLegacyIconExtras(Landroid/app/Notification;)V
    invoke-static {v3, v4}, Landroid/service/notification/NotificationListenerService;->access$300(Landroid/service/notification/NotificationListenerService;Landroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 733
    :goto_0
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$400(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    move-result-object v4

    monitor-enter v4

    .line 734
    :try_start_2
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # invokes: Landroid/service/notification/NotificationListenerService;->applyUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    invoke-static {v3, p2}, Landroid/service/notification/NotificationListenerService;->access$500(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 736
    if-eqz v1, :cond_1

    .line 737
    :try_start_3
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    iget-object v5, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;
    invoke-static {v5}, Landroid/service/notification/NotificationListenerService;->access$600(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 745
    :goto_1
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 746
    .end local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :goto_2
    return-void

    .line 710
    :catch_0
    move-exception v0

    .line 711
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onNotificationPosted: Error receiving StatusBarNotification"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 725
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_1
    move-exception v0

    .line 727
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    .line 728
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onNotificationPosted: can\'t rebuild notification from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 740
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :try_start_5
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    iget-object v5, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;
    invoke-static {v5}, Landroid/service/notification/NotificationListenerService;->access$600(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/service/notification/NotificationListenerService;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 742
    :catch_2
    move-exception v2

    .line 743
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_6
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Error running onNotificationPosted"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 745
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v3
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 4
    .param p1, "update"    # Landroid/service/notification/NotificationRankingUpdate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 783
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$400(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    move-result-object v2

    monitor-enter v2

    .line 784
    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # invokes: Landroid/service/notification/NotificationListenerService;->applyUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    invoke-static {v1, p1}, Landroid/service/notification/NotificationListenerService;->access$500(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    :try_start_1
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$600(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/service/notification/NotificationListenerService;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 790
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 791
    return-void

    .line 787
    :catch_0
    move-exception v0

    .line 788
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Error running onNotificationRankingUpdate"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 790
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onNotificationRemoved(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 6
    .param p1, "sbnHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .param p2, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    .line 752
    :try_start_0
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 758
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$400(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    move-result-object v4

    monitor-enter v4

    .line 759
    :try_start_1
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # invokes: Landroid/service/notification/NotificationListenerService;->applyUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    invoke-static {v3, p2}, Landroid/service/notification/NotificationListenerService;->access$500(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 761
    :try_start_2
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    iget-object v5, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;
    invoke-static {v5}, Landroid/service/notification/NotificationListenerService;->access$600(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 765
    :goto_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 766
    .end local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :goto_1
    return-void

    .line 753
    :catch_0
    move-exception v0

    .line 754
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onNotificationRemoved: Error receiving StatusBarNotification"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 762
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_1
    move-exception v2

    .line 763
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_4
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Error running onNotificationRemoved"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 765
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method

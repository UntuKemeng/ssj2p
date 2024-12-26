.class Lcom/android/server/notification/NotificationManagerService$EdgeLight;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdgeLight"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .prologue
    .line 5185
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$EdgeLight;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "x1"    # Lcom/android/server/notification/NotificationManagerService$1;

    .prologue
    .line 5185
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$EdgeLight;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    return-void
.end method


# virtual methods
.method public turnOff()V
    .locals 5

    .prologue
    .line 5212
    const-string v2, "EdgeLight"

    const-string v3, "Turning off"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5214
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5215
    .local v0, "edgeNotificationData":Landroid/os/Bundle;
    const-string/jumbo v2, "samsung.people.notification_type"

    const-string/jumbo v3, "led_indicator"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5217
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$EdgeLight;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 5218
    .local v1, "pkg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$EdgeLight;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v2, v1, v3, v0, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->removeEdgeNotification(Ljava/lang/String;ILandroid/os/Bundle;I)V

    .line 5219
    return-void
.end method

.method public turnOn(Lcom/android/server/notification/NotificationRecord;)V
    .locals 9
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 5187
    iget-object v6, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 5189
    .local v0, "edgeLightNoti":Landroid/app/Notification;
    iget v2, v0, Landroid/app/Notification;->ledARGB:I

    .line 5190
    .local v2, "ledARGB":I
    iget v4, v0, Landroid/app/Notification;->ledOnMS:I

    .line 5191
    .local v4, "ledOnMS":I
    iget v3, v0, Landroid/app/Notification;->ledOffMS:I

    .line 5192
    .local v3, "ledOffMS":I
    iget v6, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_0

    .line 5193
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$EdgeLight;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationColor:I
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$8600(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v2

    .line 5194
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$EdgeLight;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOn:I
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$8700(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v4

    .line 5195
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$EdgeLight;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOff:I
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$8800(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v3

    .line 5201
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5202
    .local v1, "edgeNotificationData":Landroid/os/Bundle;
    const-string/jumbo v6, "samsung.people.notification_type"

    const-string/jumbo v7, "led_indicator"

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5203
    const-string/jumbo v6, "samsung.people.color"

    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5207
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$EdgeLight;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 5208
    .local v5, "pkg":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$EdgeLight;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v6, v5, v7, v1, v8}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->enqueueEdgeNotification(Ljava/lang/String;ILandroid/os/Bundle;I)V

    .line 5209
    return-void
.end method

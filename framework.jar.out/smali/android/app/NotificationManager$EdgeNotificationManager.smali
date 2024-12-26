.class Landroid/app/NotificationManager$EdgeNotificationManager;
.super Ljava/lang/Object;
.source "NotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EdgeNotificationManager"
.end annotation


# static fields
.field private static final EXTRA_SAMSUNG_NOTIFICATION_PENDINGINTENT:Ljava/lang/String; = "samsung.notification.pendingIntent"

.field private static final EXTRA_SAMSUNG_NOTIFICATION_REMOVE_ALL:Ljava/lang/String; = "samsung.notification.remove_all"

.field private static final EXTRA_SAMSUNG_NOTIFICATION_TYPE:Ljava/lang/String; = "samsung.notification.type"

.field private static final EXTRA_SAMSUNG_NOTIFICATION_WHEN:Ljava/lang/String; = "samsung.notification.when"

.field private static final EXTRA_SAMSUNG_PEOPLE_PENDINGINTENT:Ljava/lang/String; = "samsung.people.pendingIntents"

.field private static final EXTRA_SAMSUNG_PEOPLE_SUBCATEGORY:Ljava/lang/String; = "samsung.people.subcategory"

.field private static final EXTRA_SAMSUNG_PEOPLE_SUBTITLES:Ljava/lang/String; = "samsung.people.subTitles"

.field private static final EXTRA_SAMSUNG_PEOPLE_TIMESTAMPS:Ljava/lang/String; = "samsung.people.timestamps"

.field private static final EXTRA_SAMSUNG_PEOPLE_TITLES:Ljava/lang/String; = "samsung.people.titles"

.field private static final EXTRA_SAMSUNG_PEOPLE_URIS:Ljava/lang/String; = "samsung.people.uris"

.field private static final TAG:Ljava/lang/String; = "NotificationManager.EdgeNotificationManager"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 967
    iput-object p1, p0, Landroid/app/NotificationManager$EdgeNotificationManager;->mContext:Landroid/content/Context;

    .line 968
    return-void
.end method

.method private postEdgeNotificationInternal(ILandroid/os/Bundle;)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 1030
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1031
    .local v0, "service":Landroid/app/INotificationManager;
    iget-object v2, p0, Landroid/app/NotificationManager$EdgeNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1033
    .local v1, "pkg":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/app/NotificationManager$EdgeNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    move v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/app/INotificationManager;->enqueueEdgeNotification(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1037
    :goto_0
    return-void

    .line 1034
    :catch_0
    move-exception v6

    .line 1035
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private removeEdgeNotificationInternal(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 1040
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v2

    .line 1041
    .local v2, "service":Landroid/app/INotificationManager;
    iget-object v3, p0, Landroid/app/NotificationManager$EdgeNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1043
    .local v1, "pkg":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v1, p1, p2, v3}, Landroid/app/INotificationManager;->removeEdgeNotification(Ljava/lang/String;ILandroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1047
    :goto_0
    return-void

    .line 1044
    :catch_0
    move-exception v0

    .line 1045
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public postEdgeNotification(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 981
    const-string v0, "NotificationManager.EdgeNotificationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "postEdgeNotification:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    if-eqz p2, :cond_0

    const-string/jumbo v0, "samsung.notification.type"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 984
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The bundle is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 987
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/app/NotificationManager$EdgeNotificationManager;->postEdgeNotificationInternal(ILandroid/os/Bundle;)V

    .line 988
    return-void
.end method

.method public postEdgeNotificationByNormal(ILandroid/app/Notification;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    .prologue
    .line 991
    iget-object v1, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 992
    iget-object v1, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "samsung.people.uris"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 993
    const-string v1, "NotificationManager.EdgeNotificationManager"

    const-string/jumbo v2, "postEdgeNotificationByNormal"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 997
    .local v0, "extra":Landroid/os/Bundle;
    const-string/jumbo v1, "samsung.notification.type"

    const-string/jumbo v2, "normal"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    const-string/jumbo v1, "samsung.notification.pendingIntent"

    iget-object v2, p2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 999
    const-string/jumbo v1, "samsung.notification.when"

    iget-wide v2, p2, Landroid/app/Notification;->when:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1002
    iget-object v1, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "samsung.people.uris"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1003
    iget-object v1, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "samsung.people.titles"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1004
    iget-object v1, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "samsung.people.subTitles"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1005
    iget-object v1, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "samsung.people.pendingIntents"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1006
    iget-object v1, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "samsung.people.timestamps"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1007
    iget-object v1, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "samsung.people.subcategory"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1009
    invoke-direct {p0, p1, v0}, Landroid/app/NotificationManager$EdgeNotificationManager;->postEdgeNotificationInternal(ILandroid/os/Bundle;)V

    .line 1012
    .end local v0    # "extra":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public removeEdgeNotification(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 971
    const-string v0, "NotificationManager.EdgeNotificationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeEdgeNotification:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    if-eqz p2, :cond_0

    const-string/jumbo v0, "samsung.notification.type"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 974
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The bundle has wrong value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 977
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/app/NotificationManager$EdgeNotificationManager;->removeEdgeNotificationInternal(ILandroid/os/Bundle;)V

    .line 978
    return-void
.end method

.method public removeEdgeNotificationAllByNormal()V
    .locals 3

    .prologue
    .line 1022
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1024
    .local v0, "extra":Landroid/os/Bundle;
    const-string/jumbo v1, "samsung.notification.type"

    const-string/jumbo v2, "normal"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    const-string/jumbo v1, "samsung.notification.remove_all"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1026
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/app/NotificationManager$EdgeNotificationManager;->removeEdgeNotificationInternal(ILandroid/os/Bundle;)V

    .line 1027
    return-void
.end method

.method public removeEdgeNotificationByNormal(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1015
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1017
    .local v0, "extra":Landroid/os/Bundle;
    const-string/jumbo v1, "samsung.notification.type"

    const-string/jumbo v2, "normal"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    invoke-direct {p0, p1, v0}, Landroid/app/NotificationManager$EdgeNotificationManager;->removeEdgeNotificationInternal(ILandroid/os/Bundle;)V

    .line 1019
    return-void
.end method

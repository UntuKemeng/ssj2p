.class public Lcom/android/server/enterprise/RestrictionToastManager;
.super Ljava/lang/Object;
.source "RestrictionToastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/RestrictionToastManager$DisplayedMessageHandler;
    }
.end annotation


# static fields
.field private static final MSG_REMOVE_ID:I = 0x1

.field private static final MSG_REMOVE_TIMEOUT:I = 0xdac

.field private static final TAG:Ljava/lang/String; = "RestrictionToastManager"

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;

.field private static final mRecentlyDisplayedMsgQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mUser:Landroid/os/UserHandle;

.field private static mUserReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mRecentlyDisplayedMsgQueue:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Lcom/android/server/enterprise/RestrictionToastManager$DisplayedMessageHandler;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/RestrictionToastManager$DisplayedMessageHandler;-><init>(Lcom/android/server/enterprise/RestrictionToastManager$1;)V

    sput-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mHandler:Landroid/os/Handler;

    .line 80
    sput-object v1, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    .line 82
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    sput-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mUser:Landroid/os/UserHandle;

    .line 169
    new-instance v0, Lcom/android/server/enterprise/RestrictionToastManager$1;

    invoke-direct {v0}, Lcom/android/server/enterprise/RestrictionToastManager$1;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mUserReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    return-void
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mRecentlyDisplayedMsgQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 65
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->onUserSwitched(I)V

    return-void
.end method

.method static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    sput-object p0, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .local v0, "filterUser":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    sget-object v1, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/enterprise/RestrictionToastManager;->mUserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    return-void
.end method

.method private static onUserSwitched(I)V
    .locals 1
    .param p0, "userId"    # I

    .prologue
    .line 181
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mUser:Landroid/os/UserHandle;

    .line 182
    return-void
.end method

.method public static show(I)V
    .locals 4
    .param p0, "messageResId"    # I

    .prologue
    .line 102
    if-ltz p0, :cond_0

    sget-object v2, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const/4 v1, 0x0

    .line 109
    .local v1, "msg":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "RestrictionToastManager"

    const-string v3, "Resource Id not found: will not display any restriction message toast"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized show(Ljava/lang/String;)V
    .locals 8
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 128
    const-class v5, Lcom/android/server/enterprise/RestrictionToastManager;

    monitor-enter v5

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v4, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 152
    :cond_0
    :goto_0
    monitor-exit v5

    return-void

    .line 133
    :cond_1
    :try_start_1
    sget-object v4, Lcom/android/server/enterprise/RestrictionToastManager;->mRecentlyDisplayedMsgQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 137
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 140
    .local v2, "token":J
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    const-string v4, "edm.intent.action.ACTION_EDM_RESTRICTION_TOAST"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v1, "toastIntent":Landroid/content/Intent;
    const-string/jumbo v4, "message"

    invoke-virtual {v1, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    sget-object v4, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/server/enterprise/RestrictionToastManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 144
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 148
    sget-object v4, Lcom/android/server/enterprise/RestrictionToastManager;->mRecentlyDisplayedMsgQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    const-string v4, "RestrictionToastManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Added message to recently displayed queue: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sget-object v4, Lcom/android/server/enterprise/RestrictionToastManager;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-static {v4, v6, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 151
    .local v0, "deleteMsg":Landroid/os/Message;
    sget-object v4, Lcom/android/server/enterprise/RestrictionToastManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0xdac

    invoke-virtual {v4, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 128
    .end local v0    # "deleteMsg":Landroid/os/Message;
    .end local v1    # "toastIntent":Landroid/content/Intent;
    .end local v2    # "token":J
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 144
    .restart local v2    # "token":J
    :catchall_1
    move-exception v4

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
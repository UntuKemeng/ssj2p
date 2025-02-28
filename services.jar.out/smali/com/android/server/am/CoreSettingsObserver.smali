.class final Lcom/android/server/am/CoreSettingsObserver;
.super Landroid/database/ContentObserver;
.source "CoreSettingsObserver.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final sGlobalSettingToTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final sSecureSettingToTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final sSystemSettingToTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private final mCoreSettings:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-class v0, Lcom/android/server/am/CoreSettingsObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/CoreSettingsObserver;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "long_press_timeout"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "time_12_24"

    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    const-string v1, "debug_view_attributes"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "activityManagerService"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Lcom/android/server/am/CoreSettingsObserver;->beginObserveCoreSettings()V

    invoke-direct {p0}, Lcom/android/server/am/CoreSettingsObserver;->sendCoreSettings()V

    return-void
.end method

.method private beginObserveCoreSettings()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    sget-object v3, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "setting":Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .end local v1    # "setting":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    sget-object v3, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .restart local v1    # "setting":Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .restart local v2    # "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_1

    .end local v1    # "setting":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    sget-object v3, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .restart local v1    # "setting":Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .restart local v2    # "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_2

    .end local v1    # "setting":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2
    return-void
.end method

.method private populateSettings(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 12
    .param p1, "snapshot"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .local v0, "context":Landroid/content/Context;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "setting":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .local v4, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Ljava/lang/String;

    if-ne v4, v5, :cond_3

    sget-object v5, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v5, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "value":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v6    # "value":Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v5, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "value":Ljava/lang/String;
    goto :goto_1

    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "value":Ljava/lang/String;
    goto :goto_1

    .end local v6    # "value":Ljava/lang/String;
    :cond_3
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_6

    sget-object v5, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v5, :cond_4

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .local v6, "value":I
    :goto_2
    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .end local v6    # "value":I
    :cond_4
    sget-object v5, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v5, :cond_5

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .restart local v6    # "value":I
    goto :goto_2

    .end local v6    # "value":I
    :cond_5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .restart local v6    # "value":I
    goto :goto_2

    .end local v6    # "value":I
    :cond_6
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_9

    sget-object v5, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v5, :cond_7

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v8}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v6

    .local v6, "value":F
    :goto_3
    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .end local v6    # "value":F
    :cond_7
    sget-object v5, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v5, :cond_8

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v8}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v6

    .restart local v6    # "value":F
    goto :goto_3

    .end local v6    # "value":F
    :cond_8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v8}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v6

    .restart local v6    # "value":F
    goto :goto_3

    .end local v6    # "value":F
    :cond_9
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_0

    sget-object v5, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v5, :cond_a

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .local v6, "value":J
    :goto_4
    invoke-virtual {p1, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_0

    .end local v6    # "value":J
    :cond_a
    sget-object v5, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v5, :cond_b

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .restart local v6    # "value":J
    goto :goto_4

    .end local v6    # "value":J
    :cond_b
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v10, v11}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .restart local v6    # "value":J
    goto :goto_4

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .end local v3    # "setting":Ljava/lang/String;
    .end local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "value":J
    :cond_c
    return-void
.end method

.method private sendCoreSettings()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    sget-object v1, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/CoreSettingsObserver;->populateSettings(Landroid/os/Bundle;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    sget-object v1, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/CoreSettingsObserver;->populateSettings(Landroid/os/Bundle;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    sget-object v1, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/CoreSettingsObserver;->populateSettings(Landroid/os/Bundle;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->onCoreSettingsChange(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public getCoreSettingsLocked()Landroid/os/Bundle;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    iget-object v1, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/CoreSettingsObserver;->sendCoreSettings()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.class final Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SmartGlowObserver"
.end annotation


# instance fields
.field private final SMART_GLOW_KEY_COLOR_1:Landroid/net/Uri;

.field private final SMART_GLOW_KEY_COLOR_2:Landroid/net/Uri;

.field private final SMART_GLOW_KEY_COLOR_3:Landroid/net/Uri;

.field private final SMART_GLOW_KEY_COLOR_4:Landroid/net/Uri;

.field private final SMART_GLOW_ON_OFF_STATUS:Landroid/net/Uri;

.field private final SMART_GLOW_PACKAGE_LIST:Landroid/net/Uri;

.field private final SMART_GLOW_PRIORITY_NOTIFIER_ON_OFF_STATUS:Landroid/net/Uri;

.field smartGlowString:Ljava/lang/String;

.field smartLightPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1014
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 998
    const-string/jumbo v0, "ml_pn_package"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->SMART_GLOW_PACKAGE_LIST:Landroid/net/Uri;

    .line 1000
    const-string/jumbo v0, "ml_status"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->SMART_GLOW_ON_OFF_STATUS:Landroid/net/Uri;

    .line 1002
    const-string/jumbo v0, "ml_pn_status"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->SMART_GLOW_PRIORITY_NOTIFIER_ON_OFF_STATUS:Landroid/net/Uri;

    .line 1004
    const-string/jumbo v0, "ml_color_1"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->SMART_GLOW_KEY_COLOR_1:Landroid/net/Uri;

    .line 1006
    const-string/jumbo v0, "ml_color_2"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->SMART_GLOW_KEY_COLOR_2:Landroid/net/Uri;

    .line 1008
    const-string/jumbo v0, "ml_color_3"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->SMART_GLOW_KEY_COLOR_3:Landroid/net/Uri;

    .line 1010
    const-string/jumbo v0, "ml_color_4"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->SMART_GLOW_KEY_COLOR_4:Landroid/net/Uri;

    .line 1036
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->smartLightPackages:Ljava/util/HashMap;

    .line 1015
    return-void
.end method

.method private getSmartGlowColor(Ljava/lang/String;)I
    .locals 1
    .param p1, "appPackageName"    # Ljava/lang/String;

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->smartLightPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->smartLightPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1072
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSmartGlowString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->smartGlowString:Ljava/lang/String;

    return-object v0
.end method

.method private updatePackages(Landroid/net/Uri;)V
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1044
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v9}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1045
    .local v5, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v9, "ml_status"

    const/4 v10, 0x0

    invoke-static {v5, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_0

    const-string/jumbo v9, "ml_pn_status"

    const/4 v10, 0x0

    invoke-static {v5, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x1

    .line 1046
    .local v6, "smartGlowEnabled":Z
    :goto_0
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mSmartGlowEnabled:Z
    invoke-static {v9, v6}, Lcom/android/server/notification/NotificationManagerService;->access$2602(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 1047
    const-string/jumbo v9, "ml_pn_package"

    invoke-static {v5, v9}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->smartGlowString:Ljava/lang/String;

    .line 1048
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->smartGlowString:Ljava/lang/String;

    .line 1049
    .local v8, "updatedSmartString":Ljava/lang/String;
    const-string v9, "NotificationService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updatedSmartString : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->smartLightPackages:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 1051
    if-eqz v8, :cond_2

    .line 1052
    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1053
    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1054
    .local v4, "packages":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 1055
    .local v1, "colorPackage":Ljava/lang/String;
    const-string v9, ":"

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1056
    .local v7, "specificColorPackage":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->smartLightPackages:Ljava/util/HashMap;

    const/4 v10, 0x1

    aget-object v10, v7, v10

    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v11}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v7, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v11, v12}, Landroid/provider/SmartGlow;->getColorForIndex(Landroid/content/ContentResolver;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1045
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "colorPackage":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "packages":[Ljava/lang/String;
    .end local v6    # "smartGlowEnabled":Z
    .end local v7    # "specificColorPackage":[Ljava/lang/String;
    .end local v8    # "updatedSmartString":Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 1058
    .restart local v6    # "smartGlowEnabled":Z
    .restart local v8    # "updatedSmartString":Ljava/lang/String;
    :cond_1
    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1059
    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1060
    .restart local v7    # "specificColorPackage":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->smartLightPackages:Ljava/util/HashMap;

    const/4 v10, 0x1

    aget-object v10, v7, v10

    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v11}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v7, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v11, v12}, Landroid/provider/SmartGlow;->getColorForIndex(Landroid/content/ContentResolver;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    .end local v7    # "specificColorPackage":[Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1040
    invoke-direct {p0, p2}, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->updatePackages(Landroid/net/Uri;)V

    .line 1041
    return-void
.end method

.method smartGlowRegister()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1017
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1018
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->SMART_GLOW_PACKAGE_LIST:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1020
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->SMART_GLOW_ON_OFF_STATUS:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1022
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->SMART_GLOW_PRIORITY_NOTIFIER_ON_OFF_STATUS:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1024
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->SMART_GLOW_KEY_COLOR_1:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1026
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->SMART_GLOW_KEY_COLOR_2:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1028
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->SMART_GLOW_KEY_COLOR_3:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1030
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->SMART_GLOW_KEY_COLOR_4:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1032
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationManagerService$SmartGlowObserver;->updatePackages(Landroid/net/Uri;)V

    .line 1033
    return-void
.end method

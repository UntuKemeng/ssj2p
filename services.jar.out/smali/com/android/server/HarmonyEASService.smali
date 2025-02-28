.class public Lcom/android/server/HarmonyEASService;
.super Landroid/content/IHarmonyEAS$Stub;
.source "HarmonyEASService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/HarmonyEASService$PackageHandler;,
        Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    }
.end annotation


# static fields
.field public static final HARMONY_EAS_SERVICE:Ljava/lang/String; = "harmony_eas_service"

.field private static final HARMONY_THIRDPARTY_APP_FILES:Ljava/lang/String; = "harmony_third_party_apps.xml"

.field private static final HARMONY_THIRDPARTY_APP_FILE_PATH:Ljava/lang/String; = "/data/system/harmony_third_party_apps.xml"

.field private static final SYSTEM_SECURE_DIR:Ljava/lang/String; = "/data/system/"

.field private static final TAG:Ljava/lang/String; = "HarmonyEASService"


# instance fields
.field final mContext:Landroid/content/Context;

.field private mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageHandler:Landroid/os/Handler;

.field mUserMgr:Landroid/os/UserManager;

.field private final mUserToAppMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/content/IHarmonyEAS$Stub;-><init>()V

    iput-object v4, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    iput-object v4, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/HarmonyEASService$1;

    invoke-direct {v0, p0}, Lcom/android/server/HarmonyEASService$1;-><init>(Lcom/android/server/HarmonyEASService;)V

    iput-object v0, p0, Lcom/android/server/HarmonyEASService;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/HarmonyEASService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/HarmonyEASService$PackageHandler;

    invoke-direct {v0, p0}, Lcom/android/server/HarmonyEASService$PackageHandler;-><init>(Lcom/android/server/HarmonyEASService;)V

    iput-object v0, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/HarmonyEASService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/HarmonyEASService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/HarmonyEASService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/HarmonyEASService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/HarmonyEASService;->saveHash(I)V

    return-void
.end method

.method private declared-synchronized addHashForPackage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "hashValue"    # Ljava/lang/String;
    .param p3, "userID"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    .local v0, "appDetails":Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    iget-object v1, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mHashValueToPkgNameMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0    # "appDetails":Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized addPackageAsUnknown(Ljava/lang/String;I)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userID"    # I

    .prologue
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, "needXMLUpdate":Z
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    .local v0, "appDetails":Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    .local v2, "unknownPackageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p2, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    .end local v0    # "appDetails":Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    .end local v2    # "unknownPackageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    .local v0, "appDetails":Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    .end local v0    # "appDetails":Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;-><init>(Lcom/android/server/HarmonyEASService$1;)V

    .restart local v0    # "appDetails":Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iget-object v1, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/android/server/HarmonyEASService;->loadHashVaues(Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;I)V

    :cond_1
    monitor-exit p0

    return-object v0

    .end local v0    # "appDetails":Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadHashVaues(Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;I)V
    .locals 17
    .param p1, "appDetails"    # Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v2, 0x0

    .local v2, "fis":Ljava/io/FileInputStream;
    invoke-static/range {p2 .. p2}, Lcom/android/server/HarmonyEASService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v7

    .local v7, "journal":Lcom/android/internal/util/JournaledFile;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    .local v11, "thirdPartyPackageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mHashValueToPkgNameMap:Ljava/util/HashMap;

    .local v5, "hashValueToPkgNameMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    .local v13, "unknownPackageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v7}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v14

    invoke-direct {v3, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    if-nez v3, :cond_2

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_0
    :goto_0
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :cond_1
    :goto_1
    return-void

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v14, 0x0

    invoke-interface {v9, v3, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_3
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    .local v12, "type":I
    const/4 v14, 0x1

    if-eq v12, v14, :cond_4

    const/4 v14, 0x2

    if-ne v12, v14, :cond_3

    :cond_4
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .local v10, "pkgName":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "hash":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "isUnsigned":Z
    const-string/jumbo v14, "third-party-apps"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "harmony eas settings do not start with proper tag: found "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v4    # "hash":Ljava/lang/String;
    .end local v6    # "isUnsigned":Z
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_0
    move-exception v1

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v14

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "hash":Ljava/lang/String;
    .restart local v6    # "isUnsigned":Z
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "pkgName":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_5
    :try_start_5
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .local v8, "outerDepth":I
    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    :cond_6
    :goto_3
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    const/4 v14, 0x1

    if-eq v12, v14, :cond_a

    const/4 v14, 0x3

    if-ne v12, v14, :cond_7

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v8, :cond_a

    :cond_7
    const/4 v14, 0x3

    if-eq v12, v14, :cond_6

    const/4 v14, 0x4

    if-eq v12, v14, :cond_6

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    const-string/jumbo v15, "hash"

    invoke-interface {v9, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v14, 0x0

    const-string/jumbo v15, "isUnsigned"

    invoke-interface {v9, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    monitor-enter p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v11, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_8

    invoke-virtual {v13, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_8
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .end local v4    # "hash":Ljava/lang/String;
    .end local v6    # "isUnsigned":Z
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v12    # "type":I
    :catchall_0
    move-exception v14

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_4
    if-eqz v2, :cond_9

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_9
    :goto_5
    throw v14

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "hash":Ljava/lang/String;
    .restart local v6    # "isUnsigned":Z
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "pkgName":Ljava/lang/String;
    .restart local v12    # "type":I
    :catchall_1
    move-exception v14

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v14
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_a
    if-eqz v3, :cond_b

    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    :cond_b
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v14

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "hash":Ljava/lang/String;
    .end local v6    # "isUnsigned":Z
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v12    # "type":I
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v14

    goto/16 :goto_0

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v15

    goto :goto_5

    :catchall_2
    move-exception v14

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_2
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .locals 6
    .param p0, "userHandle"    # I

    .prologue
    if-nez p0, :cond_0

    const-string v0, "/data/system/harmony_third_party_apps.xml"

    .local v0, "base":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1

    .end local v0    # "base":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "harmony_third_party_apps.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private saveHash(I)V
    .locals 20
    .param p1, "userHandle"    # I

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v3

    .local v3, "appDetails":Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    iget-object v15, v3, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    .local v15, "thirdPartyPackageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, v3, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    move-object/from16 v16, v0

    .local v16, "unknownPackageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .local v4, "bos":Ljava/io/BufferedOutputStream;
    invoke-static/range {p1 .. p1}, Lcom/android/server/HarmonyEASService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v13

    .local v13, "journal":Lcom/android/internal/util/JournaledFile;
    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-virtual {v13}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v10, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .local v10, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .local v5, "bos":Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v14, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v14}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .local v14, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v17, "utf-8"

    move-object/from16 v0, v17

    invoke-interface {v14, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v17, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const/16 v17, 0x0

    const-string/jumbo v18, "third-party-apps"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, "currPackage":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "currHash":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "isUnsigned":Z
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "currPackage":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .restart local v7    # "currPackage":Ljava/lang/String;
    invoke-virtual {v15, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "currHash":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6    # "currHash":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-interface {v14, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v17, 0x0

    const-string/jumbo v18, "hash"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v17, 0x0

    const-string/jumbo v18, "isUnsigned"

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-interface {v14, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .end local v6    # "currHash":Ljava/lang/String;
    .end local v7    # "currPackage":Ljava/lang/String;
    .end local v11    # "isUnsigned":Z
    .end local v12    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v14    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v8

    move-object v4, v5

    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .local v8, "e":Ljava/lang/Exception;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v13}, Lcom/android/internal/util/JournaledFile;->rollback()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    :cond_0
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void

    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "currHash":Ljava/lang/String;
    .restart local v7    # "currPackage":Ljava/lang/String;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "isUnsigned":Z
    .restart local v12    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v14    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_2
    const/16 v17, 0x0

    :try_start_5
    const-string/jumbo v18, "third-party-apps"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-static {v10}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v13}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v5, :cond_3

    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    :cond_3
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    move-object v4, v5

    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v17

    move-object v4, v5

    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v6    # "currHash":Ljava/lang/String;
    .end local v7    # "currPackage":Ljava/lang/String;
    .end local v11    # "isUnsigned":Z
    .end local v12    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v14    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_0
    move-exception v17

    :goto_3
    if-eqz v4, :cond_5

    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    :cond_5
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_6
    :goto_4
    throw v17

    :catch_2
    move-exception v18

    goto :goto_4

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v17

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v17

    move-object v4, v5

    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .restart local v8    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v17

    goto :goto_2

    .end local v8    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v8

    goto :goto_1

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v8

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method clearDataForUser(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "harmony_third_party_apps.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v0, "thirdPartyFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0    # "thirdPartyFile":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getHashValueFromPackageName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    invoke-direct {p0, p2}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    .local v0, "appDetails":Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .local v1, "hashValue":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    .end local v1    # "hashValue":Ljava/lang/String;
    :goto_1
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0

    .restart local v1    # "hashValue":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method public getPackageNameFromHash(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "hashValue"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    invoke-direct {p0, p2}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    .local v0, "appDetails":Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mHashValueToPkgNameMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .local v1, "pkgName":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    .end local v1    # "pkgName":Ljava/lang/String;
    :goto_1
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0

    .restart local v1    # "pkgName":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method public getThirdPartyApps(I)Ljava/util/List;
    .locals 3
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    .local v0, "appDetails":Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v1, "thirdPartyAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v1
.end method

.method public getUnknownSourcesPackages(I)Ljava/util/List;
    .locals 3
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    .local v0, "appDetails":Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v1
.end method

.method handlePackagesChanged(I)V
    .locals 10
    .param p1, "userHandle"    # I

    .prologue
    const/4 v2, 0x0

    .local v2, "isAnyPackageRemoved":Z
    const/4 v3, 0x0

    .local v3, "isCurrentPackageRemoved":Z
    iget-object v6, p0, Lcom/android/server/HarmonyEASService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .local v5, "pm":Landroid/content/pm/PackageManager;
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "pkgIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "currPackage":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    if-nez v6, :cond_1

    const/4 v3, 0x1

    const/4 v2, 0x1

    :cond_1
    :goto_1
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {p0, v0, p1}, Lcom/android/server/HarmonyEASService;->removeInstallationPackageExtras(Ljava/lang/String;I)V

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .end local v0    # "currPackage":Ljava/lang/String;
    .end local v4    # "pkgIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .restart local v0    # "currPackage":Ljava/lang/String;
    .restart local v4    # "pkgIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x1

    const/4 v2, 0x1

    goto :goto_1

    .end local v0    # "currPackage":Ljava/lang/String;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    if-eqz v2, :cond_3

    :try_start_3
    iget-object v6, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p1, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method declared-synchronized handleUserChanged(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isPackageUnknownSource(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "result":Z
    invoke-direct {p0, p2}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    .local v0, "appDetails":Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public removeInstallationPackage(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_1

    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .local v2, "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, v3}, Lcom/android/server/HarmonyEASService;->removeInstallationPackageExtras(Ljava/lang/String;I)V

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/HarmonyEASService;->removeInstallationPackageExtras(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public removeInstallationPackageExtras(Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    invoke-direct {p0, p2}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    .local v0, "appDetails":Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    .local v2, "thirdPartyPackageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mHashValueToPkgNameMap:Ljava/util/HashMap;

    .local v1, "hashValueToPkgNameMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    .local v3, "unknownPackageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p2, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public setInstallationPackageHashValue(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "hashValue"    # Ljava/lang/String;
    .param p3, "source"    # I
    .param p4, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    if-eq v4, p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    .local v1, "updateForAllUsers":Z
    const/4 v3, 0x0

    .local v3, "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    const/4 v4, -0x1

    if-ne v4, p4, :cond_2

    iget-object v4, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .end local v3    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    check-cast v3, Ljava/util/ArrayList;

    .restart local v3    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :cond_2
    if-eqz v1, :cond_3

    const-string v4, "HarmonyEASService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating for all "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/HarmonyEASService;->addHashForPackage(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_3
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/HarmonyEASService;->addHashForPackage(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setInstallationPackageUnknown(Ljava/lang/String;II)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "source"    # I
    .param p3, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    if-eq v4, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    .local v1, "updateForAllUsers":Z
    const/4 v3, 0x0

    .local v3, "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    const/4 v4, -0x1

    if-ne v4, p3, :cond_2

    iget-object v4, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .end local v3    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    check-cast v3, Ljava/util/ArrayList;

    .restart local v3    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :cond_2
    if-eqz v1, :cond_3

    const-string v4, "HarmonyEASService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating for all "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1, v4}, Lcom/android/server/HarmonyEASService;->addPackageAsUnknown(Ljava/lang/String;I)V

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/android/server/HarmonyEASService;->addPackageAsUnknown(Ljava/lang/String;I)V

    goto :goto_0
.end method

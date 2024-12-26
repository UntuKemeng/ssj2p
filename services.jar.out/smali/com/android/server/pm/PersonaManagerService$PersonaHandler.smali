.class Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
.super Landroid/os/Handler;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaHandler"
.end annotation


# static fields
.field private static final HANDLER_TAG:Ljava/lang/String; = "PersonaManagerServiceHandler"

.field public static final WAKE_LOCK_FLAG:Ljava/lang/String; = "flag"

.field public static final WAKE_LOCK_PACKAGE:Ljava/lang/String; = "package"

.field public static final WAKE_LOCK_PID:Ljava/lang/String; = "pid"

.field public static final WAKE_LOCK_TYPE:Ljava/lang/String; = "type"

.field public static final WAKE_LOCK_UID:Ljava/lang/String; = "uid"


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 4922
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 4923
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4924
    const-string v0, "PersonaHandler"

    # invokes: Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$1300(Ljava/lang/String;)I

    .line 4926
    return-void
.end method

.method static synthetic access$9000(Lcom/android/server/pm/PersonaManagerService$PersonaHandler;I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    .param p1, "x1"    # I

    .prologue
    .line 4913
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v0

    return-object v0
.end method

.method private filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .locals 7
    .param p1, "containerId"    # I

    .prologue
    .line 6249
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->xmlnotParsedforFOTA:Z
    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->access$4000(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->access$4200(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_1

    .line 6250
    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->parseEnterprisedataXml()V

    .line 6253
    :cond_1
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->access$4200(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 6254
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->access$4200(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 6255
    .local v3, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v4

    .line 6256
    .local v4, "pList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 6257
    .local v0, "i":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_3

    .line 6265
    .end local v0    # "i":Ljava/lang/Integer;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v4    # "pList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_0
    return-object v3

    .line 6263
    :cond_4
    const-string v5, "PersonaManagerService"

    const-string/jumbo v6, "filterTypeByContainerId mTypeList is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6265
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private parseEnterprisedataXml()V
    .locals 9

    .prologue
    .line 6217
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->xmlnotParsedforFOTA:Z
    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->access$4000(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6218
    const/4 v3, 0x0

    .line 6220
    .local v3, "in":Ljava/io/InputStream;
    :try_start_0
    const-string v6, "PersonaManagerService"

    const-string/jumbo v7, "reading from xml resource"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6221
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/pm/PersonaManagerService;->TYPE_FILE_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$4100()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "enterprisedata.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6223
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 6224
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6225
    .end local v3    # "in":Ljava/io/InputStream;
    .local v4, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 6226
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 6227
    new-instance v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    invoke-direct {v1, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 6228
    .local v1, "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    invoke-virtual {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->readFromXml()V

    .line 6229
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getTypeList()Ljava/util/List;

    move-result-object v7

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;
    invoke-static {v6, v7}, Lcom/android/server/pm/PersonaManagerService;->access$4202(Lcom/android/server/pm/PersonaManagerService;Ljava/util/List;)Ljava/util/List;

    .line 6230
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v7, 0x0

    # setter for: Lcom/android/server/pm/PersonaManagerService;->xmlnotParsedforFOTA:Z
    invoke-static {v6, v7}, Lcom/android/server/pm/PersonaManagerService;->access$4002(Lcom/android/server/pm/PersonaManagerService;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v4

    .line 6238
    .end local v1    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "in":Ljava/io/InputStream;
    :goto_0
    if-eqz v3, :cond_0

    .line 6240
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 6246
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "in":Ljava/io/InputStream;
    :cond_0
    :goto_1
    return-void

    .line 6232
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "in":Ljava/io/InputStream;
    :cond_1
    :try_start_3
    const-string v6, "PersonaManagerService"

    const-string v7, "Failed to find enterprisedata.xml in system container"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 6234
    .end local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 6235
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6236
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse enterprisedata - Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 6238
    if-eqz v3, :cond_0

    .line 6240
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 6241
    :catch_1
    move-exception v6

    goto :goto_1

    .line 6238
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_2

    .line 6240
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 6242
    :cond_2
    :goto_4
    throw v6

    .line 6241
    .restart local v2    # "file":Ljava/io/File;
    :catch_2
    move-exception v6

    goto :goto_1

    .end local v2    # "file":Ljava/io/File;
    :catch_3
    move-exception v7

    goto :goto_4

    .line 6238
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_3

    .line 6234
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 126
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4929
    const-string v4, "PersonaHandler"

    # invokes: Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$1300(Ljava/lang/String;)I

    .line 4930
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 6195
    :cond_0
    :goto_0
    :pswitch_0
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    and-int/lit16 v4, v4, 0x1388

    const/16 v5, 0x1388

    if-ne v4, v5, :cond_1

    .line 6197
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    add-int/lit16 v14, v4, -0x1388

    .line 6202
    .local v14, "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->propagateOnSessionExpired(I)V

    .line 6204
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v90

    .line 6205
    .local v90, "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v90, :cond_1

    move-object/from16 v0, v90

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v4, :cond_1

    .line 6206
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    .line 6207
    .local v33, "currentUser":Ljava/lang/Integer;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v90

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    if-eq v4, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v90

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6208
    const-string v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "locking persona due to session expiry."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6209
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaNewEvent;->USER_UNLOCK:Landroid/content/pm/PersonaNewEvent;

    move-object/from16 v0, v90

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Landroid/content/pm/PersonaState;

    .line 6210
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/16 v5, 0x2648

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killTimer(II)V
    invoke-static {v4, v14, v5}, Lcom/android/server/pm/PersonaManagerService;->access$2200(Lcom/android/server/pm/PersonaManagerService;II)V

    .line 6214
    .end local v14    # "personaId":I
    .end local v33    # "currentUser":Ljava/lang/Integer;
    .end local v90    # "pi":Landroid/content/pm/PersonaInfo;
    :cond_1
    :goto_1
    return-void

    .line 4933
    :pswitch_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v45, v0

    .line 4934
    .local v45, "event":I
    if-eqz v45, :cond_0

    .line 4935
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v89

    .line 4936
    .local v89, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v89 .. v89}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .local v53, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Landroid/content/pm/PersonaInfo;

    .line 4937
    .local v78, "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v78, :cond_2

    .line 4938
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$1400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v78

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/Long;

    .line 4939
    .local v52, "i":Ljava/lang/Long;
    if-eqz v52, :cond_2

    .line 4940
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_CANCEL_TIMER_IN_USER_ACTIVITY called :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v78

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4941
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v78

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v8, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->scheduleTimer(IZ)V
    invoke-static {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->access$1500(Lcom/android/server/pm/PersonaManagerService;IZ)V

    goto :goto_2

    .line 4949
    .end local v45    # "event":I
    .end local v52    # "i":Ljava/lang/Long;
    .end local v53    # "i$":Ljava/util/Iterator;
    .end local v78    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v89    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :pswitch_2
    sget-object v4, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v4}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Landroid/os/PersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4951
    :cond_3
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_CALL_KNOX_HELP_POPUP called :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4952
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 4953
    .restart local v14    # "personaId":I
    new-instance v60, Landroid/content/Intent;

    invoke-direct/range {v60 .. v60}, Landroid/content/Intent;-><init>()V

    .line 4954
    .local v60, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.sec.knox.containeragent2"

    const-string v8, "com.sec.knox.containeragent2.ui.help.KnoxHelpLauncher"

    invoke-direct {v4, v5, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4956
    const/high16 v4, 0x10000000

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4958
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v14}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v60

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4959
    :catch_0
    move-exception v38

    .line 4960
    .local v38, "e":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PersonaHandler > MSG_CALL_KNOX_HELP_POPUP Exception: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4966
    .end local v14    # "personaId":I
    .end local v38    # "e":Ljava/lang/Exception;
    .end local v60    # "intent":Landroid/content/Intent;
    :pswitch_3
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_SCHEDULE_TIMER_IN_HANDLER called :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4967
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 4968
    .restart local v14    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->scheduleTimer(IZ)V
    invoke-static {v4, v14, v5}, Lcom/android/server/pm/PersonaManagerService;->access$1500(Lcom/android/server/pm/PersonaManagerService;IZ)V

    goto/16 :goto_0

    .line 4972
    .end local v14    # "personaId":I
    :pswitch_4
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_STOP_TIMER called :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4973
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 4974
    .restart local v14    # "personaId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v50, v0

    .line 4975
    .local v50, "force":I
    const/4 v4, 0x1

    move/from16 v0, v50

    if-eq v0, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z
    invoke-static {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->access$1600(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4976
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killTimer(I)V
    invoke-static {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->access$1700(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .line 4981
    .end local v14    # "personaId":I
    .end local v50    # "force":I
    :pswitch_5
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_LOCK_TIME_EXPIRED called :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4982
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 4983
    .restart local v14    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killTimer(IZ)V
    invoke-static {v4, v14, v5}, Lcom/android/server/pm/PersonaManagerService;->access$1800(Lcom/android/server/pm/PersonaManagerService;IZ)V

    .line 4984
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z
    invoke-static {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->access$1600(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4985
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->changeStateAndSwitch(I)V
    invoke-static {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->access$1900(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .line 4990
    .end local v14    # "personaId":I
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Bundle;

    .line 4991
    .local v26, "b":Landroid/os/Bundle;
    const-string/jumbo v4, "type"

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v119

    .line 4992
    .local v119, "type":Z
    const-string/jumbo v4, "flag"

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v49

    .line 4993
    .local v49, "flag":I
    const-string/jumbo v4, "uid"

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v120

    .line 4994
    .local v120, "uid":I
    const-string/jumbo v4, "pid"

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v91

    .line 4995
    .local v91, "pid":I
    invoke-static/range {v120 .. v120}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v122

    .line 4996
    .local v122, "userId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v119

    move/from16 v1, v49

    move/from16 v2, v120

    move/from16 v3, v122

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->handleWakeLockChange(ZIII)V

    goto/16 :goto_0

    .line 5000
    .end local v26    # "b":Landroid/os/Bundle;
    .end local v49    # "flag":I
    .end local v91    # "pid":I
    .end local v119    # "type":Z
    .end local v120    # "uid":I
    .end local v122    # "userId":I
    :pswitch_7
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "MSG_ACTION_SCREEN_OFF called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5002
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$1400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 5003
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v8, 0x1

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mScreenOff:Z
    invoke-static {v4, v8}, Lcom/android/server/pm/PersonaManagerService;->access$2002(Lcom/android/server/pm/PersonaManagerService;Z)Z

    .line 5004
    new-instance v60, Landroid/content/Intent;

    const-string v4, "com.samsung.knox.kss.screenOff"

    move-object/from16 v0, v60

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5005
    .restart local v60    # "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v8, "com.samsung.knox.kss"

    const-string v9, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v4, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5006
    const-string/jumbo v4, "screenOff"

    const/4 v8, 0x1

    move-object/from16 v0, v60

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5009
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v89

    .line 5010
    .restart local v89    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v89 .. v89}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Landroid/content/pm/PersonaInfo;

    .line 5011
    .restart local v78    # "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v78, :cond_5

    .line 5012
    const-string v4, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PID:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v78

    iget v9, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5013
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mKeyguard:Lcom/android/server/pm/KnoxKeyguardDelegate;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/KnoxKeyguardDelegate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/KnoxKeyguardDelegate;->getVisibleKeyguardOwner()I

    move-result v122

    .line 5014
    .restart local v122    # "userId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getForegroundUser()I

    move-result v4

    move/from16 v0, v122

    if-ne v0, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getForegroundUser()I

    move-result v4

    move-object/from16 v0, v78

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    if-ne v4, v8, :cond_6

    .line 5015
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    new-instance v8, Landroid/os/UserHandle;

    move-object/from16 v0, v78

    iget v9, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v60

    invoke-virtual {v4, v0, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5017
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v78

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v8}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTime(I)J

    move-result-wide v110

    .line 5018
    .local v110, "sessionLength":J
    const-wide/16 v8, 0x0

    cmp-long v4, v110, v8

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v78

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z
    invoke-static {v4, v8}, Lcom/android/server/pm/PersonaManagerService;->access$1600(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 5019
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v8, 0x4

    if-ne v4, v8, :cond_7

    .line 5020
    const-string v4, "PersonaManagerServiceHandler"

    const-string v8, "Screen Off Reason Check, OFF_BECAUSE_OF_PROX_SENSOR!"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 5042
    .end local v53    # "i$":Ljava/util/Iterator;
    .end local v60    # "intent":Landroid/content/Intent;
    .end local v78    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v89    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v110    # "sessionLength":J
    .end local v122    # "userId":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 5022
    .restart local v53    # "i$":Ljava/util/Iterator;
    .restart local v60    # "intent":Landroid/content/Intent;
    .restart local v78    # "pInfo":Landroid/content/pm/PersonaInfo;
    .restart local v89    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v110    # "sessionLength":J
    .restart local v122    # "userId":I
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v78

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->changeStateAndSwitch(I)V
    invoke-static {v4, v8}, Lcom/android/server/pm/PersonaManagerService;->access$1900(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_3

    .line 5024
    :cond_8
    move-object/from16 v0, v78

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    if-eqz v4, :cond_9

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v8, 0x2

    if-ne v4, v8, :cond_9

    .line 5026
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, "knox.power_button_instantly_locks"

    const/4 v9, 0x0

    move-object/from16 v0, v78

    iget v10, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v4, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v69

    .line 5029
    .local v69, "lockinstantly":I
    if-lez v69, :cond_5

    .line 5030
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v78

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->changeStateAndSwitch(I)V
    invoke-static {v4, v8}, Lcom/android/server/pm/PersonaManagerService;->access$1900(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_3

    .line 5031
    .end local v69    # "lockinstantly":I
    :cond_9
    move-object/from16 v0, v78

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v8, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v78

    iget v9, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v8, v9}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_5

    const-wide/16 v8, 0x0

    cmp-long v4, v110, v8

    if-lez v4, :cond_5

    .line 5033
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    .line 5034
    .restart local v33    # "currentUser":Ljava/lang/Integer;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v78

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    if-eq v4, v8, :cond_5

    .line 5035
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    const/16 v8, 0x16

    invoke-virtual {v4, v8}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v70

    .line 5036
    .local v70, "message":Landroid/os/Message;
    move-object/from16 v0, v78

    iget v4, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, v70

    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 5037
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    move-object/from16 v0, v70

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .line 5042
    .end local v33    # "currentUser":Ljava/lang/Integer;
    .end local v70    # "message":Landroid/os/Message;
    .end local v78    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v110    # "sessionLength":J
    .end local v122    # "userId":I
    :cond_a
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 5046
    .end local v53    # "i$":Ljava/util/Iterator;
    .end local v60    # "intent":Landroid/content/Intent;
    .end local v89    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :pswitch_8
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "MSG_ACTION_SCREEN_ON called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5047
    new-instance v60, Landroid/content/Intent;

    const-string v4, "com.samsung.knox.kss.screenOn"

    move-object/from16 v0, v60

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5048
    .restart local v60    # "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.samsung.knox.kss"

    const-string v8, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v4, v5, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5049
    const-string/jumbo v4, "screenOn"

    const/4 v5, 0x1

    move-object/from16 v0, v60

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5050
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mScreenOff:Z
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$2002(Lcom/android/server/pm/PersonaManagerService;Z)Z

    .line 5051
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mKeyguard:Lcom/android/server/pm/KnoxKeyguardDelegate;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/KnoxKeyguardDelegate;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 5052
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getFocusedUser()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mKeyguard:Lcom/android/server/pm/KnoxKeyguardDelegate;
    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/KnoxKeyguardDelegate;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/KnoxKeyguardDelegate;->getVisibleKeyguardOwner()I

    move-result v5

    if-eq v4, v5, :cond_b

    .line 5053
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getFocusedUser :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v8}, Lcom/android/server/pm/PersonaManagerService;->getFocusedUser()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/ getVisibleKeyguardOwner :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mKeyguard:Lcom/android/server/pm/KnoxKeyguardDelegate;
    invoke-static {v8}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/KnoxKeyguardDelegate;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/pm/KnoxKeyguardDelegate;->getVisibleKeyguardOwner()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5054
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "KnoxKeyguard will be hidden!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5055
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->hideKeyguardIfNeeded()V

    .line 5058
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$1400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 5059
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v89

    .line 5060
    .restart local v89    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v89 .. v89}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53    # "i$":Ljava/util/Iterator;
    :cond_c
    :goto_4
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Landroid/content/pm/PersonaInfo;

    .line 5061
    .restart local v78    # "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v78, :cond_c

    .line 5062
    const-string v4, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PID:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v78

    iget v9, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5063
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mKeyguard:Lcom/android/server/pm/KnoxKeyguardDelegate;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/KnoxKeyguardDelegate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/KnoxKeyguardDelegate;->getVisibleKeyguardOwner()I

    move-result v122

    .line 5064
    .restart local v122    # "userId":I
    const-string v4, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "userId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v122

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5065
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getForegroundUser()I

    move-result v4

    move/from16 v0, v122

    if-ne v0, v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getForegroundUser()I

    move-result v4

    move-object/from16 v0, v78

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    if-ne v4, v8, :cond_d

    .line 5066
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    new-instance v8, Landroid/os/UserHandle;

    move-object/from16 v0, v78

    iget v9, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v60

    invoke-virtual {v4, v0, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5068
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v122

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->isUserHasTrust(I)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v8, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    move/from16 v0, v122

    invoke-virtual {v4, v8, v0}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 5069
    const-string v4, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "when screen on, dismiss keyguard for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v122

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5070
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v122

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->dismissPersonaKeyGuard(I)V

    .line 5074
    :cond_d
    move-object/from16 v0, v78

    iget v14, v0, Landroid/content/pm/PersonaInfo;->id:I

    .line 5075
    .restart local v14    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTime(I)J

    move-result-wide v110

    .line 5076
    .restart local v110    # "sessionLength":J
    move-object/from16 v0, v78

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v8, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v78

    iget v9, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v8, v9}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 5077
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/16 v8, 0x2648

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killTimer(II)V
    invoke-static {v4, v14, v8}, Lcom/android/server/pm/PersonaManagerService;->access$2200(Lcom/android/server/pm/PersonaManagerService;II)V

    .line 5080
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->isSessionExpired(I)Z

    move-result v4

    if-nez v4, :cond_c

    const-wide/16 v8, 0x0

    cmp-long v4, v110, v8

    if-lez v4, :cond_c

    .line 5081
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v76

    .line 5082
    .local v76, "now":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->getPersonaBackgroundTime(I)J

    move-result-wide v64

    .line 5083
    .local v64, "lastTime":J
    sub-long v36, v76, v64

    .line 5085
    .local v36, "duration":J
    sub-long v116, v110, v36

    .line 5086
    .local v116, "timeRemaining":J
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "timeRemaining: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v116

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5088
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    or-int/lit16 v8, v14, 0x1388

    invoke-virtual {v4, v8}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v70

    .line 5089
    .restart local v70    # "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    or-int/lit16 v8, v14, 0x1388

    invoke-virtual {v4, v8}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->removeMessages(I)V

    .line 5090
    const-wide/16 v8, 0x1

    cmp-long v4, v116, v8

    if-gez v4, :cond_f

    const-wide/16 v116, 0x0

    .line 5091
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    move-object/from16 v0, v70

    move-wide/from16 v1, v116

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_4

    .line 5096
    .end local v14    # "personaId":I
    .end local v36    # "duration":J
    .end local v53    # "i$":Ljava/util/Iterator;
    .end local v64    # "lastTime":J
    .end local v70    # "message":Landroid/os/Message;
    .end local v76    # "now":J
    .end local v78    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v89    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v110    # "sessionLength":J
    .end local v116    # "timeRemaining":J
    .end local v122    # "userId":I
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .restart local v53    # "i$":Ljava/util/Iterator;
    .restart local v89    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_10
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    .line 5100
    .end local v53    # "i$":Ljava/util/Iterator;
    .end local v60    # "intent":Landroid/content/Intent;
    .end local v89    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :pswitch_9
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "MSG_SETTINGS_OBSERVER_TRIGGERED called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5101
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    .line 5102
    .restart local v33    # "currentUser":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v89

    .line 5103
    .restart local v89    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v89 .. v89}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53    # "i$":Ljava/util/Iterator;
    :cond_11
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Landroid/content/pm/PersonaInfo;

    .line 5104
    .restart local v78    # "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v78, :cond_11

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v78

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    if-ne v4, v5, :cond_11

    .line 5105
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v78

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v8, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->scheduleTimer(IZ)V
    invoke-static {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->access$1500(Lcom/android/server/pm/PersonaManagerService;IZ)V

    goto/16 :goto_0

    .line 5113
    .end local v33    # "currentUser":Ljava/lang/Integer;
    .end local v53    # "i$":Ljava/util/Iterator;
    .end local v78    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v89    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :pswitch_a
    :try_start_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v123, v0

    .line 5114
    .local v123, "userid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v123

    # invokes: Lcom/android/server/pm/PersonaManagerService;->checkIfAdminHasBeenRemoved(I)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$2300(Lcom/android/server/pm/PersonaManagerService;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 5115
    .end local v123    # "userid":I
    :catch_1
    move-exception v38

    .line 5116
    .restart local v38    # "e":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot process DPM state change broadcast :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v38 .. v38}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5121
    .end local v38    # "e":Ljava/lang/Exception;
    :pswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v121, v0

    .line 5122
    .local v121, "userHandle":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2400(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v52

    .line 5123
    .local v52, "i":I
    :goto_5
    if-lez v52, :cond_12

    .line 5124
    add-int/lit8 v52, v52, -0x1

    .line 5126
    :try_start_6
    const-string v4, "PersonaManagerService"

    const-string v5, " sending remove persona event to system observers "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5127
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2400(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v52

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ISystemPersonaObserver;

    move/from16 v0, v121

    invoke-interface {v4, v0}, Landroid/content/pm/ISystemPersonaObserver;->onRemovePersona(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    .line 5128
    :catch_2
    move-exception v39

    .line 5131
    .local v39, "e2":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception Caught:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v39 .. v39}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 5134
    .end local v39    # "e2":Ljava/lang/Exception;
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2400(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_0

    .line 5138
    .end local v52    # "i":I
    .end local v121    # "userHandle":I
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getWallpaperManagerLocked()Lcom/android/server/wallpaper/WallpaperManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2500(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 5139
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getWallpaperManagerLocked()Lcom/android/server/wallpaper/WallpaperManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2500(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadKnoxWallpaperSettings(I)V

    .line 5141
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->handleSPOKnoxContainerLaunch(Landroid/os/Message;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$2600(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 5145
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->handleSPOPersonaActive(Landroid/os/Message;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$2700(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 5149
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->handleSPOResetPersona(Landroid/os/Message;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$2800(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 5153
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->handleSPOStateChange(Landroid/os/Message;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$2900(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 5157
    :pswitch_10
    const-string v4, "PersonaManagerService"

    const-string v5, "PMS. MSG_BROADCAST_KNOX_MODE_CHANGE_OBSERVER"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5158
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v121, v0

    .line 5159
    .restart local v121    # "userHandle":I
    new-instance v60, Landroid/content/Intent;

    const-string v4, "com.sec.knox.container.INTENT_KNOX_USER_CHANGED"

    move-object/from16 v0, v60

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5160
    .restart local v60    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "user_id"

    move-object/from16 v0, v60

    move/from16 v1, v121

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5161
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v60

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5162
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mIKnoxModeChangeObserver:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3000(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v52

    .line 5163
    .restart local v52    # "i":I
    :goto_6
    if-lez v52, :cond_14

    .line 5164
    add-int/lit8 v52, v52, -0x1

    .line 5166
    :try_start_7
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " sending onKnoxModeChange persona event to knox observers during switch #"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v52

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5167
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mIKnoxModeChangeObserver:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3000(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v52

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/content/pm/IKnoxModeChangeObserver;

    move/from16 v0, v121

    invoke-interface {v4, v0}, Landroid/content/pm/IKnoxModeChangeObserver;->onKnoxModeChange(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_6

    .line 5168
    :catch_3
    move-exception v46

    .line 5171
    .local v46, "exK":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception Caught during onKnoxModeChange:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v46 .. v46}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 5174
    .end local v46    # "exK":Ljava/lang/Exception;
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mIKnoxModeChangeObserver:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3000(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_0

    .line 5179
    .end local v52    # "i":I
    .end local v60    # "intent":Landroid/content/Intent;
    .end local v121    # "userHandle":I
    :pswitch_11
    const-string v4, "PersonaManagerService"

    const-string v5, "PMS. MSG_PROCESS_FOCUSED_USER_CHANGE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5180
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    .line 5184
    .local v32, "currentFocusedUser":I
    goto/16 :goto_0

    .line 5188
    .end local v32    # "currentFocusedUser":I
    :pswitch_12
    const-string v4, "PersonaManagerService"

    const-string v5, "PMS. MSG_BROADCAST_KNOX_MODE_STATE_NOT_ACTIVE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5189
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v121, v0

    .line 5190
    .restart local v121    # "userHandle":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v121

    # invokes: Lcom/android/server/pm/PersonaManagerService;->broadcastKnoxModeChangeIntent(I)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$3100(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .line 5194
    .end local v121    # "userHandle":I
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPartialsForPrune:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->access$3200(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    # invokes: Lcom/android/server/pm/PersonaManagerService;->removePartialContainer(Ljava/util/ArrayList;)V
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$3300(Lcom/android/server/pm/PersonaManagerService;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 5198
    :pswitch_14
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 5199
    .restart local v14    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getForegroundUser()I

    move-result v4

    if-ne v4, v14, :cond_0

    .line 5200
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->updateCurrentUserPolicy(I)V
    invoke-static {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->access$3400(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .line 5207
    .end local v14    # "personaId":I
    :pswitch_15
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getTimaService()Landroid/service/tima/ITimaService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3600(Lcom/android/server/pm/PersonaManagerService;)Landroid/service/tima/ITimaService;

    move-result-object v4

    invoke-interface {v4}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "2.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    # setter for: Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3502(Z)Z

    .line 5208
    const-string v4, "PersonaManagerService.Tima"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Check Tima 2.0 : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$3500()Z

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5213
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {}, Lcom/android/server/pm/TimaHelper;->getInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v5

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$3702(Lcom/android/server/pm/PersonaManagerService;Lcom/android/server/pm/TimaHelper;)Lcom/android/server/pm/TimaHelper;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 5219
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v87

    .line 5220
    .local v87, "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v87 .. v87}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    :cond_15
    :goto_8
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v90

    check-cast v90, Landroid/content/pm/PersonaInfo;

    .line 5222
    .restart local v90    # "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v90, :cond_15

    move-object/from16 v0, v90

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->partial:Z

    const/4 v5, 0x1

    if-eq v4, v5, :cond_15

    move-object/from16 v0, v90

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    const/4 v5, 0x1

    if-eq v4, v5, :cond_15

    move-object/from16 v0, v90

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->setupComplete:Z

    if-eqz v4, :cond_15

    .line 5225
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1b

    .line 5226
    move-object/from16 v0, v90

    iget-object v4, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    if-eqz v4, :cond_16

    move-object/from16 v0, v90

    iget-object v4, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 5227
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v90

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->migrateAndCleanupSharedPreferences(I)V
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$3800(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 5229
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v90

    iget-object v5, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 5230
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 5232
    const/4 v4, 0x1

    :try_start_9
    move-object/from16 v0, v90

    iput-boolean v4, v0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    .line 5233
    const-string v4, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PMS systemReady: setting upgradeInProgress for ContainerId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v90

    iget v9, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; pi.upgradeInProgress = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v90

    iget-boolean v9, v0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5234
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3900(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    move-object/from16 v0, v90

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, v90

    invoke-virtual {v4, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5235
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 5237
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->xmlnotParsedforFOTA:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4000(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 5238
    const/16 v55, 0x0

    .line 5240
    .local v55, "in":Ljava/io/InputStream;
    :try_start_a
    const-string v4, "PersonaManagerService"

    const-string/jumbo v5, "reading from xml resource for fota"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5241
    new-instance v48, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/pm/PersonaManagerService;->TYPE_FILE_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$4100()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "enterprisedata.xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5243
    .local v48, "file":Ljava/io/File;
    invoke-virtual/range {v48 .. v48}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 5244
    new-instance v58, Ljava/io/FileInputStream;

    move-object/from16 v0, v58

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 5245
    .end local v55    # "in":Ljava/io/InputStream;
    .local v58, "in":Ljava/io/InputStream;
    :try_start_b
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v82

    .line 5246
    .local v82, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    move-object/from16 v0, v82

    move-object/from16 v1, v58

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 5247
    new-instance v44, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    move-object/from16 v0, v44

    move-object/from16 v1, v82

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5248
    .local v44, "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->readFromXml()V

    .line 5249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getTypeList()Ljava/util/List;

    move-result-object v5

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$4202(Lcom/android/server/pm/PersonaManagerService;Ljava/util/List;)Ljava/util/List;

    .line 5250
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/pm/PersonaManagerService;->xmlnotParsedforFOTA:Z
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$4002(Lcom/android/server/pm/PersonaManagerService;Z)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_16
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    move-object/from16 v55, v58

    .line 5258
    .end local v44    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    .end local v58    # "in":Ljava/io/InputStream;
    .end local v82    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v55    # "in":Ljava/io/InputStream;
    :goto_9
    if-eqz v55, :cond_18

    .line 5260
    :try_start_c
    invoke-virtual/range {v55 .. v55}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_14

    .line 5267
    .end local v48    # "file":Ljava/io/File;
    .end local v55    # "in":Ljava/io/InputStream;
    :cond_18
    :goto_a
    const/16 v47, 0x1

    .line 5269
    .local v47, "exist":Z
    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$300(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v4

    const-string v5, "com.google.android.webview"

    const/4 v8, 0x0

    move-object/from16 v0, v90

    iget v9, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v8, v9}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v21

    .line 5270
    .local v21, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v21, :cond_19

    .line 5271
    const/16 v47, 0x0

    .line 5273
    :cond_19
    const-string v4, "PersonaManagerService"

    const-string v5, "Webview package is in Knox container"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 5278
    .end local v21    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_b
    if-nez v47, :cond_1a

    .line 5279
    const-string v4, "PersonaManagerService"

    const-string v5, "Webview package is not in Knox container, hence install that package"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5280
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v90

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const-string v8, "com.google.android.webview"

    # invokes: Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I
    invoke-static {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->access$4300(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;)I

    .line 5282
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v90

    # invokes: Lcom/android/server/pm/PersonaManagerService;->handleFOTAUpgrade(Landroid/content/pm/PersonaInfo;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$4400(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V

    .line 5285
    .end local v47    # "exist":Z
    :cond_1b
    move-object/from16 v0, v90

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v4, :cond_23

    .line 5287
    :try_start_e
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "calling SDP onBoot "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v90

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5288
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v56

    .line 5289
    .local v56, "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getSdpService()Lcom/android/server/SdpManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4500(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    move-object/from16 v0, v90

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/SdpManagerService;->onBoot(I)I

    move-result v4

    if-nez v4, :cond_29

    const/16 v27, 0x1

    .line 5290
    .local v27, "bootres":Z
    :goto_c
    invoke-static/range {v56 .. v57}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5291
    if-nez v27, :cond_1c

    .line 5292
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SDP on-boot failed. "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v90

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Lcom/android/sdp/exception/SdpVersionException; {:try_start_e .. :try_end_e} :catch_8

    .line 5344
    .end local v27    # "bootres":Z
    .end local v56    # "ident":J
    :cond_1c
    :goto_d
    move-object/from16 v0, v90

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    if-eqz v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v90

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v8, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isCMKExists(II)Z
    invoke-static {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->access$5000(Lcom/android/server/pm/PersonaManagerService;II)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 5346
    const-string v4, "PersonaManagerService"

    const-string v5, "Boot time recovery: CMK not found..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5347
    new-instance v124, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v124

    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 5348
    .local v124, "utils":Lcom/android/internal/widget/LockPatternUtils;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v90

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->getIsFingerAsSupplement(I)Z

    move-result v4

    if-nez v4, :cond_1d

    move-object/from16 v0, v90

    iget v4, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, v124

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->isFingerPrintLockscreen(I)Z

    move-result v4

    if-nez v4, :cond_1d

    move-object/from16 v0, v90

    iget v4, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, v124

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v4

    const v5, 0x61000

    if-ne v4, v5, :cond_1f

    .line 5351
    :cond_1d
    const-string v4, "PersonaManagerService"

    const-string v5, "Boot time recovery: Backup password of fingerprint has never enrolled so far..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5352
    const/4 v7, 0x0

    .line 5353
    .local v7, "resetToken":Ljava/lang/String;
    const/4 v6, 0x0

    .line 5355
    .local v6, "cmk":Ljava/lang/String;
    # getter for: Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$3500()Z

    move-result v4

    if-eqz v4, :cond_2f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v90

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getPasswordResetTokenFromTima20(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$4600(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v7

    .line 5358
    :goto_e
    if-eqz v7, :cond_1f

    .line 5359
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v90

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v8, 0x2

    move-object/from16 v0, v90

    iget v9, v0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;
    invoke-static {v4, v5, v7, v8, v9}, Lcom/android/server/pm/PersonaManagerService;->access$4800(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .line 5360
    if-eqz v6, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v90

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v8, 0x1

    move-object/from16 v0, v90

    iget v9, v0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->storeCMK(ILjava/lang/String;Ljava/lang/String;II)Z
    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/PersonaManagerService;->access$5100(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 5362
    const-string v4, "PersonaManagerService"

    const-string v5, "Boot time recovery: CMK restored successfully!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5364
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->zeroOut(Ljava/lang/String;)V
    invoke-static {v4, v7}, Lcom/android/server/pm/PersonaManagerService;->access$4900(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)V

    .line 5365
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->zeroOut(Ljava/lang/String;)V
    invoke-static {v4, v6}, Lcom/android/server/pm/PersonaManagerService;->access$4900(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)V

    .line 5371
    .end local v6    # "cmk":Ljava/lang/String;
    .end local v7    # "resetToken":Ljava/lang/String;
    .end local v124    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v90

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$1600(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 5373
    move-object/from16 v0, v90

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    if-nez v4, :cond_20

    .line 5374
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v90

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v8, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->setSdpActive(IZ)V
    invoke-static {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->access$5200(Lcom/android/server/pm/PersonaManagerService;IZ)V

    .line 5377
    :cond_20
    move-object/from16 v0, v90

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    if-nez v4, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    move-object/from16 v0, v90

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-eqz v4, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    move-object/from16 v0, v90

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-nez v4, :cond_23

    .line 5379
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v90

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_21

    .line 5380
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaNewEvent;->USER_LOCK:Landroid/content/pm/PersonaNewEvent;

    move-object/from16 v0, v90

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Landroid/content/pm/PersonaState;

    .line 5382
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    move-object/from16 v0, v90

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 5383
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    const/4 v8, 0x0

    move-object/from16 v0, v90

    iget v9, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v8, v9}, Lcom/android/server/pm/PersonaManagerService;->setAttribute(Landroid/content/pm/PersonaAttribute;ZI)Z

    .line 5385
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    move-object/from16 v0, v90

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 5386
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    const/4 v8, 0x0

    move-object/from16 v0, v90

    iget v9, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v8, v9}, Lcom/android/server/pm/PersonaManagerService;->setAttribute(Landroid/content/pm/PersonaAttribute;ZI)Z

    .line 5439
    :cond_23
    :goto_f
    move-object/from16 v0, v90

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    if-eqz v4, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mIsFOTAUpgrade:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5400(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-nez v4, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mIsAdminLock:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5500(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 5440
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " resetPersonaOnReboot:  resetting persona :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v90

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5441
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v90

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v8, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->startResetPersona(IZ)I
    invoke-static {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->access$5600(Lcom/android/server/pm/PersonaManagerService;IZ)I

    .line 5444
    :cond_24
    invoke-virtual/range {v90 .. v90}, Landroid/content/pm/PersonaInfo;->isSecureFileSystem()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 5445
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->CREATING:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v90

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 5447
    const/16 v71, 0x1

    .line 5448
    .local v71, "mountStatus":Z
    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5700(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v4

    move-object/from16 v0, v90

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/sec/knox/container/util/KnoxFileHandler;->isMounted(I)Z

    move-result v4

    if-nez v4, :cond_25

    .line 5449
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5700(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v8

    move-object/from16 v0, v90

    iget v9, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v10, 0x0

    invoke-virtual/range {v90 .. v90}, Landroid/content/pm/PersonaInfo;->isSecureStorageEnabled()Z

    move-result v11

    invoke-virtual/range {v90 .. v90}, Landroid/content/pm/PersonaInfo;->getTimaEcrytfsIndex()I

    move-result v12

    move-object/from16 v0, v90

    iget-boolean v13, v0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    invoke-virtual/range {v8 .. v13}, Lcom/sec/knox/container/util/KnoxFileHandler;->mountFS(ILjava/lang/String;ZIZ)Z

    move-result v71

    .line 5452
    :cond_25
    if-nez v71, :cond_35

    .line 5453
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File system not mounted successfully for"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v90

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    .line 5511
    .end local v71    # "mountStatus":Z
    :cond_26
    :goto_10
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "systemReady: getDeviceFirmwareVersion = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v8}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "; pi.fwversion = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v90

    iget-object v8, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5512
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_15

    .line 5513
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v90

    iget-object v5, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 5515
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pi.removePersona = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v90

    iget-boolean v8, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "; pi.state = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v90

    iget v9, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v8, v9}, Lcom/android/server/pm/PersonaManagerService;->getState(I)Landroid/content/pm/PersonaState;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5516
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->CREATING:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v90

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->DELETING:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v90

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_15

    .line 5518
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v90

    # invokes: Lcom/android/server/pm/PersonaManagerService;->upgradeContainer(Landroid/content/pm/PersonaInfo;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$5800(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V

    goto/16 :goto_8

    .line 5214
    .end local v87    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v90    # "pi":Landroid/content/pm/PersonaInfo;
    :catch_4
    move-exception v38

    .line 5215
    .restart local v38    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->printStackTrace()V

    .line 5216
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to get Tima instance - Exception: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 5235
    .end local v38    # "e":Ljava/lang/Exception;
    .restart local v87    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v90    # "pi":Landroid/content/pm/PersonaInfo;
    :catchall_2
    move-exception v4

    :try_start_10
    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    throw v4

    .line 5252
    .restart local v48    # "file":Ljava/io/File;
    .restart local v55    # "in":Ljava/io/InputStream;
    :cond_27
    :try_start_11
    const-string v4, "PersonaManagerService"

    const-string v5, "Failed to find enterprisedata.xml in system container"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto/16 :goto_9

    .line 5254
    .end local v48    # "file":Ljava/io/File;
    :catch_5
    move-exception v38

    .line 5255
    .restart local v38    # "e":Ljava/lang/Exception;
    :goto_11
    :try_start_12
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->printStackTrace()V

    .line 5256
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse enterprisedata - Exception: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 5258
    if-eqz v55, :cond_18

    .line 5260
    :try_start_13
    invoke-virtual/range {v55 .. v55}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6

    goto/16 :goto_a

    .line 5261
    :catch_6
    move-exception v4

    goto/16 :goto_a

    .line 5258
    .end local v38    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v4

    :goto_12
    if-eqz v55, :cond_28

    .line 5260
    :try_start_14
    invoke-virtual/range {v55 .. v55}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_15

    .line 5262
    :cond_28
    :goto_13
    throw v4

    .line 5274
    .end local v55    # "in":Ljava/io/InputStream;
    .restart local v47    # "exist":Z
    :catch_7
    move-exception v38

    .line 5275
    .restart local v38    # "e":Ljava/lang/Exception;
    const/16 v47, 0x0

    goto/16 :goto_b

    .line 5289
    .end local v38    # "e":Ljava/lang/Exception;
    .end local v47    # "exist":Z
    .restart local v56    # "ident":J
    :cond_29
    const/16 v27, 0x0

    goto/16 :goto_c

    .line 5294
    .end local v56    # "ident":J
    :catch_8
    move-exception v107

    .line 5295
    .local v107, "se":Lcom/android/sdp/exception/SdpVersionException;
    const-string v4, "PersonaManagerService"

    const-string v5, "SDP version mismatch. migration detected"

    move-object/from16 v0, v107

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5297
    move-object/from16 v0, v90

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    if-eqz v4, :cond_2e

    .line 5301
    const/16 v106, 0x0

    .line 5303
    .local v106, "rstToken":Ljava/lang/String;
    # getter for: Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$3500()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 5304
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v90

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getPasswordResetTokenFromTima20(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$4600(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v106

    .line 5308
    :goto_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v90

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v8, 0x2

    move-object/from16 v0, v90

    iget v9, v0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    move-object/from16 v0, v106

    # invokes: Lcom/android/server/pm/PersonaManagerService;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;
    invoke-static {v4, v5, v0, v8, v9}, Lcom/android/server/pm/PersonaManagerService;->access$4800(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .line 5310
    .restart local v6    # "cmk":Ljava/lang/String;
    if-eqz v6, :cond_2a

    .line 5311
    const/16 v34, 0x0

    .line 5312
    .local v34, "decodedCMK":[B
    move-object/from16 v0, v90

    iget v4, v0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_2d

    .line 5313
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    .line 5317
    :goto_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v56

    .line 5318
    .restart local v56    # "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getSdpService()Lcom/android/server/SdpManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4500(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    move-object/from16 v0, v90

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v8, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v4, v5, v8, v0}, Lcom/android/server/SdpManagerService;->onMigration(IZ[B)Z

    .line 5319
    invoke-static/range {v56 .. v57}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5321
    .end local v34    # "decodedCMK":[B
    .end local v56    # "ident":J
    :cond_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v106

    # invokes: Lcom/android/server/pm/PersonaManagerService;->zeroOut(Ljava/lang/String;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$4900(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)V

    .line 5322
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->zeroOut(Ljava/lang/String;)V
    invoke-static {v4, v6}, Lcom/android/server/pm/PersonaManagerService;->access$4900(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)V

    .line 5333
    .end local v6    # "cmk":Ljava/lang/String;
    .end local v106    # "rstToken":Ljava/lang/String;
    :goto_16
    :try_start_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v56

    .line 5334
    .restart local v56    # "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getSdpService()Lcom/android/server/SdpManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4500(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    move-object/from16 v0, v90

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/SdpManagerService;->onBoot(I)I

    move-result v4

    if-eqz v4, :cond_2b

    .line 5335
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SDP on-boot failed. "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v90

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5337
    :cond_2b
    invoke-static/range {v56 .. v57}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9

    goto/16 :goto_d

    .line 5338
    .end local v56    # "ident":J
    :catch_9
    move-exception v38

    .line 5339
    .restart local v38    # "e":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    const-string v5, "SDP on-boot failed"

    move-object/from16 v0, v107

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 5306
    .end local v38    # "e":Ljava/lang/Exception;
    .restart local v106    # "rstToken":Ljava/lang/String;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v90

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getPasswordResetTokenFromTima(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$4700(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v106

    goto/16 :goto_14

    .line 5315
    .restart local v6    # "cmk":Ljava/lang/String;
    .restart local v34    # "decodedCMK":[B
    :cond_2d
    const/4 v4, 0x0

    invoke-static {v6, v4}, Lcom/sec/knox/container/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v34

    goto :goto_15

    .line 5327
    .end local v6    # "cmk":Ljava/lang/String;
    .end local v34    # "decodedCMK":[B
    .end local v106    # "rstToken":Ljava/lang/String;
    :cond_2e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v56

    .line 5328
    .restart local v56    # "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getSdpService()Lcom/android/server/SdpManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4500(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    move-object/from16 v0, v90

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v8, v9}, Lcom/android/server/SdpManagerService;->onMigration(IZ[B)Z

    .line 5329
    invoke-static/range {v56 .. v57}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_16

    .line 5355
    .end local v56    # "ident":J
    .end local v107    # "se":Lcom/android/sdp/exception/SdpVersionException;
    .restart local v6    # "cmk":Ljava/lang/String;
    .restart local v7    # "resetToken":Ljava/lang/String;
    .restart local v124    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v90

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getPasswordResetTokenFromTima(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$4700(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_e

    .line 5390
    .end local v6    # "cmk":Ljava/lang/String;
    .end local v7    # "resetToken":Ljava/lang/String;
    .end local v124    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_30
    move-object/from16 v0, v90

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    if-eqz v4, :cond_23

    .line 5399
    const-string v4, "PersonaManagerService"

    const-string/jumbo v5, "inside systemReady keyguard is disabled sdp minor"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5400
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v90

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v8, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->setSdpActive(IZ)V
    invoke-static {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->access$5200(Lcom/android/server/pm/PersonaManagerService;IZ)V

    .line 5402
    const/16 v97, 0x0

    .line 5403
    .local v97, "pwdResetToken":Ljava/lang/String;
    # getter for: Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$3500()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 5404
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v90

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getPasswordResetTokenFromTima20(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$4600(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v97

    .line 5409
    :goto_17
    if-eqz v97, :cond_23

    .line 5410
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v90

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v8, 0x2

    move-object/from16 v0, v90

    iget v9, v0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    move-object/from16 v0, v97

    # invokes: Lcom/android/server/pm/PersonaManagerService;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;
    invoke-static {v4, v5, v0, v8, v9}, Lcom/android/server/pm/PersonaManagerService;->access$4800(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v31

    .line 5412
    .local v31, "containerMasterKey":Ljava/lang/String;
    if-eqz v31, :cond_34

    .line 5414
    const/16 v34, 0x0

    .line 5415
    .restart local v34    # "decodedCMK":[B
    move-object/from16 v0, v90

    iget v4, v0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_33

    .line 5416
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    .line 5420
    :goto_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v56

    .line 5421
    .restart local v56    # "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getSdpService()Lcom/android/server/SdpManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4500(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    move-object/from16 v0, v90

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, v34

    invoke-virtual {v4, v5, v0}, Lcom/android/server/SdpManagerService;->onDeviceUnlocked(I[B)Z

    move-result v4

    if-nez v4, :cond_31

    .line 5422
    const-string v4, "PersonaManagerService.KeyMgnt"

    const-string v5, "Failed to unlock SDP"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5424
    :cond_31
    invoke-static/range {v56 .. v57}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5425
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v34

    # invokes: Lcom/android/server/pm/PersonaManagerService;->zeroOut([B)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$5300(Lcom/android/server/pm/PersonaManagerService;[B)V

    .line 5426
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v31

    # invokes: Lcom/android/server/pm/PersonaManagerService;->zeroOut(Ljava/lang/String;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$4900(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 5406
    .end local v31    # "containerMasterKey":Ljava/lang/String;
    .end local v34    # "decodedCMK":[B
    .end local v56    # "ident":J
    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v90

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getPasswordResetTokenFromTima(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$4700(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v97

    goto :goto_17

    .line 5418
    .restart local v31    # "containerMasterKey":Ljava/lang/String;
    .restart local v34    # "decodedCMK":[B
    :cond_33
    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-static {v0, v4}, Lcom/sec/knox/container/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v34

    goto :goto_18

    .line 5432
    .end local v34    # "decodedCMK":[B
    :cond_34
    const-string v4, "PersonaManagerService"

    const-string v5, "CMK is NULL : can\'t unlock SDP"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 5455
    .end local v31    # "containerMasterKey":Ljava/lang/String;
    .end local v97    # "pwdResetToken":Ljava/lang/String;
    .restart local v71    # "mountStatus":Z
    :cond_35
    :try_start_16
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File system successfully mounted for"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v90

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5457
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4200(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4200(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_26

    .line 5458
    move-object/from16 v0, v90

    iget v4, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v30

    .line 5459
    .local v30, "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v30, :cond_26

    .line 5460
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v22

    .line 5461
    .local v22, "appInstallationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppRemoveList()Ljava/util/List;

    move-result-object v24

    .line 5462
    .local v24, "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Positive Delta for Knox upgrade : Before"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5463
    if-eqz v22, :cond_26

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_26

    .line 5464
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    move-object/from16 v0, v90

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v8}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v80

    .line 5466
    .local v80, "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App install list from PM for"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v90

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "::"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v80

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5467
    if-eqz v80, :cond_38

    invoke-interface/range {v80 .. v80}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_38

    .line 5468
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App install list from PM for"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v90

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " size::"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v80 .. v80}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5469
    invoke-interface/range {v80 .. v80}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v54

    .local v54, "i$":Ljava/util/Iterator;
    :cond_36
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Landroid/content/pm/PackageInfo;

    .line 5470
    .local v84, "personaApp":Landroid/content/pm/PackageInfo;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App installed for persona"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v84

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5471
    :goto_19
    move-object/from16 v0, v84

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 5472
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App installed for persona"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v84

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "present in Ent Install List;Remove"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5473
    move-object/from16 v0, v84

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_a

    goto :goto_19

    .line 5502
    .end local v22    # "appInstallationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v30    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v54    # "i$":Ljava/util/Iterator;
    .end local v80    # "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v84    # "personaApp":Landroid/content/pm/PackageInfo;
    :catch_a
    move-exception v38

    .line 5503
    .restart local v38    # "e":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to mount file system. "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 5476
    .end local v38    # "e":Ljava/lang/Exception;
    .restart local v22    # "appInstallationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v30    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v54    # "i$":Ljava/util/Iterator;
    .restart local v80    # "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_37
    :try_start_17
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Positive Delta for Knox upgrade:After"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5478
    .end local v54    # "i$":Ljava/util/Iterator;
    :cond_38
    if-eqz v22, :cond_26

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_26

    .line 5479
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Persona firmware version : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v90

    iget-object v8, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v8}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5480
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_26

    .line 5481
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v90

    iget-object v5, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 5483
    move-object/from16 v0, v90

    iget-object v4, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    if-nez v4, :cond_39

    .line 5484
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v90

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->migrateAndCleanupSharedPreferences(I)V
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$3800(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 5487
    :cond_39
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v54

    .restart local v54    # "i$":Ljava/util/Iterator;
    :goto_1a
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_a

    .line 5489
    .local v23, "appName":Ljava/lang/String;
    :try_start_18
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Application upgrade-Add : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5490
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v90

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, v23

    # invokes: Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I
    invoke-static {v4, v5, v0}, Lcom/android/server/pm/PersonaManagerService;->access$4300(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_b

    goto :goto_1a

    .line 5491
    :catch_b
    move-exception v38

    .line 5492
    .restart local v38    # "e":Ljava/lang/Exception;
    :try_start_19
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to install "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " for Persona "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_a

    goto :goto_1a

    .line 5506
    .end local v22    # "appInstallationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "appName":Ljava/lang/String;
    .end local v24    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v30    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v38    # "e":Ljava/lang/Exception;
    .end local v54    # "i$":Ljava/util/Iterator;
    .end local v71    # "mountStatus":Z
    .end local v80    # "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_3a
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Did not mount file system for superLocked persona "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v90

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " or due to container state."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 5527
    .end local v87    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v90    # "pi":Landroid/content/pm/PersonaInfo;
    :pswitch_16
    :try_start_1a
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, " MSG_BOOT_COMPLETE_RECEIVED : soft start personas "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5530
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mKeyguardUpdateMonitor:Lcom/android/server/pm/KnoxKeyguardUpdateMonitor;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5900(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/KnoxKeyguardUpdateMonitor;

    move-result-object v4

    if-eqz v4, :cond_3b

    .line 5531
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mKeyguardUpdateMonitor:Lcom/android/server/pm/KnoxKeyguardUpdateMonitor;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5900(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/KnoxKeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/KnoxKeyguardUpdateMonitor;->onBootComplete()V

    .line 5535
    :cond_3b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Landroid/os/PersonaManager;

    .line 5538
    .local v88, "personaManager":Landroid/os/PersonaManager;
    if-eqz v88, :cond_0

    .line 5539
    const/4 v4, 0x0

    move-object/from16 v0, v88

    invoke-virtual {v0, v4}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v87

    .line 5541
    .restart local v87    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v87, :cond_0

    invoke-interface/range {v87 .. v87}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 5542
    invoke-interface/range {v87 .. v87}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v85, v0

    .line 5543
    .local v85, "personaIds":[I
    const/16 v73, 0x0

    .line 5544
    .local v73, "n":I
    invoke-interface/range {v87 .. v87}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53    # "i$":Ljava/util/Iterator;
    move/from16 v74, v73

    .end local v53    # "i$":Ljava/util/Iterator;
    .end local v73    # "n":I
    .local v74, "n":I
    :cond_3c
    :goto_1b
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v90

    check-cast v90, Landroid/content/pm/PersonaInfo;

    .line 5545
    .restart local v90    # "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v90, :cond_3c

    .line 5547
    add-int/lit8 v73, v74, 0x1

    .end local v74    # "n":I
    .restart local v73    # "n":I
    move-object/from16 v0, v90

    iget v4, v0, Landroid/content/pm/PersonaInfo;->id:I

    aput v4, v85, v74

    .line 5549
    new-instance v40, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 5550
    .local v40, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    move-object/from16 v0, v90

    iget v4, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v75

    .line 5552
    .local v75, "ownerUid":I
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v41

    .line 5553
    .local v41, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v90

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v0, v75

    invoke-direct {v5, v0, v8}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v63

    .line 5554
    .local v63, "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_43

    .line 5555
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v90

    iget-object v5, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    .line 5556
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isVoiceCapable()Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$6000(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-eqz v4, :cond_3d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->isKioskContainerExistOnDevice()Z

    move-result v4

    if-nez v4, :cond_3d

    .line 5557
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string v5, "com.sec.knox.shortcutsms"

    const-string v8, "com.sec.knox.shortcutsms.PhoneShortcut"

    move-object/from16 v0, v90

    iget v9, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v10, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->enableComponents(Ljava/lang/String;Ljava/lang/String;IZ)V
    invoke-static {v4, v5, v8, v9, v10}, Lcom/android/server/pm/PersonaManagerService;->access$6100(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 5561
    :goto_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isSMSCapable()Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$6200(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 5562
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string v5, "com.sec.knox.shortcutsms"

    const-string v8, "com.sec.knox.shortcutsms.SMSShortcut"

    move-object/from16 v0, v90

    iget v9, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v10, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->enableComponents(Ljava/lang/String;Ljava/lang/String;IZ)V
    invoke-static {v4, v5, v8, v9, v10}, Lcom/android/server/pm/PersonaManagerService;->access$6100(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 5567
    :goto_1d
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Persona firmware version : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v90

    iget-object v8, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v8}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5568
    move-object/from16 v0, v90

    iget v4, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v30

    .line 5569
    .restart local v30    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v63, :cond_42

    if-eqz v30, :cond_42

    .line 5570
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getFOTADisableList()Ljava/util/List;

    move-result-object v15

    .line 5571
    .local v15, "FOTADisableAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_40

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_40

    .line 5572
    new-instance v95, Ljava/util/ArrayList;

    invoke-direct/range {v95 .. v95}, Ljava/util/ArrayList;-><init>()V

    .line 5573
    .local v95, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v54

    .restart local v54    # "i$":Ljava/util/Iterator;
    :goto_1e
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/String;

    .line 5574
    .local v59, "info":Ljava/lang/String;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FOTA Boot receiver AppUpgradeInfo: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v59

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5575
    move-object/from16 v0, v95

    move-object/from16 v1, v59

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_c

    goto :goto_1e

    .line 5648
    .end local v15    # "FOTADisableAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v30    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v40    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v41    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v54    # "i$":Ljava/util/Iterator;
    .end local v59    # "info":Ljava/lang/String;
    .end local v63    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v73    # "n":I
    .end local v75    # "ownerUid":I
    .end local v85    # "personaIds":[I
    .end local v87    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v88    # "personaManager":Landroid/os/PersonaManager;
    .end local v90    # "pi":Landroid/content/pm/PersonaInfo;
    .end local v95    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_c
    move-exception v38

    .line 5649
    .restart local v38    # "e":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " BootReceiver : Exception while softStartPersona() "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5559
    .end local v38    # "e":Ljava/lang/Exception;
    .restart local v40    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v41    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .restart local v63    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .restart local v73    # "n":I
    .restart local v75    # "ownerUid":I
    .restart local v85    # "personaIds":[I
    .restart local v87    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v88    # "personaManager":Landroid/os/PersonaManager;
    .restart local v90    # "pi":Landroid/content/pm/PersonaInfo;
    :cond_3d
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string v5, "com.sec.knox.shortcutsms"

    const-string v8, "com.sec.knox.shortcutsms.PhoneShortcut"

    move-object/from16 v0, v90

    iget v9, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v10, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->enableComponents(Ljava/lang/String;Ljava/lang/String;IZ)V
    invoke-static {v4, v5, v8, v9, v10}, Lcom/android/server/pm/PersonaManagerService;->access$6100(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_1c

    .line 5564
    :cond_3e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string v5, "com.sec.knox.shortcutsms"

    const-string v8, "com.sec.knox.shortcutsms.SMSShortcut"

    move-object/from16 v0, v90

    iget v9, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v10, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->enableComponents(Ljava/lang/String;Ljava/lang/String;IZ)V
    invoke-static {v4, v5, v8, v9, v10}, Lcom/android/server/pm/PersonaManagerService;->access$6100(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_1d

    .line 5577
    .restart local v15    # "FOTADisableAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v30    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v54    # "i$":Ljava/util/Iterator;
    .restart local v95    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3f
    invoke-interface/range {v95 .. v95}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v95

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v35

    check-cast v35, [Ljava/lang/String;

    .line 5578
    .local v35, "disablePackages":[Ljava/lang/String;
    invoke-virtual/range {v63 .. v63}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v4, v0, v5}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;

    .line 5581
    .end local v35    # "disablePackages":[Ljava/lang/String;
    .end local v54    # "i$":Ljava/util/Iterator;
    .end local v95    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_40
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getFOTAReenableList()Ljava/util/List;

    move-result-object v16

    .line 5582
    .local v16, "FOTAReenablePkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "PersonaManagerService"

    const-string v5, "FOTA Boot receiver re_enable: "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5583
    if-eqz v16, :cond_42

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_42

    .line 5584
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FOTA Boot receiver re_enable:Size:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5585
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    .line 5586
    .local v43, "enablePkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v54

    .restart local v54    # "i$":Ljava/util/Iterator;
    :goto_1f
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v92

    check-cast v92, Ljava/lang/String;

    .line 5587
    .local v92, "pkgInfo":Ljava/lang/String;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FOTA Boot receiver AppUpgradeInfo for re_enable: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v92

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5588
    move-object/from16 v0, v43

    move-object/from16 v1, v92

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 5590
    .end local v92    # "pkgInfo":Ljava/lang/String;
    :cond_41
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FOTA Boot receiver AppUpgradeInfo for re_enable:Enable pks size "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v43 .. v43}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5591
    invoke-interface/range {v43 .. v43}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v42

    check-cast v42, [Ljava/lang/String;

    .line 5592
    .local v42, "enablePackages":[Ljava/lang/String;
    invoke-virtual/range {v63 .. v63}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v42

    invoke-virtual {v4, v0, v5}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;

    .line 5596
    .end local v15    # "FOTADisableAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "FOTAReenablePkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v42    # "enablePackages":[Ljava/lang/String;
    .end local v43    # "enablePkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v54    # "i$":Ljava/util/Iterator;
    :cond_42
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_c

    .line 5597
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v90

    iput-object v4, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 5598
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v90

    # invokes: Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$1100(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V

    .line 5599
    monitor-exit v5
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    .line 5603
    .end local v30    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_43
    :try_start_1d
    invoke-virtual/range {v90 .. v90}, Landroid/content/pm/PersonaInfo;->isSecureFileSystem()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 5604
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v90

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_44

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->TIMA_COMPROMISED:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v90

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 5607
    :cond_44
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v90

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->getAdminUidForPersona(I)I

    move-result v19

    .line 5608
    .local v19, "adminuid":I
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BOOT_COMPLETE - adminuid - "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " and personaId-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v90

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5609
    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    move-object/from16 v0, v90

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    if-eq v4, v5, :cond_47

    .line 5610
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5700(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v4

    move-object/from16 v0, v90

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/sec/knox/container/util/KnoxFileHandler;->unmount(I)Z

    move-result v105

    .line 5611
    .local v105, "retVal":Z
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BOOT_COMPLETE - persona is in SUPER_LOCKED state, hence unmounting the filesystem = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v105

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5618
    .end local v19    # "adminuid":I
    .end local v105    # "retVal":Z
    :cond_45
    :goto_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v90

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_46

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->TIMA_COMPROMISED:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v90

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_46

    .line 5619
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.samsung.knox.action.CONTAINER_UPGRADE_COMPLETE"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_c

    :cond_46
    move/from16 v74, v73

    .line 5621
    .end local v73    # "n":I
    .restart local v74    # "n":I
    goto/16 :goto_1b

    .line 5599
    .end local v74    # "n":I
    .restart local v30    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v73    # "n":I
    :catchall_4
    move-exception v4

    :try_start_1e
    monitor-exit v5
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    :try_start_1f
    throw v4

    .line 5613
    .end local v30    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v19    # "adminuid":I
    :cond_47
    const-string v4, "PersonaManagerService"

    const-string v5, "BOOT_COMPLETE - BYOD admin. Ignoring unmounting...."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 5623
    .end local v19    # "adminuid":I
    .end local v40    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v41    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v63    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v73    # "n":I
    .end local v75    # "ownerUid":I
    .end local v90    # "pi":Landroid/content/pm/PersonaInfo;
    .restart local v74    # "n":I
    :cond_48
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v5

    # invokes: Lcom/android/server/pm/PersonaManagerService;->enableKnoxShortcut(Landroid/content/Context;)V
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$6300(Lcom/android/server/pm/PersonaManagerService;Landroid/content/Context;)V

    .line 5625
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->isKioskContainerExistOnDevice()Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_c

    move-result v4

    if-nez v4, :cond_4b

    .line 5626
    const/16 v52, 0x0

    .line 5628
    .restart local v52    # "i":I
    const/16 v52, 0x0

    :goto_21
    move/from16 v0, v52

    move/from16 v1, v74

    if-ge v0, v1, :cond_4a

    .line 5629
    :try_start_20
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    aget v5, v85, v52

    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->startUserInBackground(I)Z

    .line 5630
    # getter for: Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$6400()Z

    move-result v4

    if-eqz v4, :cond_49

    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Starting contaienr "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v8, v85, v52

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " in background after reboot"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_d

    .line 5628
    :cond_49
    add-int/lit8 v52, v52, 0x1

    goto :goto_21

    .line 5632
    :catch_d
    move-exception v38

    .line 5633
    .restart local v38    # "e":Ljava/lang/Exception;
    :try_start_21
    # getter for: Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$6400()Z

    move-result v4

    if-eqz v4, :cond_4a

    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot start container "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v8, v85, v52

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " in background after reboot: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5639
    .end local v38    # "e":Ljava/lang/Exception;
    .end local v52    # "i":I
    :cond_4a
    :goto_22
    const-string v4, "PersonaManagerService"

    const-string v5, "BOOT_COMPLETE - Sending broadcast to start Knox Apps Update Process"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5640
    new-instance v112, Landroid/content/Intent;

    const-string v4, "com.samsung.knox.appsupdateagent.intent.action.START_KNOX_APPS_UPDATE"

    move-object/from16 v0, v112

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5641
    .local v112, "startKnoxAppsUpdateIntent":Landroid/content/Intent;
    const-string v4, "com.samsung.knox.appsupdateagent"

    move-object/from16 v0, v112

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5642
    const/16 v4, 0x20

    move-object/from16 v0, v112

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5643
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v8, "com.sec.knox.container.permission.RECEIVE_KNOX_APPS_UPDATE"

    move-object/from16 v0, v112

    invoke-virtual {v4, v0, v5, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5636
    .end local v112    # "startKnoxAppsUpdateIntent":Landroid/content/Intent;
    :cond_4b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->setDefaultSettingsValueforCOM()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_c

    goto :goto_22

    .line 5658
    .end local v74    # "n":I
    .end local v85    # "personaIds":[I
    .end local v87    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v88    # "personaManager":Landroid/os/PersonaManager;
    :pswitch_17
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PersonaHandler.MSG_START_REMOVE_PERSONA_AFTER_SWITCH is called for personaId - "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5661
    :try_start_22
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 5662
    .restart local v14    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3900(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/content/pm/PersonaInfo;

    .line 5663
    .local v86, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v86, :cond_4c

    .line 5664
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "PersonaHandler no personaInfo for this persona"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_e

    goto/16 :goto_1

    .line 5688
    .end local v14    # "personaId":I
    .end local v86    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :catch_e
    move-exception v38

    .line 5689
    .restart local v38    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 5668
    .end local v38    # "e":Ljava/lang/Exception;
    .restart local v14    # "personaId":I
    .restart local v86    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :cond_4c
    :try_start_23
    invoke-virtual/range {v86 .. v86}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v81

    .line 5670
    .local v81, "parentUserId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->isKioskModeEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 5672
    sget-object v4, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    if-eqz v4, :cond_4d

    .line 5673
    sget-object v4, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v5, "isKnoxKioskMode"

    const-string/jumbo v8, "false"

    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5678
    :cond_4d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v81

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->launchPersonaHome(I)Z

    move-result v103

    .line 5679
    .local v103, "result":Z
    if-eqz v103, :cond_4e

    .line 5680
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->startRemovingPersona(I)I

    move-result v28

    .line 5681
    .local v28, "code":I
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startRemovingPersona return code is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5684
    .end local v28    # "code":I
    :cond_4e
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "Failed to switch persona. Aborted removing of persona..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_e

    goto/16 :goto_0

    .line 5695
    .end local v14    # "personaId":I
    .end local v81    # "parentUserId":I
    .end local v86    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .end local v103    # "result":Z
    :pswitch_18
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 5696
    .restart local v14    # "personaId":I
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "PersonaHandler:: UnInstalling of Thirdparty apps for reset persona is done"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5698
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v59

    .line 5699
    .local v59, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v59, :cond_4f

    move-object/from16 v0, v59

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    if-eqz v4, :cond_4f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mIsFOTAUpgrade:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5400(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-nez v4, :cond_4f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mIsAdminLock:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5500(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 5700
    const-string v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "resetPartition is skipped. It\'s already done in AMS.SystemReady"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5704
    :cond_4f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->cleanPartition(I)Z
    invoke-static {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->access$6500(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v104

    .line 5705
    .local v104, "ret":Z
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " resetPersona: ret value of EPM resetPartition():"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v104

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5719
    .end local v14    # "personaId":I
    .end local v59    # "info":Landroid/content/pm/PersonaInfo;
    .end local v104    # "ret":Z
    :pswitch_19
    const-string v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "resetPerson is not called from anywhere now. So disalbed. Please contacts container team!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5724
    :pswitch_1a
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 5725
    .restart local v14    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->getState(I)Landroid/content/pm/PersonaState;

    move-result-object v113

    .line 5726
    .local v113, "state":Landroid/content/pm/PersonaState;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->getAdminUidForPersona(I)I

    move-result v18

    .line 5727
    .local v18, "adminUid":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v33

    .line 5728
    .local v33, "currentUser":I
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notifyKeyguardShow(false) on MSG_SUPER_LOCK_PERSONA for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5729
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v14, v5}, Lcom/android/server/pm/PersonaManagerService;->notifyKeyguardShow(IZ)V

    .line 5730
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3900(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/content/pm/PersonaInfo;

    .line 5731
    .restart local v86    # "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v86, :cond_50

    .line 5732
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "PersonaHandler no personaInfo for this persona"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5736
    :cond_50
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_SUPER_LOCK_PERSONA: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " current user from AMS: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " adminUid= "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5737
    const/16 v103, 0x1

    .line 5739
    .restart local v103    # "result":Z
    move/from16 v0, v33

    if-ne v14, v0, :cond_51

    .line 5740
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "MSG_SUPER_LOCK_PERSONA: current user from AMS is the one being super-locked, not stopping persona"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5741
    const/16 v103, 0x0

    .line 5744
    :cond_51
    move-object/from16 v0, v86

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    if-nez v4, :cond_52

    .line 5745
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->launchPersonaHome(I)Z

    .line 5746
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "MSG_SUPER_LOCK_PERSONA: switching to owner"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5749
    :cond_52
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v4, v5, v14}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 5750
    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, v14, :cond_54

    .line 5751
    const-string v4, "activity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/ActivityManagerService;

    .line 5752
    .local v20, "ams":Lcom/android/server/am/ActivityManagerService;
    if-eqz v20, :cond_53

    .line 5753
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/android/server/am/ActivityManagerService;->clearRecentTasks(I)Z

    .line 5755
    :cond_53
    const/16 v103, 0x0

    .line 5756
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "MSG_SUPER_LOCK_PERSONA: BYOD case, don\'t stop Persona"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5759
    .end local v20    # "ams":Lcom/android/server/am/ActivityManagerService;
    :cond_54
    const/16 v102, -0x1

    .line 5760
    .local v102, "res":I
    if-eqz v103, :cond_56

    .line 5761
    move-object/from16 v0, v86

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    if-nez v4, :cond_55

    .line 5762
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopping persona for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5763
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->stopPersona(I)I

    move-result v102

    .line 5765
    :cond_55
    if-eqz v102, :cond_56

    .line 5766
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ActivityManagerNative.getDefault().stopUser failed to execure with error code:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v102

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5770
    :cond_56
    if-nez v103, :cond_57

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v4, v5, v14}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_58

    :cond_57
    if-eqz v102, :cond_5b

    .line 5773
    :cond_58
    new-instance v40, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 5774
    .restart local v40    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    move-object/from16 v0, v40

    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v75

    .line 5775
    .restart local v75    # "ownerUid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move/from16 v0, v75

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v94

    .line 5776
    .local v94, "pkgNames":[Ljava/lang/String;
    if-eqz v94, :cond_59

    .line 5777
    move-object/from16 v25, v94

    .local v25, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v68, v0

    .local v68, "len$":I
    const/16 v53, 0x0

    .local v53, "i$":I
    :goto_23
    move/from16 v0, v53

    move/from16 v1, v68

    if-ge v0, v1, :cond_5a

    aget-object v93, v25, v53

    .line 5778
    .local v93, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v93

    move/from16 v1, v75

    # invokes: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v4, v0, v14, v1}, Lcom/android/server/pm/PersonaManagerService;->access$6600(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V

    .line 5777
    add-int/lit8 v53, v53, 0x1

    goto :goto_23

    .line 5781
    .end local v25    # "arr$":[Ljava/lang/String;
    .end local v53    # "i$":I
    .end local v68    # "len$":I
    .end local v93    # "pkgName":Ljava/lang/String;
    :cond_59
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    move/from16 v0, v75

    # invokes: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v4, v5, v14, v0}, Lcom/android/server/pm/PersonaManagerService;->access$6600(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V

    .line 5783
    :cond_5a
    const/4 v4, 0x0

    move-object/from16 v0, v86

    iput-boolean v4, v0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    .line 5787
    .end local v40    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v75    # "ownerUid":I
    .end local v94    # "pkgNames":[Ljava/lang/String;
    :cond_5b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v4, v5, v14}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, v86

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    if-eqz v4, :cond_0

    .line 5789
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v56

    .line 5791
    .restart local v56    # "ident":J
    :try_start_24
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v96

    .line 5792
    .local v96, "pm":Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    const-string v5, "com.sec.knox.home.crossprofilefilter"

    move-object/from16 v0, v96

    invoke-interface {v0, v4, v5}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_f
    .catchall {:try_start_24 .. :try_end_24} :catchall_5

    .line 5796
    invoke-static/range {v56 .. v57}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5799
    .end local v96    # "pm":Landroid/content/pm/IPackageManager;
    :goto_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual/range {v86 .. v86}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v5

    const/4 v8, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->startActivityAdminLocked(III)V
    invoke-static {v4, v5, v14, v8}, Lcom/android/server/pm/PersonaManagerService;->access$6700(Lcom/android/server/pm/PersonaManagerService;III)V

    goto/16 :goto_0

    .line 5793
    :catch_f
    move-exception v99

    .line 5794
    .local v99, "re":Landroid/os/RemoteException;
    :try_start_25
    invoke-virtual/range {v99 .. v99}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_5

    .line 5796
    invoke-static/range {v56 .. v57}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_24

    .end local v99    # "re":Landroid/os/RemoteException;
    :catchall_5
    move-exception v4

    invoke-static/range {v56 .. v57}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 5805
    .end local v14    # "personaId":I
    .end local v18    # "adminUid":I
    .end local v33    # "currentUser":I
    .end local v56    # "ident":J
    .end local v86    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .end local v102    # "res":I
    .end local v103    # "result":Z
    .end local v113    # "state":Landroid/content/pm/PersonaState;
    :pswitch_1b
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 5810
    .restart local v14    # "personaId":I
    :try_start_26
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v5, 0x4

    invoke-interface {v4, v14, v5}, Landroid/app/IActivityManager;->updateKnoxContainerRuntimeState(II)V

    .line 5811
    const-string v4, "activity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/ActivityManagerService;

    .line 5812
    .restart local v20    # "ams":Lcom/android/server/am/ActivityManagerService;
    if-eqz v20, :cond_5c

    .line 5813
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/android/server/am/ActivityManagerService;->clearRecentTasks(I)Z
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_26} :catch_10

    .line 5820
    .end local v20    # "ams":Lcom/android/server/am/ActivityManagerService;
    :cond_5c
    :goto_25
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5e

    const/16 v100, 0x1

    .line 5821
    .local v100, "removePersona":Z
    :goto_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3900(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Landroid/content/pm/PersonaInfo;

    .line 5822
    .restart local v78    # "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v100, :cond_5f

    .line 5823
    const-string v4, "PersonaManagerService"

    const-string/jumbo v5, "userStopped triggered removal process..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5824
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v79

    .line 5826
    .local v79, "pList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v79, :cond_5d

    invoke-interface/range {v79 .. v79}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_5d

    .line 5827
    const-string/jumbo v4, "sys.knox.exists"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5830
    const-string v4, "PersonaManagerService"

    const-string/jumbo v5, "handleMessage(MSG_PERSONA_STOPPED) no more Containers, M-Permission roll back on critical apps."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5831
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    const/16 v8, 0x10

    const/16 v9, -0x11

    const/4 v10, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->applyPermissionStatesAndFlags(IIII)Z
    invoke-static {v4, v5, v8, v9, v10}, Lcom/android/server/pm/PersonaManagerService;->access$6800(Lcom/android/server/pm/PersonaManagerService;IIII)Z

    .line 5837
    :cond_5d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->removePersonaHelper(I)V
    invoke-static {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->access$6900(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .line 5815
    .end local v78    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v79    # "pList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v100    # "removePersona":Z
    :catch_10
    move-exception v99

    .line 5816
    .restart local v99    # "re":Landroid/os/RemoteException;
    const-string v4, "PersonaManagerService"

    const-string/jumbo v5, "handleMessage() MSG_PERSONA_STOPPED remote exception"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 5820
    .end local v99    # "re":Landroid/os/RemoteException;
    :cond_5e
    const/16 v100, 0x0

    goto :goto_26

    .line 5838
    .restart local v78    # "pInfo":Landroid/content/pm/PersonaInfo;
    .restart local v100    # "removePersona":Z
    :cond_5f
    if-eqz v78, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v4, v5, v14}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {v78 .. v78}, Landroid/content/pm/PersonaInfo;->isSecureFileSystem()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5840
    :try_start_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5700(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/sec/knox/container/util/KnoxFileHandler;->unmount(I)Z

    move-result v105

    .line 5841
    .restart local v105    # "retVal":Z
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unmounting file system due to super lock: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v105

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5843
    new-instance v40, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 5844
    .restart local v40    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    move-object/from16 v0, v40

    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v75

    .line 5845
    .restart local v75    # "ownerUid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move/from16 v0, v75

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v94

    .line 5846
    .restart local v94    # "pkgNames":[Ljava/lang/String;
    if-eqz v94, :cond_60

    .line 5847
    move-object/from16 v25, v94

    .restart local v25    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v68, v0

    .restart local v68    # "len$":I
    const/16 v53, 0x0

    .restart local v53    # "i$":I
    :goto_27
    move/from16 v0, v53

    move/from16 v1, v68

    if-ge v0, v1, :cond_61

    aget-object v93, v25, v53

    .line 5848
    .restart local v93    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v93

    move/from16 v1, v75

    # invokes: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v4, v0, v14, v1}, Lcom/android/server/pm/PersonaManagerService;->access$6600(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V

    .line 5847
    add-int/lit8 v53, v53, 0x1

    goto :goto_27

    .line 5851
    .end local v25    # "arr$":[Ljava/lang/String;
    .end local v53    # "i$":I
    .end local v68    # "len$":I
    .end local v93    # "pkgName":Ljava/lang/String;
    :cond_60
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    move/from16 v0, v75

    # invokes: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v4, v5, v14, v0}, Lcom/android/server/pm/PersonaManagerService;->access$6600(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_11
    .catchall {:try_start_27 .. :try_end_27} :catchall_6

    .line 5856
    :cond_61
    const/4 v4, 0x0

    move-object/from16 v0, v78

    iput-boolean v4, v0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    goto/16 :goto_0

    .line 5853
    .end local v40    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v75    # "ownerUid":I
    .end local v94    # "pkgNames":[Ljava/lang/String;
    .end local v105    # "retVal":Z
    :catch_11
    move-exception v99

    .line 5854
    .restart local v99    # "re":Landroid/os/RemoteException;
    :try_start_28
    const-string v4, "PersonaManagerService"

    const-string v5, "Failed to unmount file system on super lock."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_6

    .line 5856
    const/4 v4, 0x0

    move-object/from16 v0, v78

    iput-boolean v4, v0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    goto/16 :goto_0

    .end local v99    # "re":Landroid/os/RemoteException;
    :catchall_6
    move-exception v4

    const/4 v5, 0x0

    move-object/from16 v0, v78

    iput-boolean v5, v0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    throw v4

    .line 5863
    .end local v14    # "personaId":I
    .end local v78    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v100    # "removePersona":Z
    :pswitch_1c
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "Start lock timer: persona is in background."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5864
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 5865
    .restart local v14    # "personaId":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v76

    .line 5866
    .restart local v76    # "now":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->getPersonaBackgroundTime(I)J

    move-result-wide v66

    .line 5867
    .local v66, "lastTimeToBackground":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTime(I)J

    move-result-wide v114

    .line 5868
    .local v114, "timeOutValue":J
    sub-long v4, v76, v66

    sub-long v116, v114, v4

    .line 5869
    .restart local v116    # "timeRemaining":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/16 v5, 0x2648

    move-wide/from16 v0, v116

    # invokes: Lcom/android/server/pm/PersonaManagerService;->scheduleTimer(IIJ)V
    invoke-static {v4, v14, v5, v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$7000(Lcom/android/server/pm/PersonaManagerService;IIJ)V

    goto/16 :goto_0

    .line 5874
    .end local v14    # "personaId":I
    .end local v66    # "lastTimeToBackground":J
    .end local v76    # "now":J
    .end local v114    # "timeOutValue":J
    .end local v116    # "timeRemaining":J
    :pswitch_1d
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 5875
    .restart local v14    # "personaId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v101, v0

    .line 5876
    .local v101, "requestId":I
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Stop timer with request id: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v101

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " persona Id: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5877
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v101

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killTimer(II)V
    invoke-static {v4, v14, v0}, Lcom/android/server/pm/PersonaManagerService;->access$2200(Lcom/android/server/pm/PersonaManagerService;II)V

    goto/16 :goto_0

    .line 5882
    .end local v14    # "personaId":I
    .end local v101    # "requestId":I
    :pswitch_1e
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 5883
    .restart local v14    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v59

    .line 5884
    .restart local v59    # "info":Landroid/content/pm/PersonaInfo;
    if-eqz v59, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v4, v5, v14}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5885
    const-string v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "locking persona due to lock timeout."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5886
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->lockPersona(I)V

    goto/16 :goto_0

    .line 5892
    .end local v14    # "personaId":I
    .end local v59    # "info":Landroid/content/pm/PersonaInfo;
    :pswitch_1f
    const-string v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "locking persona due to reset timeout.."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5893
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 5894
    .restart local v14    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->clearResetPasswordKey(I)V
    invoke-static {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->access$7100(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 5895
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v59

    .line 5896
    .restart local v59    # "info":Landroid/content/pm/PersonaInfo;
    if-eqz v59, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    move-object/from16 v0, v59

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    invoke-virtual {v4, v5, v14}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5898
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v4, v5, v14}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_62

    .line 5899
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaNewEvent;->USER_LOCK:Landroid/content/pm/PersonaNewEvent;

    invoke-virtual {v4, v5, v14}, Lcom/android/server/pm/PersonaManagerService;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Landroid/content/pm/PersonaState;

    .line 5900
    :cond_62
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8, v14}, Lcom/android/server/pm/PersonaManagerService;->setAttribute(Landroid/content/pm/PersonaAttribute;ZI)Z

    .line 5901
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->launchPersonaHome(I)Z

    .line 5902
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->hideKeyguard(I)V

    goto/16 :goto_0

    .line 5919
    .end local v14    # "personaId":I
    .end local v59    # "info":Landroid/content/pm/PersonaInfo;
    :pswitch_20
    const-string v4, "PersonaManagerService"

    const-string/jumbo v5, "received MSG_ACTIVATE_SDP"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5921
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 5922
    .restart local v14    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killSdpTimer(I)V
    invoke-static {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->access$7200(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 5924
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v59

    .line 5925
    .restart local v59    # "info":Landroid/content/pm/PersonaInfo;
    if-eqz v59, :cond_64

    move-object/from16 v0, v59

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    if-nez v4, :cond_64

    .line 5926
    const-string v4, "PersonaManagerService"

    const-string v5, "activating sdp.."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5927
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->setSdpActive(IZ)V
    invoke-static {v4, v14, v5}, Lcom/android/server/pm/PersonaManagerService;->access$5200(Lcom/android/server/pm/PersonaManagerService;IZ)V

    .line 5928
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v56

    .line 5929
    .restart local v56    # "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getSdpService()Lcom/android/server/SdpManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4500(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/android/server/SdpManagerService;->onDeviceLocked(I)Z

    move-result v4

    if-nez v4, :cond_63

    .line 5930
    const-string v4, "PersonaManagerService"

    const-string v5, "Failed to lock SDP"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5931
    :cond_63
    invoke-static/range {v56 .. v57}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5935
    .end local v56    # "ident":J
    :cond_64
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->clearCachedPassword(I)V
    invoke-static {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->access$7300(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 5946
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPasswordMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5947
    const-string v4, "activity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/ActivityManagerService;

    .line 5948
    .restart local v20    # "ams":Lcom/android/server/am/ActivityManagerService;
    const-string v4, "com.android.settings"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v14}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 5954
    .end local v14    # "personaId":I
    .end local v20    # "ams":Lcom/android/server/am/ActivityManagerService;
    .end local v59    # "info":Landroid/content/pm/PersonaInfo;
    :pswitch_21
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 5955
    .restart local v14    # "personaId":I
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received MSG_CALM_SDP... "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5957
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v90

    .line 5958
    .restart local v90    # "pi":Landroid/content/pm/PersonaInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killSdpTimer(I)V
    invoke-static {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->access$7200(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 5959
    if-nez v90, :cond_65

    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalid persona : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5960
    :cond_65
    move-object/from16 v0, v90

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    if-nez v4, :cond_66

    .line 5961
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "persona : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " sdp not-active (skip calming)"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5962
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->clearCachedPassword(I)V
    invoke-static {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->access$7300(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .line 5966
    :cond_66
    const/16 v31, 0x0

    .line 5968
    .restart local v31    # "containerMasterKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mEncodedPasswordMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7500(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 5972
    const-string v4, "PersonaManagerService.KeyMgnt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "inside MSG_CALM_SDP 1 found encoded pwd. "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5973
    new-instance v31, Ljava/lang/String;

    .end local v31    # "containerMasterKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mEncodedPasswordMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7500(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 6010
    .restart local v31    # "containerMasterKey":Ljava/lang/String;
    :cond_67
    :goto_28
    if-eqz v31, :cond_6e

    .line 6011
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->setSdpActive(IZ)V
    invoke-static {v4, v14, v5}, Lcom/android/server/pm/PersonaManagerService;->access$5200(Lcom/android/server/pm/PersonaManagerService;IZ)V

    .line 6014
    const/16 v34, 0x0

    .line 6015
    .restart local v34    # "decodedCMK":[B
    move-object/from16 v0, v90

    iget v4, v0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_6d

    .line 6016
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    .line 6020
    :goto_29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v56

    .line 6021
    .restart local v56    # "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getSdpService()Lcom/android/server/SdpManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4500(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v14, v0}, Lcom/android/server/SdpManagerService;->onDeviceUnlocked(I[B)Z

    move-result v4

    if-nez v4, :cond_68

    .line 6022
    const-string v4, "PersonaManagerService"

    const-string v5, "Failed to SDP unlock"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6024
    :cond_68
    invoke-static/range {v56 .. v57}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6025
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v34

    # invokes: Lcom/android/server/pm/PersonaManagerService;->zeroOut([B)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$5300(Lcom/android/server/pm/PersonaManagerService;[B)V

    .line 6026
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v31

    # invokes: Lcom/android/server/pm/PersonaManagerService;->zeroOut(Ljava/lang/String;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$4900(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)V

    .line 6032
    .end local v34    # "decodedCMK":[B
    .end local v56    # "ident":J
    :goto_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->clearCachedPassword(I)V
    invoke-static {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->access$7300(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 6033
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->clearResetPasswordKey(I)V
    invoke-static {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->access$7100(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .line 5974
    :cond_69
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPasswordMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 5975
    const-string v4, "PersonaManagerService.KeyMgnt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "inside MSG_CALM_SDP 2 found pwd. "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5976
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPasswordMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v8, 0x1

    move-object/from16 v0, v90

    iget v9, v0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;
    invoke-static {v5, v14, v4, v8, v9}, Lcom/android/server/pm/PersonaManagerService;->access$4800(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_28

    .line 5978
    :cond_6a
    move-object/from16 v0, v90

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v4, :cond_67

    move-object/from16 v0, v90

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    if-eqz v4, :cond_67

    .line 5979
    const-string v4, "PersonaManagerService.KeyMgnt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "persona : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "(SDP-MINOR) check if finger print"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5981
    const-string/jumbo v4, "lock_settings"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v108

    check-cast v108, Lcom/android/server/LockSettingsService;

    .line 5982
    .local v108, "service":Lcom/android/server/LockSettingsService;
    if-eqz v108, :cond_67

    .line 5983
    const/16 v118, 0x0

    .line 5985
    .local v118, "token":Ljava/lang/String;
    :try_start_29
    const-string/jumbo v4, "lockscreen.password_type"

    const-wide/16 v8, 0x0

    move-object/from16 v0, v108

    invoke-virtual {v0, v4, v8, v9, v14}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v98, v0

    .line 5987
    .local v98, "quality":I
    const-string v4, "PersonaManagerService.KeyMgnt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "persona : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "password is not present in map CMK generating form pwd token "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v8, v14}, Lcom/android/server/pm/PersonaManagerService;->getIsFingerAsSupplement(I)Z

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5990
    # getter for: Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$3500()Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 5991
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getPasswordResetTokenFromTima20(I)Ljava/lang/String;
    invoke-static {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->access$4600(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v118

    .line 5994
    :goto_2b
    if-eqz v118, :cond_6c

    .line 5995
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x2

    move-object/from16 v0, v90

    iget v8, v0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    move-object/from16 v0, v118

    # invokes: Lcom/android/server/pm/PersonaManagerService;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;
    invoke-static {v4, v14, v0, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->access$4800(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_28

    .line 5993
    :cond_6b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getPasswordResetTokenFromTima(I)Ljava/lang/String;
    invoke-static {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->access$4700(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v118

    goto :goto_2b

    .line 5998
    :cond_6c
    const-string v4, "PersonaManagerService"

    const-string v5, "No token from TIMA"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_29} :catch_12

    goto/16 :goto_28

    .line 6001
    .end local v98    # "quality":I
    :catch_12
    move-exception v99

    .line 6002
    .restart local v99    # "re":Landroid/os/RemoteException;
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "error in MSG_CALM_SDP while getting password quality"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    .line 6018
    .end local v99    # "re":Landroid/os/RemoteException;
    .end local v108    # "service":Lcom/android/server/LockSettingsService;
    .end local v118    # "token":Ljava/lang/String;
    .restart local v34    # "decodedCMK":[B
    :cond_6d
    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-static {v0, v4}, Lcom/sec/knox/container/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v34

    goto/16 :goto_29

    .line 6028
    .end local v34    # "decodedCMK":[B
    :cond_6e
    const-string v4, "PersonaManagerService.KeyMgnt"

    const-string v5, "In CALM_SDP: Container master key is NULL!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 6039
    .end local v14    # "personaId":I
    .end local v31    # "containerMasterKey":Ljava/lang/String;
    .end local v90    # "pi":Landroid/content/pm/PersonaInfo;
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->handleRestart(I)V
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$7600(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .line 6045
    :pswitch_23
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 6046
    .restart local v14    # "personaId":I
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_PROCESS_ACTIVE_USER_CHANGE is called for personaId-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6047
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->updateCurrentUserPolicy(I)V
    invoke-static {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->access$3400(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 6050
    :try_start_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mViewLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7700(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_13

    .line 6051
    const/16 v4, 0x64

    if-lt v14, v4, :cond_72

    .line 6052
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "accessibility_enabled"

    const/4 v9, 0x0

    invoke-static {v4, v8, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v125

    .line 6053
    .local v125, "value":I
    const-string v4, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MSG_PROCESS_ACTIVE_USER_CHANGE Owner accessability value->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v125

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6054
    const/4 v4, 0x1

    move/from16 v0, v125

    if-ne v0, v4, :cond_6f

    .line 6055
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isSamsunAccessibilityServiceRunning()Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7800(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-nez v4, :cond_71

    .line 6056
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    const-string v8, "accessibility"

    invoke-virtual {v4, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/accessibility/AccessibilityManager;

    .line 6057
    .local v17, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual/range {v17 .. v17}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v61

    .line 6058
    .local v61, "isAccessibilityEnabled":Z
    const-string v4, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MSG_PROCESS_ACTIVE_USER_CHANGE isAccessibilityEnabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v61

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6060
    if-eqz v61, :cond_6f

    .line 6061
    const-string v4, "PersonaManagerService"

    const-string v8, "MSG_PROCESS_ACTIVE_USER_CHANGE stopping owner accessibility..."

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6062
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "accessibility_enabled"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v4, v8, v9, v10}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 6063
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v8, 0x1

    # setter for: Lcom/android/server/pm/PersonaManagerService;->restartAccessibilityServiceForOwner:Z
    invoke-static {v4, v8}, Lcom/android/server/pm/PersonaManagerService;->access$7902(Lcom/android/server/pm/PersonaManagerService;Z)Z

    .line 6070
    .end local v17    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v61    # "isAccessibilityEnabled":Z
    :cond_6f
    :goto_2c
    new-instance v60, Landroid/content/Intent;

    invoke-direct/range {v60 .. v60}, Landroid/content/Intent;-><init>()V

    .line 6071
    .restart local v60    # "intent":Landroid/content/Intent;
    const-string v4, "com.sec.app.accesscontrol.ACTION_STOP_SELF"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6072
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v60

    invoke-virtual {v4, v0, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6081
    .end local v60    # "intent":Landroid/content/Intent;
    .end local v125    # "value":I
    :cond_70
    :goto_2d
    monitor-exit v5
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_7

    .line 6086
    :goto_2e
    if-eqz v14, :cond_0

    .line 6087
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    const/16 v5, 0x1c

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v72

    .line 6088
    .local v72, "msg1":Landroid/os/Message;
    move-object/from16 v0, v72

    iput v14, v0, Landroid/os/Message;->arg1:I

    .line 6089
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    move-object/from16 v0, v72

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 6066
    .end local v72    # "msg1":Landroid/os/Message;
    .restart local v125    # "value":I
    :cond_71
    :try_start_2c
    const-string v4, "PersonaManagerService"

    const-string v8, "MSG_PROCESS_ACTIVE_USER_CHANGE not stopping owner accessibility..."

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 6081
    .end local v125    # "value":I
    :catchall_7
    move-exception v4

    monitor-exit v5
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_7

    :try_start_2d
    throw v4
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_13

    .line 6082
    :catch_13
    move-exception v38

    .line 6083
    .restart local v38    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2e

    .line 6074
    .end local v38    # "e":Ljava/lang/Exception;
    :cond_72
    :try_start_2e
    const-string v4, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MSG_PROCESS_ACTIVE_USER_CHANGE restartAccessibilityServiceForOwner -"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->restartAccessibilityServiceForOwner:Z
    invoke-static {v9}, Lcom/android/server/pm/PersonaManagerService;->access$7900(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6075
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->restartAccessibilityServiceForOwner:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7900(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 6076
    const-string v4, "PersonaManagerService"

    const-string v8, "MSG_PROCESS_ACTIVE_USER_CHANGE starting owner accessibility"

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6077
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "accessibility_enabled"

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v4, v8, v9, v10}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 6078
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v8, 0x0

    # setter for: Lcom/android/server/pm/PersonaManagerService;->restartAccessibilityServiceForOwner:Z
    invoke-static {v4, v8}, Lcom/android/server/pm/PersonaManagerService;->access$7902(Lcom/android/server/pm/PersonaManagerService;Z)Z
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_7

    goto :goto_2d

    .line 6096
    .end local v14    # "personaId":I
    :pswitch_24
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_NOTIFY_EXT_SDCARD_UPDATE is called for persona - "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6097
    const/16 v86, 0x0

    .line 6098
    .restart local v86    # "personaInfo":Landroid/content/pm/PersonaInfo;
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 6099
    .restart local v14    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v86

    .line 6100
    if-eqz v86, :cond_74

    move-object/from16 v0, v86

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    if-eqz v4, :cond_74

    .line 6101
    const/16 v62, 0x0

    .line 6102
    .local v62, "isSdcardAlertAlreadyShown":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mShownSdcardAlertMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$8000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 6103
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mShownSdcardAlertMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$8000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v62

    .line 6105
    :cond_73
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "state -"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v8, v14}, Lcom/android/server/pm/PersonaManagerService;->getState(I)Landroid/content/pm/PersonaState;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " and needsRestart-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v86

    iget-boolean v8, v0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " and isSdcardAlertAlreadyShown"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v62

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6106
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    invoke-virtual {v4, v5, v14}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v62, :cond_0

    move-object/from16 v0, v86

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    if-nez v4, :cond_0

    .line 6107
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->notifyNeedRestartMsg(I)V
    invoke-static {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->access$1200(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .line 6110
    .end local v62    # "isSdcardAlertAlreadyShown":Z
    :cond_74
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "Sdcard policy has not been updated..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6116
    .end local v14    # "personaId":I
    .end local v86    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :pswitch_25
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 6117
    .restart local v14    # "personaId":I
    const-string v4, "PersonaManagerService"

    const-string v5, "PersonaManagerService$PersonaHandler.handleMessage() launchPersonaHome for kioskModeEnabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6118
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->launchPersonaHome(I)Z

    .line 6121
    const/16 v4, 0x24

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14, v5}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v51

    .line 6122
    .local v51, "forceUpdateMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 6127
    .end local v14    # "personaId":I
    .end local v51    # "forceUpdateMsg":Landroid/os/Message;
    :pswitch_26
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 6128
    .restart local v14    # "personaId":I
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "force update wallpaper for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6129
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getWallpaperManagerLocked()Lcom/android/server/wallpaper/WallpaperManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2500(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v14, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchPersonaWallpaper(IZ)V

    goto/16 :goto_0

    .line 6135
    .end local v14    # "personaId":I
    :pswitch_27
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 6136
    .restart local v14    # "personaId":I
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notifyKeyguardShow(false) on MSG_DELETING_PERSONA for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6137
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->isKioskModeEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 6138
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    const-string v8, "container_adminlock"

    # invokes: Lcom/android/server/pm/PersonaManagerService;->blockStatusbar(IZLjava/lang/String;)V
    invoke-static {v4, v14, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->access$8100(Lcom/android/server/pm/PersonaManagerService;IZLjava/lang/String;)V

    .line 6139
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->blockIncomingCall(Z)V
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$8200(Lcom/android/server/pm/PersonaManagerService;Z)V

    .line 6141
    :cond_75
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v14, v5}, Lcom/android/server/pm/PersonaManagerService;->notifyKeyguardShow(IZ)V

    goto/16 :goto_0

    .line 6148
    .end local v14    # "personaId":I
    :pswitch_28
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 6149
    .restart local v14    # "personaId":I
    const/16 v86, 0x0

    .line 6150
    .restart local v86    # "personaInfo":Landroid/content/pm/PersonaInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v14}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v86

    .line 6151
    if-eqz v86, :cond_1

    .line 6152
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Persona is in Urgent Update State, So not switching from Recent tasks to: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6153
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual/range {v86 .. v86}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v5

    const/4 v8, 0x5

    const/4 v9, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->startActivityKnoxAppsUpdate(IIIZ)V
    invoke-static {v4, v5, v14, v8, v9}, Lcom/android/server/pm/PersonaManagerService;->access$8300(Lcom/android/server/pm/PersonaManagerService;IIIZ)V

    goto/16 :goto_1

    .line 6161
    .end local v14    # "personaId":I
    .end local v86    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :pswitch_29
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 6162
    .restart local v14    # "personaId":I
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setup completed "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6164
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 6165
    :try_start_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3900(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v83

    check-cast v83, Landroid/content/pm/PersonaInfo;

    .line 6166
    .local v83, "persona":Landroid/content/pm/PersonaInfo;
    if-eqz v83, :cond_76

    .line 6167
    const/4 v4, 0x1

    move-object/from16 v0, v83

    iput-boolean v4, v0, Landroid/content/pm/PersonaInfo;->setupComplete:Z

    .line 6168
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v83

    # invokes: Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$1100(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V

    .line 6169
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->updateUserIdsLocked()V
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$8400(Lcom/android/server/pm/PersonaManagerService;)V

    .line 6171
    :cond_76
    monitor-exit v5
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_8

    .line 6172
    const/4 v8, 0x5

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Admin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getAdminPackageName(I)Ljava/lang/String;
    invoke-static {v5, v14}, Lcom/android/server/pm/PersonaManagerService;->access$8500(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has successfully created container "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static/range {v8 .. v14}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 6171
    .end local v83    # "persona":Landroid/content/pm/PersonaInfo;
    :catchall_8
    move-exception v4

    :try_start_30
    monitor-exit v5
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_8

    throw v4

    .line 6180
    .end local v14    # "personaId":I
    :pswitch_2a
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 6181
    .restart local v14    # "personaId":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    if-lez v4, :cond_77

    const/16 v109, 0x1

    .line 6182
    .local v109, "showWhenLocked":Z
    :goto_2f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/content/ComponentName;

    .line 6183
    .local v29, "component":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mViewLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7700(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 6184
    :try_start_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v29

    move/from16 v1, v109

    # invokes: Lcom/android/server/pm/PersonaManagerService;->drawKnoxbadge(ILandroid/content/ComponentName;Z)V
    invoke-static {v4, v14, v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$8600(Lcom/android/server/pm/PersonaManagerService;ILandroid/content/ComponentName;Z)V

    .line 6185
    monitor-exit v5

    goto/16 :goto_0

    :catchall_9
    move-exception v4

    monitor-exit v5
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_9

    throw v4

    .line 6181
    .end local v29    # "component":Landroid/content/ComponentName;
    .end local v109    # "showWhenLocked":Z
    :cond_77
    const/16 v109, 0x0

    goto :goto_2f

    .line 6191
    .end local v14    # "personaId":I
    :pswitch_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->removeKnoxBadge()V
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$8700(Lcom/android/server/pm/PersonaManagerService;)V

    goto/16 :goto_0

    .line 5261
    .restart local v48    # "file":Ljava/io/File;
    .restart local v55    # "in":Ljava/io/InputStream;
    .restart local v87    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v90    # "pi":Landroid/content/pm/PersonaInfo;
    :catch_14
    move-exception v4

    goto/16 :goto_a

    .end local v48    # "file":Ljava/io/File;
    :catch_15
    move-exception v5

    goto/16 :goto_13

    .line 5258
    .end local v55    # "in":Ljava/io/InputStream;
    .restart local v48    # "file":Ljava/io/File;
    .restart local v58    # "in":Ljava/io/InputStream;
    :catchall_a
    move-exception v4

    move-object/from16 v55, v58

    .end local v58    # "in":Ljava/io/InputStream;
    .restart local v55    # "in":Ljava/io/InputStream;
    goto/16 :goto_12

    .line 5254
    .end local v55    # "in":Ljava/io/InputStream;
    .restart local v58    # "in":Ljava/io/InputStream;
    :catch_16
    move-exception v38

    move-object/from16 v55, v58

    .end local v58    # "in":Ljava/io/InputStream;
    .restart local v55    # "in":Ljava/io/InputStream;
    goto/16 :goto_11

    .line 4930
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_16
        :pswitch_13
        :pswitch_15
        :pswitch_a
        :pswitch_b
        :pswitch_1b
        :pswitch_8
        :pswitch_20
        :pswitch_21
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_22
        :pswitch_10
        :pswitch_24
        :pswitch_12
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_d
        :pswitch_23
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_11
        :pswitch_2
        :pswitch_29
        :pswitch_28
        :pswitch_2a
        :pswitch_2b
        :pswitch_14
    .end packed-switch
.end method

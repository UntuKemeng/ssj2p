.class public Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
.super Ljava/lang/Object;
.source "UcmAgentWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    }
.end annotation


# static fields
.field private static final AGENT_META_DATA:Ljava/lang/String; = "com.samsung.ucm.agent"

.field private static final AGENT_XML_TAG:Ljava/lang/String; = "cred-agent"

.field private static final DEBUG:Z

.field private static final MSG_RESTART_TIMEOUT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "UcmAgentWrapper"


# instance fields
.field private RESTART_TIMEOUT_MILLIS:J

.field componentName:Landroid/content/ComponentName;

.field info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

.field private mBound:Z

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

.field private mUcsAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-string v0, "eng"

    const-string v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/ucm/ucmservice/CredentialManagerService;Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .param p3, "comp"    # Landroid/content/ComponentName;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->RESTART_TIMEOUT_MILLIS:J

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mBound:Z

    .line 48
    new-instance v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$1;

    invoke-direct {v0, p0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$1;-><init>(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mHandler:Landroid/os/Handler;

    .line 133
    new-instance v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;

    invoke-direct {v0, p0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;-><init>(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    .line 77
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 79
    iput-object p3, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;)Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .param p1, "x1"    # Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcsAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mBound:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->scheduleRestart()V

    return-void
.end method

.method public static getAgentInfo(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    .locals 27
    .param p0, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 169
    if-nez p1, :cond_1

    .line 170
    const-string v23, "UcmAgentWrapper"

    const-string v24, "Context is null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v4, 0x0

    .line 347
    :cond_0
    :goto_0
    return-object v4

    .line 174
    :cond_1
    if-eqz p0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v23, v0

    if-nez v23, :cond_3

    .line 176
    :cond_2
    const-string v23, "UcmAgentWrapper"

    const-string v24, "resolveInfo null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v4, 0x0

    goto :goto_0

    .line 179
    :cond_3
    const/4 v8, 0x0

    .line 180
    .local v8, "cn":Ljava/lang/String;
    new-instance v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    invoke-direct {v4}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;-><init>()V

    .line 181
    .local v4, "agentInfo":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 182
    .local v17, "pm":Landroid/content/pm/PackageManager;
    const/4 v14, 0x0

    .line 183
    .local v14, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v7, 0x0

    .line 185
    .local v7, "caughtException":Ljava/lang/Exception;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v23, v0

    const-string v24, "com.samsung.ucm.agent"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v14

    .line 186
    if-nez v14, :cond_4

    .line 187
    const-string v23, "UcmAgentWrapper"

    const-string v24, "Can\'t find com.samsung.ucm.agent meta-data"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    const/4 v4, 0x0

    .line 339
    .end local v4    # "agentInfo":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    if-eqz v14, :cond_0

    .line 340
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 190
    .restart local v4    # "agentInfo":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v21

    .line 194
    .local v21, "res":Landroid/content/res/Resources;
    :cond_5
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v22

    .local v22, "type":I
    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 196
    :cond_6
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 197
    .local v13, "nodeName":Ljava/lang/String;
    const-string v23, "cred-agent"

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_7

    .line 198
    const-string v23, "UcmAgentWrapper"

    const-string v24, "Meta-data does not start with tag cred-agent"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    const/4 v4, 0x0

    .line 339
    .end local v4    # "agentInfo":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    if-eqz v14, :cond_0

    .line 340
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 202
    .restart local v4    # "agentInfo":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    :cond_7
    const/16 v23, 0x0

    :try_start_2
    const-string v24, "id"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    .line 203
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_c

    .line 205
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ":"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    .line 210
    const/16 v23, 0x0

    const-string v24, "summary"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->summary:Ljava/lang/String;

    .line 211
    const/16 v23, 0x0

    const-string v24, "title"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->title:Ljava/lang/String;

    .line 212
    const/16 v23, 0x0

    const-string v24, "vendorId"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->vendorId:Ljava/lang/String;

    .line 213
    const-string v23, "true"

    const/16 v24, 0x0

    const-string v25, "isDetachable"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    move/from16 v0, v23

    iput-boolean v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isDetachable:Z

    .line 214
    const-string v23, "true"

    const/16 v24, 0x0

    const-string v25, "reqUserVerification"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    move/from16 v0, v23

    iput-boolean v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->reqUserVerification:Z

    .line 215
    const-string v23, "true"

    const/16 v24, 0x0

    const-string v25, "isHardwareBacked"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    move/from16 v0, v23

    iput-boolean v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isHardwareBacked:Z

    .line 216
    const-string v23, "true"

    const/16 v24, 0x0

    const-string v25, "isReadOnly"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    move/from16 v0, v23

    iput-boolean v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isReadOnly:Z

    .line 218
    sget-boolean v23, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->DEBUG:Z

    if-eqz v23, :cond_8

    const-string v23, "UcmAgentWrapper"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "DETAILED agentInfo information : isDetachable = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x0

    const-string v26, "isDetachable"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " requireUserVerification = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x0

    const-string v26, "reqUserVerification"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " isHardwareBacked = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x0

    const-string v26, "isHardwareBacked"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " isReadOnly = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x0

    const-string v26, "isReadOnly"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " packageName = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_8
    const/16 v23, 0x0

    const-string v24, "configuratorList"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->configuratorList:Ljava/lang/String;

    .line 223
    const/16 v23, 0x0

    const-string v24, "isManageable"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 224
    .local v11, "isManageable":Ljava/lang/String;
    if-eqz v11, :cond_d

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_d

    const-string v23, "false"

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 225
    const/16 v23, 0x0

    move/from16 v0, v23

    iput-boolean v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isManageable:Z

    .line 229
    :goto_1
    const-string v23, "true"

    const/16 v24, 0x0

    const-string v25, "enforceManagement"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    move/from16 v0, v23

    iput-boolean v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enforceManagement:Z

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    if-eqz v23, :cond_9

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->serviceUid:I

    .line 233
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    .line 235
    const/16 v23, 0x0

    const-string v24, "pinMinimum"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 236
    .local v16, "pinMinLength":Ljava/lang/String;
    if-eqz v16, :cond_e

    .line 237
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    iput v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMinLength:I

    .line 243
    :goto_2
    const/16 v23, 0x0

    const-string v24, "pinMaximum"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 244
    .local v15, "pinMaxLength":Ljava/lang/String;
    if-eqz v15, :cond_f

    .line 245
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    iput v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMaxLength:I

    .line 251
    :goto_3
    const/16 v23, 0x0

    const-string v24, "pukMinimum"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 252
    .local v20, "pukMinLength":Ljava/lang/String;
    if-eqz v20, :cond_10

    .line 253
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    iput v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMinLength:I

    .line 259
    :goto_4
    const/16 v23, 0x0

    const-string v24, "pukMaximum"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 260
    .local v19, "pukMaxLength":Ljava/lang/String;
    if-eqz v19, :cond_12

    .line 261
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    iput v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMaxLength:I

    .line 267
    :goto_5
    const/16 v23, 0x0

    const-string v24, "pinRetrycount"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 268
    .local v5, "authMaxCnt":Ljava/lang/String;
    if-eqz v5, :cond_13

    .line 269
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    iput v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMaxCnt:I

    .line 275
    :goto_6
    const/16 v23, 0x0

    const-string v24, "checkMode"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 276
    .local v6, "authMode":Ljava/lang/String;
    if-eqz v6, :cond_14

    .line 277
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    iput v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMode:I

    .line 283
    :goto_7
    const-string v23, "true"

    const/16 v24, 0x0

    const-string v25, "isGeneratePasswordSupport"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    move/from16 v0, v23

    iput-boolean v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isGeneratePasswordAvailable:Z

    .line 286
    const-string v23, "true"

    const/16 v24, 0x0

    const-string v25, "isODESupport"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    move/from16 v0, v23

    iput-boolean v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isODESupport:Z

    .line 289
    const/16 v23, 0x0

    const-string v24, "settingsActivity"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 290
    if-eqz v8, :cond_a

    const/16 v23, 0x2f

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v23

    if-gez v23, :cond_a

    .line 291
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 293
    :cond_a
    if-nez v8, :cond_15

    const/16 v23, 0x0

    :goto_8
    move-object/from16 v0, v23

    iput-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->settingsComponentName:Landroid/content/ComponentName;

    .line 297
    const/16 v23, 0x0

    const-string v24, "storageType"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->storageType:Ljava/lang/String;

    .line 300
    const/16 v23, 0x0

    const-string v24, "enabledSCP"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledSCP:Ljava/lang/String;

    .line 303
    const/16 v23, 0x0

    const-string v24, "enabledWrap"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 304
    .local v10, "enabledWrap":Ljava/lang/String;
    if-eqz v10, :cond_16

    .line 305
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    iput v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledWrap:I

    .line 312
    :goto_9
    invoke-virtual {v4}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->toString()Ljava/lang/String;

    move-result-object v18

    .line 313
    .local v18, "print":Ljava/lang/String;
    const-string v23, "UcmAgentWrapper"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/16 v23, 0x0

    const-string v24, "AID"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, "AID":Ljava/lang/String;
    if-eqz v3, :cond_17

    const/16 v23, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_17

    .line 318
    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->AID:[B

    .line 325
    :goto_a
    const/16 v23, 0x0

    const-string v24, "isPUKSupported"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 326
    .local v12, "isPUKSupported":Ljava/lang/String;
    if-eqz v12, :cond_18

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_18

    const-string v23, "false"

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_18

    .line 327
    const/16 v23, 0x0

    move/from16 v0, v23

    iput-boolean v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isPUKSupported:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 339
    :goto_b
    if-eqz v14, :cond_b

    .line 340
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    .line 342
    .end local v3    # "AID":Ljava/lang/String;
    .end local v5    # "authMaxCnt":Ljava/lang/String;
    .end local v6    # "authMode":Ljava/lang/String;
    .end local v10    # "enabledWrap":Ljava/lang/String;
    .end local v11    # "isManageable":Ljava/lang/String;
    .end local v12    # "isPUKSupported":Ljava/lang/String;
    .end local v13    # "nodeName":Ljava/lang/String;
    .end local v15    # "pinMaxLength":Ljava/lang/String;
    .end local v16    # "pinMinLength":Ljava/lang/String;
    .end local v18    # "print":Ljava/lang/String;
    .end local v19    # "pukMaxLength":Ljava/lang/String;
    .end local v20    # "pukMinLength":Ljava/lang/String;
    .end local v21    # "res":Landroid/content/res/Resources;
    .end local v22    # "type":I
    :cond_b
    :goto_c
    if-eqz v7, :cond_19

    .line 343
    const-string v23, "UcmAgentWrapper"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Error parsing : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 207
    .restart local v13    # "nodeName":Ljava/lang/String;
    .restart local v21    # "res":Landroid/content/res/Resources;
    .restart local v22    # "type":I
    :cond_c
    :try_start_3
    const-string v23, "UcmAgentWrapper"

    const-string v24, "Agent Id can\'t be null.."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 208
    const/4 v4, 0x0

    .line 339
    .end local v4    # "agentInfo":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    if-eqz v14, :cond_0

    .line 340
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 227
    .restart local v4    # "agentInfo":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    .restart local v11    # "isManageable":Ljava/lang/String;
    :cond_d
    const/16 v23, 0x1

    :try_start_4
    move/from16 v0, v23

    iput-boolean v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isManageable:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 332
    .end local v11    # "isManageable":Ljava/lang/String;
    .end local v13    # "nodeName":Ljava/lang/String;
    .end local v21    # "res":Landroid/content/res/Resources;
    .end local v22    # "type":I
    :catch_0
    move-exception v9

    .line 333
    .local v9, "e":Ljava/io/IOException;
    move-object v7, v9

    .line 339
    if-eqz v14, :cond_b

    .line 340
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_c

    .line 239
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v11    # "isManageable":Ljava/lang/String;
    .restart local v13    # "nodeName":Ljava/lang/String;
    .restart local v16    # "pinMinLength":Ljava/lang/String;
    .restart local v21    # "res":Landroid/content/res/Resources;
    .restart local v22    # "type":I
    :cond_e
    :try_start_5
    const-string v23, "UcmAgentWrapper"

    const-string v24, "pinMinLength in xml is null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/16 v23, 0x4

    move/from16 v0, v23

    iput v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMinLength:I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 334
    .end local v11    # "isManageable":Ljava/lang/String;
    .end local v13    # "nodeName":Ljava/lang/String;
    .end local v16    # "pinMinLength":Ljava/lang/String;
    .end local v21    # "res":Landroid/content/res/Resources;
    .end local v22    # "type":I
    :catch_1
    move-exception v9

    .line 335
    .local v9, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v7, v9

    .line 339
    if-eqz v14, :cond_b

    .line 340
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_c

    .line 247
    .end local v9    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v11    # "isManageable":Ljava/lang/String;
    .restart local v13    # "nodeName":Ljava/lang/String;
    .restart local v15    # "pinMaxLength":Ljava/lang/String;
    .restart local v16    # "pinMinLength":Ljava/lang/String;
    .restart local v21    # "res":Landroid/content/res/Resources;
    .restart local v22    # "type":I
    :cond_f
    :try_start_6
    const-string v23, "UcmAgentWrapper"

    const-string v24, "pinMaxLength in xml is null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/16 v23, 0x6

    move/from16 v0, v23

    iput v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMaxLength:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    .line 336
    .end local v11    # "isManageable":Ljava/lang/String;
    .end local v13    # "nodeName":Ljava/lang/String;
    .end local v15    # "pinMaxLength":Ljava/lang/String;
    .end local v16    # "pinMinLength":Ljava/lang/String;
    .end local v21    # "res":Landroid/content/res/Resources;
    .end local v22    # "type":I
    :catch_2
    move-exception v9

    .line 337
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v7, v9

    .line 339
    if-eqz v14, :cond_b

    .line 340
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_c

    .line 255
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v11    # "isManageable":Ljava/lang/String;
    .restart local v13    # "nodeName":Ljava/lang/String;
    .restart local v15    # "pinMaxLength":Ljava/lang/String;
    .restart local v16    # "pinMinLength":Ljava/lang/String;
    .restart local v20    # "pukMinLength":Ljava/lang/String;
    .restart local v21    # "res":Landroid/content/res/Resources;
    .restart local v22    # "type":I
    :cond_10
    :try_start_7
    const-string v23, "UcmAgentWrapper"

    const-string v24, "pukMinLength in xml is null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/16 v23, 0x8

    move/from16 v0, v23

    iput v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMinLength:I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_4

    .line 339
    .end local v11    # "isManageable":Ljava/lang/String;
    .end local v13    # "nodeName":Ljava/lang/String;
    .end local v15    # "pinMaxLength":Ljava/lang/String;
    .end local v16    # "pinMinLength":Ljava/lang/String;
    .end local v20    # "pukMinLength":Ljava/lang/String;
    .end local v21    # "res":Landroid/content/res/Resources;
    .end local v22    # "type":I
    :catchall_0
    move-exception v23

    if-eqz v14, :cond_11

    .line 340
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_11
    throw v23

    .line 263
    .restart local v11    # "isManageable":Ljava/lang/String;
    .restart local v13    # "nodeName":Ljava/lang/String;
    .restart local v15    # "pinMaxLength":Ljava/lang/String;
    .restart local v16    # "pinMinLength":Ljava/lang/String;
    .restart local v19    # "pukMaxLength":Ljava/lang/String;
    .restart local v20    # "pukMinLength":Ljava/lang/String;
    .restart local v21    # "res":Landroid/content/res/Resources;
    .restart local v22    # "type":I
    :cond_12
    :try_start_8
    const-string v23, "UcmAgentWrapper"

    const-string v24, "pukMaxLength in xml is null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/16 v23, 0x14

    move/from16 v0, v23

    iput v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMaxLength:I

    goto/16 :goto_5

    .line 271
    .restart local v5    # "authMaxCnt":Ljava/lang/String;
    :cond_13
    const-string v23, "UcmAgentWrapper"

    const-string v24, "authMaxCnt in xml is null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/16 v23, 0x5

    move/from16 v0, v23

    iput v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMaxCnt:I

    goto/16 :goto_6

    .line 279
    .restart local v6    # "authMode":Ljava/lang/String;
    :cond_14
    const-string v23, "UcmAgentWrapper"

    const-string v24, "authMode in xml is null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMode:I

    goto/16 :goto_7

    .line 293
    :cond_15
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v23

    goto/16 :goto_8

    .line 307
    .restart local v10    # "enabledWrap":Ljava/lang/String;
    :cond_16
    const-string v23, "UcmAgentWrapper"

    const-string v24, "enabledWrap in xml is null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledWrap:I

    goto/16 :goto_9

    .line 320
    .restart local v3    # "AID":Ljava/lang/String;
    .restart local v18    # "print":Ljava/lang/String;
    :cond_17
    const-string v23, "UcmAgentWrapper"

    const-string v24, "AID in xml is null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/16 v23, 0x0

    move-object/from16 v0, v23

    iput-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->AID:[B

    goto/16 :goto_a

    .line 329
    .restart local v12    # "isPUKSupported":Ljava/lang/String;
    :cond_18
    const/16 v23, 0x1

    move/from16 v0, v23

    iput-boolean v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isPUKSupported:Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_b

    .line 346
    .end local v3    # "AID":Ljava/lang/String;
    .end local v5    # "authMaxCnt":Ljava/lang/String;
    .end local v6    # "authMode":Ljava/lang/String;
    .end local v10    # "enabledWrap":Ljava/lang/String;
    .end local v11    # "isManageable":Ljava/lang/String;
    .end local v12    # "isPUKSupported":Ljava/lang/String;
    .end local v13    # "nodeName":Ljava/lang/String;
    .end local v15    # "pinMaxLength":Ljava/lang/String;
    .end local v16    # "pinMinLength":Ljava/lang/String;
    .end local v18    # "print":Ljava/lang/String;
    .end local v19    # "pukMaxLength":Ljava/lang/String;
    .end local v20    # "pukMinLength":Ljava/lang/String;
    .end local v21    # "res":Landroid/content/res/Resources;
    .end local v22    # "type":I
    :cond_19
    const-string v23, "UcmAgentWrapper"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "agentInfo: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v4}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method static getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 3
    .param p0, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 128
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_1

    .line 129
    :cond_0
    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 352
    sget-boolean v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "UcmAgentWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hexStringToByteArray : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 354
    :cond_1
    const-string v3, "UcmAgentWrapper"

    const-string v4, "Input value is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v0, 0x0

    .line 363
    :cond_2
    return-object v0

    .line 357
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 358
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 359
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 360
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 359
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method private scheduleRestart()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 155
    const-string v0, "UcmAgentWrapper"

    const-string v1, "scheduleRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->RESTART_TIMEOUT_MILLIS:J

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 158
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 64
    instance-of v1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    if-nez v1, :cond_0

    .line 65
    const/4 v1, 0x0

    .line 68
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 67
    check-cast v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 68
    .local v0, "o":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcsAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public initialize(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;)V
    .locals 8
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    const-wide/32 v6, 0x1d4c0

    .line 87
    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v1

    .line 88
    .local v1, "name":Landroid/content/ComponentName;
    const-string v2, "UcmAgentWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getAgentInfo(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 93
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v2, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v2, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    const-string v3, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    iput-wide v6, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->RESTART_TIMEOUT_MILLIS:J

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v2, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    const-string v3, "com.samsung.ucs.agent.boot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    iput-wide v6, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->RESTART_TIMEOUT_MILLIS:J

    .line 103
    :cond_1
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->scheduleRestart()V

    .line 104
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 105
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4, p2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mBound:Z

    .line 107
    :cond_2
    iget-boolean v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mBound:Z

    if-nez v2, :cond_3

    .line 108
    const-string v2, "UcmAgentWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not able to bind "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_3
    return-void
.end method

.method public unbind()V
    .locals 2

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mBound:Z

    if-nez v0, :cond_0

    .line 117
    const-string v0, "UcmAgentWrapper"

    const-string v1, "it is not bound anymore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_0
    return-void

    .line 120
    :cond_0
    const-string v0, "UcmAgentWrapper"

    const-string v1, "unbind "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mBound:Z

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcsAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    goto :goto_0
.end method

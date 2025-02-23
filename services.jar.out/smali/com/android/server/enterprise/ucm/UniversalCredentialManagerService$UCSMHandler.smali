.class Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
.super Landroid/os/Handler;
.source "UniversalCredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UCSMHandler"
.end annotation


# static fields
.field public static final MSG_CLEAN_INFO:I = 0x3

.field public static final MSG_CLEAN_USER_INFO:I = 0x1

.field public static final MSG_CONTAINER_LOCK_STATUS_UPDATE:I = 0x9

.field public static final MSG_LOAD_ADMINS:I = 0x2

.field public static final MSG_LOAD_PLUGINS:I = 0x4

.field public static final MSG_LOAD_WHITELIST_AND_EXEMPT_APPS:I = 0x5

.field public static final MSG_LOCK_STATUS_UPDATE:I = 0x7

.field public static final MSG_PRE_ADMIN_REMOVED:I = 0xa

.field public static final MSG_REINSTALL_CA_CERT:I = 0x8

.field public static final MSG_SYNC_UP_DATA:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 62
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v59, v0

    packed-switch v59, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/16 v47, 0x0

    .local v47, "ret":Z
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .local v5, "adminUID":I
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "adminId":Ljava/lang/String;
    const/16 v59, 0x1

    move/from16 v0, v59

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v48, v0

    const/16 v59, 0x0

    const-string v60, "adminUid"

    aput-object v60, v48, v59

    .local v48, "sColumns":[Ljava/lang/String;
    const/16 v59, 0x1

    move/from16 v0, v59

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v49, v0

    const/16 v59, 0x0

    aput-object v4, v49, v59

    .local v49, "sValues":[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$600(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v59

    const-string v60, "UniversalCredentialEnforcedLockTypeTable"

    move-object/from16 v0, v59

    move-object/from16 v1, v60

    move-object/from16 v2, v48

    move-object/from16 v3, v49

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v47

    :cond_1
    :goto_1
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v61, "performPreAdminCleanup - Enforce Lock Type status- "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v19

    .local v19, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$700()Z

    move-result v59

    if-eqz v59, :cond_1

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v61, "performPreAdminCleanup - Exception delete"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v4    # "adminId":Ljava/lang/String;
    .end local v5    # "adminUID":I
    .end local v19    # "e":Ljava/lang/Exception;
    .end local v47    # "ret":Z
    .end local v48    # "sColumns":[Ljava/lang/String;
    .end local v49    # "sValues":[Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->installCACertOnBoot()V
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$800(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)V

    goto/16 :goto_0

    :pswitch_2
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    const-string v60, "****MSG_CLEAN_USER_INFO block started****"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v55, v0

    .local v55, "userId":I
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v61, "userId - "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v59

    if-eqz v59, :cond_2

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    const-string/jumbo v60, "notifyChangeToPlugin is called for user removed..."

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .local v18, "data":Landroid/os/Bundle;
    const-string/jumbo v59, "userId"

    move-object/from16 v0, v18

    move-object/from16 v1, v59

    move/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v59

    const/16 v60, 0x0

    const/16 v61, 0xb

    move-object/from16 v0, v59

    move-object/from16 v1, v60

    move/from16 v2, v61

    move-object/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->removeEnforcedLockTypeNotification(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v18    # "data":Landroid/os/Bundle;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    move/from16 v1, v55

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->performUserCleanup(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$900(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    const-string v60, "****MSG_CLEAN_USER_INFO block ended****"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v19

    .restart local v19    # "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v61, "notifyChangeToPlugin Exception "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v19    # "e":Ljava/lang/Exception;
    .end local v55    # "userId":I
    :pswitch_3
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    const-string v60, "****MSG_LOAD_ADMINS block started****"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAllAdmins()Ljava/util/List;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1000(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v52

    .local v52, "ucsAdmins":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->adminIds:Ljava/util/List;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v59

    if-eqz v59, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->adminIds:Ljava/util/List;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->adminIds:Ljava/util/List;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v59

    invoke-interface/range {v59 .. v59}, Ljava/util/List;->size()I

    move-result v59

    if-lez v59, :cond_3

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "adminIds size- "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->adminIds:Ljava/util/List;
    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v61

    invoke-interface/range {v61 .. v61}, Ljava/util/List;->size()I

    move-result v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .end local v52    # "ucsAdmins":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3
    :goto_3
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    const-string v60, "****MSG_LOAD_ADMINS block ended****"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v59

    const/16 v60, 0x4

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v39

    .local v39, "msg1":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v39    # "msg1":Landroid/os/Message;
    :catch_2
    move-exception v19

    .restart local v19    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .end local v19    # "e":Ljava/lang/Exception;
    :pswitch_4
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    const-string v60, "****MSG_CLEAN_INFO block started****"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v59, v0

    check-cast v59, [I

    move-object/from16 v0, v59

    check-cast v0, [I

    move-object v10, v0

    .local v10, "appsUid":[I
    if-eqz v10, :cond_c

    array-length v0, v10

    move/from16 v59, v0

    if-lez v59, :cond_c

    move-object v11, v10

    .local v11, "arr$":[I
    array-length v0, v11

    move/from16 v36, v0

    .local v36, "len$":I
    const/16 v29, 0x0

    .local v29, "i$":I
    move/from16 v31, v29

    .end local v11    # "arr$":[I
    .end local v29    # "i$":I
    .end local v36    # "len$":I
    .local v31, "i$":I
    :goto_4
    move/from16 v0, v31

    move/from16 v1, v36

    if-ge v0, v1, :cond_c

    aget v59, v11, v31

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    .local v53, "uid":Ljava/lang/Integer;
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v59

    invoke-static/range {v59 .. v59}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v55

    .restart local v55    # "userId":I
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v61, "uid - "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, ", userId-"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->adminIds:Ljava/util/List;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v53

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_4

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    const-string v60, "UCS admin uninstall. Start cleaning...."

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v60

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->notifyAdminUninstall(I)V
    invoke-static/range {v59 .. v60}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1200(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v60

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->performAdminCleanup(I)V
    invoke-static/range {v59 .. v60}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->adminIds:Ljava/util/List;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v53

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->activePluginsCache:Ljava/util/HashMap;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1400(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->activePluginsCache:Ljava/util/HashMap;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1400(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Ljava/lang/String;

    .local v45, "pluginPkg":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Active plugin is removed. Perform clean up for uid-"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, ", pluginPkg-"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v45

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAdminIdRelatedToStorage(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1500(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .local v7, "adminUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v7, :cond_6

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v59

    if-lez v59, :cond_6

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .end local v31    # "i$":I
    :cond_5
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v59

    if-eqz v59, :cond_7

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .local v6, "adminUid":Ljava/lang/Integer;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v61, "notifyLicenseStatus expire - adminUid-"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPm:Landroid/content/pm/PackageManager;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$200(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v59

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v60

    invoke-virtual/range {v59 .. v60}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v44

    .local v44, "pkgs":[Ljava/lang/String;
    if-eqz v44, :cond_5

    move-object/from16 v12, v44

    .local v12, "arr$":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v37, v0

    .local v37, "len$":I
    const/16 v30, 0x0

    .local v30, "i$":I
    :goto_5
    move/from16 v0, v30

    move/from16 v1, v37

    if-ge v0, v1, :cond_5

    aget-object v43, v12, v30

    .local v43, "pkgName":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Sending event update to package "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v41, Landroid/content/Intent;

    const-string v59, "com.sec.enterprise.intent.action.UCM_NOTIFY_EVENT"

    move-object/from16 v0, v41

    move-object/from16 v1, v59

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v41, "notifyIntent":Landroid/content/Intent;
    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .restart local v18    # "data":Landroid/os/Bundle;
    const-string v59, "event_id"

    const/16 v60, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v59

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v59, "package_name"

    move-object/from16 v0, v18

    move-object/from16 v1, v59

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    const-string v60, "Sending intent with UCSM Other permission..."

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/Context;

    move-result-object v59

    new-instance v60, Landroid/os/UserHandle;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v61

    invoke-static/range {v61 .. v61}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v61

    invoke-direct/range {v60 .. v61}, Landroid/os/UserHandle;-><init>(I)V

    const-string v61, "com.sec.enterprise.permission.KNOX_UCM_OTHER"

    move-object/from16 v0, v59

    move-object/from16 v1, v41

    move-object/from16 v2, v60

    move-object/from16 v3, v61

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_6
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_5

    :catch_3
    move-exception v50

    .local v50, "se":Ljava/lang/Exception;
    :try_start_5
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "  Exception se-"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    .end local v6    # "adminUid":Ljava/lang/Integer;
    .end local v7    # "adminUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "appsUid":[I
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v18    # "data":Landroid/os/Bundle;
    .end local v30    # "i$":I
    .end local v37    # "len$":I
    .end local v41    # "notifyIntent":Landroid/content/Intent;
    .end local v43    # "pkgName":Ljava/lang/String;
    .end local v44    # "pkgs":[Ljava/lang/String;
    .end local v45    # "pluginPkg":Ljava/lang/String;
    .end local v50    # "se":Ljava/lang/Exception;
    .end local v53    # "uid":Ljava/lang/Integer;
    .end local v55    # "userId":I
    :catch_4
    move-exception v19

    .restart local v19    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v7    # "adminUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v10    # "appsUid":[I
    .restart local v31    # "i$":I
    .restart local v45    # "pluginPkg":Ljava/lang/String;
    .restart local v53    # "uid":Ljava/lang/Integer;
    .restart local v55    # "userId":I
    :cond_6
    :try_start_6
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    const-string v60, "No admin found related to package..."

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v31    # "i$":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->activePluginsCache:Ljava/util/HashMap;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1400(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v45

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->performStorageCleanup(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1600(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;Ljava/lang/String;)V

    .end local v7    # "adminUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v45    # "pluginPkg":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->whitelistedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1700(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->whitelistedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1700(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/String;

    .local v42, "packageName":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Calling performWhitelistAppCleanup for userId-"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, ", packageName-"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    move/from16 v1, v55

    move-object/from16 v2, v42

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->performWhitelistAppCleanup(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1800(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->whitelistedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1700(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v42    # "packageName":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->exemptedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1900(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->exemptedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1900(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/String;

    .restart local v42    # "packageName":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Calling performExemptedAppCleanup for userId-"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, ", packageName-"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    move/from16 v1, v55

    move-object/from16 v2, v42

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->performExemptedAppCleanup(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$2000(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->exemptedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1900(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v42    # "packageName":Ljava/lang/String;
    :cond_a
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v59

    if-eqz v59, :cond_b

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    const-string/jumbo v60, "notifyChangeToPlugin is called for package uninstalled..."

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :try_start_7
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .restart local v18    # "data":Landroid/os/Bundle;
    const-string/jumbo v59, "userId"

    move-object/from16 v0, v18

    move-object/from16 v1, v59

    move/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v59, "packageUid"

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v60

    move-object/from16 v0, v18

    move-object/from16 v1, v59

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v59

    const/16 v60, 0x0

    const/16 v61, 0xc

    move-object/from16 v0, v59

    move-object/from16 v1, v60

    move/from16 v2, v61

    move-object/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .end local v18    # "data":Landroid/os/Bundle;
    :cond_b
    :goto_7
    add-int/lit8 v29, v31, 0x1

    .restart local v29    # "i$":I
    move/from16 v31, v29

    .end local v29    # "i$":I
    .restart local v31    # "i$":I
    goto/16 :goto_4

    .end local v31    # "i$":I
    :catch_5
    move-exception v19

    .restart local v19    # "e":Ljava/lang/Exception;
    :try_start_8
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v61, "notifyChangeToPlugin Exception "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .end local v19    # "e":Ljava/lang/Exception;
    .end local v53    # "uid":Ljava/lang/Integer;
    .end local v55    # "userId":I
    :cond_c
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    const-string v60, "****MSG_CLEAN_INFO block ended****"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    .end local v10    # "appsUid":[I
    :pswitch_5
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    const-string v60, "****MSG_LOAD_PLUGINS block started****"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getActivePlugin()Ljava/util/ArrayList;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$2100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/ArrayList;

    move-result-object v16

    .local v16, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v16, :cond_10

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v59

    if-lez v59, :cond_10

    const/16 v42, 0x0

    .restart local v42    # "packageName":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "appUid":I
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_8
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v59

    if-eqz v59, :cond_f

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/content/ContentValues;

    .local v58, "value":Landroid/content/ContentValues;
    const-string/jumbo v59, "storagePackageName"

    invoke-virtual/range {v58 .. v59}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    const-string v59, "appUid"

    invoke-virtual/range {v58 .. v59}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Integer;->intValue()I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    move-result v9

    const/16 v59, 0x3e8

    move/from16 v0, v59

    if-eq v9, v0, :cond_d

    if-eqz v9, :cond_d

    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->activePluginsCache:Ljava/util/HashMap;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1400(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v59

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v59

    if-nez v59, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->activePluginsCache:Ljava/util/HashMap;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1400(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v59

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    move-object/from16 v0, v59

    move-object/from16 v1, v60

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Caching plugin app id-"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, ", packageName-"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_8

    :catch_6
    move-exception v19

    .restart local v19    # "e":Ljava/lang/Exception;
    :try_start_b
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Exception "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_8

    .end local v9    # "appUid":I
    .end local v16    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v19    # "e":Ljava/lang/Exception;
    .end local v29    # "i$":Ljava/util/Iterator;
    .end local v42    # "packageName":Ljava/lang/String;
    .end local v58    # "value":Landroid/content/ContentValues;
    :catch_7
    move-exception v19

    .restart local v19    # "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Exception "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v19    # "e":Ljava/lang/Exception;
    :cond_e
    :goto_9
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    const-string v60, "****MSG_LOAD_PLUGINS block ended****"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v59

    const/16 v60, 0x5

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v40

    .local v40, "msg2":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v40    # "msg2":Landroid/os/Message;
    .restart local v9    # "appUid":I
    .restart local v16    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v29    # "i$":Ljava/util/Iterator;
    .restart local v42    # "packageName":Ljava/lang/String;
    :cond_f
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->activePluginsCache:Ljava/util/HashMap;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1400(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v59

    invoke-interface/range {v59 .. v59}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "entries":Ljava/util/Iterator;
    :goto_a
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v59

    if-eqz v59, :cond_e

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Map$Entry;

    .local v27, "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    .local v34, "key":Ljava/lang/Integer;
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Ljava/lang/String;

    .local v58, "value":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Plugin ID = "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, ", Plugin package = "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .end local v9    # "appUid":I
    .end local v24    # "entries":Ljava/util/Iterator;
    .end local v27    # "entry":Ljava/util/Map$Entry;
    .end local v29    # "i$":Ljava/util/Iterator;
    .end local v34    # "key":Ljava/lang/Integer;
    .end local v42    # "packageName":Ljava/lang/String;
    .end local v58    # "value":Ljava/lang/String;
    :cond_10
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    const-string v60, "No active plugin found"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    goto/16 :goto_9

    .end local v16    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :pswitch_6
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    const-string v60, "****MSG_LOAD_WHITELIST_AND_EXEMPT_APPS block started****"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAllWhitelistedApps()Ljava/util/ArrayList;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$2200(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/ArrayList;

    move-result-object v16

    .restart local v16    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v16, :cond_14

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v59

    if-lez v59, :cond_14

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v61, "getAllWhitelistedApps - Size-"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v42, 0x0

    .restart local v42    # "packageName":Ljava/lang/String;
    const/4 v9, 0x0

    .restart local v9    # "appUid":I
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .restart local v29    # "i$":Ljava/util/Iterator;
    :cond_11
    :goto_b
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v59

    if-eqz v59, :cond_13

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/content/ContentValues;

    .local v58, "value":Landroid/content/ContentValues;
    const-string v59, "appPackage"

    invoke-virtual/range {v58 .. v59}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    const-string v59, "appUid"

    invoke-virtual/range {v58 .. v59}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Integer;->intValue()I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    move-result v9

    :try_start_e
    const-string v59, "*"

    move-object/from16 v0, v42

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-nez v59, :cond_11

    const/16 v59, 0x3e8

    move/from16 v0, v59

    if-eq v9, v0, :cond_11

    if-eqz v9, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->whitelistedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1700(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v59

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v59

    if-nez v59, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->whitelistedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1700(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v59

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    move-object/from16 v0, v59

    move-object/from16 v1, v60

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Caching WhiteList app id-"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, ", packageName-"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    goto/16 :goto_b

    :catch_8
    move-exception v19

    .restart local v19    # "e":Ljava/lang/Exception;
    :try_start_f
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Exception "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    goto/16 :goto_b

    .end local v9    # "appUid":I
    .end local v16    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v19    # "e":Ljava/lang/Exception;
    .end local v29    # "i$":Ljava/util/Iterator;
    .end local v42    # "packageName":Ljava/lang/String;
    .end local v58    # "value":Landroid/content/ContentValues;
    :catch_9
    move-exception v19

    .restart local v19    # "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Exception -"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v19    # "e":Ljava/lang/Exception;
    :cond_12
    :goto_c
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    const-string v60, "****MSG_LOAD_WHITELIST_AND_EXEMPT_APPS block ended****"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v9    # "appUid":I
    .restart local v16    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v29    # "i$":Ljava/util/Iterator;
    .restart local v42    # "packageName":Ljava/lang/String;
    :cond_13
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->whitelistedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1700(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v59

    invoke-interface/range {v59 .. v59}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .restart local v24    # "entries":Ljava/util/Iterator;
    :goto_d
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v59

    if-eqz v59, :cond_15

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Map$Entry;

    .restart local v27    # "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    .restart local v34    # "key":Ljava/lang/Integer;
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Ljava/lang/String;

    .local v58, "value":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "WHITELIST App UID = "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, ", App package = "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .end local v9    # "appUid":I
    .end local v24    # "entries":Ljava/util/Iterator;
    .end local v27    # "entry":Ljava/util/Map$Entry;
    .end local v29    # "i$":Ljava/util/Iterator;
    .end local v34    # "key":Ljava/lang/Integer;
    .end local v42    # "packageName":Ljava/lang/String;
    .end local v58    # "value":Ljava/lang/String;
    :cond_14
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    const-string/jumbo v60, "getAllWhitelistedApps DB is empty..."

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAllExemptedApps()Ljava/util/ArrayList;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$2300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/ArrayList;

    move-result-object v17

    .local v17, "cvList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v17, :cond_18

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v59

    if-lez v59, :cond_18

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v61, "getAllExemptedApps - Size-"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v42, 0x0

    .restart local v42    # "packageName":Ljava/lang/String;
    const/4 v9, 0x0

    .restart local v9    # "appUid":I
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .restart local v29    # "i$":Ljava/util/Iterator;
    :cond_16
    :goto_e
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v59

    if-eqz v59, :cond_17

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/content/ContentValues;

    .local v58, "value":Landroid/content/ContentValues;
    const-string v59, "appPackage"

    invoke-virtual/range {v58 .. v59}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    const-string v59, "appUid"

    invoke-virtual/range {v58 .. v59}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Integer;->intValue()I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9

    move-result v9

    :try_start_11
    const-string v59, "com.samsung.knox.virtual.wifi"

    move-object/from16 v0, v42

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-nez v59, :cond_16

    const/16 v59, 0x3e8

    move/from16 v0, v59

    if-eq v9, v0, :cond_16

    if-eqz v9, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->exemptedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1900(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v59

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v59

    if-nez v59, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->exemptedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1900(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v59

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    move-object/from16 v0, v59

    move-object/from16 v1, v60

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Caching Exempted app id-"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, ", packageName-"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a

    goto/16 :goto_e

    :catch_a
    move-exception v19

    .restart local v19    # "e":Ljava/lang/Exception;
    :try_start_12
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Exception "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .end local v19    # "e":Ljava/lang/Exception;
    .end local v58    # "value":Landroid/content/ContentValues;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->exemptedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1900(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v59

    invoke-interface/range {v59 .. v59}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .restart local v24    # "entries":Ljava/util/Iterator;
    :goto_f
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v59

    if-eqz v59, :cond_12

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Map$Entry;

    .restart local v27    # "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    .restart local v34    # "key":Ljava/lang/Integer;
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Ljava/lang/String;

    .local v58, "value":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "EXEPMT-> App UID = "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, ", App package = "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .end local v9    # "appUid":I
    .end local v24    # "entries":Ljava/util/Iterator;
    .end local v27    # "entry":Ljava/util/Map$Entry;
    .end local v29    # "i$":Ljava/util/Iterator;
    .end local v34    # "key":Ljava/lang/Integer;
    .end local v42    # "packageName":Ljava/lang/String;
    .end local v58    # "value":Ljava/lang/String;
    :cond_18
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    const-string/jumbo v60, "getAllExemptedApps DB is empty..."

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    goto/16 :goto_c

    .end local v16    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v17    # "cvList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :pswitch_7
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    const-string v60, "****MSG_SYNC_UP_DATA block started****"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_13
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .restart local v18    # "data":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v59

    const/16 v60, 0x0

    const/16 v61, 0x11

    move-object/from16 v0, v59

    move-object/from16 v1, v60

    move/from16 v2, v61

    move-object/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAllUsers()Ljava/util/List;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$2400(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v8

    .local v8, "allUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v8, :cond_1a

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v59

    if-lez v59, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/Context;

    move-result-object v59

    const-string/jumbo v60, "user"

    invoke-virtual/range {v59 .. v60}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/os/UserManager;

    .local v38, "mUm":Landroid/os/UserManager;
    invoke-virtual/range {v38 .. v38}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v57

    .local v57, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v57 .. v57}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .restart local v29    # "i$":Ljava/util/Iterator;
    :cond_19
    :goto_10
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v59

    if-eqz v59, :cond_23

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Landroid/content/pm/UserInfo;

    .local v56, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v56

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v55, v0

    .restart local v55    # "userId":I
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Valid userid-"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    move-object/from16 v0, v59

    invoke-interface {v8, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_19

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Found userid on cache-"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    move-object/from16 v0, v59

    invoke-interface {v8, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_b

    goto :goto_10

    .end local v8    # "allUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18    # "data":Landroid/os/Bundle;
    .end local v29    # "i$":Ljava/util/Iterator;
    .end local v38    # "mUm":Landroid/os/UserManager;
    .end local v55    # "userId":I
    .end local v56    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v57    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_b
    move-exception v19

    .restart local v19    # "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Exception-"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v19    # "e":Ljava/lang/Exception;
    :cond_1a
    new-instance v54, Ljava/util/ArrayList;

    invoke-direct/range {v54 .. v54}, Ljava/util/ArrayList;-><init>()V

    .local v54, "uninstalledAppUid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v46

    .local v46, "pm":Landroid/content/pm/IPackageManager;
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->adminIds:Ljava/util/List;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v59

    invoke-interface/range {v59 .. v59}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .restart local v29    # "i$":Ljava/util/Iterator;
    :cond_1b
    :goto_11
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v59

    if-eqz v59, :cond_1c

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .local v4, "adminId":Ljava/lang/Integer;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "MSG_SYNC_UP_DATA adminId-"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPm:Landroid/content/pm/PackageManager;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$200(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v59

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v60

    invoke-virtual/range {v59 .. v60}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v44

    .restart local v44    # "pkgs":[Ljava/lang/String;
    if-nez v44, :cond_24

    move-object/from16 v0, v54

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v59

    if-nez v59, :cond_1b

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "MSG_SYNC_UP_DATA remove adminid : "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v54

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_c

    goto :goto_11

    .end local v4    # "adminId":Ljava/lang/Integer;
    .end local v29    # "i$":Ljava/util/Iterator;
    .end local v44    # "pkgs":[Ljava/lang/String;
    :catch_c
    move-exception v20

    .local v20, "e1":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Exception-"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v20    # "e1":Ljava/lang/Exception;
    :cond_1c
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->activePluginsCache:Ljava/util/HashMap;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1400(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v59

    invoke-interface/range {v59 .. v59}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .restart local v24    # "entries":Ljava/util/Iterator;
    :cond_1d
    :goto_12
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v59

    if-eqz v59, :cond_1e

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Map$Entry;

    .restart local v27    # "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    .restart local v34    # "key":Ljava/lang/Integer;
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Ljava/lang/String;

    .restart local v58    # "value":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "MSG_SYNC_UP_DATA plugin id -"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "MSG_SYNC_UP_DATA plugin package -"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPm:Landroid/content/pm/PackageManager;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$200(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v59

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v60

    invoke-virtual/range {v59 .. v60}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v44

    .restart local v44    # "pkgs":[Ljava/lang/String;
    if-nez v44, :cond_27

    move-object/from16 v0, v54

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v59

    if-nez v59, :cond_1d

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "MSG_SYNC_UP_DATA remove plugin : "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v54

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_d

    goto/16 :goto_12

    .end local v24    # "entries":Ljava/util/Iterator;
    .end local v27    # "entry":Ljava/util/Map$Entry;
    .end local v34    # "key":Ljava/lang/Integer;
    .end local v44    # "pkgs":[Ljava/lang/String;
    .end local v58    # "value":Ljava/lang/String;
    :catch_d
    move-exception v21

    .local v21, "e2":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Exception-"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v21    # "e2":Ljava/lang/Exception;
    :cond_1e
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->exemptedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1900(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v59

    invoke-interface/range {v59 .. v59}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "entries1":Ljava/util/Iterator;
    :cond_1f
    :goto_13
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v59

    if-eqz v59, :cond_20

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Map$Entry;

    .restart local v27    # "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    .restart local v34    # "key":Ljava/lang/Integer;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "MSG_SYNC_UP_DATA exempt app id -"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPm:Landroid/content/pm/PackageManager;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$200(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v59

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v60

    invoke-virtual/range {v59 .. v60}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v44

    .restart local v44    # "pkgs":[Ljava/lang/String;
    if-nez v44, :cond_1f

    move-object/from16 v0, v54

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v59

    if-nez v59, :cond_1f

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "MSG_SYNC_UP_DATA remove exempt app : "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v54

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_e

    goto :goto_13

    .end local v25    # "entries1":Ljava/util/Iterator;
    .end local v27    # "entry":Ljava/util/Map$Entry;
    .end local v34    # "key":Ljava/lang/Integer;
    .end local v44    # "pkgs":[Ljava/lang/String;
    :catch_e
    move-exception v22

    .local v22, "e3":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Exception-"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v22    # "e3":Ljava/lang/Exception;
    :cond_20
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->whitelistedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1700(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v59

    invoke-interface/range {v59 .. v59}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "entries2":Ljava/util/Iterator;
    :cond_21
    :goto_14
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v59

    if-eqz v59, :cond_22

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Map$Entry;

    .restart local v27    # "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    .restart local v34    # "key":Ljava/lang/Integer;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "MSG_SYNC_UP_DATA Whitelist app id -"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPm:Landroid/content/pm/PackageManager;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$200(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v59

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v60

    invoke-virtual/range {v59 .. v60}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v44

    .restart local v44    # "pkgs":[Ljava/lang/String;
    if-nez v44, :cond_21

    move-object/from16 v0, v54

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v59

    if-nez v59, :cond_21

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "MSG_SYNC_UP_DATA remove Whitelist app : "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v54

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_f

    goto :goto_14

    .end local v26    # "entries2":Ljava/util/Iterator;
    .end local v27    # "entry":Ljava/util/Map$Entry;
    .end local v34    # "key":Ljava/lang/Integer;
    .end local v44    # "pkgs":[Ljava/lang/String;
    :catch_f
    move-exception v23

    .local v23, "e4":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Exception-"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v23    # "e4":Ljava/lang/Exception;
    :cond_22
    invoke-interface/range {v54 .. v54}, Ljava/util/List;->size()I

    move-result v59

    if-lez v59, :cond_2a

    invoke-interface/range {v54 .. v54}, Ljava/util/List;->size()I

    move-result v59

    move/from16 v0, v59

    new-array v14, v0, [I

    .local v14, "cleanUids":[I
    const/16 v28, 0x0

    .local v28, "i":I
    invoke-interface/range {v54 .. v54}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .restart local v29    # "i$":Ljava/util/Iterator;
    :goto_15
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v59

    if-eqz v59, :cond_29

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    .local v32, "id":Ljava/lang/Integer;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "adding clean app id-"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v59

    aput v59, v14, v28

    add-int/lit8 v28, v28, 0x1

    goto :goto_15

    .end local v14    # "cleanUids":[I
    .end local v28    # "i":I
    .end local v32    # "id":Ljava/lang/Integer;
    .end local v46    # "pm":Landroid/content/pm/IPackageManager;
    .end local v54    # "uninstalledAppUid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8    # "allUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v18    # "data":Landroid/os/Bundle;
    .restart local v38    # "mUm":Landroid/os/UserManager;
    .restart local v57    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_23
    :try_start_18
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_16
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v59

    if-eqz v59, :cond_1a

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/lang/Integer;

    .local v55, "userId":Ljava/lang/Integer;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "InValid userid-"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v59

    const/16 v60, 0x1

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .local v13, "cleanMsg":Landroid/os/Message;
    invoke-virtual/range {v55 .. v55}, Ljava/lang/Integer;->intValue()I

    move-result v59

    move/from16 v0, v59

    iput v0, v13, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v59

    move-object/from16 v0, v59

    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_b

    goto :goto_16

    .end local v8    # "allUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v13    # "cleanMsg":Landroid/os/Message;
    .end local v18    # "data":Landroid/os/Bundle;
    .end local v38    # "mUm":Landroid/os/UserManager;
    .end local v55    # "userId":Ljava/lang/Integer;
    .end local v57    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v4    # "adminId":Ljava/lang/Integer;
    .restart local v44    # "pkgs":[Ljava/lang/String;
    .restart local v46    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v54    # "uninstalledAppUid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_24
    :try_start_19
    const-string v59, "com.sec.enterprise.permission.KNOX_UCM_ESE"

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v60

    move-object/from16 v0, v46

    move-object/from16 v1, v59

    move/from16 v2, v60

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v59

    if-eqz v59, :cond_25

    const-string v59, "com.sec.enterprise.permission.KNOX_UCM_OTHER"

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v60

    move-object/from16 v0, v46

    move-object/from16 v1, v59

    move/from16 v2, v60

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v59

    if-nez v59, :cond_26

    :cond_25
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    const-string v60, "  Admin has valid permission. Processing further..."

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_26
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    const-string v60, "  Admin don\'t has UCS permission..."

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v60

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->processAdminLicenseExpiry(I)V
    invoke-static/range {v59 .. v60}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$2500(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_c

    goto/16 :goto_11

    .end local v4    # "adminId":Ljava/lang/Integer;
    .end local v29    # "i$":Ljava/util/Iterator;
    .restart local v24    # "entries":Ljava/util/Iterator;
    .restart local v27    # "entry":Ljava/util/Map$Entry;
    .restart local v34    # "key":Ljava/lang/Integer;
    .restart local v58    # "value":Ljava/lang/String;
    :cond_27
    :try_start_1a
    const-string v59, "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v60

    move-object/from16 v0, v46

    move-object/from16 v1, v59

    move/from16 v2, v60

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v59

    if-nez v59, :cond_28

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    const-string v60, "  Agent has UCS PLUGIN permission. Processing further..."

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :cond_28
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    const-string v60, "  Agent don\'t has UCS PLUGIN permission. Notifying admin.."

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    const/16 v60, 0x2

    move-object/from16 v0, v59

    move/from16 v1, v60

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->notifyLicenseStatus(ILjava/lang/String;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_d

    goto/16 :goto_12

    .end local v24    # "entries":Ljava/util/Iterator;
    .end local v27    # "entry":Ljava/util/Map$Entry;
    .end local v34    # "key":Ljava/lang/Integer;
    .end local v44    # "pkgs":[Ljava/lang/String;
    .end local v58    # "value":Ljava/lang/String;
    .restart local v14    # "cleanUids":[I
    .restart local v28    # "i":I
    .restart local v29    # "i$":Ljava/util/Iterator;
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v59

    const/16 v60, 0x3

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .restart local v13    # "cleanMsg":Landroid/os/Message;
    iput-object v14, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    const-string v60, "MSG_SYNC_UP_DATA calling MSG_CLEAN_INFO..."

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v59

    move-object/from16 v0, v59

    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v13    # "cleanMsg":Landroid/os/Message;
    .end local v14    # "cleanUids":[I
    .end local v28    # "i":I
    .end local v29    # "i$":Ljava/util/Iterator;
    :cond_2a
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    const-string v60, "****MSG_SYNC_UP_DATA block ended****"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v46    # "pm":Landroid/content/pm/IPackageManager;
    .end local v54    # "uninstalledAppUid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :pswitch_8
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    const-string v60, "****MSG_LOCK_STATUS_UPDATE block started****"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v59

    if-eqz v59, :cond_2b

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    const-string/jumbo v60, "notifyChangeToPlugin is called for Lock status update..."

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v59 .. v59}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/Context;

    move-result-object v59

    const-string/jumbo v60, "keyguard"

    invoke-virtual/range {v59 .. v60}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/app/KeyguardManager;

    .local v35, "km":Landroid/app/KeyguardManager;
    invoke-virtual/range {v35 .. v35}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v33

    .local v33, "isLocked":Z
    :try_start_1b
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .restart local v18    # "data":Landroid/os/Bundle;
    const-string/jumbo v59, "userId"

    const/16 v60, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v59

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v33, :cond_2c

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v59

    const/16 v60, 0x0

    const/16 v61, 0xf

    move-object/from16 v0, v59

    move-object/from16 v1, v60

    move/from16 v2, v61

    move-object/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_10

    .end local v18    # "data":Landroid/os/Bundle;
    .end local v33    # "isLocked":Z
    .end local v35    # "km":Landroid/app/KeyguardManager;
    :cond_2b
    :goto_17
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    const-string v60, "****MSG_LOCK_STATUS_UPDATE block ended****"

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v18    # "data":Landroid/os/Bundle;
    .restart local v33    # "isLocked":Z
    .restart local v35    # "km":Landroid/app/KeyguardManager;
    :cond_2c
    :try_start_1c
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v59

    const/16 v60, 0x0

    const/16 v61, 0x10

    move-object/from16 v0, v59

    move-object/from16 v1, v60

    move/from16 v2, v61

    move-object/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_10

    goto :goto_17

    .end local v18    # "data":Landroid/os/Bundle;
    :catch_10
    move-exception v19

    .restart local v19    # "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v61, "notifyChangeToPlugin Exception "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .end local v19    # "e":Ljava/lang/Exception;
    .end local v33    # "isLocked":Z
    .end local v35    # "km":Landroid/app/KeyguardManager;
    :pswitch_9
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v59

    if-eqz v59, :cond_0

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    .local v15, "containerId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v51, v0

    .local v51, "status":I
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v61, "notifyChangeToPlugin is called for container Lock status update containerId-"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, ", status-"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1d
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .restart local v18    # "data":Landroid/os/Bundle;
    const-string/jumbo v59, "userId"

    move-object/from16 v0, v18

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v59, 0x1

    move/from16 v0, v51

    move/from16 v1, v59

    if-eq v0, v1, :cond_2d

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v59

    const/16 v60, 0x0

    const/16 v61, 0x14

    move-object/from16 v0, v59

    move-object/from16 v1, v60

    move/from16 v2, v61

    move-object/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_11

    goto/16 :goto_0

    .end local v18    # "data":Landroid/os/Bundle;
    :catch_11
    move-exception v19

    .restart local v19    # "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v61, "notifyChangeToPlugin Exception "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v18    # "data":Landroid/os/Bundle;
    :cond_2d
    :try_start_1e
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v59

    const/16 v60, 0x0

    const/16 v61, 0x15

    move-object/from16 v0, v59

    move-object/from16 v1, v60

    move/from16 v2, v61

    move-object/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_11

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_9
        :pswitch_0
    .end packed-switch
.end method

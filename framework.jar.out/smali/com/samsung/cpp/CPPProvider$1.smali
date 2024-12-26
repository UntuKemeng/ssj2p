.class Lcom/samsung/cpp/CPPProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "CPPProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/cpp/CPPProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/cpp/CPPProvider;


# direct methods
.method constructor <init>(Lcom/samsung/cpp/CPPProvider;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 289
    const-string v20, "CPProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "External Intent Received "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const-string v20, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 292
    const-string v20, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 295
    .local v5, "conMan":Landroid/net/ConnectivityManager;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    .line 296
    .local v6, "currentActiveNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 297
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    const/16 v19, 0x1

    .line 298
    .local v19, "wifiConnected":Z
    :goto_0
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v20

    if-nez v20, :cond_6

    const/4 v10, 0x1

    .line 304
    .local v10, "mobileConnected":Z
    :goto_1
    const-string v20, "CPProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "CONNECTIVITY_ACTION = { WIFI : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", Mobile Data : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " }"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    if-eqz v19, :cond_8

    # getter for: Lcom/samsung/cpp/CPPProvider;->mWifiConnected:Z
    invoke-static {}, Lcom/samsung/cpp/CPPProvider;->access$000()Z

    move-result v20

    if-nez v20, :cond_8

    .line 308
    const-string v20, "CPProvider"

    const-string v21, "CONNECTIVITY_ACTION : WIFI ON"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string v20, "CPProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "CONNECTIVITY_ACTION : flagEnableCLM = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v22, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->flagEnableCLM:Z
    invoke-static/range {v22 .. v22}, Lcom/samsung/cpp/CPPProvider;->access$100(Lcom/samsung/cpp/CPPProvider;)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", mNeedUpdatePolicy = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v22, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mNeedUpdatePolicy:I
    invoke-static/range {v22 .. v22}, Lcom/samsung/cpp/CPPProvider;->access$200(Lcom/samsung/cpp/CPPProvider;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", mCurrentPolicyFileExists = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v22, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;
    invoke-static/range {v22 .. v22}, Lcom/samsung/cpp/CPPProvider;->access$300(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPPolicyHandler;

    move-result-object v22

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/samsung/cpp/CPPPolicyHandler;->mCurrentPolicyFileExists:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/16 v20, 0x1

    # setter for: Lcom/samsung/cpp/CPPProvider;->mWifiConnected:Z
    invoke-static/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$002(Z)Z

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->flagEnableCLM:Z
    invoke-static/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$100(Lcom/samsung/cpp/CPPProvider;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 313
    const-string v20, "CPProvider"

    const-string v21, "WIFI connected + flag_enableCPP --> sendRequest directly"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->sendLargeRequest()V

    .line 317
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mNeedUpdatePolicy:I
    invoke-static/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$200(Lcom/samsung/cpp/CPPProvider;)I

    move-result v20

    and-int/lit8 v20, v20, 0x1

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;
    invoke-static/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$300(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPPolicyHandler;

    move-result-object v20

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/samsung/cpp/CPPPolicyHandler;->mCurrentPolicyFileExists:Z

    move/from16 v20, v0

    if-nez v20, :cond_2

    .line 318
    :cond_1
    const-string v20, "CPProvider"

    const-string v21, "sendMessage(MSG_UPDATE_POLICY)/BroadcastReceiver.CONNECTIVITY_ACTION(wifi)"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v12

    .line 321
    .local v12, "reqMsg":Landroid/os/Message;
    const/16 v20, 0x7

    move/from16 v0, v20

    iput v0, v12, Landroid/os/Message;->what:I

    .line 322
    const/16 v20, 0x1

    move/from16 v0, v20

    iput v0, v12, Landroid/os/Message;->arg1:I

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;
    invoke-static/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$400(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 332
    .end local v12    # "reqMsg":Landroid/os/Message;
    :cond_2
    :goto_2
    if-eqz v10, :cond_9

    # getter for: Lcom/samsung/cpp/CPPProvider;->mMobileConnected:Z
    invoke-static {}, Lcom/samsung/cpp/CPPProvider;->access$500()Z

    move-result v20

    if-nez v20, :cond_9

    .line 333
    const-string v20, "CPProvider"

    const-string v21, "CONNECTIVITY_ACTION : Mobile Data ON"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v20, "CPProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "CONNECTIVITY_ACTION : mNeedUpdatePolicy = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v22, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mNeedUpdatePolicy:I
    invoke-static/range {v22 .. v22}, Lcom/samsung/cpp/CPPProvider;->access$200(Lcom/samsung/cpp/CPPProvider;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", mCurrentPolicyFileExists = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v22, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;
    invoke-static/range {v22 .. v22}, Lcom/samsung/cpp/CPPProvider;->access$300(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPPolicyHandler;

    move-result-object v22

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/samsung/cpp/CPPPolicyHandler;->mCurrentPolicyFileExists:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/16 v20, 0x1

    # setter for: Lcom/samsung/cpp/CPPProvider;->mMobileConnected:Z
    invoke-static/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$502(Z)Z

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mNeedUpdatePolicy:I
    invoke-static/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$200(Lcom/samsung/cpp/CPPProvider;)I

    move-result v20

    and-int/lit8 v20, v20, 0x1

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;
    invoke-static/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$300(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPPolicyHandler;

    move-result-object v20

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/samsung/cpp/CPPPolicyHandler;->mCurrentPolicyFileExists:Z

    move/from16 v20, v0

    if-nez v20, :cond_4

    .line 338
    :cond_3
    const-string v20, "CPProvider"

    const-string v21, "sendMessage(MSG_UPDATE_POLICY)/BroadcastReceiver.CONNECTIVITY_ACTION(mobile)"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v13

    .line 341
    .local v13, "reqMsg1":Landroid/os/Message;
    const/16 v20, 0x7

    move/from16 v0, v20

    iput v0, v13, Landroid/os/Message;->what:I

    .line 342
    const/16 v20, 0x1

    move/from16 v0, v20

    iput v0, v13, Landroid/os/Message;->arg1:I

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;
    invoke-static/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$400(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 468
    .end local v5    # "conMan":Landroid/net/ConnectivityManager;
    .end local v6    # "currentActiveNetworkInfo":Landroid/net/NetworkInfo;
    .end local v10    # "mobileConnected":Z
    .end local v13    # "reqMsg1":Landroid/os/Message;
    .end local v19    # "wifiConnected":Z
    :cond_4
    :goto_3
    return-void

    .line 297
    .restart local v5    # "conMan":Landroid/net/ConnectivityManager;
    .restart local v6    # "currentActiveNetworkInfo":Landroid/net/NetworkInfo;
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 298
    .restart local v19    # "wifiConnected":Z
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 301
    .end local v19    # "wifiConnected":Z
    :cond_7
    const/16 v19, 0x0

    .line 302
    .restart local v19    # "wifiConnected":Z
    const/4 v10, 0x0

    .restart local v10    # "mobileConnected":Z
    goto/16 :goto_1

    .line 326
    :cond_8
    if-nez v19, :cond_2

    # getter for: Lcom/samsung/cpp/CPPProvider;->mWifiConnected:Z
    invoke-static {}, Lcom/samsung/cpp/CPPProvider;->access$000()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 327
    const-string v20, "CPProvider"

    const-string v21, "CONNECTIVITY_ACTION : WIFI OFF"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/16 v20, 0x0

    # setter for: Lcom/samsung/cpp/CPPProvider;->mWifiConnected:Z
    invoke-static/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$002(Z)Z

    goto/16 :goto_2

    .line 346
    :cond_9
    if-nez v10, :cond_4

    # getter for: Lcom/samsung/cpp/CPPProvider;->mMobileConnected:Z
    invoke-static {}, Lcom/samsung/cpp/CPPProvider;->access$500()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 347
    const-string v20, "CPProvider"

    const-string v21, "CONNECTIVITY_ACTION : Mobile Data OFF"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/16 v20, 0x0

    # setter for: Lcom/samsung/cpp/CPPProvider;->mMobileConnected:Z
    invoke-static/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$502(Z)Z

    goto :goto_3

    .line 351
    .end local v5    # "conMan":Landroid/net/ConnectivityManager;
    .end local v6    # "currentActiveNetworkInfo":Landroid/net/NetworkInfo;
    .end local v10    # "mobileConnected":Z
    .end local v19    # "wifiConnected":Z
    :cond_a
    const-string v20, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 352
    const-string v20, "CPProvider"

    const-string v21, "received : android.intent.action.ACTION_SHUTDOWN"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v15

    .line 354
    .local v15, "stopMsg":Landroid/os/Message;
    const/16 v20, 0x4

    move/from16 v0, v20

    iput v0, v15, Landroid/os/Message;->what:I

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;
    invoke-static/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$400(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 356
    .end local v15    # "stopMsg":Landroid/os/Message;
    :cond_b
    const-string v20, "android.intent.action.ACTION_CLM_TT_START_BY_APP"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 357
    const-string v20, "CPProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "INTENT_CLM_TT_START_BY_APP : flagEnableCPP = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v22, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->flagEnableCPP:Z
    invoke-static/range {v22 .. v22}, Lcom/samsung/cpp/CPPProvider;->access$600(Lcom/samsung/cpp/CPPProvider;)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->flagEnableCPP:Z
    invoke-static/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$600(Lcom/samsung/cpp/CPPProvider;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    # setter for: Lcom/samsung/cpp/CPPProvider;->flagEnableCPP:Z
    invoke-static/range {v20 .. v21}, Lcom/samsung/cpp/CPPProvider;->access$602(Lcom/samsung/cpp/CPPProvider;Z)Z

    .line 360
    new-instance v8, Landroid/os/HandlerThread;

    const-string v20, "CPPEventHandler"

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 361
    .local v8, "hThread":Landroid/os/HandlerThread;
    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    new-instance v21, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v22, v0

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;-><init>(Lcom/samsung/cpp/CPPProvider;Landroid/os/Looper;)V

    # setter for: Lcom/samsung/cpp/CPPProvider;->mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;
    invoke-static/range {v20 .. v21}, Lcom/samsung/cpp/CPPProvider;->access$402(Lcom/samsung/cpp/CPPProvider;Lcom/samsung/cpp/CPPProvider$CPPEventHandler;)Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;
    invoke-static/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$400(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 365
    .end local v8    # "hThread":Landroid/os/HandlerThread;
    :cond_c
    const-string v20, "CPProvider"

    const-string v21, "INTENT_CLM_TT_START_BY_APP : CP Positioning Service is already enabled."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 367
    :cond_d
    const-string v20, "android.intent.action.ACTION_CLM_TT_STOP_BY_APP"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 368
    const-string v20, "CPProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "INTENT_CLM_TT_STOP_BY_APP : flagEnableCPP = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v22, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->flagEnableCPP:Z
    invoke-static/range {v22 .. v22}, Lcom/samsung/cpp/CPPProvider;->access$600(Lcom/samsung/cpp/CPPProvider;)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->flagEnableCPP:Z
    invoke-static/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$600(Lcom/samsung/cpp/CPPProvider;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/samsung/cpp/CPPProvider;->flagEnableCPP:Z
    invoke-static/range {v20 .. v21}, Lcom/samsung/cpp/CPPProvider;->access$602(Lcom/samsung/cpp/CPPProvider;Z)Z

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;
    invoke-static/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$400(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    move-result-object v20

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 373
    :cond_e
    const-string v20, "CPProvider"

    const-string v21, "INTENT_CLM_TT_STOP_BY_APP : CP Positioning Service is already disabled."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 375
    :cond_f
    const-string v20, "sec.intent.action.UPDATE_POLICY"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;
    invoke-static/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$300(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPPolicyHandler;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/cpp/CPPPolicyHandler;->isPolicyExpiration()Z

    move-result v20

    if-eqz v20, :cond_10

    .line 377
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v12

    .line 378
    .restart local v12    # "reqMsg":Landroid/os/Message;
    const/16 v20, 0x7

    move/from16 v0, v20

    iput v0, v12, Landroid/os/Message;->what:I

    .line 379
    const/16 v20, 0x1

    move/from16 v0, v20

    iput v0, v12, Landroid/os/Message;->arg1:I

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;
    invoke-static/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$400(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 382
    .end local v12    # "reqMsg":Landroid/os/Message;
    :cond_10
    const-string v20, "CPProvider"

    const-string v21, "Update required by sec.intent.action.UPDATE_POLICY"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 383
    :cond_11
    const-string v20, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 384
    const-string v20, "CPProvider"

    const-string v21, "Boot Completed, Clean Cell DB Req Table"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mDbAdapter:Lcom/samsung/cpp/CPPDbAdapter;
    invoke-static/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$700(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPDbAdapter;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/cpp/CPPDbAdapter;->deleteAllReq()V

    goto/16 :goto_3

    .line 386
    :cond_12
    const-string v20, "android.net.wifi.STATE_CHANGE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 388
    const-string v20, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mWifiScanning:Z
    invoke-static/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$800(Lcom/samsung/cpp/CPPProvider;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->wifi:Landroid/net/wifi/WifiManager;
    invoke-static/range {v21 .. v21}, Lcom/samsung/cpp/CPPProvider;->access$1000(Lcom/samsung/cpp/CPPProvider;)Landroid/net/wifi/WifiManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v21

    # setter for: Lcom/samsung/cpp/CPPProvider;->wifiResults:Ljava/util/List;
    invoke-static/range {v20 .. v21}, Lcom/samsung/cpp/CPPProvider;->access$902(Lcom/samsung/cpp/CPPProvider;Ljava/util/List;)Ljava/util/List;

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/samsung/cpp/CPPProvider;->mWifiScanning:Z
    invoke-static/range {v20 .. v21}, Lcom/samsung/cpp/CPPProvider;->access$802(Lcom/samsung/cpp/CPPProvider;Z)Z

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->wifiResults:Ljava/util/List;
    invoke-static/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$900(Lcom/samsung/cpp/CPPProvider;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/ScanResult;

    .line 393
    .local v14, "result":Landroid/net/wifi/ScanResult;
    const-string v20, "CPProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SSID : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v14, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", BSSID : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v14, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", RSSI : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v14, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 396
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v14    # "result":Landroid/net/wifi/ScanResult;
    :cond_13
    const-string v20, "android.settings.DIAGNOSTIC_INFO_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_14

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;
    invoke-static/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$300(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPPolicyHandler;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/cpp/CPPPolicyHandler;->getPolicyVersion()Ljava/lang/String;

    move-result-object v18

    .line 399
    .local v18, "version":Ljava/lang/String;
    if-eqz v18, :cond_4

    const-string v20, "19700102-00:00"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 400
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v20, "yyyyMMdd-HH:mm"

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 401
    .local v7, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v11, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-direct {v11, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 402
    .local v11, "nowDate":Ljava/util/Date;
    invoke-virtual {v7, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 403
    .local v4, "checkedVersion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;
    invoke-static/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$300(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPPolicyHandler;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/samsung/cpp/CPPPolicyHandler;->setPolicyVersion(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 405
    .end local v4    # "checkedVersion":Ljava/lang/String;
    .end local v7    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v11    # "nowDate":Ljava/util/Date;
    .end local v18    # "version":Ljava/lang/String;
    :cond_14
    const-string v20, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 406
    const-string v20, "CPProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "INTENT_ACTION_SUBINFO_RECORD_UPDATED : mNeedUpdatePolicy = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v22, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mNeedUpdatePolicy:I
    invoke-static/range {v22 .. v22}, Lcom/samsung/cpp/CPPProvider;->access$200(Lcom/samsung/cpp/CPPProvider;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", mCurrentPolicyFileExists = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v22, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;
    invoke-static/range {v22 .. v22}, Lcom/samsung/cpp/CPPProvider;->access$300(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPPolicyHandler;

    move-result-object v22

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/samsung/cpp/CPPPolicyHandler;->mCurrentPolicyFileExists:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mNeedUpdatePolicy:I
    invoke-static/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$200(Lcom/samsung/cpp/CPPProvider;)I

    move-result v20

    and-int/lit8 v20, v20, 0x1

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;
    invoke-static/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$300(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPPolicyHandler;

    move-result-object v20

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/samsung/cpp/CPPPolicyHandler;->mCurrentPolicyFileExists:Z

    move/from16 v20, v0

    if-nez v20, :cond_17

    .line 409
    :cond_15
    const-string v20, "CPProvider"

    const-string v21, "sendMessageDelayed(MSG_UPDATE_POLICY)/INTENT_ACTION_SUBINFO_RECORD_UPDATED"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v13

    .line 412
    .restart local v13    # "reqMsg1":Landroid/os/Message;
    const/16 v20, 0x7

    move/from16 v0, v20

    iput v0, v13, Landroid/os/Message;->what:I

    .line 413
    const/16 v20, 0x1

    move/from16 v0, v20

    iput v0, v13, Landroid/os/Message;->arg1:I

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;
    invoke-static/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$400(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    move-result-object v20

    const-wide/16 v22, 0xbb8

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v13, v1, v2}, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 420
    .end local v13    # "reqMsg1":Landroid/os/Message;
    :goto_5
    const-string v20, "CPProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SIM Slot Count : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v22, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mSimSlotCount:I
    invoke-static/range {v22 .. v22}, Lcom/samsung/cpp/CPPProvider;->access$1100(Lcom/samsung/cpp/CPPProvider;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mSimSlotCount:I
    invoke-static/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$1100(Lcom/samsung/cpp/CPPProvider;)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1a

    .line 423
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v16

    .line 424
    .local v16, "subId":[I
    if-eqz v16, :cond_18

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    new-instance v21, Lcom/samsung/cpp/CPPProvider$1$1;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/cpp/CPPProvider$1$1;-><init>(Lcom/samsung/cpp/CPPProvider$1;I)V

    # setter for: Lcom/samsung/cpp/CPPProvider;->mServiceStatelistener1:Landroid/telephony/PhoneStateListener;
    invoke-static/range {v20 .. v21}, Lcom/samsung/cpp/CPPProvider;->access$1202(Lcom/samsung/cpp/CPPProvider;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;

    .line 435
    :goto_6
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v16

    .line 437
    if-eqz v16, :cond_19

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    new-instance v21, Lcom/samsung/cpp/CPPProvider$1$2;

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/cpp/CPPProvider$1$2;-><init>(Lcom/samsung/cpp/CPPProvider$1;I)V

    # setter for: Lcom/samsung/cpp/CPPProvider;->mServiceStatelistener2:Landroid/telephony/PhoneStateListener;
    invoke-static/range {v20 .. v21}, Lcom/samsung/cpp/CPPProvider;->access$1302(Lcom/samsung/cpp/CPPProvider;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;

    .line 459
    .end local v16    # "subId":[I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$1400(Lcom/samsung/cpp/CPPProvider;)Landroid/content/Context;

    move-result-object v20

    const-string v21, "phone"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    .line 461
    .local v17, "teleMan":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mServiceStatelistener1:Landroid/telephony/PhoneStateListener;
    invoke-static/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$1200(Lcom/samsung/cpp/CPPProvider;)Landroid/telephony/PhoneStateListener;

    move-result-object v20

    if-eqz v20, :cond_16

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mServiceStatelistener1:Landroid/telephony/PhoneStateListener;
    invoke-static/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$1200(Lcom/samsung/cpp/CPPProvider;)Landroid/telephony/PhoneStateListener;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 464
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mServiceStatelistener2:Landroid/telephony/PhoneStateListener;
    invoke-static/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$1300(Lcom/samsung/cpp/CPPProvider;)Landroid/telephony/PhoneStateListener;

    move-result-object v20

    if-eqz v20, :cond_4

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mServiceStatelistener2:Landroid/telephony/PhoneStateListener;
    invoke-static/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$1300(Lcom/samsung/cpp/CPPProvider;)Landroid/telephony/PhoneStateListener;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto/16 :goto_3

    .line 418
    .end local v17    # "teleMan":Landroid/telephony/TelephonyManager;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;
    invoke-static/range {v20 .. v20}, Lcom/samsung/cpp/CPPProvider;->access$300(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPPolicyHandler;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/cpp/CPPPolicyHandler;->notifyPolicyUpdate()V

    goto/16 :goto_5

    .line 433
    .restart local v16    # "subId":[I
    :cond_18
    const-string v20, "CPProvider"

    const-string v21, "SIM 1 error"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 446
    :cond_19
    const-string v20, "CPProvider"

    const-string v21, "SIM 2 error"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 449
    .end local v16    # "subId":[I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$1;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v20, v0

    new-instance v21, Lcom/samsung/cpp/CPPProvider$1$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/cpp/CPPProvider$1$3;-><init>(Lcom/samsung/cpp/CPPProvider$1;)V

    # setter for: Lcom/samsung/cpp/CPPProvider;->mServiceStatelistener1:Landroid/telephony/PhoneStateListener;
    invoke-static/range {v20 .. v21}, Lcom/samsung/cpp/CPPProvider;->access$1202(Lcom/samsung/cpp/CPPProvider;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;

    goto/16 :goto_7
.end method

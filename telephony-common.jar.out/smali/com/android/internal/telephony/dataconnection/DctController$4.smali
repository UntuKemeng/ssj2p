.class Lcom/android/internal/telephony/dataconnection/DctController$4;
.super Landroid/content/BroadcastReceiver;
.source "DctController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DctController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DctController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$4;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 294
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "action":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mReceiver action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DctController;->access$000(Ljava/lang/String;)V

    .line 296
    const-string v7, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 297
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$4;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DctController;->access$500(Lcom/android/internal/telephony/dataconnection/DctController;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$4;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$800(Lcom/android/internal/telephony/dataconnection/DctController;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 298
    .local v5, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v5, :cond_2

    move v2, v6

    .line 299
    .local v2, "nSubCount":I
    :goto_0
    if-lez v2, :cond_3

    .line 300
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_SUBINFO_RECORD_UPDATED - nSubCount: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mSubInfoReady changed from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$4;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mSubInfoReady:Z
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$900(Lcom/android/internal/telephony/dataconnection/DctController;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to true."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DctController;->access$000(Ljava/lang/String;)V

    .line 301
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$4;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # setter for: Lcom/android/internal/telephony/dataconnection/DctController;->mSubInfoReady:Z
    invoke-static {v7, v9}, Lcom/android/internal/telephony/dataconnection/DctController;->access$902(Lcom/android/internal/telephony/dataconnection/DctController;Z)Z

    .line 302
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$4;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # setter for: Lcom/android/internal/telephony/dataconnection/DctController;->mIsEmergencyPdnRequested:Z
    invoke-static {v7, v6}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1002(Lcom/android/internal/telephony/dataconnection/DctController;Z)Z

    .line 303
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$4;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mAlreadySettingChanged:Z
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1100(Lcom/android/internal/telephony/dataconnection/DctController;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 304
    const-string v7, "ACTION_SUBINFO_RECORD_UPDATED - Already Setting Changed Received, Call onSettingChanged()"

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DctController;->access$000(Ljava/lang/String;)V

    .line 305
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$4;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # setter for: Lcom/android/internal/telephony/dataconnection/DctController;->mAlreadySettingChanged:Z
    invoke-static {v7, v6}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1102(Lcom/android/internal/telephony/dataconnection/DctController;Z)Z

    .line 306
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$4;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->onSettingsChanged()V
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1200(Lcom/android/internal/telephony/dataconnection/DctController;)V

    .line 308
    :cond_0
    const-string v6, "ro.csc.countryiso_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "countryISO":Ljava/lang/String;
    const-string v6, "TW"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 310
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$4;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->onProcessRequest()V
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1300(Lcom/android/internal/telephony/dataconnection/DctController;)V

    .line 329
    .end local v1    # "countryISO":Ljava/lang/String;
    .end local v2    # "nSubCount":I
    .end local v5    # "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_1
    :goto_1
    return-void

    .line 298
    .restart local v5    # "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    .line 313
    .restart local v2    # "nSubCount":I
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_SUBINFO_RECORD_UPDATED - nSubCount: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mSubInfoReady changed from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$4;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mSubInfoReady:Z
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$900(Lcom/android/internal/telephony/dataconnection/DctController;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to false."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DctController;->access$000(Ljava/lang/String;)V

    .line 314
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$4;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # setter for: Lcom/android/internal/telephony/dataconnection/DctController;->mSubInfoReady:Z
    invoke-static {v7, v6}, Lcom/android/internal/telephony/dataconnection/DctController;->access$902(Lcom/android/internal/telephony/dataconnection/DctController;Z)Z

    .line 315
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$4;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # setter for: Lcom/android/internal/telephony/dataconnection/DctController;->mAlreadySettingChanged:Z
    invoke-static {v7, v6}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1102(Lcom/android/internal/telephony/dataconnection/DctController;Z)Z

    goto :goto_1

    .line 317
    .end local v2    # "nSubCount":I
    .end local v5    # "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_4
    const-string v7, "com.samsung.intent.action.QCOMHOTSWAP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 318
    const-string v7, "REASON"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 319
    .local v3, "simReason":Z
    const-string v7, "SIMSLOT"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 320
    .local v4, "simSlot":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "QCOMHOTSWAP received, reason : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", slot : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DctController;->access$000(Ljava/lang/String;)V

    .line 321
    if-nez v3, :cond_1

    .line 322
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$4;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->onReleaseAllRequests(I)V
    invoke-static {v7, v4}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1400(Lcom/android/internal/telephony/dataconnection/DctController;I)V

    .line 323
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$4;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DctController;->access$100(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->isInCall()I

    move-result v7

    if-ne v7, v9, :cond_1

    .line 324
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "QCOMHOTSWAP received during call - isInCall id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", notify OFFHOOK_CALL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DctController;->access$000(Ljava/lang/String;)V

    .line 325
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$4;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DctController;->access$400(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->notifyCallStateChanged(I)V

    goto/16 :goto_1
.end method

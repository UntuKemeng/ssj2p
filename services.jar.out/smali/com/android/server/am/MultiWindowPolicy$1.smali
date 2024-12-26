.class Lcom/android/server/am/MultiWindowPolicy$1;
.super Landroid/telephony/PhoneStateListener;
.source "MultiWindowPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MultiWindowPolicy;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowPolicy;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/server/am/MultiWindowPolicy$1;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 361
    if-ne p1, v6, :cond_1

    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy$1;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v3}, Lcom/android/server/am/MultiWindowPolicy;->isTphoneRelaxMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 362
    const/4 v2, 0x0

    .line 363
    .local v2, "hasInCallUiPackage":Z
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_VOICECALL_CONFIG_INCALLUI_PACKAGE_NAME "

    const-string v5, "com.android.incallui"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "INCALLUI_PACKAGE":Ljava/lang/String;
    const-string v1, "com.android.phone"

    .line 366
    .local v1, "PHONE_PACKAGE":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, v0, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    .line 367
    const/4 v2, 0x1

    .line 380
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy$1;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v3, v3, Lcom/android/server/am/MultiWindowPolicy;->mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy$1;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v4, v4, Lcom/android/server/am/MultiWindowPolicy;->mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    if-eqz v2, :cond_2

    .end local v0    # "INCALLUI_PACKAGE":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4, v6, v0}, Lcom/android/server/am/MultiWindowPolicy$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/MultiWindowPolicy$H;->sendMessage(Landroid/os/Message;)Z

    .line 383
    .end local v1    # "PHONE_PACKAGE":Ljava/lang/String;
    .end local v2    # "hasInCallUiPackage":Z
    :cond_1
    return-void

    .line 380
    .restart local v0    # "INCALLUI_PACKAGE":Ljava/lang/String;
    .restart local v1    # "PHONE_PACKAGE":Ljava/lang/String;
    .restart local v2    # "hasInCallUiPackage":Z
    :cond_2
    const-string v0, "com.android.phone"

    goto :goto_1

    .line 369
    :catch_0
    move-exception v3

    goto :goto_0
.end method

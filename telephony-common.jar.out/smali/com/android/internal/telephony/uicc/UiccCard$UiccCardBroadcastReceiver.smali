.class Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UiccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiccCardBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 0

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/UiccCard$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/UiccCard$1;

    .prologue
    .line 1125
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1128
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1129
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1130
    const-string v6, "ss"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "LOADED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1131
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccId()Ljava/lang/String;

    move-result-object v1

    .line 1132
    .local v1, "iccId":Ljava/lang/String;
    const-string v6, "ril.simtype"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1134
    .local v5, "simType":Ljava/lang/String;
    const-string v6, "4"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "19"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    const-string v6, "89820512127"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "89820513107"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1136
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v7, "Do not init CarrierPrivilegeRules for specific SKT usim"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/uicc/UiccCard;->access$200(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    .line 1189
    .end local v1    # "iccId":Ljava/lang/String;
    .end local v5    # "simType":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 1139
    .restart local v1    # "iccId":Ljava/lang/String;
    .restart local v5    # "simType":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->InitUiccCarrierPrivilegeRules()V
    invoke-static {v6}, Lcom/android/internal/telephony/uicc/UiccCard;->access$900(Lcom/android/internal/telephony/uicc/UiccCard;)V

    .line 1141
    const-string v6, "CTC"

    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1142
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCard;->getPhoneId()I

    move-result v6

    const-string v7, "ril.ICC_TYPE"

    const-string v8, "0"

    invoke-static {v6, v7, v8}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1143
    .local v3, "iccType":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCard;->getPhoneId()I

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "3"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "4"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1146
    :cond_4
    const/4 v6, 0x0

    const-string v7, "ril.IsCSIM"

    const-string v8, "0"

    invoke-static {v6, v7, v8}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1147
    .local v4, "isCsim":I
    if-nez v4, :cond_2

    .line 1148
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCard;->sendCTCPopupMsg()V

    goto :goto_0

    .line 1152
    .end local v1    # "iccId":Ljava/lang/String;
    .end local v3    # "iccType":Ljava/lang/String;
    .end local v4    # "isCsim":I
    .end local v5    # "simType":Ljava/lang/String;
    :cond_5
    const-string v6, "com.samsung.intent.action.SIM_REMOVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1153
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v7, "onIccSwap: get the SIM_REMOVED action"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/uicc/UiccCard;->access$200(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    .line 1154
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    if-le v6, v9, :cond_6

    const-string v6, "2"

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimTrayCount()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_9

    .line 1156
    :cond_7
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v7, "onIccSwap: Multi Tray"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/uicc/UiccCard;->access$200(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    .line 1157
    sget-object v6, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    if-eqz v6, :cond_8

    .line 1158
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v7, "onIccSwap: dialogSim1 dismiss"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/uicc/UiccCard;->access$200(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    .line 1159
    sget-object v6, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 1160
    sput-object v8, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    .line 1162
    :cond_8
    sget-object v6, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    if-eqz v6, :cond_2

    .line 1163
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v7, "onIccSwap: dialogSim2 dismiss"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/uicc/UiccCard;->access$200(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    .line 1164
    sget-object v6, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 1165
    sput-object v8, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1168
    :cond_9
    sget-object v6, Lcom/android/internal/telephony/uicc/UiccCard;->dialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_2

    .line 1169
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v7, "onIccSwap: SIM_REMOVED dialog.dismiss()"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/uicc/UiccCard;->access$200(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    .line 1170
    sget-object v6, Lcom/android/internal/telephony/uicc/UiccCard;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 1171
    sput-object v8, Lcom/android/internal/telephony/uicc/UiccCard;->dialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1174
    :cond_a
    const-string v6, "com.samsung.intent.action.IsNotCTC"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1175
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCard;->sendCTCPopupMsg()V

    goto/16 :goto_0

    .line 1176
    :cond_b
    const-string v6, "com.samsung.intent.action.ICC_CARD_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1177
    const-string v6, "status"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1178
    .local v2, "iccStatus":Ljava/lang/String;
    const-string v6, "INSERTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1179
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCard;->getPhoneId()I

    move-result v6

    if-nez v6, :cond_2

    .line 1180
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v7, "reset showCTCDialog"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/uicc/UiccCard;->access$200(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    .line 1181
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # setter for: Lcom/android/internal/telephony/uicc/UiccCard;->showCTCDialog:Z
    invoke-static {v6, v9}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1002(Lcom/android/internal/telephony/uicc/UiccCard;Z)Z

    .line 1182
    sget-object v6, Lcom/android/internal/telephony/uicc/UiccCard;->dialogCTCSim:Landroid/app/AlertDialog;

    if-eqz v6, :cond_2

    .line 1183
    sget-object v6, Lcom/android/internal/telephony/uicc/UiccCard;->dialogCTCSim:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 1184
    sput-object v8, Lcom/android/internal/telephony/uicc/UiccCard;->dialogCTCSim:Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

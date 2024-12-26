.class public Lcom/android/internal/telephony/TelephonyPropertiesEdit;
.super Ljava/lang/Object;
.source "TelephonyPropertiesEdit.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "TelephonyPropertiesEdit"


# instance fields
.field private mContext:Landroid/content/Context;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v1, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;-><init>(Lcom/android/internal/telephony/TelephonyPropertiesEdit;)V

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 124
    iput-object p2, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    .line 125
    const-string v1, "TelephonyPropertiesEdit"

    const-string v2, "Creating TelephonyPropertiesEdit"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v1, "NULL"

    const-string v2, "gsm.sim.currentcardstatus"

    const-string v3, "NULL"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->resetProperties()V

    .line 133
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 134
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "NEW_CARD_CHECK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v1, "ACTION_REGCARD_ICON_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v1, "ACTION_REGCARD_CARDNAME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v1, "ACTION_NETWORK_ACTIVATE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "ACTION_PLMN_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v1, "com.samsung.intent.action.DATA_SERVICE_NETWORK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v1, "com.samsung.intent.action.Slot1OnCompleted"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v1, "com.samsung.intent.action.Slot2OnCompleted"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v1, "com.samsung.intent.action.Slot1OffCompleted"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v1, "com.samsung.intent.action.Slot2OffCompleted"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v1, "com.samsung.settings.SIMCARD_MGT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    return-void

    .line 130
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    const-string v1, "TelephonyPropertiesEdit"

    const-string v2, "skip resetProperties"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/TelephonyPropertiesEdit;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/TelephonyPropertiesEdit;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyNewCard(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/TelephonyPropertiesEdit;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/TelephonyPropertiesEdit;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyIconName(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/TelephonyPropertiesEdit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/TelephonyPropertiesEdit;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/TelephonyPropertiesEdit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/TelephonyPropertiesEdit;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyCardname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/TelephonyPropertiesEdit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/TelephonyPropertiesEdit;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/TelephonyPropertiesEdit;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/TelephonyPropertiesEdit;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyState(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/TelephonyPropertiesEdit;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/TelephonyPropertiesEdit;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyPLMN(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/TelephonyPropertiesEdit;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/TelephonyPropertiesEdit;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->handleCardOnOffCompleted(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .param p3, "defValue"    # Ljava/lang/String;

    .prologue
    .line 513
    invoke-static {p1, p2, p3}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleCardOnOffCompleted(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .param p1, "cardStatus"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 297
    const-string v2, "com.samsung.intent.action.Slot1OffCompleted"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 298
    const-string v2, "gsm.sim.active"

    const-string v3, "0"

    invoke-direct {p0, v2, v5, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 299
    const-string v2, "gsm.sim.currentcardstatus"

    const-string v3, "2"

    invoke-direct {p0, v2, v5, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 300
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone1_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 302
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 303
    const-string v2, "CTC"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 305
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const-string v2, "property_item"

    const-string v3, "Slot1OffCompleted"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string v2, "simSlot"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    invoke-virtual {p2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 366
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    const-string v2, "com.samsung.intent.action.Slot1OnCompleted"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 312
    const-string v2, "gsm.sim.active"

    const-string v3, "0"

    invoke-direct {p0, v2, v5, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 313
    const-string v2, "gsm.sim.currentcardstatus"

    const-string v3, "9"

    invoke-direct {p0, v2, v5, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 314
    .local v0, "cardstatus":I
    if-eq v0, v4, :cond_3

    .line 315
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v4, :cond_2

    const-string v2, "CTC"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 317
    :cond_2
    const-string v2, "gsm.sim.currentcardstatus"

    const-string v3, "3"

    invoke-direct {p0, v2, v5, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 320
    :cond_3
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone1_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 322
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 323
    const-string v2, "CTC"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 325
    .restart local v1    # "i":Landroid/content/Intent;
    const-string v2, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const-string v2, "property_item"

    const-string v3, "Slot1OnCompleted"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string v2, "simSlot"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 328
    invoke-virtual {p2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 331
    .end local v0    # "cardstatus":I
    .end local v1    # "i":Landroid/content/Intent;
    :cond_4
    const-string v2, "com.samsung.intent.action.Slot2OffCompleted"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 332
    const-string v2, "gsm.sim.active"

    const-string v3, "0"

    invoke-direct {p0, v2, v4, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 333
    const-string v2, "gsm.sim.currentcardstatus"

    const-string v3, "2"

    invoke-direct {p0, v2, v4, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 334
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone2_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 336
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 337
    const-string v2, "CTC"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 339
    .restart local v1    # "i":Landroid/content/Intent;
    const-string v2, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string v2, "property_item"

    const-string v3, "Slot2OffCompleted"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    const-string v2, "simSlot"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 342
    invoke-virtual {p2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 345
    .end local v1    # "i":Landroid/content/Intent;
    :cond_5
    const-string v2, "com.samsung.intent.action.Slot2OnCompleted"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    const-string v2, "gsm.sim.active"

    const-string v3, "0"

    invoke-direct {p0, v2, v4, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 347
    const-string v2, "gsm.sim.currentcardstatus"

    const-string v3, "9"

    invoke-direct {p0, v2, v4, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 348
    .restart local v0    # "cardstatus":I
    if-eq v0, v4, :cond_7

    .line 349
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v4, :cond_6

    const-string v2, "CTC"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 351
    :cond_6
    const-string v2, "gsm.sim.currentcardstatus"

    const-string v3, "3"

    invoke-direct {p0, v2, v4, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 354
    :cond_7
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone2_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 356
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 357
    const-string v2, "CTC"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 358
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 359
    .restart local v1    # "i":Landroid/content/Intent;
    const-string v2, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    const-string v2, "property_item"

    const-string v3, "Slot2OnCompleted"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const-string v2, "simSlot"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 362
    invoke-virtual {p2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private setPropertyActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "cdmaAct"    # Ljava/lang/String;
    .param p2, "gsm01Act"    # Ljava/lang/String;
    .param p3, "gsm02Act"    # Ljava/lang/String;

    .prologue
    .line 283
    const-string v3, "TelephonyPropertiesEdit"

    const-string v4, "onReceive ACTION_NETWORK_ACTIVATE_STATE"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const-string v3, "TelephonyPropertiesEdit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v3, "1"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "true"

    .line 287
    .local v0, "cdmAct":Ljava/lang/String;
    :goto_0
    const-string v3, "1"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "true"

    .line 288
    .local v1, "gs1Act":Ljava/lang/String;
    :goto_1
    const-string v3, "1"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "true"

    .line 290
    .local v2, "gs2Act":Ljava/lang/String;
    :goto_2
    const-string v3, "TelephonyPropertiesEdit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const-string v3, "gsm.sim.activity"

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v0}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 292
    const-string v3, "gsm.sim.activity"

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 293
    const-string v3, "gsm.sim.availability"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void

    .line 286
    .end local v0    # "cdmAct":Ljava/lang/String;
    .end local v1    # "gs1Act":Ljava/lang/String;
    .end local v2    # "gs2Act":Ljava/lang/String;
    :cond_0
    const-string v0, "false"

    goto :goto_0

    .line 287
    .restart local v0    # "cdmAct":Ljava/lang/String;
    :cond_1
    const-string v1, "false"

    goto :goto_1

    .line 288
    .restart local v1    # "gs1Act":Ljava/lang/String;
    :cond_2
    const-string v2, "false"

    goto :goto_2
.end method

.method private setPropertyCardname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "cdmaName"    # Ljava/lang/String;
    .param p2, "gsm01Name"    # Ljava/lang/String;
    .param p3, "gsm02Name"    # Ljava/lang/String;

    .prologue
    .line 269
    const-string v0, "TelephonyPropertiesEdit"

    const-string v1, "onReceive ACTION_REGCARD_CARDNAME_CHANGED"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v0, "gsm.sim.cardname"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 271
    const-string v0, "gsm.sim.cardname"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 272
    const-string v0, "gsm.sim.cardname.dual"

    invoke-static {v0, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method private setPropertyIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "cdmaIcon"    # Ljava/lang/String;
    .param p2, "gsm01Icon"    # Ljava/lang/String;
    .param p3, "gsm02Icon"    # Ljava/lang/String;

    .prologue
    .line 276
    const-string v0, "TelephonyPropertiesEdit"

    const-string v1, "onReceive ACTION_REGCARD_ICON_CHANGED"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v0, "gsm.sim.icon"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 278
    const-string v0, "gsm.sim.icon"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 279
    const-string v0, "gsm.sim.icon.dual"

    invoke-static {v0, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method private setPropertyIconName(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "simId"    # I
    .param p2, "simIconIndex"    # Ljava/lang/String;
    .param p3, "simName"    # Ljava/lang/String;

    .prologue
    .line 244
    const-string v0, "TelephonyPropertiesEdit"

    const-string v1, "setPropertyIconName"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v0, "gsm.sim.icon"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 246
    const-string v0, "gsm.sim.cardname"

    invoke-direct {p0, v0, p1, p3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 247
    if-nez p1, :cond_2

    .line 248
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_icon_1"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 252
    :cond_0
    if-eqz p3, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_name_1"

    invoke-static {v0, v1, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 266
    :cond_1
    :goto_0
    return-void

    .line 257
    :cond_2
    if-eqz p2, :cond_3

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_icon_2"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 261
    :cond_3
    if-eqz p3, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_name_2"

    invoke-static {v0, v1, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private setPropertyNewCard(I)V
    .locals 5
    .param p1, "slot"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 232
    const-string v0, "TelephonyPropertiesEdit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive CDMAPHONE NEW_CARD_CHECK + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    if-ne p1, v3, :cond_1

    .line 234
    const-string v0, "gsm.sim.newCheck"

    const-string v1, "true"

    invoke-direct {p0, v0, v4, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 236
    const-string v0, "gsm.sim.newCheck"

    const-string v1, "true"

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 238
    const-string v0, "gsm.sim.newCheck"

    const-string v1, "true"

    invoke-direct {p0, v0, v4, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 239
    const-string v0, "gsm.sim.newCheck"

    const-string v1, "true"

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private setPropertyPLMN(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "sSwitchStateC"    # Ljava/lang/String;
    .param p2, "sSwitchStateG"    # Ljava/lang/String;
    .param p3, "bSwitchImgViewC"    # Z
    .param p4, "bSwitchImgViewG"    # Z

    .prologue
    .line 216
    const-string v0, "TelephonyPropertiesEdit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cdma plmnstring + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", plmnstate + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v0, "TelephonyPropertiesEdit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gsm plmnstring + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", plmnstate + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    if-eqz p3, :cond_0

    .line 220
    const-string v0, "gsm.plmnstring"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v0, "gsm.plmnstate"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :goto_0
    return-void

    .line 222
    :cond_0
    if-eqz p4, :cond_1

    .line 223
    const-string v0, "gsm.plmnstring"

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v0, "gsm.plmnstate"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_1
    const-string v0, "gsm.plmnstring"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v0, "gsm.plmnstate"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setPropertyState(I)V
    .locals 14
    .param p1, "slot"    # I

    .prologue
    .line 369
    const-string v9, "TelephonyPropertiesEdit"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive setPropertyState slot : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const-string v9, "gsm.sim.state"

    const-string v10, "ABSENT"

    invoke-direct {p0, v9, p1, v10}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 371
    .local v5, "mStateSlot":Ljava/lang/String;
    const-string v9, "ril.cardnoti"

    invoke-static {v9, p1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 372
    .local v1, "cardnoti":I
    const-string v9, "gsm.sim.currentcardstatus"

    const-string v10, "0"

    invoke-direct {p0, v9, p1, v10}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 373
    .local v2, "cardstatus":I
    iget-object v9, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "phone1_on"

    const/4 v11, -0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 374
    .local v6, "simDBvalue0":I
    iget-object v9, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "phone2_on"

    const/4 v11, -0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 376
    .local v7, "simDBvalue1":I
    const-string v9, "TelephonyPropertiesEdit"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mStateSlot : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const-string v9, "TelephonyPropertiesEdit"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cardnoti : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v9, "TelephonyPropertiesEdit"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cardstatus : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-string v9, "TelephonyPropertiesEdit"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "simDBvalue0 : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v9, "TelephonyPropertiesEdit"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "simDBvalue1 : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    if-nez v1, :cond_1

    .line 383
    const-string v9, "TelephonyPropertiesEdit"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cardnoti 0, skip setPropertyState slot : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    const-string v9, "ABSENT"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 388
    const-string v9, "gsm.sim.availability"

    const-string v10, "false"

    invoke-direct {p0, v9, p1, v10}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 389
    const-string v9, "gsm.sim.pplock"

    const-string v10, ""

    invoke-direct {p0, v9, p1, v10}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 390
    const-string v9, "gsm.sim.currentcardstatus"

    const-string v10, "0"

    invoke-direct {p0, v9, p1, v10}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 391
    const-string v9, "gsm.sim.cardnoti"

    const-string v10, "1"

    invoke-direct {p0, v9, p1, v10}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 393
    :cond_2
    const-string v9, "UNKNOWN"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "NOT_READY"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 394
    :cond_3
    const-string v9, "ril.ICC_TYPE"

    const-string v10, "0"

    invoke-direct {p0, v9, p1, v10}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 395
    .local v4, "icctype":Ljava/lang/String;
    if-eqz v4, :cond_4

    const-string v9, ""

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 396
    :cond_4
    const-string v4, "0"

    .line 398
    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 399
    .local v8, "type":I
    const-string v9, "TelephonyPropertiesEdit"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ril.ICC_TYPE :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const-string v9, "TelephonyPropertiesEdit"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "switching.slot :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "switching.slot"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const-string v9, "TelephonyPropertiesEdit"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ril.CGswitch :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ril.CGSwitch"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    if-nez p1, :cond_b

    .line 403
    const/4 v9, 0x3

    if-eq v8, v9, :cond_6

    const/4 v9, 0x4

    if-ne v8, v9, :cond_8

    .line 404
    :cond_6
    const-string v9, "gsm.sim.availability"

    const-string v10, "true"

    invoke-direct {p0, v9, p1, v10}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 437
    :cond_7
    :goto_1
    const-string v9, "CTC"

    sget-object v10, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "UNKNOWN"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 438
    if-nez p1, :cond_10

    if-nez v6, :cond_10

    .line 439
    const-string v9, "gsm.sim.currentcardstatus"

    const/4 v10, 0x0

    const-string v11, "2"

    invoke-direct {p0, v9, v10, v11}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 407
    :cond_8
    iget-object v9, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "switching.slot"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_a

    .line 408
    if-eqz v8, :cond_9

    .line 409
    const-string v9, "gsm.sim.state"

    const-string v10, "ABSENT"

    invoke-direct {p0, v9, p1, v10}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 411
    :cond_9
    const-string v9, "gsm.sim.availability"

    const-string v10, "false"

    invoke-direct {p0, v9, p1, v10}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 412
    const-string v9, "gsm.sim.pplock"

    const-string v10, ""

    invoke-direct {p0, v9, p1, v10}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 413
    const-string v9, "gsm.sim.currentcardstatus"

    const-string v10, "0"

    invoke-direct {p0, v9, p1, v10}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 416
    :cond_a
    const-string v9, "gsm.sim.availability"

    const-string v10, "true"

    invoke-direct {p0, v9, p1, v10}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 422
    :cond_b
    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    .line 423
    const-string v9, "gsm.sim.availability"

    const-string v10, "true"

    invoke-direct {p0, v9, p1, v10}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 425
    :cond_c
    const/4 v9, 0x3

    if-eq v8, v9, :cond_d

    const/4 v9, 0x4

    if-ne v8, v9, :cond_7

    .line 426
    :cond_d
    iget-object v9, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "switching.slot"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_f

    .line 427
    const-string v9, "gsm.sim.availability"

    const-string v10, "false"

    invoke-direct {p0, v9, p1, v10}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 428
    if-eqz v8, :cond_e

    const-string v9, "gsm.sim.state"

    const-string v10, "ABSENT"

    invoke-direct {p0, v9, p1, v10}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 429
    :cond_e
    const-string v9, "gsm.sim.pplock"

    const-string v10, ""

    invoke-direct {p0, v9, p1, v10}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 430
    const-string v9, "gsm.sim.currentcardstatus"

    const-string v10, "0"

    invoke-direct {p0, v9, p1, v10}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 432
    :cond_f
    const-string v9, "gsm.sim.availability"

    const-string v10, "true"

    invoke-direct {p0, v9, p1, v10}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 440
    :cond_10
    const/4 v9, 0x1

    if-ne p1, v9, :cond_0

    if-nez v7, :cond_0

    .line 441
    const-string v9, "gsm.sim.currentcardstatus"

    const/4 v10, 0x1

    const-string v11, "2"

    invoke-direct {p0, v9, v10, v11}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 445
    .end local v4    # "icctype":Ljava/lang/String;
    .end local v8    # "type":I
    :cond_11
    const-string v9, "READY"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 446
    const-string v9, "gsm.sim.availability"

    const-string v10, "true"

    invoke-direct {p0, v9, p1, v10}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 447
    const-string v9, "gsm.sim.pplock"

    const-string v10, "unlock"

    invoke-direct {p0, v9, p1, v10}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 448
    const/4 v9, 0x2

    if-eq v2, v9, :cond_12

    .line 449
    const-string v9, "gsm.sim.currentcardstatus"

    const-string v10, "3"

    invoke-direct {p0, v9, p1, v10}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 469
    :cond_12
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_13

    .line 470
    const-string v9, "CTC"

    sget-object v10, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 471
    const-string v9, "gsm.sim.active"

    const-string v10, "0"

    invoke-direct {p0, v9, p1, v10}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 472
    .local v0, "cardact":I
    const/4 v9, 0x2

    if-ne v0, v9, :cond_13

    .line 473
    const-string v9, "gsm.sim.active"

    const-string v10, "0"

    invoke-direct {p0, v9, p1, v10}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 474
    const/4 v9, 0x1

    if-ne p1, v9, :cond_14

    .line 475
    const-string v9, "gsm.sim.currentcardstatus"

    const-string v10, "3"

    invoke-direct {p0, v9, p1, v10}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 476
    iget-object v9, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "phone2_on"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 477
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 478
    .local v3, "i":Landroid/content/Intent;
    const-string v9, "com.samsung.intent.action.Slot2OnCompleted"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    iget-object v9, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 487
    :goto_2
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "i":Landroid/content/Intent;
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 488
    .restart local v3    # "i":Landroid/content/Intent;
    const-string v9, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    const-string v9, "property_item"

    const-string v10, "currentcardstatuson"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string v9, "simSlot"

    invoke-virtual {v3, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 491
    iget-object v9, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 496
    .end local v0    # "cardact":I
    .end local v3    # "i":Landroid/content/Intent;
    :cond_13
    const-string v9, "gsm.sim.cardnoti"

    const-string v10, "2"

    invoke-direct {p0, v9, p1, v10}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 481
    .restart local v0    # "cardact":I
    :cond_14
    const-string v9, "gsm.sim.currentcardstatus"

    const-string v10, "3"

    invoke-direct {p0, v9, p1, v10}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 482
    iget-object v9, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "phone1_on"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 483
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 484
    .restart local v3    # "i":Landroid/content/Intent;
    const-string v9, "com.samsung.intent.action.Slot1OnCompleted"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    iget-object v9, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 499
    .end local v0    # "cardact":I
    .end local v3    # "i":Landroid/content/Intent;
    :cond_15
    const-string v9, "gsm.sim.availability"

    const-string v10, "true"

    invoke-direct {p0, v9, p1, v10}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 500
    const-string v9, "gsm.sim.pplock"

    invoke-direct {p0, v9, p1, v5}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 501
    const-string v9, "gsm.sim.currentcardstatus"

    const-string v10, "1"

    invoke-direct {p0, v9, p1, v10}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 502
    const-string v9, "gsm.sim.cardnoti"

    const-string v10, "2"

    invoke-direct {p0, v9, p1, v10}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 508
    invoke-static {p1, p2, p3}, Lcom/samsung/android/telephony/MultiSimManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 509
    return-void
.end method


# virtual methods
.method resetProperties()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 152
    const-string v0, "TelephonyPropertiesEdit"

    const-string v1, "resetProperties"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v0, "gsm.sim.newCheck"

    const-string v1, "false"

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 155
    const-string v0, "gsm.sim.newCheck"

    const-string v1, "false"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 156
    const-string v0, "gsm.sim.availability"

    const-string v1, "false"

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 157
    const-string v0, "gsm.sim.availability"

    const-string v1, "false"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 158
    const-string v0, "gsm.sim.pplock"

    const-string v1, ""

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 159
    const-string v0, "gsm.sim.pplock"

    const-string v1, ""

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 161
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v2, :cond_2

    const-string v0, "CTC"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    const-string v0, "gsm.sim.cardname"

    const-string v1, "Slot 1"

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 164
    const-string v0, "gsm.sim.cardname"

    const-string v1, "Slot 2"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 165
    const-string v0, "gsm.sim.cardname.dual"

    const-string v1, "Slot 1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "gsm.sim.cardnoti"

    const-string v1, "0"

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 168
    const-string v0, "gsm.sim.cardnoti"

    const-string v1, "0"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 170
    const-string v0, "gsm.sim.state"

    const-string v1, "UNKNOWN"

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 171
    const-string v0, "gsm.sim.state"

    const-string v1, "UNKNOWN"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 173
    const-string v0, "gsm.sim.selectnetwork"

    const-string v1, "GSM"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_0
    const-string v0, "gsm.sim.slotswitching"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v2, :cond_3

    .line 186
    const-string v0, "CTC"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    :cond_0
    const-string v0, "gsm.sim.icon"

    const-string v1, "0"

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 194
    const-string v0, "gsm.sim.icon"

    const-string v1, "1"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 200
    :goto_2
    const-string v0, "gsm.sim.icon.dual"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v0, "gsm.sim.activity"

    const-string v1, "false"

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 203
    const-string v0, "gsm.sim.activity"

    const-string v1, "false"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 204
    const-string v0, "gsm.sim.activity.dual"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v0, "gsm.sim.currentcardstatus"

    const-string v1, "9"

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 207
    const-string v0, "gsm.sim.currentcardstatus"

    const-string v1, "9"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 209
    const-string v0, "gsm.sim.active"

    const-string v1, "0"

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 210
    const-string v0, "gsm.sim.active"

    const-string v1, "0"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 211
    return-void

    .line 175
    :cond_1
    const-string v0, "gsm.sim.selectnetwork"

    const-string v1, "CDMA"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_2
    const-string v0, "gsm.sim.cardname"

    const-string v1, ""

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 181
    const-string v0, "gsm.sim.cardname"

    const-string v1, ""

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 182
    const-string v0, "gsm.sim.cardname.dual"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 197
    :cond_3
    const-string v0, "gsm.sim.icon"

    const-string v1, "0"

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 198
    const-string v0, "gsm.sim.icon"

    const-string v1, "1"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2
.end method

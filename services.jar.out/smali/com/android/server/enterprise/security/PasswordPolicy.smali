.class public Lcom/android/server/enterprise/security/PasswordPolicy;
.super Landroid/app/enterprise/IPasswordPolicy$Stub;
.source "PasswordPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final MDM_PASSWORD_EXPIRING_NOTIFICATION:Ljava/lang/String; = "edm.intent.action.internal.NOTIFICATION_PASSWORD_EXPIRED"

.field private static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "android.uid.system:1000"

.field private static final TAG:Ljava/lang/String; = "PasswordPolicy"


# instance fields
.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private final mService:Landroid/app/admin/IDevicePolicyManager;

.field private mTelManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 137
    invoke-direct {p0}, Landroid/app/enterprise/IPasswordPolicy$Stub;-><init>()V

    .line 156
    iput-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 653
    new-instance v0, Lcom/android/server/enterprise/security/PasswordPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/security/PasswordPolicy$1;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 139
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 140
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 142
    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 145
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 146
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.android.server.enterprise.PWD_CHANGE_TIMEOUT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v0, "edm.intent.action.internal.NOTIFICATION_PASSWORD_EXPIRED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 153
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 154
    return-void
.end method

.method private ChooseNewPasswordOwner(Landroid/app/enterprise/ContextInfo;)I
    .locals 22
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1521
    const/16 v18, -0x1

    .line 1522
    .local v18, "validAdmin":I
    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1523
    .local v8, "containerId":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v17

    .line 1525
    .local v17, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v5

    .line 1527
    .local v5, "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v19, v0

    const-string/jumbo v20, "passwordOwnerHistory"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 1529
    .local v16, "ownerHistory":Ljava/lang/String;
    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    if-eqz v19, :cond_5

    .line 1530
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1532
    .local v9, "historyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v19, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1533
    .local v6, "admins":[Ljava/lang/String;
    move-object v7, v6

    .local v7, "arr$":[Ljava/lang/String;
    array-length v13, v7

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v13, :cond_0

    aget-object v4, v7, v11

    .line 1534
    .local v4, "admin":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1533
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1537
    .end local v4    # "admin":Ljava/lang/String;
    :cond_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1540
    const/4 v12, 0x0

    .line 1541
    .local v12, "isValidAdmin":Z
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v10, v19, -0x1

    .end local v11    # "i$":I
    .local v10, "i":I
    :goto_1
    if-ltz v10, :cond_3

    if-nez v12, :cond_3

    .line 1542
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1543
    .local v4, "admin":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 1544
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 1545
    const/4 v12, 0x1

    .line 1550
    .end local v4    # "admin":Ljava/lang/Integer;
    :cond_2
    if-nez v12, :cond_3

    .line 1551
    invoke-interface {v9, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1541
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 1557
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_6

    .line 1558
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1559
    .local v15, "newHistorySb":Ljava/lang/StringBuilder;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1560
    .restart local v4    # "admin":Ljava/lang/Integer;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1562
    .end local v4    # "admin":Ljava/lang/Integer;
    :cond_4
    const/16 v19, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 1563
    .local v14, "newHistory":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v19, v0

    const-string/jumbo v20, "passwordOwnerHistory"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v14, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v19, v0

    const-string/jumbo v20, "passwordPatternOwner"

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1575
    .end local v6    # "admins":[Ljava/lang/String;
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v9    # "historyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "i":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "isValidAdmin":Z
    .end local v13    # "len$":I
    .end local v14    # "newHistory":Ljava/lang/String;
    .end local v15    # "newHistorySb":Ljava/lang/StringBuilder;
    :cond_5
    :goto_3
    return v18

    .line 1569
    .restart local v6    # "admins":[Ljava/lang/String;
    .restart local v7    # "arr$":[Ljava/lang/String;
    .restart local v9    # "historyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v10    # "i":I
    .restart local v12    # "isValidAdmin":Z
    .restart local v13    # "len$":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v19, v0

    const-string/jumbo v20, "passwordOwnerHistory"

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v19, v0

    const-string/jumbo v20, "passwordPatternOwner"

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/security/PasswordPolicy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/security/PasswordPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeIfNeededOnTimeout(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/security/PasswordPolicy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/security/PasswordPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeIfNeededOnStart(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/security/PasswordPolicy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/security/PasswordPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeIfNeededOnSwitch(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/security/PasswordPolicy;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/security/PasswordPolicy;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/security/PasswordPolicy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/security/PasswordPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeIfNeededAfterCall(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/Intent;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/security/PasswordPolicy;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isMDMAdmin(Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/security/PasswordPolicy;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/security/PasswordPolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeForUser(II)Z

    move-result v0

    return v0
.end method

.method private addOwnerToStack(Landroid/app/enterprise/ContextInfo;)V
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1613
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1614
    .local v0, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 1616
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "passwordPatternOwner"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1620
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "passwordOwnerHistory"

    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1622
    .local v1, "stack":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1623
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1628
    :goto_0
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "passwordOwnerHistory"

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1630
    return-void

    .line 1625
    :cond_0
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private changePasswordAsUser(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 849
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPersona(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 850
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->postPwdResetEventToPersona(I)Z

    .line 874
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 857
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 858
    .local v2, "uh":Landroid/os/UserHandle;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasPassword(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 859
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 860
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.ChooseLockPassword"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 862
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 863
    const/high16 v3, 0x400000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 864
    const/high16 v3, 0x800000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 865
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 871
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uh":Landroid/os/UserHandle;
    :catch_0
    move-exception v0

    .line 872
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PasswordPolicy"

    const-string/jumbo v4, "handled expected Exception in changePasswordAsUser()."

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 867
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "uh":Landroid/os/UserHandle;
    :cond_2
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "secedm.src.android.app.enterprise.action.DO_KEYGUARD"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 868
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private checkPackageCallerOrEnforcePermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "caller":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :goto_0
    return-object p1

    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    goto :goto_0
.end method

.method private checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "caller":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSystemUser()V

    goto :goto_0
.end method

.method private checkRegex(Ljava/lang/String;)Z
    .locals 2
    .param p1, "regex"    # Ljava/lang/String;

    .prologue
    .line 325
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private computeLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 9
    .param p1, "str1"    # Ljava/lang/CharSequence;
    .param p2, "str2"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 1834
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    filled-new-array {v3, v5}, [I

    move-result-object v3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 1836
    .local v0, "distance":[[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v1, v3, :cond_0

    .line 1837
    aget-object v3, v0, v1

    aput v1, v3, v4

    .line 1836
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1838
    :cond_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v2, v3, :cond_1

    .line 1839
    aget-object v3, v0, v4

    aput v2, v3, v2

    .line 1838
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1841
    :cond_1
    const/4 v1, 0x1

    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v1, v3, :cond_4

    .line 1842
    const/4 v2, 0x1

    :goto_3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v2, v3, :cond_3

    .line 1843
    aget-object v5, v0, v1

    add-int/lit8 v3, v1, -0x1

    aget-object v3, v0, v3

    aget v3, v3, v2

    add-int/lit8 v3, v3, 0x1

    aget-object v6, v0, v1

    add-int/lit8 v7, v2, -0x1

    aget v6, v6, v7

    add-int/lit8 v6, v6, 0x1

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/lit8 v3, v1, -0x1

    aget-object v3, v0, v3

    add-int/lit8 v7, v2, -0x1

    aget v7, v3, v7

    add-int/lit8 v3, v1, -0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v8, v2, -0x1

    invoke-interface {p2, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v3, v8, :cond_2

    move v3, v4

    :goto_4
    add-int/2addr v3, v7

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, v5, v2

    .line 1842
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1843
    :cond_2
    const/4 v3, 0x1

    goto :goto_4

    .line 1841
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1847
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    aget-object v3, v0, v3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    aget v3, v3, v4

    return v3
.end method

.method private containsForbiddenCharacterSequence(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pwd"    # Ljava/lang/String;

    .prologue
    .line 1875
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterSequenceLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 1877
    .local v4, "length":I
    if-nez v4, :cond_0

    .line 1878
    const/4 v10, 0x0

    .line 1929
    :goto_0
    return v10

    .line 1880
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\\w(?=\\w{"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",})"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 1882
    .local v6, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v6, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 1883
    .local v5, "match":Ljava/util/regex/Matcher;
    :cond_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1885
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    .line 1889
    .local v9, "start":I
    invoke-virtual {p2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1892
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1896
    const/4 v2, 0x0

    .line 1897
    .local v2, "flag":I
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {p2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    sub-int v1, v10, v0

    .line 1898
    .local v1, "charDiff":I
    if-nez v1, :cond_4

    const/4 v8, 0x0

    .line 1901
    .local v8, "sequencePattern":I
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v10, v4, 0x5

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1902
    .local v7, "sb":Ljava/lang/StringBuilder;
    const/16 v10, 0x5c

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1903
    const/16 v10, 0x51

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1904
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1905
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v4, :cond_3

    .line 1906
    add-int v10, v0, v8

    int-to-char v0, v10

    .line 1909
    add-int v10, v9, v3

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v10

    if-nez v10, :cond_6

    .line 1910
    :cond_2
    const/4 v2, 0x1

    .line 1919
    :cond_3
    const/4 v10, 0x1

    if-eq v2, v10, :cond_1

    .line 1923
    const/16 v10, 0x5c

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1924
    const/16 v10, 0x45

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1926
    add-int v10, v9, v4

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1927
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1898
    .end local v3    # "i":I
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "sequencePattern":I
    :cond_4
    if-lez v1, :cond_5

    const/4 v8, 0x1

    goto :goto_1

    :cond_5
    const/4 v8, -0x1

    goto :goto_1

    .line 1914
    .restart local v3    # "i":I
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v8    # "sequencePattern":I
    :cond_6
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1905
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1929
    .end local v0    # "c":C
    .end local v1    # "charDiff":I
    .end local v2    # "flag":I
    .end local v3    # "i":I
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "sequencePattern":I
    .end local v9    # "start":I
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method private containsForbiddenData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pwd"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1391
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->getForbiddenStrings(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;

    move-result-object v0

    .line 1393
    .local v0, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v3, v4

    .line 1401
    :goto_0
    return v3

    .line 1396
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1397
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .end local v2    # "s":Ljava/lang/String;
    :cond_3
    move v3, v4

    .line 1401
    goto :goto_0
.end method

.method private containsForbiddenNumericSequence(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pwd"    # Ljava/lang/String;

    .prologue
    .line 1265
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumNumericSequenceLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 1267
    .local v3, "length":I
    if-nez v3, :cond_0

    .line 1268
    const/4 v9, 0x0

    .line 1297
    :goto_0
    return v9

    .line 1270
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\\d(?=\\d{"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",})"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 1271
    .local v5, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v5, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1272
    .local v4, "match":Ljava/util/regex/Matcher;
    :cond_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1274
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    .line 1278
    .local v8, "start":I
    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1279
    .local v0, "c":C
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {p2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int v1, v9, v0

    .line 1280
    .local v1, "charDiff":I
    if-nez v1, :cond_2

    const/4 v7, 0x0

    .line 1282
    .local v7, "sequencePattern":I
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v9, v3, 0x5

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1283
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/16 v9, 0x5c

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1284
    const/16 v9, 0x51

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1285
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1286
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_4

    .line 1287
    add-int v9, v0, v7

    int-to-char v0, v9

    .line 1288
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1286
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1280
    .end local v2    # "i":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "sequencePattern":I
    :cond_2
    if-lez v1, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, -0x1

    goto :goto_1

    .line 1291
    .restart local v2    # "i":I
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v7    # "sequencePattern":I
    :cond_4
    const/16 v9, 0x5c

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1292
    const/16 v9, 0x45

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1294
    add-int v9, v8, v3

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1295
    const/4 v9, 0x1

    goto :goto_0

    .line 1297
    .end local v0    # "c":C
    .end local v1    # "charDiff":I
    .end local v2    # "i":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "sequencePattern":I
    .end local v8    # "start":I
    :cond_5
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private containsForbiddenStringDistance(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "storedPwd"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1858
    if-nez p3, :cond_1

    .line 1865
    :cond_0
    :goto_0
    return v1

    .line 1861
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMinimumCharacterChangeLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 1862
    .local v0, "minDistance":I
    if-eqz v0, :cond_0

    .line 1865
    invoke-direct {p0, p3, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->computeLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    if-ge v2, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private containsMaxRepeatedCharacters(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pwd"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1469
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterOccurences(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 1471
    .local v7, "rptCount":I
    if-nez v7, :cond_0

    move v8, v9

    .line 1488
    :goto_0
    return v8

    .line 1474
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1475
    .local v4, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 1476
    .local v2, "ca":[C
    move-object v0, v2

    .local v0, "arr$":[C
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-char v1, v0, v5

    .line 1477
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1478
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1479
    .local v3, "cnt":I
    if-ne v3, v7, :cond_1

    .line 1480
    const-string v8, "PasswordPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v10

    .line 1481
    goto :goto_0

    .line 1483
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    .end local v3    # "cnt":I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1485
    :cond_2
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v1    # "c":C
    :cond_3
    move v8, v9

    .line 1488
    goto :goto_0
.end method

.method private enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforcePwdChangeForUser(II)Z
    .locals 10
    .param p1, "containerId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 577
    const/4 v4, 0x1

    .line 579
    .local v4, "success":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 586
    .local v6, "token":J
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPersona(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 587
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->postPwdResetEventToPersona(I)Z

    move-result v3

    .line 588
    .local v3, "ret":Z
    if-eqz v3, :cond_0

    .line 589
    const/4 v5, 0x1

    invoke-virtual {p0, p1, v5, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z

    .line 591
    :cond_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 634
    .end local v3    # "ret":Z
    :goto_0
    return v3

    .line 594
    :cond_1
    const/4 v5, 0x1

    invoke-virtual {p0, p1, v5, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z

    .line 597
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasPassword(I)Z

    move-result v2

    .line 598
    .local v2, "isLockPwdEnabled":Z
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 599
    .local v0, "currentUserId":I
    if-nez v2, :cond_4

    .line 601
    const/4 v5, 0x3

    invoke-virtual {p0, p1, v5, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z

    .line 605
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    if-eqz v5, :cond_2

    if-eq p2, v0, :cond_3

    .line 607
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->changePasswordAsUser(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    .end local v0    # "currentUserId":I
    .end local v2    # "isLockPwdEnabled":Z
    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v4

    .line 634
    goto :goto_0

    .line 611
    .restart local v0    # "currentUserId":I
    .restart local v2    # "isLockPwdEnabled":Z
    :cond_3
    const/4 v5, -0x4

    :try_start_1
    invoke-virtual {p0, p1, v5, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 628
    .end local v0    # "currentUserId":I
    .end local v2    # "isLockPwdEnabled":Z
    :catch_0
    move-exception v1

    .line 629
    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 630
    const-string v5, "PasswordPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception during password enforcement: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 618
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "currentUserId":I
    .restart local v2    # "isLockPwdEnabled":Z
    :cond_4
    :try_start_2
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    if-eqz v5, :cond_5

    if-eq p2, v0, :cond_6

    .line 620
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->changePasswordAsUser(I)V

    goto :goto_1

    .line 624
    :cond_6
    const/4 v5, -0x2

    invoke-virtual {p0, p1, v5, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private enforcePwdChangeIfNeededAfterCall(I)V
    .locals 3
    .param p1, "currentUserId"    # I

    .prologue
    .line 811
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result v0

    .line 812
    .local v0, "changeRequired":I
    const/4 v1, 0x0

    .line 817
    .local v1, "newEnforceValue":I
    packed-switch v0, :pswitch_data_0

    .line 835
    :goto_0
    if-lez v1, :cond_0

    .line 836
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z

    .line 838
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->changePasswordAsUser(I)V

    .line 840
    :cond_0
    return-void

    .line 820
    :pswitch_0
    const/4 v1, 0x3

    .line 821
    goto :goto_0

    .line 824
    :pswitch_1
    const/4 v1, 0x2

    .line 825
    goto :goto_0

    .line 828
    :pswitch_2
    const/4 v1, 0x1

    .line 829
    goto :goto_0

    .line 817
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private enforcePwdChangeIfNeededOnStart(I)V
    .locals 3
    .param p1, "currentUserId"    # I

    .prologue
    .line 725
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result v0

    .line 726
    .local v0, "changeRequired":I
    const/4 v1, 0x0

    .line 732
    .local v1, "newEnforceValue":I
    packed-switch v0, :pswitch_data_0

    .line 751
    :goto_0
    if-eqz v1, :cond_0

    .line 752
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z

    .line 756
    :cond_0
    return-void

    .line 735
    :pswitch_0
    const/4 v1, 0x3

    .line 736
    goto :goto_0

    .line 740
    :pswitch_1
    const/4 v1, 0x2

    .line 741
    goto :goto_0

    .line 744
    :pswitch_2
    const/4 v1, 0x1

    .line 745
    goto :goto_0

    .line 732
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private enforcePwdChangeIfNeededOnSwitch(I)V
    .locals 2
    .param p1, "newCurrentUserId"    # I

    .prologue
    .line 766
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result v0

    .line 768
    .local v0, "changeRequired":I
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasPassword(I)Z

    move-result v1

    .line 772
    .local v1, "hasPassword":Z
    if-lez v0, :cond_0

    if-nez v1, :cond_0

    .line 773
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->changePasswordAsUser(I)V

    .line 776
    :cond_0
    return-void
.end method

.method private enforcePwdChangeIfNeededOnTimeout(I)V
    .locals 4
    .param p1, "sendingUserId"    # I

    .prologue
    const/4 v3, 0x0

    .line 784
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 787
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 790
    .local v0, "currentUserId":I
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_0

    if-eq p1, v0, :cond_2

    .line 793
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v3, v1, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z

    .line 795
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->changePasswordAsUser(I)V

    .line 803
    .end local v0    # "currentUserId":I
    :cond_1
    :goto_0
    return-void

    .line 799
    .restart local v0    # "currentUserId":I
    :cond_2
    const/4 v1, -0x3

    invoke-virtual {p0, v3, v1, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z

    goto :goto_0
.end method

.method private enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSystemUser()V
    .locals 3

    .prologue
    .line 483
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 484
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 485
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Can only be called by system user"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 487
    :cond_0
    return-void
.end method

.method private getCurrentPasswordOwner(Landroid/app/enterprise/ContextInfo;)I
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1498
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 1500
    .local v5, "userId":I
    iget-object v7, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "passwordPatternOwner"

    invoke-virtual {v7, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1502
    .local v3, "owner":Ljava/lang/String;
    const/4 v6, -0x1

    .line 1503
    .local v6, "validAdmin":I
    if-eqz v3, :cond_2

    .line 1504
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1505
    .local v4, "ownerAdmin":Ljava/lang/Integer;
    iget-object v7, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1506
    .local v1, "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1507
    .local v0, "admin":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 1508
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1513
    .end local v0    # "admin":Ljava/lang/Integer;
    .end local v1    # "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "ownerAdmin":Ljava/lang/Integer;
    :goto_0
    return v7

    .line 1511
    .restart local v1    # "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "ownerAdmin":Ljava/lang/Integer;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->ChooseNewPasswordOwner(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .end local v1    # "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "ownerAdmin":Ljava/lang/Integer;
    :cond_2
    move v7, v6

    .line 1513
    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getUserIdByPackageNameOrUid(Landroid/app/enterprise/ContextInfo;)I
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1092
    if-nez p1, :cond_0

    .line 1093
    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {p1, v5}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 1095
    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1096
    .local v0, "caller":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 1097
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1098
    .local v1, "index":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 1099
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1102
    :cond_1
    const-string v5, "android.uid.systemui"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 1104
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1105
    .local v2, "token":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 1106
    .local v4, "userId":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1110
    .end local v1    # "index":I
    .end local v2    # "token":J
    .end local v4    # "userId":I
    :goto_0
    return v4

    :cond_3
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    goto :goto_0
.end method

.method private hasPassword(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 641
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPersona(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 649
    :cond_0
    :goto_0
    return v0

    .line 644
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string v3, "android"

    invoke-static {v2, v3, v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v1

    .line 646
    .local v1, "userCtx":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 648
    new-instance v2, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;

    invoke-direct {v2, v1}, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;->isLockPasswordEnabled(I)Z

    move-result v0

    .line 649
    .local v0, "hasPassword":Z
    goto :goto_0
.end method

.method private isMDMAdmin(Landroid/content/Intent;I)Z
    .locals 19
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .prologue
    .line 971
    const-string/jumbo v15, "pkgName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 974
    .local v12, "pkgName":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 975
    .local v14, "userContext":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string v16, "android"

    const/16 v17, 0x0

    new-instance v18, Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual/range {v15 .. v18}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v14

    .line 978
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 979
    .local v11, "pkgMgr":Landroid/content/pm/PackageManager;
    const/16 v15, 0x1000

    invoke-virtual {v11, v12, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 982
    .local v10, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v2, v10, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v9, v2, v5

    .line 983
    .local v9, "perm":Ljava/lang/String;
    const-string v15, "android.permission.sec.MDM_APP_MGMT"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "android.permission.sec.MDM_BLUETOOTH"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "android.permission.sec.MDM_INVENTORY"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "android.permission.sec.MDM_ROAMING"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "android.permission.sec.MDM_WIFI"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "android.permission.sec.MDM_PHONE_RESTRICTION"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "android.permission.sec.ENTERPRISE_DEVICE_ADMIN"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "android.permission.sec.MDM_HW_CONTROL"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 993
    :cond_0
    const-string v15, "PasswordPolicy"

    const-string v16, "**** An MDM Admin ****"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 994
    const/4 v15, 0x1

    .line 1025
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v9    # "perm":Ljava/lang/String;
    .end local v10    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v11    # "pkgMgr":Landroid/content/pm/PackageManager;
    .end local v14    # "userContext":Landroid/content/Context;
    :goto_1
    return v15

    .line 982
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v5    # "i$":I
    .restart local v7    # "len$":I
    .restart local v9    # "perm":Ljava/lang/String;
    .restart local v10    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v11    # "pkgMgr":Landroid/content/pm/PackageManager;
    .restart local v14    # "userContext":Landroid/content/Context;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 998
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v9    # "perm":Ljava/lang/String;
    .end local v10    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v11    # "pkgMgr":Landroid/content/pm/PackageManager;
    .end local v14    # "userContext":Landroid/content/Context;
    :catch_0
    move-exception v4

    .line 999
    .local v4, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v15, "PasswordPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Could not retrieve user context for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    .end local v4    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    :goto_2
    :try_start_1
    const-string v15, "enterprise_license_policy"

    invoke-static {v15}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 1008
    .local v13, "service":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    if-eqz v13, :cond_5

    .line 1009
    invoke-virtual {v13}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getAllLicenseInfo()[Landroid/app/enterprise/license/LicenseInfo;

    move-result-object v8

    .line 1010
    .local v8, "list":[Landroid/app/enterprise/license/LicenseInfo;
    if-nez v8, :cond_3

    .line 1011
    const-string v15, "PasswordPolicy"

    const-string v16, "LicenseInfo list is null"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1012
    const/4 v15, 0x0

    goto :goto_1

    .line 1000
    .end local v8    # "list":[Landroid/app/enterprise/license/LicenseInfo;
    .end local v13    # "service":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    :catch_1
    move-exception v3

    .line 1001
    .local v3, "e":Ljava/lang/Exception;
    const-string v15, "PasswordPolicy"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1014
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v8    # "list":[Landroid/app/enterprise/license/LicenseInfo;
    .restart local v13    # "service":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    :cond_3
    move-object v2, v8

    .local v2, "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    :try_start_2
    array-length v7, v2

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_3
    if-ge v5, v7, :cond_5

    aget-object v6, v2, v5

    .line 1015
    .local v6, "info":Landroid/app/enterprise/license/LicenseInfo;
    invoke-virtual {v6}, Landroid/app/enterprise/license/LicenseInfo;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v15

    if-eqz v15, :cond_4

    .line 1016
    const/4 v15, 0x1

    goto :goto_1

    .line 1014
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1020
    .end local v2    # "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    .end local v5    # "i$":I
    .end local v6    # "info":Landroid/app/enterprise/license/LicenseInfo;
    .end local v7    # "len$":I
    .end local v8    # "list":[Landroid/app/enterprise/license/LicenseInfo;
    .end local v13    # "service":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    :catch_2
    move-exception v3

    .line 1021
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v15, "PasswordPolicy"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    const-string v15, "PasswordPolicy"

    const-string v16, "**** Not an MDM Admin ****"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    const/4 v15, 0x0

    goto :goto_1
.end method

.method private isMdfppSdpContainer(I)Z
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 2790
    const/4 v3, 0x0

    .line 2791
    .local v3, "result":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPersona(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2795
    :try_start_0
    invoke-static {p1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v0

    .line 2796
    .local v0, "alias":Ljava/lang/String;
    invoke-static {}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getInstance()Lcom/sec/enterprise/knox/sdp/SdpUtil;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getEngineInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v2

    .line 2798
    .local v2, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-eqz v2, :cond_0

    .line 2799
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMdfpp()Z

    move-result v3

    .line 2800
    const-string v4, "PasswordPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isMdfppSdpContainer :: User "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Res = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2807
    .end local v0    # "alias":Ljava/lang/String;
    .end local v2    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_0
    :goto_0
    return v3

    .line 2802
    :catch_0
    move-exception v1

    .line 2803
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "PasswordPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isMdfppSdpContainer :: Error occurred... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2804
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isPersona(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 956
    const/4 v1, 0x0

    .line 958
    .local v1, "ret":Z
    if-eqz p1, :cond_0

    .line 959
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 960
    .local v0, "pm":Landroid/os/PersonaManager;
    invoke-virtual {v0, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 961
    const/4 v1, 0x1

    .line 965
    .end local v0    # "pm":Landroid/os/PersonaManager;
    :cond_0
    return v1
.end method

.method private isValidBioAuth(I)Z
    .locals 4
    .param p1, "bioAuth"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2711
    if-ne p1, v1, :cond_1

    .line 2725
    :cond_0
    :goto_0
    return v1

    .line 2714
    :cond_1
    if-eqz p1, :cond_2

    if-gez p1, :cond_3

    :cond_2
    move v1, v2

    .line 2715
    goto :goto_0

    .line 2718
    :cond_3
    move v0, p1

    .line 2719
    .local v0, "temp":I
    :goto_1
    rem-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_4

    .line 2720
    div-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 2722
    :cond_4
    if-eq v0, v1, :cond_0

    move v1, v2

    .line 2725
    goto :goto_0
.end method

.method private lockSdp(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 2760
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$2;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2787
    return-void
.end method

.method private postPersonaEvent(ILandroid/content/pm/PersonaNewEvent;)Z
    .locals 2
    .param p1, "personaId"    # I
    .param p2, "event"    # Landroid/content/pm/PersonaNewEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 883
    const/4 v0, 0x0

    .line 885
    .local v0, "service":Lcom/android/server/pm/PersonaManagerService;
    const-string/jumbo v1, "persona"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .end local v0    # "service":Lcom/android/server/pm/PersonaManagerService;
    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    .line 888
    .restart local v0    # "service":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v0, :cond_0

    .line 889
    invoke-virtual {v0, p2, p1}, Lcom/android/server/pm/PersonaManagerService;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Landroid/content/pm/PersonaState;

    .line 890
    const/4 v1, 0x1

    .line 893
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private postPwdResetEventToPersona(I)Z
    .locals 7
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 919
    const/4 v3, 0x0

    .line 920
    .local v3, "retVal":Z
    const/4 v1, 0x0

    .line 922
    .local v1, "pm":Landroid/os/PersonaManager;
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "persona"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "pm":Landroid/os/PersonaManager;
    check-cast v1, Landroid/os/PersonaManager;

    .line 924
    .restart local v1    # "pm":Landroid/os/PersonaManager;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 925
    .local v0, "info":Landroid/content/pm/PersonaInfo;
    if-nez v0, :cond_0

    .line 949
    .end local v0    # "info":Landroid/content/pm/PersonaInfo;
    :goto_0
    return v4

    .line 929
    .restart local v0    # "info":Landroid/content/pm/PersonaInfo;
    :cond_0
    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v5

    sget-object v6, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    invoke-virtual {v5, v6}, Landroid/os/PersonaManager$StateManager;->isAttribute(Landroid/content/pm/PersonaAttribute;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v5

    sget-object v6, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    invoke-virtual {v5, v6}, Landroid/os/PersonaManager$StateManager;->isAttribute(Landroid/content/pm/PersonaAttribute;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 931
    const-string v5, "PasswordPolicy"

    const-string/jumbo v6, "postPwdResetEventToPersona :: Already enforced request pending..."

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 944
    .end local v0    # "info":Landroid/content/pm/PersonaInfo;
    :catch_0
    move-exception v2

    .line 945
    .local v2, "re":Landroid/os/RemoteException;
    const-string v4, "PasswordPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception during postPwdResetEventToPersona: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "re":Landroid/os/RemoteException;
    :goto_1
    move v4, v3

    .line 949
    goto :goto_0

    .line 935
    .restart local v0    # "info":Landroid/content/pm/PersonaInfo;
    :cond_1
    :try_start_1
    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v4

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    invoke-virtual {v4, v5}, Landroid/os/PersonaManager$StateManager;->isAttribute(Landroid/content/pm/PersonaAttribute;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v4

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    invoke-virtual {v4, v5}, Landroid/os/PersonaManager$StateManager;->isAttribute(Landroid/content/pm/PersonaAttribute;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 937
    const-string v4, "PasswordPolicy"

    const-string/jumbo v5, "postPwdResetEventToPersona :: Reset request pending... clear the state..."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    sget-object v4, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    const/4 v5, 0x0

    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPersonaAttribute(ILandroid/content/pm/PersonaAttribute;Z)Z

    .line 941
    :cond_2
    sget-object v4, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    const/4 v5, 0x1

    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPersonaAttribute(ILandroid/content/pm/PersonaAttribute;Z)Z

    move-result v3

    .line 942
    if-eqz v3, :cond_3

    sget-object v4, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    const/4 v5, 0x1

    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPersonaAttribute(ILandroid/content/pm/PersonaAttribute;Z)Z

    .line 943
    :cond_3
    const-string v4, "PasswordPolicy"

    const-string/jumbo v5, "postPwdResetEventToPersona :: Enforced request has been set..."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private removeOwnerFromStack(Landroid/app/enterprise/ContextInfo;)V
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1583
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1584
    .local v3, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v10

    .line 1586
    .local v10, "userId":I
    iget-object v11, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "passwordOwnerHistory"

    invoke-virtual {v11, v12, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 1588
    .local v9, "stack":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 1590
    const-string v11, ","

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1591
    .local v1, "admins":[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1592
    .local v7, "newStackSb":Ljava/lang/StringBuilder;
    move-object v2, v1

    .local v2, "arr$":[Ljava/lang/String;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v2, v4

    .line 1593
    .local v0, "admin":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1594
    .local v8, "owner":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-eq v11, v12, :cond_0

    .line 1595
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1592
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1598
    .end local v0    # "admin":Ljava/lang/String;
    .end local v8    # "owner":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1599
    .local v6, "newStack":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_3

    .line 1600
    const/4 v6, 0x0

    .line 1604
    :goto_1
    iget-object v11, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "passwordOwnerHistory"

    invoke-virtual {v11, v12, v6, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1607
    .end local v1    # "admins":[Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "newStack":Ljava/lang/String;
    .end local v7    # "newStackSb":Ljava/lang/StringBuilder;
    :cond_2
    return-void

    .line 1602
    .restart local v1    # "admins":[Ljava/lang/String;
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "newStack":Ljava/lang/String;
    .restart local v7    # "newStackSb":Ljava/lang/StringBuilder;
    :cond_3
    const/4 v11, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method private setPersonaAttribute(ILandroid/content/pm/PersonaAttribute;Z)Z
    .locals 2
    .param p1, "personaId"    # I
    .param p2, "attribute"    # Landroid/content/pm/PersonaAttribute;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 901
    const/4 v0, 0x0

    .line 903
    .local v0, "service":Lcom/android/server/pm/PersonaManagerService;
    const-string/jumbo v1, "persona"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .end local v0    # "service":Lcom/android/server/pm/PersonaManagerService;
    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    .line 905
    .restart local v0    # "service":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v0, :cond_0

    .line 906
    invoke-virtual {v0, p2, p3, p1}, Lcom/android/server/pm/PersonaManagerService;->setAttribute(Landroid/content/pm/PersonaAttribute;ZI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 907
    const/4 v1, 0x1

    .line 910
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private unlockSdp(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 2813
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$3;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2838
    return-void
.end method


# virtual methods
.method public addRequiredPasswordPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "regex"    # Ljava/lang/String;

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 308
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 309
    :cond_0
    const/4 v0, 0x0

    .line 318
    :goto_0
    return v0

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string/jumbo v4, "passwordRequiredPattern"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 313
    .local v5, "oldRegex":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 318
    :goto_1
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string/jumbo v4, "passwordRequiredPattern"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 316
    :cond_2
    move-object v5, p2

    goto :goto_1
.end method

.method public deleteAllRestrictions(Landroid/app/enterprise/ContextInfo;)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 340
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string/jumbo v4, "passwordRequiredPattern"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 342
    .local v9, "oldRegex":Ljava/lang/String;
    const/4 v10, 0x1

    .line 343
    .local v10, "ret":Z
    if-eqz v9, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string/jumbo v4, "passwordRequiredPattern"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 346
    if-eqz v10, :cond_0

    .line 347
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getCurrentPasswordOwner(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 348
    .local v6, "currentOwner":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-ne v6, v0, :cond_1

    .line 349
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->ChooseNewPasswordOwner(Landroid/app/enterprise/ContextInfo;)I

    .line 359
    :goto_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v11

    .line 361
    .local v11, "userId":I
    if-nez v11, :cond_0

    .line 362
    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 365
    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v0, "Password"

    const-string v1, "deleteAllRestrictions"

    const/4 v2, 0x1

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 366
    const-string v0, "PasswordPolicy"

    const-string v1, "GearPolicy deleteAllRestrictions"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    .end local v6    # "currentOwner":I
    .end local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v11    # "userId":I
    :cond_0
    :goto_1
    return v10

    .line 353
    .restart local v6    # "currentOwner":I
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->removeOwnerFromStack(Landroid/app/enterprise/ContextInfo;)V

    goto :goto_0

    .line 367
    .restart local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v11    # "userId":I
    :catch_0
    move-exception v7

    .line 368
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public enforcePwdChange(Landroid/app/enterprise/ContextInfo;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/high16 v10, 0x70000

    .line 539
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 540
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 541
    .local v6, "userId":I
    const/4 v3, 0x1

    .line 545
    .local v3, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 546
    .local v4, "token":J
    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v2

    .line 547
    .local v2, "pwdQuality":I
    const-string v7, "PasswordPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UCS enabled for user = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const-string v7, "PasswordPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "current quality = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", SMART CARD Quality = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    if-ne v2, v10, :cond_0

    .line 551
    const-string v7, "PasswordPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enforcePwdChange declined because Lock Quality set to Smartcard for user = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 553
    const/4 v7, 0x0

    .line 573
    :goto_0
    return v7

    .line 555
    :cond_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 559
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v7, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeForUser(II)Z

    move-result v3

    .line 561
    if-eqz v3, :cond_1

    .line 562
    if-nez v6, :cond_1

    .line 563
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v7, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 566
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v7, "Password"

    const-string v8, "enforcePwdChange"

    const/4 v9, 0x1

    invoke-virtual {v1, v7, v8, v9}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 567
    const-string v7, "PasswordPolicy"

    const-string v8, "GearPolicy enforcePwdChange"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_1
    :goto_1
    move v7, v3

    .line 573
    goto :goto_0

    .line 568
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public excludeExternalStorageForFailedPasswordsWipe(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1996
    const/4 v2, 0x0

    .line 1997
    .local v2, "result":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1998
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2000
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PASSWORD"

    const-string v7, "excludeExternalStorageWipe"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 2004
    if-eqz v2, :cond_0

    .line 2005
    if-nez v3, :cond_0

    .line 2006
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2009
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "Password"

    const-string v5, "excludeExternalStorageForFailedPasswordsWipe"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2010
    const-string v4, "PasswordPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GearPolicy excludeExternalStorageForFailedPasswordsWipe : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2016
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .line 2011
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 2012
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurrentFailedPasswordAttempts(Landroid/app/enterprise/ContextInfo;)I
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2456
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2458
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2459
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2461
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/app/admin/IDevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2466
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2470
    :goto_0
    return v1

    .line 2463
    :catch_0
    move-exception v0

    .line 2464
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2466
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2470
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 2466
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getForbiddenStrings(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1355
    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1356
    const-string v6, "PasswordPolicy"

    const-string v7, " getForbiddenStrings calls from Profile return default value"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    :cond_0
    :goto_0
    return-object v2

    .line 1359
    :cond_1
    const-string v6, "android.uid.system:1000"

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforcePermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1361
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 1363
    .local v5, "userId":I
    if-eqz p2, :cond_2

    .line 1364
    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "PASSWORD"

    const-string/jumbo v8, "passwordForbiddenStrings"

    invoke-virtual {v6, v7, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 1367
    .local v1, "forbiddenList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1368
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1369
    .local v2, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1370
    .local v4, "str":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1376
    .end local v1    # "forbiddenList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "str":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v8, "PASSWORD"

    const-string/jumbo v9, "passwordForbiddenStrings"

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1378
    .local v0, "adminStrings":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1379
    new-instance v2, Ljava/util/ArrayList;

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getKeyguardDisabledFeatures(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2871
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2872
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2874
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2876
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2878
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2883
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2887
    :goto_0
    return v1

    .line 2880
    :catch_0
    move-exception v0

    .line 2881
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2883
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2887
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2883
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getKeyguardDisabledFeaturesInternal(Landroid/content/ComponentName;I)I
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2893
    const/4 v1, 0x0

    .line 2896
    .local v1, "features":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "keyguardDisabledFeatures"

    invoke-virtual {v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2902
    :goto_0
    const-string v2, "PasswordPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getKeyguardDisabledFeatures() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2903
    return v1

    .line 2898
    :catch_0
    move-exception v0

    .line 2899
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PasswordPolicy"

    const-string/jumbo v3, "getKeyguardDisabledFeatures() failed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2900
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getMaximumCharacterOccurences(Landroid/app/enterprise/ContextInfo;)I
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1445
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 1447
    .local v2, "userId":I
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "PASSWORD"

    const-string/jumbo v7, "passwordMaximumCharacterOccurences"

    invoke-virtual {v5, v6, v7, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1451
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 1452
    .local v0, "count":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1453
    .local v3, "value":I
    if-nez v0, :cond_1

    .line 1454
    move v0, v3

    goto :goto_0

    .line 1455
    :cond_1
    if-eqz v3, :cond_0

    if-le v0, v3, :cond_0

    .line 1456
    move v0, v3

    goto :goto_0

    .line 1459
    .end local v3    # "value":I
    :cond_2
    return v0
.end method

.method public getMaximumCharacterSequenceLength(Landroid/app/enterprise/ContextInfo;)I
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1745
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 1747
    .local v2, "userId":I
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v7, "PASSWORD"

    const-string/jumbo v8, "passwordMaximumCharacterSequenceLength"

    invoke-virtual {v5, v6, v7, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1750
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 1751
    .local v1, "length":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1752
    .local v3, "value":I
    if-nez v1, :cond_1

    .line 1753
    move v1, v3

    goto :goto_0

    .line 1754
    :cond_1
    if-eqz v3, :cond_0

    if-le v1, v3, :cond_0

    .line 1755
    move v1, v3

    goto :goto_0

    .line 1758
    .end local v3    # "value":I
    :cond_2
    return v1
.end method

.method public getMaximumFailedPasswordsForDisable(Landroid/app/enterprise/ContextInfo;)I
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1182
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 1184
    .local v2, "userId":I
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "PASSWORD"

    const-string/jumbo v7, "passwordAttemptDeviceDisable"

    invoke-virtual {v5, v6, v7, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1187
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 1188
    .local v1, "lMaxNumFailedAttempt":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1189
    .local v3, "value":I
    if-nez v1, :cond_1

    .line 1190
    move v1, v3

    goto :goto_0

    .line 1191
    :cond_1
    if-eqz v3, :cond_0

    if-le v1, v3, :cond_0

    .line 1192
    move v1, v3

    goto :goto_0

    .line 1195
    .end local v3    # "value":I
    :cond_2
    return v1
.end method

.method public getMaximumFailedPasswordsForWipe(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2502
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2503
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2505
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2507
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2509
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2514
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2518
    :goto_0
    return v1

    .line 2511
    :catch_0
    move-exception v0

    .line 2512
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2514
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2518
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2514
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getMaximumNumericSequenceLength(Landroid/app/enterprise/ContextInfo;)I
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1243
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 1245
    .local v2, "userId":I
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "PASSWORD"

    const-string/jumbo v7, "passwordMaximumNumericSequenceLength"

    invoke-virtual {v5, v6, v7, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1248
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 1249
    .local v1, "length":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1250
    .local v3, "value":I
    if-nez v1, :cond_1

    .line 1251
    move v1, v3

    goto :goto_0

    .line 1252
    :cond_1
    if-eqz v3, :cond_0

    if-le v1, v3, :cond_0

    .line 1253
    move v1, v3

    goto :goto_0

    .line 1256
    .end local v3    # "value":I
    :cond_2
    return v1
.end method

.method public getMaximumTimeToLock(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)J
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2584
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2585
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2587
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2589
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2591
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 2596
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2600
    :goto_0
    return-wide v4

    .line 2593
    :catch_0
    move-exception v0

    .line 2594
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2596
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2600
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 2596
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getMinimumCharacterChangeLength(Landroid/app/enterprise/ContextInfo;)I
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1808
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 1810
    .local v2, "userId":I
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v7, "PASSWORD"

    const-string/jumbo v8, "passwordMinimumCharacterChangeUpdatingPasswordLength"

    invoke-virtual {v5, v6, v7, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1813
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 1814
    .local v0, "count":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1815
    .local v3, "value":I
    if-nez v0, :cond_1

    .line 1816
    move v0, v3

    goto :goto_0

    .line 1817
    :cond_1
    if-eqz v3, :cond_0

    if-ge v0, v3, :cond_0

    .line 1822
    move v0, v3

    goto :goto_0

    .line 1825
    .end local v3    # "value":I
    :cond_2
    return v0
.end method

.method public getPasswordChangeTimeout(Landroid/app/enterprise/ContextInfo;)I
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 521
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 523
    .local v2, "userId":I
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v7, "PASSWORD"

    const-string/jumbo v8, "passwordChangeTimeout"

    invoke-virtual {v5, v6, v7, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 525
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, -0x1

    .line 526
    .local v1, "lowerTimeout":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 527
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_0

    .line 530
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, v1, :cond_0

    .line 531
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 534
    .end local v3    # "value":Ljava/lang/Integer;
    :cond_2
    if-gtz v1, :cond_3

    const/4 v1, 0x0

    .end local v1    # "lowerTimeout":I
    :cond_3
    return v1
.end method

.method public getPasswordExpiration(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)J
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2420
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2421
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2422
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2423
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2425
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 2430
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2434
    :goto_0
    return-wide v4

    .line 2427
    :catch_0
    move-exception v0

    .line 2428
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2430
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2434
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 2430
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getPasswordExpirationTimeout(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)J
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2402
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2403
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2404
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2405
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2407
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getPasswordExpirationTimeout(Landroid/content/ComponentName;I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 2412
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2416
    :goto_0
    return-wide v4

    .line 2409
    :catch_0
    move-exception v0

    .line 2410
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2412
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2416
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 2412
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getPasswordHistoryLength(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2357
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2358
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2359
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2360
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2362
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2367
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2371
    :goto_0
    return v1

    .line 2364
    :catch_0
    move-exception v0

    .line 2365
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2367
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2371
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2367
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getPasswordLockDelay(Landroid/app/enterprise/ContextInfo;)I
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v4, -0x1

    .line 236
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v7, "PASSWORD"

    const-string/jumbo v8, "unlockDelay"

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 238
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, -0x1

    .line 239
    .local v1, "lowerPeriod":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 240
    .local v2, "value":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_0

    .line 243
    if-eq v1, v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, v1, :cond_0

    .line 246
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 249
    .end local v2    # "value":Ljava/lang/Integer;
    :cond_2
    if-gez v1, :cond_3

    move v1, v4

    .end local v1    # "lowerPeriod":I
    :cond_3
    return v1
.end method

.method public getPasswordMinimumLength(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2108
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2109
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2110
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2111
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2113
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2118
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2122
    :goto_0
    return v1

    .line 2115
    :catch_0
    move-exception v0

    .line 2116
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2118
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2122
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2118
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getPasswordMinimumLetters(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2210
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2211
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2212
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2213
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2215
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2220
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2224
    :goto_0
    return v1

    .line 2217
    :catch_0
    move-exception v0

    .line 2218
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2220
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2224
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2220
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getPasswordMinimumLowerCase(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2176
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2177
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2178
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2179
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2181
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2186
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2190
    :goto_0
    return v1

    .line 2183
    :catch_0
    move-exception v0

    .line 2184
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2186
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2190
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2186
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getPasswordMinimumNonLetter(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2312
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2313
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2314
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2315
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2317
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2322
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2326
    :goto_0
    return v1

    .line 2319
    :catch_0
    move-exception v0

    .line 2320
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2322
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2326
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2322
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getPasswordMinimumNumeric(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2244
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2245
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2246
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2247
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2249
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2254
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2258
    :goto_0
    return v1

    .line 2251
    :catch_0
    move-exception v0

    .line 2252
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2254
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2258
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2254
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getPasswordMinimumSymbols(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2278
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2279
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2280
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2281
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2283
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2288
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2292
    :goto_0
    return v1

    .line 2285
    :catch_0
    move-exception v0

    .line 2286
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2288
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2292
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2288
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getPasswordMinimumUpperCase(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2142
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2143
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2144
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2145
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2147
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2152
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2156
    :goto_0
    return v1

    .line 2149
    :catch_0
    move-exception v0

    .line 2150
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2152
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2156
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2152
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getPasswordQuality(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2074
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2075
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2076
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2077
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2079
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2084
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2088
    :goto_0
    return v1

    .line 2081
    :catch_0
    move-exception v0

    .line 2082
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2084
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2088
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2084
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getRequiredPwdPatternRestrictions(Landroid/app/enterprise/ContextInfo;Z)Ljava/lang/String;
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z

    .prologue
    const/4 v1, 0x0

    .line 382
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 383
    const-string v2, "PasswordPolicy"

    const-string v3, " getRequiredPwdPatternRestrictions calls from Profile return default value"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_0
    :goto_0
    return-object v1

    .line 386
    :cond_1
    const-string v2, "android.uid.system:1000"

    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforcePermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 387
    if-eqz p2, :cond_2

    .line 388
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getCurrentPasswordOwner(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 389
    .local v0, "owner":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 390
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string/jumbo v4, "passwordRequiredPattern"

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 395
    .end local v0    # "owner":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v4, "PASSWORD"

    const-string/jumbo v5, "passwordRequiredPattern"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSupportedBiometricAuthentications(Landroid/app/enterprise/ContextInfo;)Ljava/util/Map;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2738
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 2739
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2740
    .local v1, "pkgMgr":Landroid/content/pm/PackageManager;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2742
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 2743
    const-string v3, "com.sec.feature.fingerprint_manager_service"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2745
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Fingerprint"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2753
    :cond_0
    return-object v0
.end method

.method public hasForbiddenCharacterSequence(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 418
    const-string v0, "android.uid.system:1000"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V

    .line 419
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->containsForbiddenCharacterSequence(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    const/4 v0, 0x1

    .line 421
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasForbiddenData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 443
    const-string v0, "android.uid.system:1000"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V

    .line 444
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->containsForbiddenData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    const/4 v0, 0x1

    .line 446
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasForbiddenNumericSequence(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 406
    const-string v0, "android.uid.system:1000"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V

    .line 407
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->containsForbiddenNumericSequence(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    const/4 v0, 0x1

    .line 409
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasForbiddenStringDistance(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "oldPassword"    # Ljava/lang/String;

    .prologue
    .line 431
    const-string v0, "android.uid.system:1000"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V

    .line 432
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/security/PasswordPolicy;->containsForbiddenStringDistance(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    const/4 v0, 0x1

    .line 434
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMaxRepeatedCharacters(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 456
    const-string v0, "android.uid.system:1000"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V

    .line 457
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->containsMaxRepeatedCharacters(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    const/4 v0, 0x1

    .line 459
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActivePasswordSufficient(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2438
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2440
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2441
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2443
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/app/admin/IDevicePolicyManager;->isActivePasswordSufficient(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2448
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2452
    :goto_0
    return v1

    .line 2445
    :catch_0
    move-exception v0

    .line 2446
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2448
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2452
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2448
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public isBiometricAuthenticationEnabled(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "bioAuth"    # I

    .prologue
    .line 2661
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 2663
    .local v0, "userId":I
    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isBiometricAuthenticationEnabledAsUser(II)Z

    move-result v1

    return v1
.end method

.method public isBiometricAuthenticationEnabledAsUser(II)Z
    .locals 12
    .param p1, "userId"    # I
    .param p2, "bioAuth"    # I

    .prologue
    const/16 v11, 0xc8

    const/16 v10, 0x64

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2668
    const/4 v0, 0x0

    .line 2670
    .local v0, "hasValue":Z
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isValidBioAuth(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2671
    const-string v6, "PasswordPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bioAuth is wrong value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2707
    :cond_0
    :goto_0
    return v5

    .line 2675
    :cond_1
    iget-object v7, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "PASSWORD"

    const-string/jumbo v9, "passwordBioAuthEnabled"

    invoke-virtual {v7, v8, v9, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 2677
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2678
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ltz v7, :cond_2

    .line 2680
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    and-int/2addr v7, p2

    if-ne v7, p2, :cond_0

    .line 2682
    const/4 v0, 0x1

    .line 2683
    goto :goto_1

    .line 2685
    .end local v3    # "value":Ljava/lang/Integer;
    :cond_3
    if-eqz v0, :cond_4

    .line 2686
    const-string v5, "PasswordPolicy"

    const-string/jumbo v7, "isBiometricAuthenticationEnabled: return true (hasValue)"

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 2687
    goto :goto_0

    .line 2690
    :cond_4
    if-ne p2, v6, :cond_8

    if-lt p1, v10, :cond_5

    if-le p1, v11, :cond_8

    .line 2692
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Security_ConfigLockLevelODE"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2693
    .local v2, "mCscFeature":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "NoFingerprint"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2695
    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "Fingerprint"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2696
    :cond_7
    const-string v5, "PasswordPolicy"

    const-string/jumbo v7, "isBiometricAuthenticationEnabled(FINGERPRINT): return true (CSC)"

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 2697
    goto :goto_0

    .line 2699
    .end local v2    # "mCscFeature":Ljava/lang/String;
    :cond_8
    const/4 v6, 0x2

    if-ne p2, v6, :cond_0

    if-lt p1, v10, :cond_0

    if-le p1, v11, :cond_0

    goto :goto_0
.end method

.method public isChangeRequested(Landroid/app/enterprise/ContextInfo;)I
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1115
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getUserIdByPackageNameOrUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 1116
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result v1

    return v1
.end method

.method public isChangeRequestedAsUser(I)I
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1120
    const/4 v0, 0x0

    .line 1121
    .local v0, "flag":I
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "passwordChangeRequested"

    invoke-virtual {v2, v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1123
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1124
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1127
    :cond_0
    return v0
.end method

.method public isExternalStorageForFailedPasswordsWipeExcluded(Landroid/app/enterprise/ContextInfo;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2023
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 2025
    .local v2, "userId":I
    const/4 v1, 0x1

    .line 2027
    .local v1, "ret":Z
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "PASSWORD"

    const-string v7, "excludeExternalStorageWipe"

    invoke-virtual {v5, v6, v7, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 2030
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 2031
    :cond_0
    const-string v5, "PasswordPolicy"

    const-string/jumbo v6, "isExternalStorageForFailedPasswordsWipeExcluded() : no admin enforce password policy. "

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    const/4 v5, 0x0

    .line 2040
    :goto_0
    return v5

    .line 2034
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 2035
    .local v3, "value":Z
    if-nez v3, :cond_2

    .line 2036
    move v1, v3

    .end local v3    # "value":Z
    :cond_3
    move v5, v1

    .line 2040
    goto :goto_0
.end method

.method public isMDMDisabledFP(I)Z
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 2644
    const/4 v1, 0x0

    .line 2645
    .local v1, "hasValue":Z
    const/4 v0, 0x1

    .line 2647
    .local v0, "bioAuth":I
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "PASSWORD"

    const-string/jumbo v7, "passwordBioAuthEnabled"

    invoke-virtual {v5, v6, v7, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 2649
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2650
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_0

    .line 2652
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/2addr v5, v0

    if-eq v5, v0, :cond_0

    .line 2653
    const/4 v1, 0x1

    goto :goto_0

    .line 2656
    .end local v3    # "value":Ljava/lang/Integer;
    :cond_1
    return v1
.end method

.method public isPasswordPatternMatched(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 470
    const-string v4, "android.uid.system:1000"

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V

    .line 471
    const/4 v3, 0x1

    .line 473
    .local v3, "result":Z
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->getRequiredPwdPatternRestrictions(Landroid/app/enterprise/ContextInfo;Z)Ljava/lang/String;

    move-result-object v2

    .line 474
    .local v2, "patternSet":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 475
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 476
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 477
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    .line 479
    .end local v0    # "match":Ljava/util/regex/Matcher;
    .end local v1    # "pattern":Ljava/util/regex/Pattern;
    :cond_0
    return v3
.end method

.method public isPasswordTableExist(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2730
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 2732
    .local v0, "userId":I
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PASSWORD"

    const-string/jumbo v4, "passwordBioAuthEnabled"

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 2734
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isPasswordVisibilityEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1971
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 1972
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabledAsUser(I)Z

    move-result v1

    return v1
.end method

.method public isPasswordVisibilityEnabledAsUser(I)Z
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 1976
    const/4 v1, 0x1

    .line 1978
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PASSWORD"

    const-string/jumbo v6, "passwordVisibilityEnabled"

    invoke-virtual {v4, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1981
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1982
    .local v2, "value":Z
    if-nez v2, :cond_0

    .line 1983
    move v1, v2

    .line 1987
    .end local v2    # "value":Z
    :cond_1
    return v1
.end method

.method public isScreenLockPatternVisibilityEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1683
    const/4 v1, 0x1

    .line 1685
    .local v1, "ret":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 1687
    .local v2, "userId":I
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "PASSWORD"

    const-string/jumbo v7, "screenLockPatternVisibility"

    invoke-virtual {v5, v6, v7, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1689
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1690
    .local v3, "value":Z
    if-nez v3, :cond_0

    .line 1691
    move v1, v3

    .line 1695
    .end local v3    # "value":Z
    :cond_1
    return v1
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1634
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1638
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1646
    return-void
.end method

.method public reboot(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 2933
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2934
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 2936
    .local v2, "userId":I
    if-nez v2, :cond_0

    .line 2937
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2939
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v3, "Password"

    const-string/jumbo v4, "reboot"

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v4, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2940
    const-string v3, "PasswordPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GearPolicy SetBooleanTypePolicy reboot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2945
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return-void

    .line 2941
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 2942
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public resetPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    const/4 v5, 0x0

    .line 2522
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2524
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2526
    .local v2, "token":J
    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v6, :cond_0

    .line 2528
    :try_start_0
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2532
    .local v4, "userId":I
    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    .line 2533
    .local v1, "pwdQuality":I
    const/high16 v6, 0x70000

    if-ne v1, v6, :cond_1

    .line 2534
    const-string v6, "PasswordPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "resetPassword declined because Lock Quality set to Smartcard for user = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2548
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2552
    .end local v1    # "pwdQuality":I
    .end local v4    # "userId":I
    :cond_0
    :goto_0
    return v5

    .line 2540
    .restart local v1    # "pwdQuality":I
    .restart local v4    # "userId":I
    :cond_1
    :try_start_1
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPersona(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->isMdfppSdpContainer(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2541
    const-string v6, "PasswordPolicy"

    const-string/jumbo v7, "resetPassword :: the api is not allowed for mdfpp sdp container..."

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2548
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2544
    :cond_2
    :try_start_2
    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v6, p2, p3, v4}, Landroid/app/admin/IDevicePolicyManager;->resetPasswordMDM(Ljava/lang/String;II)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    .line 2548
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2545
    .end local v1    # "pwdQuality":I
    .end local v4    # "userId":I
    :catch_0
    move-exception v0

    .line 2546
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v6, "PasswordPolicy"

    const-string v7, "Failed talking with device policy service"

    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2548
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public setBiometricAuthenticationEnabled(Landroid/app/enterprise/ContextInfo;IZ)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "bioAuth"    # I
    .param p3, "enable"    # Z

    .prologue
    .line 2604
    if-gez p2, :cond_1

    .line 2605
    const/4 v2, 0x0

    .line 2639
    :cond_0
    :goto_0
    return v2

    .line 2606
    :cond_1
    const/4 v2, 0x1

    .line 2607
    .local v2, "result":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2608
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2610
    .local v3, "userId":I
    const/4 v4, 0x0

    .line 2612
    .local v4, "value":I
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v7, "PASSWORD"

    const-string/jumbo v8, "passwordBioAuthEnabled"

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 2616
    :goto_1
    if-gez v4, :cond_2

    .line 2617
    const/4 v4, 0x0

    .line 2619
    :cond_2
    if-eqz p3, :cond_3

    .line 2620
    or-int/2addr v4, p2

    .line 2624
    :goto_2
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v7, "PASSWORD"

    const-string/jumbo v8, "passwordBioAuthEnabled"

    invoke-virtual {v5, v6, v7, v8, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 2627
    if-eqz v2, :cond_0

    .line 2628
    if-nez v3, :cond_0

    .line 2629
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2632
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v5, "Password"

    const-string/jumbo v6, "setBiometricAuthenticationEnabled"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isBiometricAuthenticationEnabled(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v7

    invoke-virtual {v1, v5, v6, v7}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2633
    const-string v5, "PasswordPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GearPolicy setBiometricAuthenticationEnabled : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isBiometricAuthenticationEnabled(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2634
    :catch_0
    move-exception v0

    .line 2635
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2622
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_3
    xor-int/lit8 v5, p2, -0x1

    and-int/2addr v4, v5

    goto :goto_2

    .line 2614
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public setForbiddenStrings(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 20
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1304
    .local p2, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1305
    const/4 v13, 0x0

    .line 1308
    .local v13, "ret":Z
    :try_start_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1310
    .local v15, "sb":Ljava/lang/StringBuilder;
    if-nez p2, :cond_2

    .line 1311
    const-string v2, ""

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    :cond_0
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1320
    .local v10, "forbiddenStringVals":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "PASSWORD"

    const-string/jumbo v5, "passwordForbiddenStrings"

    invoke-virtual {v2, v3, v4, v5, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 1322
    if-eqz v13, :cond_1

    .line 1323
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    .line 1324
    .local v8, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v18

    .line 1326
    .local v18, "token":J
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "PasswordPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Admin "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v17, " has changed password forbidden strings to "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1331
    :try_start_2
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1333
    if-nez v8, :cond_1

    .line 1334
    new-instance v11, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1337
    .local v11, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_3
    const-string v2, "Password"

    const-string/jumbo v3, "setForbiddenStrings"

    move-object/from16 v0, p2

    invoke-virtual {v11, v2, v3, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringListTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I

    .line 1338
    const-string v2, "PasswordPolicy"

    const-string v3, "GearPolicy setForbiddenStrings"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1348
    .end local v8    # "userId":I
    .end local v10    # "forbiddenStringVals":Ljava/lang/String;
    .end local v11    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .end local v18    # "token":J
    :cond_1
    :goto_0
    return v13

    .line 1314
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_4
    new-instance v16, Ljava/util/TreeSet;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 1316
    .local v16, "stringSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1317
    .local v14, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 1344
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "s":Ljava/lang/String;
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .end local v16    # "stringSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v9

    .line 1345
    .local v9, "e":Ljava/lang/Exception;
    const-string v2, "PasswordPolicy"

    const-string/jumbo v3, "setForbiddenStrings() failed."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1331
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v8    # "userId":I
    .restart local v10    # "forbiddenStringVals":Ljava/lang/String;
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    .restart local v18    # "token":J
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1339
    .restart local v11    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_1
    move-exception v9

    .line 1340
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0
.end method

.method public setKeyguardDisabledFeatures(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;I)V
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "which"    # I

    .prologue
    .line 2842
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2843
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2847
    sparse-switch p3, :sswitch_data_0

    .line 2865
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid features "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for container"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2851
    :sswitch_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2852
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2854
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, p3, v4}, Landroid/app/admin/IDevicePolicyManager;->setKeyguardDisabledFeaturesMDM(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2859
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2868
    :cond_0
    :goto_0
    return-void

    .line 2856
    :catch_0
    move-exception v0

    .line 2857
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2859
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 2847
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public setKeyguardDisabledFeaturesInternal(Landroid/content/ComponentName;II)V
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "which"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2909
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSystemUser()V

    .line 2911
    if-eqz p2, :cond_0

    and-int/lit8 v1, p2, 0x10

    if-nez v1, :cond_0

    .line 2913
    const-string v1, "PasswordPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setKeyguardDisabledFeatures() which not supported "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2928
    :goto_0
    return-void

    .line 2918
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "keyguardDisabledFeatures"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2920
    const-string v1, "PasswordPolicy"

    const-string/jumbo v2, "setKeyguardDisabledFeatures() true"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2924
    :catch_0
    move-exception v0

    .line 2925
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PasswordPolicy"

    const-string/jumbo v2, "setKeyguardDisabledFeatures() failed"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2926
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2922
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v1, "PasswordPolicy"

    const-string/jumbo v2, "setKeyguardDisabledFeatures() false"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setMaximumCharacterOccurrences(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "count"    # I

    .prologue
    .line 1408
    if-gez p2, :cond_1

    .line 1409
    const/4 v9, 0x0

    .line 1438
    :cond_0
    :goto_0
    return v9

    .line 1412
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1413
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "PASSWORD"

    const-string/jumbo v3, "passwordMaximumCharacterOccurences"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v9

    .line 1416
    .local v9, "ret":Z
    if-eqz v9, :cond_0

    .line 1417
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 1418
    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1420
    .local v10, "token":J
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "PasswordPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Admin "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " has changed password maximum character occurences to "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1425
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1427
    if-nez v6, :cond_0

    .line 1428
    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1431
    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v0, "Password"

    const-string/jumbo v1, "setMaximumCharacterOccurrences"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterOccurences(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetIntTypePolicy(Ljava/lang/String;Ljava/lang/String;I)I

    .line 1432
    const-string v0, "PasswordPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GearPolicy setMaximumCharacterOccurrences : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterOccurences(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1433
    :catch_0
    move-exception v7

    .line 1434
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1425
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setMaximumCharacterSequenceLength(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "length"    # I

    .prologue
    .line 1705
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1707
    if-gez p2, :cond_1

    .line 1708
    const/4 v9, 0x0

    .line 1736
    :cond_0
    :goto_0
    return v9

    .line 1711
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string/jumbo v4, "passwordMaximumCharacterSequenceLength"

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(IILjava/lang/String;Ljava/lang/String;I)Z

    move-result v9

    .line 1714
    .local v9, "ret":Z
    if-eqz v9, :cond_0

    .line 1715
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 1716
    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1718
    .local v10, "token":J
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "PasswordPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Admin "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " has changed password maximum character sequence length to "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1723
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1725
    if-nez v6, :cond_0

    .line 1726
    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1729
    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v0, "Password"

    const-string/jumbo v1, "setMaximumCharacterSequenceLength"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterSequenceLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetIntTypePolicy(Ljava/lang/String;Ljava/lang/String;I)I

    .line 1730
    const-string v0, "PasswordPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GearPolicy setMaximumCharacterSequenceLength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterSequenceLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1731
    :catch_0
    move-exception v7

    .line 1732
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1723
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setMaximumFailedPasswordsForDisable(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "num"    # I

    .prologue
    .line 1142
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1143
    if-gez p2, :cond_1

    .line 1144
    const/4 v9, 0x0

    .line 1171
    :cond_0
    :goto_0
    return v9

    .line 1146
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "PASSWORD"

    const-string/jumbo v3, "passwordAttemptDeviceDisable"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v9

    .line 1149
    .local v9, "result":Z
    if-eqz v9, :cond_0

    .line 1150
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 1151
    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1153
    .local v10, "token":J
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "PasswordPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Admin "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " has changed maximum failed passwords for disable to "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1157
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1160
    if-nez v6, :cond_0

    .line 1161
    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1164
    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v0, "Password"

    const-string/jumbo v1, "setMaximumFailedPasswordsForDeviceDisable"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetIntTypePolicy(Ljava/lang/String;Ljava/lang/String;I)I

    .line 1165
    const-string v0, "PasswordPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GearPolicy setMaximumFailedPasswordsForDeviceDisable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1166
    :catch_0
    move-exception v7

    .line 1167
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1157
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setMaximumFailedPasswordsForWipe(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;I)V
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "num"    # I

    .prologue
    .line 2474
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2475
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2476
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2477
    .local v3, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2479
    .local v4, "token":J
    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v6, :cond_1

    .line 2481
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-interface {v6, p2, p3, v7}, Landroid/app/admin/IDevicePolicyManager;->setMaximumFailedPasswordsForWipeMDM(Landroid/content/ComponentName;II)V

    .line 2483
    if-nez v3, :cond_0

    .line 2484
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2486
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForWipe(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I

    move-result v2

    .line 2487
    .local v2, "result":I
    const-string v6, "Password"

    const-string/jumbo v7, "setMaximumFailedPasswordsForWipe"

    invoke-virtual {v1, v6, v7, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetIntTypePolicy(Ljava/lang/String;Ljava/lang/String;I)I

    .line 2488
    const-string v6, "PasswordPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GearPolicy SetIntTypePolicy setMaximumFailedPasswordsForWipe: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2496
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v2    # "result":I
    :cond_0
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2499
    :cond_1
    :goto_1
    return-void

    .line 2489
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 2490
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2493
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_1
    move-exception v0

    .line 2494
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v6, "PasswordPolicy"

    const-string v7, "Failed talking with device policy service"

    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2496
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public setMaximumNumericSequenceLength(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "length"    # I

    .prologue
    .line 1203
    if-gez p2, :cond_1

    .line 1204
    const/4 v9, 0x0

    .line 1235
    :cond_0
    :goto_0
    return v9

    .line 1207
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1209
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "PASSWORD"

    const-string/jumbo v3, "passwordMaximumNumericSequenceLength"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v9

    .line 1212
    .local v9, "ret":Z
    if-eqz v9, :cond_0

    .line 1213
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 1214
    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1216
    .local v10, "token":J
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "PasswordPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Admin "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " has changed password maximum numeric sequence to "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1220
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1223
    if-nez v6, :cond_0

    .line 1224
    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1226
    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v0, "Password"

    const-string/jumbo v1, "setMaximumNumericSequenceLength"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumNumericSequenceLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetIntTypePolicy(Ljava/lang/String;Ljava/lang/String;I)I

    .line 1227
    const-string v0, "PasswordPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GearPolicy setMaximumNumericSequenceLength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumNumericSequenceLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1228
    :catch_0
    move-exception v7

    .line 1229
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1220
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setMaximumTimeToLock(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;J)V
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "timeMs"    # J

    .prologue
    .line 2556
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2557
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2558
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 2559
    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2561
    .local v4, "token":J
    iget-object v7, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v7, :cond_1

    .line 2563
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-interface {v7, p2, p3, p4, v8}, Landroid/app/admin/IDevicePolicyManager;->setMaximumTimeToLockMDM(Landroid/content/ComponentName;JI)V

    .line 2565
    if-nez v6, :cond_0

    .line 2566
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v7, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2568
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumTimeToLock(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)J

    move-result-wide v2

    .line 2569
    .local v2, "result":J
    const-string v7, "Password"

    const-string/jumbo v8, "setMaximumTimeToLock"

    invoke-virtual {v1, v7, v8, v2, v3}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetLongTypePolicy(Ljava/lang/String;Ljava/lang/String;J)I

    .line 2570
    const-string v7, "PasswordPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GearPolicy SetLongTypePolicy setMaximumTimeToLock: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2578
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v2    # "result":J
    :cond_0
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2581
    :cond_1
    :goto_1
    return-void

    .line 2571
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 2572
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2575
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_1
    move-exception v0

    .line 2576
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v7, "PasswordPolicy"

    const-string v8, "Failed talking with device policy service"

    invoke-static {v7, v8, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2578
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public setMinimumCharacterChangeLength(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "length"    # I

    .prologue
    .line 1767
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1770
    if-gez p2, :cond_1

    .line 1771
    const/4 v9, 0x0

    .line 1798
    :cond_0
    :goto_0
    return v9

    .line 1774
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string/jumbo v4, "passwordMinimumCharacterChangeUpdatingPasswordLength"

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(IILjava/lang/String;Ljava/lang/String;I)Z

    move-result v9

    .line 1776
    .local v9, "ret":Z
    if-eqz v9, :cond_0

    .line 1777
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 1778
    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1780
    .local v10, "token":J
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "PasswordPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Admin "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " has changed password minimum character sequence length to "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1785
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1787
    if-nez v6, :cond_0

    .line 1788
    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1791
    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v0, "Password"

    const-string/jumbo v1, "setMinimumCharacterChangeLength"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMinimumCharacterChangeLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetIntTypePolicy(Ljava/lang/String;Ljava/lang/String;I)I

    .line 1792
    const-string v0, "PasswordPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GearPolicy setMinimumCharacterChangeLength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMinimumCharacterChangeLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1793
    :catch_0
    move-exception v7

    .line 1794
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1785
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setPasswordChangeTimeout(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "timeout"    # I

    .prologue
    .line 490
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 493
    if-gez p2, :cond_1

    .line 494
    const/4 v3, 0x0

    .line 516
    :cond_0
    :goto_0
    return v3

    .line 496
    :cond_1
    const/4 v3, 0x1

    .line 497
    .local v3, "ret":Z
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 498
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v5, "passwordChangeTimeout"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 499
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v8, "PASSWORD"

    invoke-virtual {v5, v6, v7, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    .line 501
    if-eqz v3, :cond_0

    .line 502
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 504
    .local v4, "userId":I
    if-nez v4, :cond_0

    .line 505
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 508
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v5, "Password"

    const-string/jumbo v6, "setPasswordChangeTimeout"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordChangeTimeout(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    invoke-virtual {v2, v5, v6, v7}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetIntTypePolicy(Ljava/lang/String;Ljava/lang/String;I)I

    .line 509
    const-string v5, "PasswordPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GearPolicy setPasswordChangeTimeout : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordChangeTimeout(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 510
    :catch_0
    move-exception v1

    .line 511
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setPasswordExpirationTimeout(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;J)V
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "timeout"    # J

    .prologue
    .line 2375
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2376
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2377
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 2378
    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2379
    .local v4, "token":J
    iget-object v7, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v7, :cond_1

    .line 2381
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-interface {v7, p2, p3, p4, v8}, Landroid/app/admin/IDevicePolicyManager;->setPasswordExpirationTimeoutMDM(Landroid/content/ComponentName;JI)V

    .line 2383
    if-nez v6, :cond_0

    .line 2384
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v7, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2386
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordExpirationTimeout(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)J

    move-result-wide v2

    .line 2387
    .local v2, "result":J
    const-string v7, "Password"

    const-string/jumbo v8, "setPasswordExpirationTimeout"

    invoke-virtual {v1, v7, v8, v2, v3}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetLongTypePolicy(Ljava/lang/String;Ljava/lang/String;J)I

    .line 2388
    const-string v7, "PasswordPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GearPolicy SetLongTypePolicy setPasswordExpirationTimeout: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2396
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v2    # "result":J
    :cond_0
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2399
    :cond_1
    :goto_1
    return-void

    .line 2389
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 2390
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2393
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_1
    move-exception v0

    .line 2394
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v7, "PasswordPolicy"

    const-string v8, "Failed talking with device policy service"

    invoke-static {v7, v8, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2396
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public setPasswordHistoryLength(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;I)V
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 2330
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2331
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2332
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2333
    .local v3, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2334
    .local v4, "token":J
    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v6, :cond_1

    .line 2336
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-interface {v6, p2, p3, v7}, Landroid/app/admin/IDevicePolicyManager;->setPasswordHistoryLengthMDM(Landroid/content/ComponentName;II)V

    .line 2338
    if-nez v3, :cond_0

    .line 2339
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2341
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordHistoryLength(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I

    move-result v2

    .line 2342
    .local v2, "result":I
    const-string v6, "Password"

    const-string/jumbo v7, "setPasswordHistoryLength"

    invoke-virtual {v1, v6, v7, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetIntTypePolicy(Ljava/lang/String;Ljava/lang/String;I)I

    .line 2343
    const-string v6, "PasswordPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GearPolicy SetIntTypePolicy setPasswordHistoryLength: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2351
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v2    # "result":I
    :cond_0
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2354
    :cond_1
    :goto_1
    return-void

    .line 2344
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 2345
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2348
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_1
    move-exception v0

    .line 2349
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v6, "PasswordPolicy"

    const-string v7, "Failed talking with device policy service"

    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2351
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public setPasswordLockDelay(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "time"    # I

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 210
    const/4 v5, -0x1

    if-ge p2, v5, :cond_1

    .line 211
    const/4 v3, 0x0

    .line 231
    :cond_0
    :goto_0
    return v3

    .line 212
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 213
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v5, "unlockDelay"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v8, "PASSWORD"

    invoke-virtual {v5, v6, v7, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    .line 217
    .local v3, "result":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 219
    .local v4, "userId":I
    if-eqz v3, :cond_0

    .line 220
    if-nez v4, :cond_0

    .line 221
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 224
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v5, "Password"

    const-string/jumbo v6, "setPasswordLockDelay"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordLockDelay(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    invoke-virtual {v2, v5, v6, v7}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetIntTypePolicy(Ljava/lang/String;Ljava/lang/String;I)I

    .line 225
    const-string v5, "PasswordPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GearPolicy setPasswordLockDelay : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordLockDelay(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setPasswordMinimumLength(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 2092
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2093
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2094
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2095
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2097
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, p3, v4}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLengthMDM(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2102
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2105
    :cond_0
    :goto_0
    return-void

    .line 2099
    :catch_0
    move-exception v0

    .line 2100
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2102
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public setPasswordMinimumLetters(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 2194
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2195
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2196
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2197
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2199
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, p3, v4}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLettersMDM(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2204
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2207
    :cond_0
    :goto_0
    return-void

    .line 2201
    :catch_0
    move-exception v0

    .line 2202
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2204
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public setPasswordMinimumLowerCase(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 2160
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2161
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2162
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2163
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2165
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, p3, v4}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLowerCaseMDM(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2170
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2173
    :cond_0
    :goto_0
    return-void

    .line 2167
    :catch_0
    move-exception v0

    .line 2168
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2170
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public setPasswordMinimumNonLetter(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 2296
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2297
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2298
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2299
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2301
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, p3, v4}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNonLetterMDM(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2306
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2309
    :cond_0
    :goto_0
    return-void

    .line 2303
    :catch_0
    move-exception v0

    .line 2304
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2306
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public setPasswordMinimumNumeric(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 2228
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2229
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2230
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2231
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2233
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, p3, v4}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNumericMDM(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2238
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2241
    :cond_0
    :goto_0
    return-void

    .line 2235
    :catch_0
    move-exception v0

    .line 2236
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2238
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public setPasswordMinimumSymbols(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 2262
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2263
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2264
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2265
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2267
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, p3, v4}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumSymbolsMDM(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2272
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2275
    :cond_0
    :goto_0
    return-void

    .line 2269
    :catch_0
    move-exception v0

    .line 2270
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2272
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public setPasswordMinimumUpperCase(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 2126
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2127
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2128
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2129
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2131
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, p3, v4}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumUpperCaseMDM(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2136
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2139
    :cond_0
    :goto_0
    return-void

    .line 2133
    :catch_0
    move-exception v0

    .line 2134
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2136
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public setPasswordQuality(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;I)V
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "quality"    # I

    .prologue
    .line 2044
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2045
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2046
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2047
    .local v3, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2049
    .local v4, "token":J
    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v6, :cond_1

    .line 2051
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-interface {v6, p2, p3, v7}, Landroid/app/admin/IDevicePolicyManager;->setPasswordQualityMDM(Landroid/content/ComponentName;II)V

    .line 2054
    if-nez v3, :cond_0

    .line 2055
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2057
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordQuality(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I

    move-result v2

    .line 2058
    .local v2, "result":I
    const-string v6, "Password"

    const-string/jumbo v7, "setPasswordQuality"

    invoke-virtual {v1, v6, v7, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetIntTypePolicy(Ljava/lang/String;Ljava/lang/String;I)I

    .line 2059
    const-string v6, "PasswordPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GearPolicy SetIntTypePolicy setPasswordQuality: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2067
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v2    # "result":I
    :cond_0
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2070
    :cond_1
    :goto_1
    return-void

    .line 2060
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 2061
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2064
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_1
    move-exception v0

    .line 2065
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v6, "PasswordPolicy"

    const-string v7, "Failed talking with device policy service"

    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2067
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public setPasswordVisibilityEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 1936
    const/4 v2, 0x1

    .line 1937
    .local v2, "result":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1938
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 1940
    .local v3, "userId":I
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabledAsUser(I)Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez p2, :cond_0

    .line 1941
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1942
    .local v4, "token":J
    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "show_password"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1944
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1947
    .end local v4    # "token":J
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v8, "PASSWORD"

    const-string/jumbo v9, "passwordVisibilityEnabled"

    invoke-virtual {v6, v7, v8, v9, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 1950
    if-eqz v2, :cond_1

    .line 1951
    if-nez v3, :cond_1

    .line 1952
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1955
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v6, "Password"

    const-string/jumbo v7, "setPasswordVisibilityEnabled"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    invoke-virtual {v1, v6, v7, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1956
    const-string v6, "PasswordPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GearPolicy setPasswordVisibilityEnabled : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1962
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_1
    :goto_0
    return v2

    .line 1957
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 1958
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setPwdChangeRequested(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "flag"    # I

    .prologue
    .line 1030
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 1031
    .local v0, "userId":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z

    move-result v1

    return v1
.end method

.method public declared-synchronized setPwdChangeRequestedForUser(III)Z
    .locals 20
    .param p1, "containerId"    # I
    .param p2, "flag"    # I
    .param p3, "userId"    # I

    .prologue
    .line 1035
    monitor-enter p0

    :try_start_0
    const-string v15, "android.uid.system:1000"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1036
    const/4 v13, 0x1

    .line 1041
    .local v13, "success":Z
    if-nez p2, :cond_4

    .line 1042
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->unlockSdp(I)V

    .line 1049
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v18, "passwordChangeRequested"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, p3

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1052
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v15, :cond_1

    .line 1053
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1056
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v15}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v15

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v15

    if-nez v15, :cond_3

    .line 1057
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1059
    .local v16, "token":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string v18, "activity"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 1062
    .local v5, "am":Landroid/app/ActivityManager;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    .line 1063
    .local v4, "Iam":Landroid/app/IActivityManager;
    const/16 v15, 0xc

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v5, v15, v0, v1}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v11

    .line 1065
    .local v11, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const-string v12, "com.android.settings"

    .line 1066
    .local v12, "settingsPkg":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_5

    .line 1067
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 1068
    .local v14, "task":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v9, v14, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 1069
    .local v9, "origInt":Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 1070
    .local v6, "cmp":Landroid/content/ComponentName;
    if-eqz v6, :cond_2

    .line 1071
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 1072
    .local v10, "packageName":Ljava/lang/String;
    const-string v15, "PasswordPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "packageName "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    if-eqz v10, :cond_2

    const-string v15, "com.android.settings"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1075
    const-string v15, "com.android.settings"

    move/from16 v0, p3

    invoke-interface {v4, v15, v0}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 1076
    iget v15, v14, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v5, v15}, Landroid/app/ActivityManager;->removeTask(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1083
    .end local v4    # "Iam":Landroid/app/IActivityManager;
    .end local v5    # "am":Landroid/app/ActivityManager;
    .end local v6    # "cmp":Landroid/content/ComponentName;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "origInt":Landroid/content/Intent;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v12    # "settingsPkg":Ljava/lang/String;
    .end local v14    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v16    # "token":J
    :catch_0
    move-exception v7

    .line 1084
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1085
    const/4 v13, 0x0

    .line 1087
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    monitor-exit p0

    return v13

    .line 1043
    :cond_4
    const/4 v15, 0x1

    move/from16 v0, p2

    if-ne v0, v15, :cond_0

    .line 1044
    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->lockSdp(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1035
    .end local v13    # "success":Z
    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15

    .line 1081
    .restart local v4    # "Iam":Landroid/app/IActivityManager;
    .restart local v5    # "am":Landroid/app/ActivityManager;
    .restart local v11    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .restart local v12    # "settingsPkg":Ljava/lang/String;
    .restart local v13    # "success":Z
    .restart local v16    # "token":J
    :cond_5
    :try_start_4
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public setRequiredPasswordPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "regex"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 261
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 262
    :cond_0
    const/4 v12, 0x0

    .line 296
    :cond_1
    :goto_0
    return v12

    .line 264
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v5, "PASSWORD"

    const-string/jumbo v6, "passwordRequiredPattern"

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    .line 266
    .local v12, "ret":Z
    if-eqz v12, :cond_1

    .line 267
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getCurrentPasswordOwner(Landroid/app/enterprise/ContextInfo;)I

    move-result v9

    .line 268
    .local v9, "currentOwner":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-eq v9, v2, :cond_3

    .line 271
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->removeOwnerFromStack(Landroid/app/enterprise/ContextInfo;)V

    .line 273
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->addOwnerToStack(Landroid/app/enterprise/ContextInfo;)V

    .line 275
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    .line 276
    .local v8, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 278
    .local v14, "token":J
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "PasswordPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Admin "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v13, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, " has changed password required pattern to "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 285
    if-nez v8, :cond_1

    .line 286
    new-instance v11, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 289
    .local v11, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v2, "Password"

    const-string/jumbo v3, "setRequiredPasswordPattern"

    move-object/from16 v0, p2

    invoke-virtual {v11, v2, v3, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-string v2, "PasswordPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GearPolicy setRequiredPasswordPattern : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 291
    :catch_0
    move-exception v10

    .line 292
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 282
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catchall_0
    move-exception v2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setScreenLockPatternVisibilityEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v10, 0x0

    .line 1649
    const/4 v2, 0x0

    .line 1650
    .local v2, "result":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1653
    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v8, "PASSWORD"

    const-string/jumbo v9, "screenLockPatternVisibility"

    invoke-virtual {v6, v7, v8, v9, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 1656
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 1658
    .local v3, "userId":I
    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isScreenLockPatternVisibilityEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1659
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1660
    .local v4, "token":J
    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "lock_pattern_visible_pattern"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    .line 1662
    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v10, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 1664
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1667
    .end local v4    # "token":J
    :cond_0
    if-eqz v2, :cond_1

    .line 1668
    if-nez v3, :cond_1

    .line 1669
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1672
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v6, "Password"

    const-string/jumbo v7, "setScreenLockPatternVisibilityEnabled"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isScreenLockPatternVisibilityEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    invoke-virtual {v1, v6, v7, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1673
    const-string v6, "PasswordPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GearPolicy setScreenLockPatternVisibilityEnabled : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isScreenLockPatternVisibilityEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1679
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_1
    :goto_0
    return v2

    .line 1674
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 1675
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 1642
    return-void
.end method

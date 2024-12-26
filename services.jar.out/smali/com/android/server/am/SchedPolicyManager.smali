.class public Lcom/android/server/am/SchedPolicyManager;
.super Ljava/lang/Object;
.source "SchedPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SchedPolicyManager$ScpmUpdateThread;,
        Lcom/android/server/am/SchedPolicyManager$GroupPolicy;
    }
.end annotation


# static fields
.field public static final ACTION_BARTENDER_SLOW_DOWN:Ljava/lang/String; = "com.android.server.am.ACTION_BARTENDER_SLOW_DOWN"

.field private static final CHIP_NAME:Ljava/lang/String;

.field static DEBUG_CPUSET:Z = false

.field static ENABLE_CPUSET:Z = false

.field private static final MESSAGE_CHECK_SCPM:I = 0x2

.field private static final MESSAGE_UPDATE_SCPM:I = 0x1

.field private static final MODEL_NAME:Ljava/lang/String;

.field private static final MODEL_NUMBER:Ljava/lang/String;

.field private static final PROCESS_STATE_MAX:I = 0x10

.field private static final PROCESS_STATE_MIN:I = -0x1

.field private static final SCPM_BROADCAST_MESSAGE_SCHED:Ljava/lang/String; = "sec.app.policy.UPDATE.SchedPolicy"

.field private static final SCPM_POLICY_NAME_SCHED:Ljava/lang/String; = "SchedPolicy"

.field private static final SCPM_URI_POLICY:Landroid/net/Uri;

.field private static final SCPM_URI_TABLE_SCHED:Landroid/net/Uri;

.field static final TAG:Ljava/lang/String; = "SchedPolicyManager"

.field private static manager:Lcom/android/server/am/SchedPolicyManager;


# instance fields
.field private final mAm:Lcom/android/server/am/ActivityManagerService;

.field private final mContext:Landroid/content/Context;

.field private mDefaultIMEPackage:Ljava/lang/String;

.field private final mListGroupPolicy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/SchedPolicyManager$GroupPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private final mPkgGroupPolicyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/SchedPolicyManager$GroupPolicy;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mProcGroupPolicyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/SchedPolicyManager$GroupPolicy;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mScpmHandler:Landroid/os/Handler;

.field private final mSystemPackage:Ljava/lang/String;

.field private scpmVersion:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Landroid/os/Process;->isCpusetEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/SchedPolicyManager;->ENABLE_CPUSET:Z

    .line 242
    const-string v0, "content://com.samsung.android.sm.policy/policy_item/policy_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SchedPolicyManager;->SCPM_URI_POLICY:Landroid/net/Uri;

    .line 243
    const-string v0, "content://com.samsung.android.sm.policy/policy_item/SchedPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SchedPolicyManager;->SCPM_URI_TABLE_SCHED:Landroid/net/Uri;

    .line 248
    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SchedPolicyManager;->MODEL_NAME:Ljava/lang/String;

    .line 249
    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SchedPolicyManager;->MODEL_NUMBER:Ljava/lang/String;

    .line 250
    const-string/jumbo v0, "ro.chipname"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SchedPolicyManager;->CHIP_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SchedPolicyManager;->mListGroupPolicy:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SchedPolicyManager;->mPkgGroupPolicyMap:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SchedPolicyManager;->mProcGroupPolicyMap:Ljava/util/Map;

    .line 471
    new-instance v0, Lcom/android/server/am/SchedPolicyManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/SchedPolicyManager$2;-><init>(Lcom/android/server/am/SchedPolicyManager;)V

    iput-object v0, p0, Lcom/android/server/am/SchedPolicyManager;->mScpmHandler:Landroid/os/Handler;

    .line 60
    iput-object p1, p0, Lcom/android/server/am/SchedPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 61
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/am/SchedPolicyManager;->mContext:Landroid/content/Context;

    .line 62
    iget-object v0, p0, Lcom/android/server/am/SchedPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SchedPolicyManager;->mSystemPackage:Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Lcom/android/server/am/SchedPolicyManager;->registerBarTenderReceiver()V

    .line 64
    invoke-direct {p0}, Lcom/android/server/am/SchedPolicyManager;->registerScpmReceiver()V

    .line 65
    invoke-direct {p0}, Lcom/android/server/am/SchedPolicyManager;->registerDefaultInputMethodChanged()V

    .line 66
    invoke-direct {p0}, Lcom/android/server/am/SchedPolicyManager;->getDefaultIMEPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SchedPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Lcom/android/server/am/SchedPolicyManager;->init()V

    .line 68
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/am/SchedPolicyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/SchedPolicyManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/server/am/SchedPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/am/SchedPolicyManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/SchedPolicyManager;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/server/am/SchedPolicyManager;->getDefaultIMEPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/SchedPolicyManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/SchedPolicyManager;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/server/am/SchedPolicyManager;->init()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/SchedPolicyManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/SchedPolicyManager;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/server/am/SchedPolicyManager;->updateScpm()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/SchedPolicyManager;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/SchedPolicyManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/am/SchedPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/SchedPolicyManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/SchedPolicyManager;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/server/am/SchedPolicyManager;->needToUpdateScpm()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/am/SchedPolicyManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/SchedPolicyManager;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/server/am/SchedPolicyManager;->checkScpmWithHandler()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/SchedPolicyManager;Lcom/android/server/am/ProcessRecord;ZZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/SchedPolicyManager;
    .param p1, "x1"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/SchedPolicyManager;->isAllowBarTenderKill(Lcom/android/server/am/ProcessRecord;ZZ)Z

    move-result v0

    return v0
.end method

.method private addPolicyToMap(Ljava/lang/String;Lcom/android/server/am/SchedPolicyManager$GroupPolicy;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "policy"    # Lcom/android/server/am/SchedPolicyManager$GroupPolicy;
    .param p3, "isPkg"    # Z

    .prologue
    .line 95
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    if-eqz p3, :cond_3

    iget-object v1, p0, Lcom/android/server/am/SchedPolicyManager;->mPkgGroupPolicyMap:Ljava/util/Map;

    .line 98
    .local v1, "policyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/SchedPolicyManager$GroupPolicy;>;>;"
    :goto_1
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 99
    .local v0, "listGroupPolicy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/SchedPolicyManager$GroupPolicy;>;"
    if-nez v0, :cond_2

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "listGroupPolicy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/SchedPolicyManager$GroupPolicy;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .restart local v0    # "listGroupPolicy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/SchedPolicyManager$GroupPolicy;>;"
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    .end local v0    # "listGroupPolicy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/SchedPolicyManager$GroupPolicy;>;"
    .end local v1    # "policyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/SchedPolicyManager$GroupPolicy;>;>;"
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/SchedPolicyManager;->mProcGroupPolicyMap:Ljava/util/Map;

    goto :goto_1
.end method

.method private checkScpmWithHandler()V
    .locals 3

    .prologue
    .line 465
    sget-boolean v1, Lcom/android/server/am/SchedPolicyManager;->DEBUG_CPUSET:Z

    if-eqz v1, :cond_0

    const-string v1, "SchedPolicyManager"

    const-string v2, "checkScpmWithHandler()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 467
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 468
    iget-object v1, p0, Lcom/android/server/am/SchedPolicyManager;->mScpmHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 469
    return-void
.end method

.method private createPolicyByCategory(Ljava/lang/String;)Lcom/android/server/am/SchedPolicyManager$GroupPolicy;
    .locals 14
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 351
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    :cond_0
    const/4 v0, 0x0

    .line 386
    :goto_0
    return-object v0

    .line 354
    :cond_1
    const/4 v1, 0x0

    .line 355
    .local v1, "isHighPriority":Z
    const/4 v2, 0x1

    .line 357
    .local v2, "allowConnection":Z
    const/4 v3, 0x0

    .line 359
    .local v3, "condGroupOver":I
    const/4 v4, 0x5

    .line 360
    .local v4, "condGroupBelow":I
    const/4 v5, -0x1

    .line 361
    .local v5, "condStateOver":I
    const/16 v6, 0x10

    .line 363
    .local v6, "condStateBelow":I
    const/4 v7, -0x3

    .line 364
    .local v7, "actGroupMin":I
    const/4 v8, 0x5

    .line 366
    .local v8, "actGroupMax":I
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 367
    .local v13, "segs":[Ljava/lang/String;
    move-object v9, v13

    .local v9, "arr$":[Ljava/lang/String;
    array-length v11, v9

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1
    if-ge v10, v11, :cond_a

    aget-object v12, v9, v10

    .line 368
    .local v12, "seg":Ljava/lang/String;
    const-string/jumbo v0, "hpri_on"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 369
    const/4 v1, 0x1

    .line 367
    :cond_2
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 370
    :cond_3
    const-string v0, "con_off"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 371
    const/4 v2, 0x0

    goto :goto_2

    .line 372
    :cond_4
    const-string v0, "cmin_"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 373
    const/4 v0, 0x5

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/server/am/SchedPolicyManager;->getGroupByString(Ljava/lang/String;I)I

    move-result v3

    goto :goto_2

    .line 374
    :cond_5
    const-string v0, "cmax_"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 375
    const/4 v0, 0x5

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/server/am/SchedPolicyManager;->getGroupByString(Ljava/lang/String;I)I

    move-result v4

    goto :goto_2

    .line 376
    :cond_6
    const-string/jumbo v0, "smin_"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 377
    const/4 v0, 0x5

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/android/server/am/SchedPolicyManager;->getStateByString(Ljava/lang/String;I)I

    move-result v5

    goto :goto_2

    .line 378
    :cond_7
    const-string/jumbo v0, "smax_"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 379
    const/4 v0, 0x5

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/android/server/am/SchedPolicyManager;->getStateByString(Ljava/lang/String;I)I

    move-result v6

    goto :goto_2

    .line 380
    :cond_8
    const-string v0, "amin_"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 381
    const/4 v0, 0x5

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/android/server/am/SchedPolicyManager;->getGroupByString(Ljava/lang/String;I)I

    move-result v7

    goto :goto_2

    .line 382
    :cond_9
    const-string v0, "amax_"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 383
    const/4 v0, 0x5

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v8}, Lcom/android/server/am/SchedPolicyManager;->getGroupByString(Ljava/lang/String;I)I

    move-result v8

    goto :goto_2

    .line 386
    .end local v12    # "seg":Ljava/lang/String;
    :cond_a
    new-instance v0, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;-><init>(ZZIIIIII)V

    goto/16 :goto_0
.end method

.method private getDefaultIMEPackage()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "strPreferredIME":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/SchedPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_input_method"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "tmp":[Ljava/lang/String;
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 125
    aget-object v0, v1, v4

    .line 128
    .end local v1    # "tmp":[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getGroupByString(Ljava/lang/String;I)I
    .locals 6
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x3

    const/4 v3, 0x5

    .line 413
    if-nez p1, :cond_0

    .line 424
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 415
    .restart local p2    # "defaultValue":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 416
    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move p2, v0

    .line 417
    goto :goto_0

    .line 416
    :sswitch_0
    const-string v5, "MN"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v1

    goto :goto_1

    :sswitch_1
    const-string v5, "AB"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v2

    goto :goto_1

    :sswitch_2
    const-string v5, "CA"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_3
    const-string v5, "BG"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_4
    const-string v5, "FG"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_5
    const-string v5, "RF"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v3

    goto :goto_1

    :sswitch_6
    const-string v5, "MX"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x6

    goto :goto_1

    :pswitch_1
    move p2, v0

    .line 418
    goto :goto_0

    .line 419
    :pswitch_2
    const/4 p2, -0x2

    goto :goto_0

    :pswitch_3
    move p2, v1

    .line 420
    goto :goto_0

    :pswitch_4
    move p2, v2

    .line 421
    goto :goto_0

    :pswitch_5
    move p2, v3

    .line 422
    goto :goto_0

    :pswitch_6
    move p2, v3

    .line 423
    goto :goto_0

    .line 416
    nop

    :sswitch_data_0
    .sparse-switch
        0x821 -> :sswitch_1
        0x845 -> :sswitch_3
        0x85e -> :sswitch_2
        0x8c1 -> :sswitch_4
        0x9a1 -> :sswitch_0
        0x9ab -> :sswitch_6
        0xa34 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static getManager()Lcom/android/server/am/SchedPolicyManager;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/android/server/am/SchedPolicyManager;->manager:Lcom/android/server/am/SchedPolicyManager;

    return-object v0
.end method

.method static getManager(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/SchedPolicyManager;
    .locals 1
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 202
    invoke-static {p0}, Lcom/android/server/am/SchedPolicyManager;->prepareManager(Lcom/android/server/am/ActivityManagerService;)Z

    .line 203
    invoke-static {}, Lcom/android/server/am/SchedPolicyManager;->getManager()Lcom/android/server/am/SchedPolicyManager;

    move-result-object v0

    return-object v0
.end method

.method private hasOngoingNotifcation(Ljava/lang/String;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 596
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v4

    .line 597
    .local v4, "inm":Landroid/app/INotificationManager;
    if-nez v4, :cond_1

    .line 613
    :cond_0
    :goto_0
    return v8

    .line 600
    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/SchedPolicyManager;->mSystemPackage:Ljava/lang/String;

    invoke-interface {v4, v9}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 601
    .local v0, "actives":[Landroid/service/notification/StatusBarNotification;
    if-eqz v0, :cond_0

    .line 603
    move-object v1, v0

    .local v1, "arr$":[Landroid/service/notification/StatusBarNotification;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v7, v1, v3

    .line 604
    .local v7, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 605
    .local v6, "notiPackage":Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 603
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 607
    :cond_3
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v9, v9, 0x22

    if-eqz v9, :cond_2

    .line 608
    const/4 v8, 0x1

    goto :goto_0

    .line 610
    .end local v0    # "actives":[Landroid/service/notification/StatusBarNotification;
    .end local v1    # "arr$":[Landroid/service/notification/StatusBarNotification;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "notiPackage":Ljava/lang/String;
    .end local v7    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_0
    move-exception v2

    .line 611
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 71
    sget-boolean v0, Lcom/android/server/am/SchedPolicyManager;->DEBUG_CPUSET:Z

    if-eqz v0, :cond_0

    const-string v0, "SchedPolicyManager"

    const-string/jumbo v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/SchedPolicyManager;->mListGroupPolicy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 74
    iget-object v0, p0, Lcom/android/server/am/SchedPolicyManager;->mPkgGroupPolicyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 75
    iget-object v0, p0, Lcom/android/server/am/SchedPolicyManager;->mProcGroupPolicyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 76
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-direct {p0}, Lcom/android/server/am/SchedPolicyManager;->initSystemPolicy()V

    .line 78
    invoke-direct {p0}, Lcom/android/server/am/SchedPolicyManager;->updateScpmWithHandler()V

    .line 79
    return-void

    .line 76
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initSystemPolicy()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x5

    .line 85
    new-instance v0, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;

    const/4 v3, -0x3

    const/4 v5, -0x1

    move v2, v1

    move v6, v1

    move v7, v4

    move v8, v4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;-><init>(ZZIIIIII)V

    .line 86
    .local v0, "policy":Lcom/android/server/am/SchedPolicyManager$GroupPolicy;
    const-string/jumbo v2, "system"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/am/SchedPolicyManager;->addPolicyToMap(Ljava/lang/String;Lcom/android/server/am/SchedPolicyManager$GroupPolicy;Z)V

    .line 88
    iget-object v2, p0, Lcom/android/server/am/SchedPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 89
    new-instance v0, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;

    .end local v0    # "policy":Lcom/android/server/am/SchedPolicyManager$GroupPolicy;
    move v2, v9

    move v3, v9

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;-><init>(ZZIIII)V

    .line 90
    .restart local v0    # "policy":Lcom/android/server/am/SchedPolicyManager$GroupPolicy;
    iget-object v1, p0, Lcom/android/server/am/SchedPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v9}, Lcom/android/server/am/SchedPolicyManager;->addPolicyToMap(Ljava/lang/String;Lcom/android/server/am/SchedPolicyManager$GroupPolicy;Z)V

    .line 92
    :cond_0
    return-void
.end method

.method private isAllowBarTenderKill(Lcom/android/server/am/ProcessRecord;ZZ)Z
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "cached"    # Z
    .param p3, "abnormal"    # Z

    .prologue
    const/4 v0, 0x0

    .line 582
    if-eqz p2, :cond_1

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->slowCached:Z

    if-nez v1, :cond_1

    .line 592
    :cond_0
    :goto_0
    return v0

    .line 583
    :cond_1
    if-eqz p3, :cond_2

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->slowAbnormal:Z

    if-eqz v1, :cond_0

    .line 584
    :cond_2
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 585
    iget-object v1, p0, Lcom/android/server/am/SchedPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq p1, v1, :cond_0

    .line 586
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 587
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/SchedPolicyManager;->hasOngoingNotifcation(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 592
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isInvokedModel(Ljava/lang/String;)Z
    .locals 10
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 328
    if-eqz p1, :cond_0

    const-string v9, ""

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    move v3, v8

    .line 346
    :cond_1
    return v3

    .line 330
    :cond_2
    const/4 v3, 0x0

    .line 331
    .local v3, "invoked":Z
    const-string v9, "\\|"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 332
    .local v6, "models":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v0, v2

    .line 333
    .local v5, "m":Ljava/lang/String;
    const/4 v1, 0x0

    .line 334
    .local v1, "except":Z
    const-string v9, "!"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 335
    const/4 v1, 0x1

    .line 336
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 342
    :cond_3
    const-string v9, "ALL"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    sget-boolean v9, Lcom/android/server/am/SchedPolicyManager;->ENABLE_CPUSET:Z

    if-eqz v9, :cond_4

    const-string v9, "CS_ON"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    :cond_4
    sget-boolean v9, Lcom/android/server/am/SchedPolicyManager;->ENABLE_CPUSET:Z

    if-nez v9, :cond_5

    const-string v9, "CS_OFF"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    :cond_5
    sget-object v9, Lcom/android/server/am/SchedPolicyManager;->MODEL_NAME:Ljava/lang/String;

    if-eqz v9, :cond_6

    sget-object v9, Lcom/android/server/am/SchedPolicyManager;->MODEL_NAME:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    :cond_6
    sget-object v9, Lcom/android/server/am/SchedPolicyManager;->MODEL_NUMBER:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    sget-object v9, Lcom/android/server/am/SchedPolicyManager;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 344
    :cond_7
    if-nez v1, :cond_9

    move v3, v7

    .line 332
    :cond_8
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    move v3, v8

    .line 344
    goto :goto_1
.end method

.method private needToUpdateScpm()Z
    .locals 13

    .prologue
    .line 256
    const/4 v6, 0x0

    .line 257
    .local v6, "cursorPolicy":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 259
    .local v8, "needUpdate":Z
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/SchedPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/SchedPolicyManager;->SCPM_URI_POLICY:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 260
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    const-string/jumbo v0, "policyName"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 262
    .local v9, "policyName":Ljava/lang/String;
    const-string v0, "SchedPolicy"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    const-string/jumbo v0, "policyVersion"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 264
    .local v12, "strNewVersion":Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 265
    .local v10, "newVersion":J
    if-eqz v12, :cond_1

    .line 267
    :try_start_1
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v10

    .line 272
    :cond_1
    :goto_0
    :try_start_2
    const-string v0, "SchedPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "needToUpdateScpm: policyName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , newVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , oldVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/SchedPolicyManager;->scpmVersion:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-wide v0, p0, Lcom/android/server/am/SchedPolicyManager;->scpmVersion:J

    cmp-long v0, v10, v0

    if-lez v0, :cond_2

    .line 274
    iput-wide v10, p0, Lcom/android/server/am/SchedPolicyManager;->scpmVersion:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    const/4 v8, 0x1

    .line 283
    .end local v9    # "policyName":Ljava/lang/String;
    .end local v10    # "newVersion":J
    .end local v12    # "strNewVersion":Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 284
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 286
    :cond_3
    :goto_1
    const-string v0, "SchedPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "needToUpdateScpm() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return v8

    .line 268
    .restart local v9    # "policyName":Ljava/lang/String;
    .restart local v10    # "newVersion":J
    .restart local v12    # "strNewVersion":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 269
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v0, "SchedPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scpm version parsing err : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 280
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "policyName":Ljava/lang/String;
    .end local v10    # "newVersion":J
    .end local v12    # "strNewVersion":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 281
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string v0, "SchedPolicyManager"

    const-string/jumbo v1, "needToUpdateScpm: policy list is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 283
    if-eqz v6, :cond_3

    .line 284
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 283
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 284
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private parseListToAddPolicy(Ljava/lang/String;Lcom/android/server/am/SchedPolicyManager$GroupPolicy;)V
    .locals 11
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "policy"    # Lcom/android/server/am/SchedPolicyManager$GroupPolicy;

    .prologue
    .line 390
    const-string v9, ""

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "common"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 391
    :cond_0
    iget-object v9, p0, Lcom/android/server/am/SchedPolicyManager;->mListGroupPolicy:Ljava/util/ArrayList;

    invoke-virtual {v9, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_1
    const-string v9, "\\|"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 393
    .local v8, "segs":[Ljava/lang/String;
    move-object v1, v8

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_6

    aget-object v7, v1, v2

    .line 394
    .local v7, "seg":Ljava/lang/String;
    const/4 v3, 0x0

    .line 395
    .local v3, "isPkg":Z
    const-string/jumbo v9, "pkg="

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 396
    const/4 v3, 0x1

    .line 401
    :goto_1
    const/4 v9, 0x4

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "appName":Ljava/lang/String;
    if-eqz v3, :cond_5

    iget-object v6, p0, Lcom/android/server/am/SchedPolicyManager;->mPkgGroupPolicyMap:Ljava/util/Map;

    .line 403
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/SchedPolicyManager$GroupPolicy;>;>;"
    :goto_2
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 404
    .local v5, "listPolicy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/SchedPolicyManager$GroupPolicy;>;"
    if-nez v5, :cond_2

    .line 405
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "listPolicy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/SchedPolicyManager$GroupPolicy;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .restart local v5    # "listPolicy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/SchedPolicyManager$GroupPolicy;>;"
    invoke-interface {v6, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    :cond_2
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    .end local v0    # "appName":Ljava/lang/String;
    .end local v5    # "listPolicy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/SchedPolicyManager$GroupPolicy;>;"
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/SchedPolicyManager$GroupPolicy;>;>;"
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    :cond_4
    const-string/jumbo v9, "prc="

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 398
    const/4 v3, 0x0

    goto :goto_1

    .line 402
    .restart local v0    # "appName":Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/android/server/am/SchedPolicyManager;->mProcGroupPolicyMap:Ljava/util/Map;

    goto :goto_2

    .line 410
    .end local v0    # "appName":Ljava/lang/String;
    .end local v3    # "isPkg":Z
    .end local v7    # "seg":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method static prepareManager(Lcom/android/server/am/ActivityManagerService;)Z
    .locals 1
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 191
    sget-object v0, Lcom/android/server/am/SchedPolicyManager;->manager:Lcom/android/server/am/SchedPolicyManager;

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    .line 192
    :cond_0
    const/4 v0, 0x0

    .line 194
    :goto_0
    return v0

    .line 193
    :cond_1
    new-instance v0, Lcom/android/server/am/SchedPolicyManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/SchedPolicyManager;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/SchedPolicyManager;->manager:Lcom/android/server/am/SchedPolicyManager;

    .line 194
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private registerBarTenderReceiver()V
    .locals 5

    .prologue
    .line 517
    new-instance v1, Lcom/android/server/am/SchedPolicyManager$4;

    invoke-direct {v1, p0}, Lcom/android/server/am/SchedPolicyManager$4;-><init>(Lcom/android/server/am/SchedPolicyManager;)V

    .line 576
    .local v1, "mBarTenderReceiver":Landroid/content/BroadcastReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 577
    .local v0, "barTenderFilter":Landroid/content/IntentFilter;
    const-string v2, "com.android.server.am.ACTION_BARTENDER_SLOW_DOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 578
    iget-object v2, p0, Lcom/android/server/am/SchedPolicyManager;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 579
    return-void
.end method

.method private registerDefaultInputMethodChanged()V
    .locals 5

    .prologue
    .line 107
    new-instance v0, Lcom/android/server/am/SchedPolicyManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/SchedPolicyManager$1;-><init>(Lcom/android/server/am/SchedPolicyManager;Landroid/os/Handler;)V

    .line 114
    .local v0, "mInputMethodObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/am/SchedPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/SchedPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 116
    return-void
.end method

.method private registerScpmReceiver()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 501
    new-instance v1, Lcom/android/server/am/SchedPolicyManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/am/SchedPolicyManager$3;-><init>(Lcom/android/server/am/SchedPolicyManager;)V

    .line 508
    .local v1, "mScpmReceiver":Landroid/content/BroadcastReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 509
    .local v3, "scpmFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "sec.app.policy.UPDATE.SchedPolicy"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/android/server/am/SchedPolicyManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 511
    return-void
.end method

.method private updateScpm()V
    .locals 14

    .prologue
    .line 291
    const/4 v7, 0x0

    .line 292
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "item"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "category"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "data1"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "data2"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "data3"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "data4"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "data5"

    aput-object v1, v2, v0

    .line 294
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/SchedPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/SchedPolicyManager;->SCPM_URI_TABLE_SCHED:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 299
    :goto_0
    if-eqz v7, :cond_4

    .line 300
    :cond_0
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 301
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 303
    .local v12, "item":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 304
    .local v6, "category":Ljava/lang/String;
    if-eqz v12, :cond_0

    if-eqz v6, :cond_0

    .line 306
    const-string v0, "GroupPolicy-"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v12}, Lcom/android/server/am/SchedPolicyManager;->isInvokedModel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    const/16 v0, 0xc

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/am/SchedPolicyManager;->createPolicyByCategory(Ljava/lang/String;)Lcom/android/server/am/SchedPolicyManager$GroupPolicy;

    move-result-object v13

    .line 309
    .local v13, "policy":Lcom/android/server/am/SchedPolicyManager$GroupPolicy;
    if-eqz v13, :cond_0

    .line 311
    const-string v9, ""

    .line 312
    .local v9, "data":Ljava/lang/String;
    const/4 v11, 0x2

    .local v11, "i":I
    :goto_2
    const/4 v0, 0x6

    if-gt v11, v0, :cond_2

    .line 313
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 314
    .local v8, "d":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 312
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 295
    .end local v6    # "category":Ljava/lang/String;
    .end local v8    # "d":Ljava/lang/String;
    .end local v9    # "data":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v12    # "item":Ljava/lang/String;
    .end local v13    # "policy":Lcom/android/server/am/SchedPolicyManager$GroupPolicy;
    :catch_0
    move-exception v10

    .line 296
    .local v10, "e":Ljava/lang/Exception;
    const-string v0, "SchedPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception with contentResolver : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 317
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v6    # "category":Ljava/lang/String;
    .restart local v9    # "data":Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v12    # "item":Ljava/lang/String;
    .restart local v13    # "policy":Lcom/android/server/am/SchedPolicyManager$GroupPolicy;
    :cond_2
    invoke-direct {p0, v9, v13}, Lcom/android/server/am/SchedPolicyManager;->parseListToAddPolicy(Ljava/lang/String;Lcom/android/server/am/SchedPolicyManager$GroupPolicy;)V

    goto/16 :goto_1

    .line 320
    .end local v6    # "category":Ljava/lang/String;
    .end local v9    # "data":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v12    # "item":Ljava/lang/String;
    .end local v13    # "policy":Lcom/android/server/am/SchedPolicyManager$GroupPolicy;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 321
    const-string v0, "SchedPolicyManager"

    const-string/jumbo v1, "updateScpm() working!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :goto_3
    return-void

    .line 323
    :cond_4
    const-string v0, "SchedPolicyManager"

    const-string/jumbo v1, "updateScpm() error, no database!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private updateScpmWithHandler()V
    .locals 3

    .prologue
    .line 458
    sget-boolean v1, Lcom/android/server/am/SchedPolicyManager;->DEBUG_CPUSET:Z

    if-eqz v1, :cond_0

    const-string v1, "SchedPolicyManager"

    const-string/jumbo v2, "updateScpmWithHandler()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 460
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 461
    iget-object v1, p0, Lcom/android/server/am/SchedPolicyManager;->mScpmHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 462
    return-void
.end method


# virtual methods
.method applyPolicyToRecord(Lcom/android/server/am/ProcessRecord;)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 132
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/SchedPolicyManager;->mPkgGroupPolicyMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->listGroupPolicyPkg:Ljava/util/ArrayList;

    .line 136
    iget-object v0, p0, Lcom/android/server/am/SchedPolicyManager;->mProcGroupPolicyMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->listGroupPolicyProc:Ljava/util/ArrayList;

    .line 137
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getSchedGroupByPolicy(Lcom/android/server/am/ProcessRecord;Z)I
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "connection"    # Z

    .prologue
    .line 141
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->curProcState:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/am/SchedPolicyManager;->getSchedGroupByPolicy(Lcom/android/server/am/ProcessRecord;ZII)I

    move-result v0

    return v0
.end method

.method getSchedGroupByPolicy(Lcom/android/server/am/ProcessRecord;ZII)I
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "connection"    # Z
    .param p3, "schedGroup"    # I
    .param p4, "procState"    # I

    .prologue
    .line 145
    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->listGroupPolicyPkg:Ljava/util/ArrayList;

    if-nez v7, :cond_0

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->listGroupPolicyProc:Ljava/util/ArrayList;

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/am/SchedPolicyManager;->mListGroupPolicy:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_0

    move v6, p3

    .line 187
    .end local p3    # "schedGroup":I
    .local v6, "schedGroup":I
    :goto_0
    return v6

    .line 147
    .end local v6    # "schedGroup":I
    .restart local p3    # "schedGroup":I
    :cond_0
    const/4 v4, -0x3

    .line 148
    .local v4, "minSchedGroup":I
    const/4 v3, 0x5

    .line 149
    .local v3, "maxSchedGroup":I
    const/4 v0, 0x0

    .line 150
    .local v0, "highPriorityOnly":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v2, "listPolicy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/SchedPolicyManager$GroupPolicy;>;"
    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/SchedPolicyManager;->mListGroupPolicy:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 153
    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->listGroupPolicyPkg:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    .line 154
    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->listGroupPolicyPkg:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 155
    :cond_1
    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->listGroupPolicyProc:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    .line 156
    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->listGroupPolicyProc:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 157
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;

    .line 160
    .local v5, "policy":Lcom/android/server/am/SchedPolicyManager$GroupPolicy;
    iget-boolean v7, v5, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;->allowConnection:Z

    if-ne v7, p2, :cond_3

    .line 163
    iget-boolean v7, v5, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;->isHighPriority:Z

    if-eqz v7, :cond_6

    .line 164
    if-nez v0, :cond_4

    .line 165
    const/4 v0, 0x1

    .line 166
    const/4 v4, -0x3

    .line 167
    const/4 v3, 0x5

    .line 173
    :cond_4
    iget v7, v5, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;->condStateOver:I

    if-lt p4, v7, :cond_3

    iget v7, v5, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;->condStateBelow:I

    if-gt p4, v7, :cond_3

    .line 174
    iget v7, v5, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;->condGroupOver:I

    if-lt p3, v7, :cond_3

    iget v7, v5, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;->condGroupBelow:I

    if-gt p3, v7, :cond_3

    .line 175
    iget v7, v5, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;->actGroupMin:I

    if-ge v4, v7, :cond_5

    .line 176
    iget v4, v5, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;->actGroupMin:I

    .line 177
    :cond_5
    iget v7, v5, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;->actGroupMax:I

    if-le v3, v7, :cond_3

    .line 178
    iget v3, v5, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;->actGroupMax:I

    goto :goto_1

    .line 157
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "policy":Lcom/android/server/am/SchedPolicyManager$GroupPolicy;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 169
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v5    # "policy":Lcom/android/server/am/SchedPolicyManager$GroupPolicy;
    :cond_6
    if-eqz v0, :cond_4

    goto :goto_1

    .line 182
    .end local v5    # "policy":Lcom/android/server/am/SchedPolicyManager$GroupPolicy;
    :cond_7
    if-le p3, v3, :cond_8

    .line 183
    move p3, v3

    .line 184
    :cond_8
    if-ge p3, v4, :cond_9

    .line 185
    move p3, v4

    :cond_9
    move v6, p3

    .line 187
    .end local p3    # "schedGroup":I
    .restart local v6    # "schedGroup":I
    goto :goto_0
.end method

.method public getStateByString(Ljava/lang/String;I)I
    .locals 6
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v4, 0x10

    const/4 v0, -0x1

    .line 429
    if-nez p1, :cond_0

    .line 453
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 431
    .restart local p2    # "defaultValue":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 432
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    move v5, v0

    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move p2, v0

    .line 433
    goto :goto_0

    .line 432
    :sswitch_0
    const-string v5, "MN"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v1

    goto :goto_1

    :sswitch_1
    const-string v5, "N"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_1

    :sswitch_2
    const-string v5, "P"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_1

    :sswitch_3
    const-string v5, "PU"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x3

    goto :goto_1

    :sswitch_4
    const-string v5, "T"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_1

    :sswitch_5
    const-string v5, "SB"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x5

    goto :goto_1

    :sswitch_6
    const-string v5, "SF"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x6

    goto :goto_1

    :sswitch_7
    const-string v5, "TS"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x7

    goto :goto_1

    :sswitch_8
    const-string v5, "IF"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x8

    goto :goto_1

    :sswitch_9
    const-string v5, "IB"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x9

    goto :goto_1

    :sswitch_a
    const-string v5, "BU"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0xa

    goto :goto_1

    :sswitch_b
    const-string v5, "HW"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v5, "S"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string v5, "R"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string v5, "HO"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string v5, "LA"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string v5, "CA"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v4

    goto/16 :goto_1

    :sswitch_11
    const-string v5, "Ca"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string v5, "CE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x12

    goto/16 :goto_1

    :sswitch_13
    const-string v5, "MX"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x13

    goto/16 :goto_1

    :pswitch_1
    move p2, v0

    .line 434
    goto/16 :goto_0

    :pswitch_2
    move p2, v1

    .line 435
    goto/16 :goto_0

    :pswitch_3
    move p2, v2

    .line 436
    goto/16 :goto_0

    :pswitch_4
    move p2, v3

    .line 437
    goto/16 :goto_0

    .line 438
    :pswitch_5
    const/4 p2, 0x3

    goto/16 :goto_0

    .line 439
    :pswitch_6
    const/4 p2, 0x4

    goto/16 :goto_0

    .line 440
    :pswitch_7
    const/4 p2, 0x5

    goto/16 :goto_0

    .line 441
    :pswitch_8
    const/4 p2, 0x6

    goto/16 :goto_0

    .line 442
    :pswitch_9
    const/4 p2, 0x7

    goto/16 :goto_0

    .line 443
    :pswitch_a
    const/16 p2, 0x8

    goto/16 :goto_0

    .line 444
    :pswitch_b
    const/16 p2, 0x9

    goto/16 :goto_0

    .line 445
    :pswitch_c
    const/16 p2, 0xa

    goto/16 :goto_0

    .line 446
    :pswitch_d
    const/16 p2, 0xb

    goto/16 :goto_0

    .line 447
    :pswitch_e
    const/16 p2, 0xc

    goto/16 :goto_0

    .line 448
    :pswitch_f
    const/16 p2, 0xd

    goto/16 :goto_0

    .line 449
    :pswitch_10
    const/16 p2, 0xe

    goto/16 :goto_0

    .line 450
    :pswitch_11
    const/16 p2, 0xf

    goto/16 :goto_0

    :pswitch_12
    move p2, v4

    .line 451
    goto/16 :goto_0

    :pswitch_13
    move p2, v4

    .line 452
    goto/16 :goto_0

    .line 432
    :sswitch_data_0
    .sparse-switch
        0x4e -> :sswitch_1
        0x50 -> :sswitch_2
        0x52 -> :sswitch_d
        0x53 -> :sswitch_c
        0x54 -> :sswitch_4
        0x853 -> :sswitch_a
        0x85e -> :sswitch_10
        0x862 -> :sswitch_12
        0x87e -> :sswitch_11
        0x907 -> :sswitch_e
        0x90f -> :sswitch_b
        0x919 -> :sswitch_9
        0x91d -> :sswitch_8
        0x975 -> :sswitch_f
        0x9a1 -> :sswitch_0
        0x9ab -> :sswitch_13
        0xa05 -> :sswitch_3
        0xa4f -> :sswitch_5
        0xa53 -> :sswitch_6
        0xa7f -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

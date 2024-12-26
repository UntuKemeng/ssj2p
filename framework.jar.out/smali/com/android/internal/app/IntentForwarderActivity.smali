.class public Lcom/android/internal/app/IntentForwarderActivity;
.super Landroid/app/Activity;
.source "IntentForwarderActivity.java"


# static fields
.field public static FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

.field public static FORWARD_INTENT_TO_USER_OWNER:Ljava/lang/String;

.field public static TAG:Ljava/lang/String;


# instance fields
.field private final TARGET_USER_ID_DEFAULT_VALUE:I

.field private targetUserIdForKnox:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "IntentForwarderActivity"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    .line 63
    const-string v0, "com.android.internal.app.ForwardIntentToUserOwner"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_USER_OWNER:Ljava/lang/String;

    .line 66
    const-string v0, "com.android.internal.app.ForwardIntentToManagedProfile"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->TARGET_USER_ID_DEFAULT_VALUE:I

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->targetUserIdForKnox:I

    return-void
.end method

.method private getManagedProfile()I
    .locals 7

    .prologue
    .line 381
    const-string/jumbo v4, "user"

    invoke-virtual {p0, v4}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 382
    .local v3, "userManager":Landroid/os/UserManager;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 383
    .local v1, "relatedUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 384
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    .line 388
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_0
    return v4

    .line 386
    :cond_1
    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has been called, but there is no managed profile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/16 v4, -0x2710

    goto :goto_0
.end method

.method private isAvailableToB2CStore(Landroid/content/Intent;)Z
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 392
    const/4 v2, 0x0

    .line 393
    .local v2, "isPossibleToStoreIntoB2C":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v4, "srcUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.SEND"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 397
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    :cond_0
    :goto_0
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 406
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_6

    .line 408
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 410
    .local v5, "tempUri":Landroid/net/Uri;
    if-eqz v5, :cond_1

    .line 412
    const-string v6, "file"

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 413
    const/4 v2, 0x1

    .line 406
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 399
    .end local v1    # "i":I
    .end local v5    # "tempUri":Landroid/net/Uri;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 401
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_0

    .line 414
    .restart local v1    # "i":I
    .restart local v5    # "tempUri":Landroid/net/Uri;
    :cond_3
    const-string v6, "content"

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 416
    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "authority":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 419
    const-string v6, "@"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 421
    const-string v6, "@"

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 422
    .local v3, "nPos":I
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 424
    .end local v3    # "nPos":I
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 425
    const-string/jumbo v6, "media"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 426
    const/4 v2, 0x1

    goto :goto_2

    .line 429
    :cond_5
    const/4 v2, 0x0

    .line 430
    sget-object v6, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IsAvailableToB2CStore | false | "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    .end local v0    # "authority":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v5    # "tempUri":Landroid/net/Uri;
    :cond_6
    :goto_3
    sget-object v6, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IsAvailableToB2CStore | "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    return v2

    .line 437
    .restart local v1    # "i":I
    .restart local v5    # "tempUri":Landroid/net/Uri;
    :cond_7
    const/4 v2, 0x0

    .line 438
    sget-object v6, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IsAvailableToB2CStore | false | "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private isWantToB2CStore(Landroid/content/Intent;)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 451
    const-string v5, "extra_chooser_droplist"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 452
    .local v1, "dropComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const-string v3, "com.sec.knox.switcher"

    .line 453
    .local v3, "packageName":Ljava/lang/String;
    const-string v0, "com.sec.knox.switcher.B2CStoreFilesActivity"

    .line 455
    .local v0, "className":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 456
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 457
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 458
    .local v4, "tempComponent":Landroid/content/ComponentName;
    sget-object v5, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isWantToB2CStore | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 462
    sget-object v5, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string v6, "isWantToB2CStore | not support"

    invoke-static {v5, v6}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/4 v5, 0x0

    .line 468
    .end local v2    # "i":I
    .end local v4    # "tempComponent":Landroid/content/ComponentName;
    :goto_1
    return v5

    .line 456
    .restart local v2    # "i":I
    .restart local v4    # "tempComponent":Landroid/content/ComponentName;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 468
    .end local v2    # "i":I
    .end local v4    # "tempComponent":Landroid/content/ComponentName;
    :cond_1
    const/4 v5, 0x1

    goto :goto_1
.end method


# virtual methods
.method canForward(Landroid/content/Intent;I)Z
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "targetUserId"    # I

    .prologue
    .line 273
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 277
    .local v5, "ipm":Landroid/content/pm/IPackageManager;
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v0

    .line 278
    .local v0, "callingUserId":I
    invoke-static {v0}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v9

    if-eqz v9, :cond_3

    if-nez p2, :cond_3

    .line 280
    const/4 v4, 0x0

    .line 282
    .local v4, "intentAction":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "persona"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PersonaManager;

    .line 283
    .local v6, "personaManager":Landroid/os/PersonaManager;
    const-string/jumbo v9, "persona_policy"

    invoke-virtual {v6, v9}, Landroid/os/PersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PersonaPolicyManager;

    .line 285
    .local v7, "personaPolicyManager":Landroid/os/PersonaPolicyManager;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.intent.action.CHOOSER"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 286
    const-string v9, "android.intent.extra.INTENT"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 287
    .local v3, "innerIntent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 292
    .end local v3    # "innerIntent":Landroid/content/Intent;
    :goto_0
    if-eqz v4, :cond_3

    const-string v9, "android.intent.action.SEND"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 295
    :cond_0
    invoke-virtual {v7, v0}, Landroid/os/PersonaPolicyManager;->isMoveFilesToOwnerAllowed(I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 298
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x1040b7c

    invoke-virtual {p0, v10}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 299
    const/4 v9, 0x0

    .line 369
    .end local v4    # "intentAction":Ljava/lang/String;
    .end local v6    # "personaManager":Landroid/os/PersonaManager;
    .end local v7    # "personaPolicyManager":Landroid/os/PersonaPolicyManager;
    :goto_1
    return v9

    .line 290
    .restart local v4    # "intentAction":Ljava/lang/String;
    .restart local v6    # "personaManager":Landroid/os/PersonaManager;
    .restart local v7    # "personaPolicyManager":Landroid/os/PersonaPolicyManager;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 301
    :cond_2
    const/4 v9, 0x1

    goto :goto_1

    .line 307
    .end local v4    # "intentAction":Ljava/lang/String;
    .end local v6    # "personaManager":Landroid/os/PersonaManager;
    .end local v7    # "personaPolicyManager":Landroid/os/PersonaPolicyManager;
    :cond_3
    invoke-static {p2}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 310
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "persona"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PersonaManager;

    .line 311
    .restart local v6    # "personaManager":Landroid/os/PersonaManager;
    const-string/jumbo v9, "persona_policy"

    invoke-virtual {v6, v9}, Landroid/os/PersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PersonaPolicyManager;

    .line 313
    .restart local v7    # "personaPolicyManager":Landroid/os/PersonaPolicyManager;
    invoke-virtual {v6, p2}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/PersonaManager$StateManager;->getState()Landroid/content/pm/PersonaState;

    move-result-object v1

    .line 315
    .local v1, "curState":Landroid/content/pm/PersonaState;
    invoke-virtual {v6, p2}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v9

    sget-object v10, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v9, v10}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v9

    if-nez v9, :cond_4

    sget-object v9, Landroid/content/pm/PersonaState;->ADMIN_LOCKED:Landroid/content/pm/PersonaState;

    if-eq v1, v9, :cond_4

    sget-object v9, Landroid/content/pm/PersonaState;->ADMIN_LICENSE_LOCKED:Landroid/content/pm/PersonaState;

    if-eq v1, v9, :cond_4

    sget-object v9, Landroid/content/pm/PersonaState;->LICENSE_LOCKED:Landroid/content/pm/PersonaState;

    if-eq v1, v9, :cond_4

    sget-object v9, Landroid/content/pm/PersonaState;->CONTAINER_APPS_URGENT_UPDATE:Landroid/content/pm/PersonaState;

    if-eq v1, v9, :cond_4

    sget-object v9, Landroid/content/pm/PersonaState;->TIMA_COMPROMISED:Landroid/content/pm/PersonaState;

    if-ne v1, v9, :cond_5

    .line 321
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x1040b7c

    invoke-virtual {p0, v10}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 322
    const/4 v9, 0x0

    goto :goto_1

    .line 325
    :cond_5
    const/4 v4, 0x0

    .line 327
    .restart local v4    # "intentAction":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.intent.action.CHOOSER"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 328
    const-string v9, "android.intent.extra.INTENT"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 329
    .restart local v3    # "innerIntent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 334
    .end local v3    # "innerIntent":Landroid/content/Intent;
    :goto_2
    if-eqz v4, :cond_9

    const-string v9, "android.intent.action.SEND"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 336
    :cond_6
    invoke-virtual {v7, p2}, Landroid/os/PersonaPolicyManager;->isMoveFilesToContainerAllowed(I)Z

    move-result v9

    if-nez v9, :cond_8

    .line 339
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x1040b7c

    invoke-virtual {p0, v10}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 340
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 332
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 342
    :cond_8
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 346
    .end local v1    # "curState":Landroid/content/pm/PersonaState;
    .end local v4    # "intentAction":Ljava/lang/String;
    .end local v6    # "personaManager":Landroid/os/PersonaManager;
    .end local v7    # "personaPolicyManager":Landroid/os/PersonaPolicyManager;
    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.intent.action.CHOOSER"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 348
    const-string v9, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 349
    sget-object v9, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string v10, "An chooser intent with extra initial intents cannot be forwarded to a different user"

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 353
    :cond_a
    const-string v9, "android.intent.extra.REPLACEMENT_EXTRAS"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 354
    sget-object v9, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string v10, "A chooser intent with replacement extras cannot be forwarded to a different user"

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 358
    :cond_b
    const-string v9, "android.intent.extra.INTENT"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .end local p1    # "intent":Landroid/content/Intent;
    check-cast p1, Landroid/content/Intent;

    .line 360
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v8

    .line 361
    .local v8, "resolvedType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 362
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 365
    :cond_d
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v9

    invoke-interface {v5, p1, v8, v9, p2}, Landroid/content/pm/IPackageManager;->canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    goto/16 :goto_1

    .line 367
    :catch_0
    move-exception v2

    .line 368
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v9, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string v10, "PackageManagerService is dead?"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v9, 0x0

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 36
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    .line 80
    .local v19, "intentReceived":Landroid/content/Intent;
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    .line 87
    .local v12, "className":Ljava/lang/String;
    :try_start_0
    new-instance v27, Landroid/content/Intent;

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 88
    .local v27, "tempIntent":Landroid/content/Intent;
    const-string v32, "crossProfileTargetUserId"

    const/16 v33, -0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/app/IntentForwarderActivity;->targetUserIdForKnox:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 97
    .end local v27    # "tempIntent":Landroid/content/Intent;
    :goto_0
    sget-object v32, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_USER_OWNER:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_0

    .line 98
    const v31, 0x1040440

    .line 99
    .local v31, "userMessageId":I
    const/16 v26, 0x0

    .line 113
    .local v26, "targetUserId":I
    :goto_1
    const/16 v32, -0x2710

    move/from16 v0, v26

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    .line 270
    :goto_2
    return-void

    .line 100
    .end local v26    # "targetUserId":I
    .end local v31    # "userMessageId":I
    :cond_0
    sget-object v32, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2

    .line 101
    const v31, 0x1040441

    .line 103
    .restart local v31    # "userMessageId":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/IntentForwarderActivity;->targetUserIdForKnox:I

    move/from16 v32, v0

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_1

    .line 104
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/IntentForwarderActivity;->targetUserIdForKnox:I

    move/from16 v26, v0

    .restart local v26    # "targetUserId":I
    goto :goto_1

    .line 107
    .end local v26    # "targetUserId":I
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getManagedProfile()I

    move-result v26

    .restart local v26    # "targetUserId":I
    goto :goto_1

    .line 109
    .end local v26    # "targetUserId":I
    .end local v31    # "userMessageId":I
    :cond_2
    sget-object v32, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-class v34, Lcom/android/internal/app/IntentForwarderActivity;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " cannot be called directly"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/16 v31, -0x1

    .line 111
    .restart local v31    # "userMessageId":I
    const/16 v26, -0x2710

    .restart local v26    # "targetUserId":I
    goto :goto_1

    .line 118
    :cond_3
    new-instance v22, Landroid/content/Intent;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 119
    .local v22, "newIntent":Landroid/content/Intent;
    const/16 v32, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 121
    const/16 v32, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const/high16 v32, 0x3000000

    move-object/from16 v0, v22

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v11

    .line 126
    .local v11, "callingUserId":I
    const/16 v17, 0x0

    .line 127
    .local v17, "forwardfromKnox":Z
    const/16 v32, 0x64

    move/from16 v0, v32

    if-lt v11, v0, :cond_4

    .line 128
    const/16 v17, 0x1

    .line 132
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IntentForwarderActivity;->canForward(Landroid/content/Intent;I)Z

    move-result v32

    if-eqz v32, :cond_14

    .line 133
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v32

    const-string v33, "android.intent.action.CHOOSER"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_a

    .line 134
    const-string v32, "android.intent.extra.INTENT"

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/content/Intent;

    .line 135
    .local v18, "innerIntent":Landroid/content/Intent;
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    .line 140
    .end local v18    # "innerIntent":Landroid/content/Intent;
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    const/high16 v33, 0x10000

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    move/from16 v2, v33

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v24

    .line 145
    .local v24, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v24, :cond_5

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v32, v0

    if-eqz v32, :cond_5

    const-string v32, "android"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_5

    const-class v32, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_b

    const-class v32, Lcom/android/internal/app/ChooserActivity;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_b

    :cond_5
    const/16 v25, 0x1

    .line 152
    .local v25, "shouldShowDisclosure":Z
    :goto_4
    :try_start_1
    invoke-static {v11}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v32

    if-eqz v32, :cond_c

    if-nez v26, :cond_c

    .line 153
    if-eqz v22, :cond_c

    const-string v32, "file"

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_c

    const-string v32, "isFromBBCProvider"

    const/16 v33, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v32

    if-nez v32, :cond_c

    .line 154
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 155
    .local v10, "bbcIntent":Landroid/content/Intent;
    const-string v32, "base_intent"

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 156
    const-string v32, "com.samsung.android.bbc.fileprovider"

    const-string v33, "com.samsung.android.bbc.fileprovider.IntentForwardActivity"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v10, v1, v2, v11}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 204
    .end local v10    # "bbcIntent":Landroid/content/Intent;
    :catch_0
    move-exception v15

    .line 205
    .local v15, "e":Ljava/lang/RuntimeException;
    const/16 v21, -0x1

    .line 206
    .local v21, "launchedFromUid":I
    const-string v20, "?"

    .line 208
    .local v20, "launchedFromPackage":Ljava/lang/String;
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v21

    .line 210
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v20

    .line 215
    :goto_5
    sget-object v32, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Unable to launch as UID "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " package "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", while running in "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v1, v15}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    .end local v15    # "e":Ljava/lang/RuntimeException;
    .end local v20    # "launchedFromPackage":Ljava/lang/String;
    .end local v21    # "launchedFromUid":I
    :goto_6
    const-string/jumbo v32, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/os/UserManager;

    .line 223
    .local v30, "userManager":Landroid/os/UserManager;
    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v29

    .line 224
    .local v29, "ui":Landroid/content/pm/UserInfo;
    if-eqz v29, :cond_6

    invoke-virtual/range {v29 .. v29}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v32

    if-eqz v32, :cond_6

    .line 225
    const/16 v25, 0x0

    .line 228
    :cond_6
    const/16 v16, 0x0

    .line 229
    .local v16, "forwardfromDual":Z
    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v14

    .line 230
    .local v14, "dualUserInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->isDualProfile()Z

    move-result v16

    .line 231
    sget-object v32, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "From DualProfile  :"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " calling userid :"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " to user "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v6, 0x0

    .line 235
    .local v6, "IsHomeFromKEA":Z
    invoke-static {v11}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v32

    if-eqz v32, :cond_7

    if-nez v26, :cond_7

    .line 236
    if-eqz v22, :cond_7

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v32

    const-string v33, "android.intent.action.MAIN"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_7

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v32

    if-eqz v32, :cond_7

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v32

    const-string v33, "android.intent.category.HOME"

    invoke-interface/range {v32 .. v33}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_7

    .line 237
    const/4 v6, 0x1

    .line 242
    :cond_7
    if-eqz v17, :cond_13

    if-nez v6, :cond_13

    .line 243
    const-string v32, "activity"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    .line 244
    .local v9, "am":Landroid/app/ActivityManager;
    const-string/jumbo v32, "persona"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/PersonaManager;

    .line 245
    .local v23, "pm":Landroid/os/PersonaManager;
    invoke-virtual {v9}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v32

    if-nez v32, :cond_9

    .line 246
    const-string v28, ""

    .line 247
    .local v28, "toastMessage":Ljava/lang/String;
    invoke-static {v11}, Landroid/os/PersonaManager;->isSecureFolderId(I)Z

    move-result v32

    if-eqz v32, :cond_12

    .line 248
    const v32, 0x1040a1b

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const v35, 0x1040a1c

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    .line 252
    :goto_7
    invoke-static/range {p0 .. p0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_8

    sget-object v32, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static/range {v32 .. v32}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v32

    if-nez v32, :cond_9

    .line 254
    :cond_8
    new-instance v32, Landroid/view/ContextThemeWrapper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v33

    const v34, 0x103012b

    invoke-direct/range {v32 .. v34}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Toast;->show()V

    .line 269
    .end local v6    # "IsHomeFromKEA":Z
    .end local v9    # "am":Landroid/app/ActivityManager;
    .end local v14    # "dualUserInfo":Landroid/content/pm/UserInfo;
    .end local v16    # "forwardfromDual":Z
    .end local v23    # "pm":Landroid/os/PersonaManager;
    .end local v24    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v25    # "shouldShowDisclosure":Z
    .end local v28    # "toastMessage":Ljava/lang/String;
    .end local v29    # "ui":Landroid/content/pm/UserInfo;
    .end local v30    # "userManager":Landroid/os/UserManager;
    :cond_9
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    goto/16 :goto_2

    .line 137
    :cond_a
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    goto/16 :goto_3

    .line 145
    .restart local v24    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_b
    const/16 v25, 0x0

    goto/16 :goto_4

    .line 164
    .restart local v25    # "shouldShowDisclosure":Z
    :cond_c
    if-eqz v22, :cond_11

    :try_start_3
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v32

    const-string v33, "android.intent.action.SEND"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_d

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v32

    const-string v33, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_11

    .line 166
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x1040366

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    .line 167
    .local v5, "ChooserIntent":Landroid/content/Intent;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v13, "compArrary":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    if-eqz v17, :cond_10

    if-nez v26, :cond_10

    .line 170
    new-instance v32, Landroid/content/ComponentName;

    const-string v33, "com.sec.knox.switcher"

    const-string v34, "com.sec.knox.switcher.SwitchB2bActivityI"

    invoke-direct/range {v32 .. v34}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v32, Landroid/content/ComponentName;

    const-string v33, "com.sec.knox.switcher"

    const-string v34, "com.sec.knox.switcher.SwitchB2bActivityII"

    invoke-direct/range {v32 .. v34}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v32, Landroid/content/ComponentName;

    const-string v33, "com.sec.knox.switcher"

    const-string v34, "com.sec.knox.switcher.SwitchAliasActivity"

    invoke-direct/range {v32 .. v34}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v32, Landroid/content/ComponentName;

    const-string v33, "com.sec.knox.switcher"

    const-string v34, "com.sec.knox.switcher.SwitchSfActivity"

    invoke-direct/range {v32 .. v34}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v32, Landroid/content/ComponentName;

    const-string v33, "com.samsung.android.app.simplesharing"

    const-string v34, "com.samsung.android.app.simplesharing.dialog.RelayActivity"

    invoke-direct/range {v32 .. v34}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v32, Landroid/content/ComponentName;

    const-string v33, "com.sec.enterprise.knox.express"

    const-string v34, "com.sec.enterprise.knox.express.WelcomeActivity"

    invoke-direct/range {v32 .. v34}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v32, Landroid/content/ComponentName;

    const-string v33, "com.sec.enterprise.knox.express"

    const-string v34, "com.sec.enterprise.knox.express.WelcomeActivityII"

    invoke-direct/range {v32 .. v34}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_e
    :goto_9
    new-instance v32, Landroid/content/ComponentName;

    const-string v33, "com.sec.knox.bluetooth"

    const-string v34, "com.sec.knox.bluetooth.BluetoothFileTransfer"

    invoke-direct/range {v32 .. v34}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v32, Landroid/content/ComponentName;

    const-string v33, "com.tencent.mm"

    const-string v34, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-direct/range {v32 .. v34}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v32, Landroid/content/ComponentName;

    const-string v33, "com.tencent.mm"

    const-string v34, "com.tencent.mm.ui.tools.AddFavoriteUI"

    invoke-direct/range {v32 .. v34}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v32, Landroid/content/ComponentName;

    const-string v33, "com.tencent.mm"

    const-string v34, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-direct/range {v32 .. v34}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    const-string v32, "extra_chooser_droplist"

    move-object/from16 v0, v32

    invoke-virtual {v5, v0, v13}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 188
    if-nez v11, :cond_f

    invoke-static/range {v26 .. v26}, Landroid/os/PersonaManager;->isSecureFolderId(I)Z

    move-result v32

    if-eqz v32, :cond_f

    .line 190
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->isAvailableToB2CStore(Landroid/content/Intent;)Z

    move-result v32

    if-eqz v32, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->isWantToB2CStore(Landroid/content/Intent;)Z

    move-result v32

    if-eqz v32, :cond_f

    .line 192
    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v7, v0, [Landroid/content/Intent;

    .line 193
    .local v7, "addIntents":[Landroid/content/Intent;
    new-instance v8, Landroid/content/Intent;

    move-object/from16 v0, v22

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 194
    .local v8, "alternativeIntent":Landroid/content/Intent;
    const-string v32, "com.sec.knox.action.storeData"

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const v32, 0x3000001

    move/from16 v0, v32

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 196
    const-string v32, "crossProfileTargetUserId"

    move-object/from16 v0, v32

    invoke-virtual {v8, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    const/16 v32, 0x0

    aput-object v8, v7, v32

    .line 198
    const-string v32, "android.intent.extra.ALTERNATE_INTENTS"

    move-object/from16 v0, v32

    invoke-virtual {v5, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 201
    .end local v7    # "addIntents":[Landroid/content/Intent;
    .end local v8    # "alternativeIntent":Landroid/content/Intent;
    :cond_f
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v26

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    goto/16 :goto_6

    .line 178
    :cond_10
    if-nez v11, :cond_e

    .line 180
    new-instance v32, Landroid/content/ComponentName;

    const-string v33, "com.sec.knox.switcher"

    const-string v34, "com.sec.knox.switcher.B2CShareViaActivity"

    invoke-direct/range {v32 .. v34}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 203
    .end local v5    # "ChooserIntent":Landroid/content/Intent;
    .end local v13    # "compArrary":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :cond_11
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_6

    .line 250
    .restart local v6    # "IsHomeFromKEA":Z
    .restart local v9    # "am":Landroid/app/ActivityManager;
    .restart local v14    # "dualUserInfo":Landroid/content/pm/UserInfo;
    .restart local v16    # "forwardfromDual":Z
    .restart local v23    # "pm":Landroid/os/PersonaManager;
    .restart local v28    # "toastMessage":Ljava/lang/String;
    .restart local v29    # "ui":Landroid/content/pm/UserInfo;
    .restart local v30    # "userManager":Landroid/os/UserManager;
    :cond_12
    const v32, 0x1040a19

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    const-string v33, "KNOX"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v11, v1}, Landroid/os/PersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_7

    .line 262
    .end local v9    # "am":Landroid/app/ActivityManager;
    .end local v23    # "pm":Landroid/os/PersonaManager;
    .end local v28    # "toastMessage":Ljava/lang/String;
    :cond_13
    if-eqz v25, :cond_9

    if-nez v6, :cond_9

    if-nez v16, :cond_9

    .line 263
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    .line 266
    .end local v6    # "IsHomeFromKEA":Z
    .end local v14    # "dualUserInfo":Landroid/content/pm/UserInfo;
    .end local v16    # "forwardfromDual":Z
    .end local v24    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v25    # "shouldShowDisclosure":Z
    .end local v29    # "ui":Landroid/content/pm/UserInfo;
    .end local v30    # "userManager":Landroid/os/UserManager;
    :cond_14
    sget-object v32, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "the intent: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "cannot be forwarded from user "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " to user "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 212
    .restart local v15    # "e":Ljava/lang/RuntimeException;
    .restart local v20    # "launchedFromPackage":Ljava/lang/String;
    .restart local v21    # "launchedFromUid":I
    .restart local v24    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v25    # "shouldShowDisclosure":Z
    :catch_1
    move-exception v32

    goto/16 :goto_5

    .line 89
    .end local v11    # "callingUserId":I
    .end local v15    # "e":Ljava/lang/RuntimeException;
    .end local v17    # "forwardfromKnox":Z
    .end local v20    # "launchedFromPackage":Ljava/lang/String;
    .end local v21    # "launchedFromUid":I
    .end local v22    # "newIntent":Landroid/content/Intent;
    .end local v24    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v25    # "shouldShowDisclosure":Z
    .end local v26    # "targetUserId":I
    .end local v31    # "userMessageId":I
    :catch_2
    move-exception v32

    goto/16 :goto_0
.end method

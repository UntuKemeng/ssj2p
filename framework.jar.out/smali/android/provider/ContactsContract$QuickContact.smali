.class public final Landroid/provider/ContactsContract$QuickContact;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QuickContact"
.end annotation


# static fields
.field public static final ACTION_QUICK_CONTACT:Ljava/lang/String; = "android.provider.action.QUICK_CONTACT"

.field public static final EXTRA_EXCLUDE_MIMES:Ljava/lang/String; = "android.provider.extra.EXCLUDE_MIMES"

.field public static final EXTRA_MODE:Ljava/lang/String; = "android.provider.extra.MODE"

.field public static final EXTRA_PRIORITIZED_MIMETYPE:Ljava/lang/String; = "android.provider.extra.PRIORITIZED_MIMETYPE"

.field public static final EXTRA_TARGET_RECT:Ljava/lang/String; = "android.provider.extra.TARGET_RECT"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MODE_DEFAULT:I = 0x3

.field public static final MODE_LARGE:I = 0x3

.field public static final MODE_MEDIUM:I = 0x2

.field public static final MODE_SMALL:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static composeQuickContactsIntent(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/graphics/Rect;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "mode"    # I
    .param p4, "excludeMimes"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    move-object v2, p0

    .local v2, "actualContext":Landroid/content/Context;
    :goto_0
    instance-of v8, v2, Landroid/content/ContextWrapper;

    if-eqz v8, :cond_0

    instance-of v8, v2, Landroid/app/Activity;

    if-nez v8, :cond_0

    check-cast v2, Landroid/content/ContextWrapper;

    .end local v2    # "actualContext":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .restart local v2    # "actualContext":Landroid/content/Context;
    goto :goto_0

    :cond_0
    instance-of v8, v2, Landroid/app/Activity;

    if-eqz v8, :cond_2

    move v8, v9

    :goto_1
    const/high16 v10, 0x20000000

    or-int v5, v8, v10

    .local v5, "intentFlags":I
    new-instance v8, Landroid/content/Intent;

    const-string v10, "android.provider.action.QUICK_CONTACT"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .local v4, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v10, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v8, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "android.permission.GET_TASKS"

    invoke-virtual {v2, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    .local v7, "permissionResult":I
    if-nez v7, :cond_1

    const-string v8, "activity"

    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .local v3, "am":Landroid/app/ActivityManager;
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, "PackageName":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "ReplacedPackageName":Ljava/lang/String;
    const-string v8, "com.android.contacts"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .end local v0    # "PackageName":Ljava/lang/String;
    .end local v1    # "ReplacedPackageName":Ljava/lang/String;
    .end local v3    # "am":Landroid/app/ActivityManager;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v7    # "permissionResult":I
    :cond_1
    invoke-virtual {v4, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v4, p1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    const-string v8, "android.provider.extra.MODE"

    invoke-virtual {v4, v8, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "android.provider.extra.EXCLUDE_MIMES"

    invoke-virtual {v4, v8, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    return-object v4

    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "intentFlags":I
    :cond_2
    const v8, 0x10008000

    goto :goto_1
.end method

.method public static composeQuickContactsIntent(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "mode"    # I
    .param p4, "excludeMimes"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .local v0, "appScale":F
    const/4 v3, 0x2

    new-array v1, v3, [I

    .local v1, "pos":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .local v2, "rect":Landroid/graphics/Rect;
    aget v3, v1, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    aget v3, v1, v6

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    aget v3, v1, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    aget v3, v1, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, v2, p2, p3, p4}, Landroid/provider/ContactsContract$QuickContact;->composeQuickContactsIntent(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    return-object v3
.end method

.method public static rebuildManagedQuickContactsIntent(Ljava/lang/String;JLandroid/content/Intent;)Landroid/content/Intent;
    .locals 5
    .param p0, "lookupKey"    # Ljava/lang/String;
    .param p1, "contactId"    # J
    .param p3, "originalIntent"    # Landroid/content/Intent;

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.action.QUICK_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1, p2, p0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p3}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    const-string v1, "android.provider.extra.MODE"

    const-string v2, "android.provider.extra.MODE"

    const/4 v3, 0x3

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.provider.extra.EXCLUDE_MIMES"

    const-string v2, "android.provider.extra.EXCLUDE_MIMES"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static showQuickContact(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/graphics/Rect;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "mode"    # I
    .param p4, "excludeMimes"    # [Ljava/lang/String;

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/provider/ContactsContract$QuickContact;->composeQuickContactsIntent(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Landroid/provider/ContactsInternal;->startQuickContactWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static showQuickContact(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/graphics/Rect;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "excludeMimes"    # [Ljava/lang/String;
    .param p4, "prioritizedMimeType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x3

    invoke-static {p0, p1, p2, v1, p3}, Landroid/provider/ContactsContract$QuickContact;->composeQuickContactsIntent(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.provider.extra.PRIORITIZED_MIMETYPE"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Landroid/provider/ContactsInternal;->startQuickContactWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "mode"    # I
    .param p4, "excludeMimes"    # [Ljava/lang/String;

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/provider/ContactsContract$QuickContact;->composeQuickContactsIntent(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Landroid/provider/ContactsInternal;->startQuickContactWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "excludeMimes"    # [Ljava/lang/String;
    .param p4, "prioritizedMimeType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x3

    invoke-static {p0, p1, p2, v1, p3}, Landroid/provider/ContactsContract$QuickContact;->composeQuickContactsIntent(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.provider.extra.PRIORITIZED_MIMETYPE"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Landroid/provider/ContactsInternal;->startQuickContactWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

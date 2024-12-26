.class public Lcom/android/server/cocktailbar/settings/CocktailBarSettings;
.super Ljava/lang/Object;
.source "CocktailBarSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    }
.end annotation


# static fields
.field private static final COCKTAIL_BAR_SEPARATER:C = ';'

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCocktailMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mEnabledCocktailListCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private mEnabledCocktailsStrCache:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/SparseArray;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "cocktailArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    .line 56
    iput-object p1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mResolver:Landroid/content/ContentResolver;

    .line 58
    iput p3, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCurrentUserId:I

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mHandler:Landroid/os/Handler;

    .line 60
    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->initCocktailMap(Landroid/util/SparseArray;)V

    .line 61
    invoke-direct {p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->updateEnabledCocktailList()V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->updateEnabledCocktailListLocked()Z

    move-result v0

    return v0
.end method

.method private initCocktailMap(Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "cocktailArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    iget-object v5, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 66
    :try_start_0
    iget-object v4, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 67
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 68
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 69
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 70
    .local v1, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    new-instance v3, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;-><init>(ILjava/lang/String;)V

    .line 71
    .local v3, "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    iget-object v4, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v3    # "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    :cond_0
    monitor-exit v5

    .line 74
    return-void

    .line 73
    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private static isLocalBinder()Z
    .locals 2

    .prologue
    .line 227
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private putEnabledCocktailsStr(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "cocktail_bar_enabled_cocktails"

    iget v2, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCurrentUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 99
    iput-object p1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsStrCache:Ljava/lang/String;

    .line 100
    sget-object v0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "putEnabledCocktailsStr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method private updateEnabledCocktailList()V
    .locals 2

    .prologue
    .line 122
    invoke-static {}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 124
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->updateEnabledCocktailListLocked()Z

    .line 125
    monitor-exit v1

    .line 137
    :goto_0
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$1;

    invoke-direct {v1, p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$1;-><init>(Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private updateEnabledCocktailListLocked()Z
    .locals 6

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "changed":Z
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->getEnabledCocktailsStr()Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "enabledCocktailsStr":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v1, "cocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 152
    const/4 v5, 0x0

    .line 168
    :goto_0
    return v5

    .line 154
    :cond_0
    iget-object v5, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 155
    :goto_1
    iget-object v5, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 156
    iget-object v5, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "cocktailName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;

    .line 158
    .local v4, "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    if-eqz v4, :cond_1

    .line 159
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 161
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 164
    .end local v2    # "cocktailName":Ljava/lang/String;
    .end local v4    # "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    :cond_2
    if-eqz v0, :cond_3

    .line 165
    invoke-virtual {p0, v1}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->setEnabledCocktailsLocked(Ljava/util/ArrayList;)V

    .line 167
    :cond_3
    iput-object v1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    .line 168
    const/4 v5, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getChangedCocktailIdsListLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "addedCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "removedCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    .line 200
    .local v0, "backupEnabledCocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v1, "cocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->getEnabledCocktailsStr()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsStrCache:Ljava/lang/String;

    .line 202
    iget-object v6, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsStrCache:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 203
    iget-object v6, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    iget-object v7, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsStrCache:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 204
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v6}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 205
    iget-object v6, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v6}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "cocktailName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;

    .line 207
    .local v4, "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    if-eqz v4, :cond_0

    .line 208
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 210
    iget v6, v4, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;->cocktailId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    .end local v2    # "cocktailName":Ljava/lang/String;
    .end local v4    # "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 216
    .local v5, "oldCocktailName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;

    .line 217
    .restart local v4    # "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    if-eqz v4, :cond_2

    .line 218
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 219
    iget v6, v4, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;->cocktailId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 223
    .end local v4    # "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    .end local v5    # "oldCocktailName":Ljava/lang/String;
    :cond_3
    iput-object v1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    .line 224
    return-void
.end method

.method public getEnableCocktailIds()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v1, "enabledCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    .line 112
    .local v0, "cocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 113
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;

    .line 114
    .local v3, "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    if-eqz v3, :cond_0

    .line 115
    iget v5, v3, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;->cocktailId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    .end local v3    # "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getEnabledCocktailsStr()Ljava/lang/String;
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "cocktail_bar_enabled_cocktails"

    iget v2, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCurrentUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsStrCache:Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getEnabledCocktailsStr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsStrCache:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsStrCache:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabledCocktail(I)Z
    .locals 6
    .param p1, "cocktailId"    # I

    .prologue
    .line 172
    iget-object v5, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    .line 174
    .local v0, "cocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 175
    .local v3, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;

    .line 176
    .local v2, "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    iget v4, v2, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;->cocktailId:I

    if-ne v4, p1, :cond_0

    .line 177
    const/4 v4, 0x1

    monitor-exit v5

    .line 180
    .end local v2    # "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    .end local v3    # "str":Ljava/lang/String;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_0

    .line 181
    .end local v0    # "cocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public isEnabledCocktail(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 185
    iget-object v5, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    .line 187
    .local v0, "cocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 188
    .local v3, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;

    .line 189
    .local v2, "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    iget-object v4, v2, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 190
    const/4 v4, 0x1

    monitor-exit v5

    .line 193
    .end local v2    # "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    .end local v3    # "str":Ljava/lang/String;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_0

    .line 194
    .end local v0    # "cocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setCurrentUserId(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCurrentUserId:I

    .line 83
    return-void
.end method

.method public setEnabledCocktailsLocked(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "cocktails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 87
    .local v0, "N":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 89
    if-lez v2, :cond_0

    .line 90
    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->putEnabledCocktailsStr(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public updateInstalledCocktails(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "cocktailArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->initCocktailMap(Landroid/util/SparseArray;)V

    .line 78
    invoke-direct {p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->updateEnabledCocktailList()V

    .line 79
    return-void
.end method

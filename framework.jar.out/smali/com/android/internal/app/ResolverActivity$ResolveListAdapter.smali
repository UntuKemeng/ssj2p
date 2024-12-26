.class Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResolveListAdapter"
.end annotation


# instance fields
.field private final mBaseResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterLastUsed:Z

.field private mHasExtendedInfo:Z

.field protected final mInflater:Landroid/view/LayoutInflater;

.field private final mInitialIntents:[Landroid/content/Intent;

.field private final mIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mLastChosen:Landroid/content/pm/ResolveInfo;

.field private mLastChosenPosition:I

.field private final mLaunchedFromPackage:Ljava/lang/String;

.field private final mLaunchedFromUid:I

.field mOrigResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ILjava/lang/String;Z)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "launchedFromUid"    # I
    .param p7, "launchedFromPackage"    # Ljava/lang/String;
    .param p8, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1760
    .local p3, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1752
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    .line 1761
    iput-object p7, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLaunchedFromPackage:Ljava/lang/String;

    .line 1762
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntents:Ljava/util/List;

    .line 1763
    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    .line 1764
    iput-object p5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    .line 1765
    iput p6, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLaunchedFromUid:I

    .line 1766
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1767
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    .line 1768
    iput-boolean p8, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    .line 1769
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->rebuildList()V

    .line 1770
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "launchedFromUid"    # I
    .param p7, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 1776
    .local p3, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1752
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    .line 1777
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLaunchedFromPackage:Ljava/lang/String;

    .line 1778
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntents:Ljava/util/List;

    .line 1779
    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    .line 1780
    iput-object p5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    .line 1781
    iput p6, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLaunchedFromUid:I

    .line 1782
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1783
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    .line 1784
    iput-boolean p7, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    .line 1785
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->rebuildList()V

    .line 1786
    return-void
.end method

.method private addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .locals 2
    .param p1, "dri"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    .line 2260
    # getter for: Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->access$1600(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-nez v0, :cond_0

    .line 2271
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 2276
    :goto_0
    return-void

    .line 2274
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 11
    .param p1, "rci"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .param p2, "extraInfo"    # Ljava/lang/CharSequence;
    .param p3, "roLabel"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 2222
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getCount()I

    move-result v9

    .line 2223
    .local v9, "count":I
    invoke-virtual {p1, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v2

    .line 2224
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 2225
    .local v3, "add":Landroid/content/pm/ResolveInfo;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v4, v2}, Lcom/android/internal/app/ResolverActivity;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v6

    .line 2226
    .local v6, "replaceIntent":Landroid/content/Intent;
    new-instance v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 2228
    .local v0, "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    .line 2229
    if-ne v6, v2, :cond_0

    .line 2232
    const/4 v10, 0x1

    .local v10, "i":I
    move v7, v9

    .local v7, "N":I
    :goto_0
    if-ge v10, v7, :cond_0

    .line 2233
    invoke-virtual {p1, v10}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v8

    .line 2234
    .local v8, "altIntent":Landroid/content/Intent;
    invoke-virtual {v0, v8}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->addAlternateSourceIntent(Landroid/content/Intent;)V

    .line 2232
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2237
    .end local v7    # "N":I
    .end local v8    # "altIntent":Landroid/content/Intent;
    .end local v10    # "i":I
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->updateLastChosenPosition(Landroid/content/pm/ResolveInfo;)V

    .line 2238
    return-void
.end method

.method private addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V
    .locals 11
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2134
    .local p1, "into":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    .local p3, "from":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    .line 2135
    .local v1, "fromCount":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 2136
    .local v3, "intoCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 2137
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 2138
    .local v5, "newInfo":Landroid/content/pm/ResolveInfo;
    const/4 v0, 0x0

    .line 2140
    .local v0, "found":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 2141
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 2142
    .local v6, "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-direct {p0, v5, v6}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2143
    const/4 v0, 0x1

    .line 2144
    invoke-virtual {v6, p2, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->add(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    .line 2148
    .end local v6    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_0
    if-nez v0, :cond_1

    .line 2149
    new-instance v7, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v8, p2, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;-><init>(Landroid/content/ComponentName;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2136
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2140
    .restart local v6    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2154
    .end local v0    # "found":Z
    .end local v4    # "j":I
    .end local v5    # "newInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_3
    return-void
.end method

.method private isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z
    .locals 3
    .param p1, "a"    # Landroid/content/pm/ResolveInfo;
    .param p2, "b"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .prologue
    .line 2157
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2158
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onBindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 2380
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;

    .line 2381
    .local v1, "holder":Lcom/android/internal/app/ResolverActivity$ViewHolder;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105029c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    # setter for: Lcom/android/internal/app/ResolverActivity;->defaultTextSize:F
    invoke-static {v3, v4}, Lcom/android/internal/app/ResolverActivity;->access$1702(Lcom/android/internal/app/ResolverActivity;F)F

    .line 2383
    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v2

    .line 2384
    .local v2, "label":Ljava/lang/CharSequence;
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2385
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->defaultTextSize:F
    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->access$1700(Lcom/android/internal/app/ResolverActivity;)F

    move-result v4

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # invokes: Lcom/android/internal/app/ResolverActivity;->getFontScale()F
    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->access$1800(Lcom/android/internal/app/ResolverActivity;)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {v3, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2386
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2389
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mShowExtended:Z
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$1500(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2390
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105029d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    # setter for: Lcom/android/internal/app/ResolverActivity;->defaultTextSize:F
    invoke-static {v3, v4}, Lcom/android/internal/app/ResolverActivity;->access$1702(Lcom/android/internal/app/ResolverActivity;F)F

    .line 2392
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2393
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2404
    :goto_0
    instance-of v3, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v3, :cond_3

    move-object v3, p2

    check-cast v3, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2406
    new-instance v4, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object v3, p2

    check-cast v3, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v6, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-direct {v4, v5, v3, v6}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/widget/ImageView;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v7, [Ljava/lang/Void;

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2411
    :goto_1
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 2412
    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getBadgeIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2413
    .local v0, "badge":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 2414
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2415
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getBadgeContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2416
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2421
    .end local v0    # "badge":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_2
    return-void

    .line 2395
    :cond_2
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2408
    :cond_3
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 2418
    .restart local v0    # "badge":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method private processGroup(Ljava/util/List;IILcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;)V
    .locals 17
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "ro"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .param p5, "roLabel"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;II",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2173
    .local p1, "rList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    sub-int v15, p3, p2

    add-int/lit8 v11, v15, 0x1

    .line 2174
    .local v11, "num":I
    const/4 v15, 0x1

    if-ne v11, v15, :cond_1

    .line 2176
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v15, v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 2218
    :cond_0
    return-void

    .line 2178
    :cond_1
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mHasExtendedInfo:Z

    .line 2179
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    const/16 v16, 0x1

    # setter for: Lcom/android/internal/app/ResolverActivity;->mShowExtended:Z
    invoke-static/range {v15 .. v16}, Lcom/android/internal/app/ResolverActivity;->access$1502(Lcom/android/internal/app/ResolverActivity;Z)Z

    .line 2180
    const/4 v14, 0x0

    .line 2181
    .local v14, "usePkg":Z
    const/4 v15, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    iget-object v15, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2182
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v15}, Lcom/android/internal/app/ResolverActivity;->access$300(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 2183
    .local v13, "startApp":Ljava/lang/CharSequence;
    if-nez v13, :cond_2

    .line 2184
    const/4 v14, 0x1

    .line 2186
    :cond_2
    if-nez v14, :cond_5

    .line 2188
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 2190
    .local v5, "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v5, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2191
    add-int/lit8 v7, p2, 0x1

    .local v7, "j":I
    :goto_0
    move/from16 v0, p3

    if-gt v7, v0, :cond_4

    .line 2192
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    .line 2193
    .local v9, "jRi":Landroid/content/pm/ResolveInfo;
    iget-object v15, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/app/ResolverActivity;->access$300(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 2194
    .local v8, "jApp":Ljava/lang/CharSequence;
    if-eqz v8, :cond_3

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 2195
    :cond_3
    const/4 v14, 0x1

    .line 2202
    .end local v8    # "jApp":Ljava/lang/CharSequence;
    .end local v9    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 2204
    .end local v5    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v7    # "j":I
    :cond_5
    move/from16 v10, p2

    .local v10, "k":I
    :goto_1
    move/from16 v0, p3

    if-gt v10, v0, :cond_0

    .line 2205
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 2206
    .local v12, "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 2208
    .local v3, "add":Landroid/content/pm/ResolveInfo;
    if-eqz v14, :cond_7

    .line 2210
    iget-object v15, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2215
    .local v6, "extraInfo":Ljava/lang/CharSequence;
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v12, v6, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 2204
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2198
    .end local v3    # "add":Landroid/content/pm/ResolveInfo;
    .end local v6    # "extraInfo":Ljava/lang/CharSequence;
    .end local v10    # "k":I
    .end local v12    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .restart local v5    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .restart local v7    # "j":I
    .restart local v8    # "jApp":Ljava/lang/CharSequence;
    .restart local v9    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_6
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2191
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2213
    .end local v5    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v7    # "j":I
    .end local v8    # "jApp":Ljava/lang/CharSequence;
    .end local v9    # "jRi":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "add":Landroid/content/pm/ResolveInfo;
    .restart local v10    # "k":I
    .restart local v12    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_7
    iget-object v15, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/app/ResolverActivity;->access$300(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .restart local v6    # "extraInfo":Ljava/lang/CharSequence;
    goto :goto_2
.end method

.method private rebuildList()V
    .locals 40

    .prologue
    .line 1848
    const/4 v15, 0x0

    .line 1851
    .local v15, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v27

    .line 1852
    .local v27, "primaryIntent":Landroid/content/Intent;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/high16 v7, 0x10000

    move-object/from16 v0, v27

    invoke-interface {v3, v0, v4, v7}, Landroid/content/pm/IPackageManager;->getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1860
    .end local v27    # "primaryIntent":Landroid/content/Intent;
    :goto_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 1861
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1862
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 1863
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 1864
    .restart local v15    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V

    .line 1941
    :cond_0
    if-eqz v15, :cond_24

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v13

    .local v13, "N":I
    if-lez v13, :cond_24

    .line 1950
    add-int/lit8 v3, v13, -0x1

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1951
    .local v32, "riToGetUser":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    move/from16 v36, v13

    .line 1952
    .local v36, "to":I
    move/from16 v18, v13

    .line 1953
    .local v18, "from":I
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v25

    .line 1955
    .local v25, "lastUserId":I
    move/from16 v35, v13

    .line 1957
    .local v35, "size":I
    add-int/lit8 v23, v35, -0x1

    .local v23, "j":I
    :goto_1
    if-ltz v23, :cond_17

    .line 1959
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # invokes: Lcom/android/internal/app/ResolverActivity;->isForKnoxNFC()Z
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$1300(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1961
    move/from16 v0, v23

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    .end local v32    # "riToGetUser":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    check-cast v32, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1962
    .restart local v32    # "riToGetUser":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    .line 1963
    .local v16, "currentUserId":I
    move/from16 v0, v25

    move/from16 v1, v16

    if-ne v0, v1, :cond_e

    if-lez v23, :cond_e

    .line 1957
    .end local v16    # "currentUserId":I
    :cond_1
    add-int/lit8 v23, v23, -0x1

    goto :goto_1

    .line 1855
    .end local v13    # "N":I
    .end local v18    # "from":I
    .end local v23    # "j":I
    .end local v25    # "lastUserId":I
    .end local v32    # "riToGetUser":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v35    # "size":I
    .end local v36    # "to":I
    :catch_0
    move-exception v30

    .line 1856
    .local v30, "re":Landroid/os/RemoteException;
    const-string v3, "ResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error calling setLastChosenActivity\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1866
    .end local v30    # "re":Landroid/os/RemoteException;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->shouldGetResolvedFilter()Z

    move-result v34

    .line 1867
    .local v34, "shouldGetResolvedFilter":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->shouldGetActivityMetadata()Z

    move-result v33

    .line 1868
    .local v33, "shouldGetActivityMetadata":Z
    const/16 v20, 0x0

    .local v20, "i":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    .restart local v13    # "N":I
    :goto_2
    move/from16 v0, v20

    if-ge v0, v13, :cond_b

    .line 1869
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntents:Ljava/util/List;

    move/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/Intent;

    .line 1872
    .local v22, "intent":Landroid/content/Intent;
    :try_start_1
    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    const-string v4, "DocumentsUIPolicy"

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 1874
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    const/4 v4, 0x1

    # setter for: Lcom/android/internal/app/ResolverActivity;->mDropsDocumentsUI:Z
    invoke-static {v3, v4}, Lcom/android/internal/app/ResolverActivity;->access$1102(Lcom/android/internal/app/ResolverActivity;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1880
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$300(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v7, 0x10000

    if-eqz v34, :cond_7

    const/16 v3, 0x40

    :goto_4
    or-int/2addr v7, v3

    if-eqz v33, :cond_8

    const/16 v3, 0x80

    :goto_5
    or-int/2addr v3, v7

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v21

    .line 1884
    .local v21, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v21, :cond_a

    .line 1885
    if-nez v15, :cond_4

    .line 1886
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 1888
    .restart local v15    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-direct {v0, v15, v1, v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V

    .line 1891
    if-nez v20, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mDropComponents:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$1200(Lcom/android/internal/app/ResolverActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_a

    .line 1892
    const/16 v23, 0x0

    .restart local v23    # "j":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mDropComponents:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$1200(Lcom/android/internal/app/ResolverActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v23

    if-ge v0, v3, :cond_a

    .line 1893
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v24, v3, -0x1

    .local v24, "k":I
    :goto_7
    if-ltz v24, :cond_6

    .line 1894
    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v14, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1896
    .local v14, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v4, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mDropComponents:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$1200(Lcom/android/internal/app/ResolverActivity;)Ljava/util/ArrayList;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v4, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mDropComponents:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$1200(Lcom/android/internal/app/ResolverActivity;)Ljava/util/ArrayList;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1898
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    if-ne v3, v15, :cond_5

    .line 1899
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 1902
    :cond_5
    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1892
    .end local v14    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_6
    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    .line 1876
    .end local v21    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v23    # "j":I
    .end local v24    # "k":I
    :catch_1
    move-exception v17

    .line 1877
    .local v17, "e":Ljava/lang/Exception;
    const-string v3, "ResolverActivity"

    const-string v4, "Exception occures while getting values from current intent !"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1880
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 1893
    .restart local v14    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v21    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v23    # "j":I
    .restart local v24    # "k":I
    :cond_9
    add-int/lit8 v24, v24, -0x1

    goto :goto_7

    .line 1868
    .end local v14    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v23    # "j":I
    .end local v24    # "k":I
    :cond_a
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_2

    .line 1917
    .end local v21    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v22    # "intent":Landroid/content/Intent;
    :cond_b
    if-eqz v15, :cond_0

    .line 1918
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v20, v3, -0x1

    :goto_8
    if-ltz v20, :cond_0

    .line 1919
    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v14, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1921
    .restart local v14    # "ai":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v3

    iget-object v4, v14, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLaunchedFromPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLaunchedFromUid:I

    iget-object v7, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-boolean v9, v14, Landroid/content/pm/ActivityInfo;->exported:Z

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Landroid/app/ActivityManager;->checkComponentPermission(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ZZ)I

    move-result v19

    .line 1930
    .local v19, "granted":I
    if-eqz v19, :cond_d

    .line 1932
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    if-ne v3, v15, :cond_c

    .line 1933
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 1935
    :cond_c
    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1918
    :cond_d
    add-int/lit8 v20, v20, -0x1

    goto :goto_8

    .line 1968
    .end local v14    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v19    # "granted":I
    .end local v20    # "i":I
    .end local v33    # "shouldGetActivityMetadata":Z
    .end local v34    # "shouldGetResolvedFilter":Z
    .restart local v16    # "currentUserId":I
    .restart local v18    # "from":I
    .restart local v23    # "j":I
    .restart local v25    # "lastUserId":I
    .restart local v32    # "riToGetUser":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .restart local v35    # "size":I
    .restart local v36    # "to":I
    :cond_e
    move/from16 v36, v18

    .line 1969
    if-eqz v23, :cond_10

    .line 1970
    add-int/lit8 v18, v23, 0x1

    .line 1977
    :goto_9
    move/from16 v25, v16

    .line 1978
    move/from16 v13, v36

    .line 1989
    .end local v16    # "currentUserId":I
    :goto_a
    move/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1990
    .local v11, "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v28

    .line 1991
    .local v28, "r0":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v20, v18, 0x1

    .restart local v20    # "i":I
    :goto_b
    move/from16 v0, v20

    if-ge v0, v13, :cond_1

    .line 1992
    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 2000
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # invokes: Lcom/android/internal/app/ResolverActivity;->isForKnoxNFC()Z
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$1300(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_13

    .line 2001
    const-string v3, "ResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bypassing default and priority check for NFC "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    :cond_f
    :goto_c
    add-int/lit8 v20, v20, 0x1

    goto :goto_b

    .line 1971
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v11    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v20    # "i":I
    .end local v28    # "r0":Landroid/content/pm/ResolveInfo;
    .restart local v16    # "currentUserId":I
    :cond_10
    if-nez v23, :cond_11

    move/from16 v0, v25

    move/from16 v1, v16

    if-eq v0, v1, :cond_11

    .line 1972
    add-int/lit8 v23, v23, 0x1

    .line 1973
    move/from16 v18, v23

    goto :goto_9

    .line 1975
    :cond_11
    move/from16 v18, v23

    goto :goto_9

    .line 1982
    .end local v16    # "currentUserId":I
    :cond_12
    const/16 v18, 0x0

    .line 1983
    const/16 v23, -0x1

    goto :goto_a

    .line 2005
    .restart local v6    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .restart local v20    # "i":I
    .restart local v28    # "r0":Landroid/content/pm/ResolveInfo;
    :cond_13
    move-object/from16 v0, v28

    iget v3, v0, Landroid/content/pm/ResolveInfo;->priority:I

    iget v4, v6, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v3, v4, :cond_14

    move-object/from16 v0, v28

    iget-boolean v3, v0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v4, v6, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v3, v4, :cond_f

    .line 2007
    :cond_14
    :goto_d
    move/from16 v0, v20

    if-ge v0, v13, :cond_f

    .line 2008
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    if-ne v3, v15, :cond_15

    .line 2009
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 2013
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$1400(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v3

    if-eqz v3, :cond_16

    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".documentsui"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mDropsDocumentsUI:Z
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$1100(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2016
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2017
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2018
    add-int/lit8 v13, v13, -0x1

    .line 2019
    move/from16 v20, v13

    .line 2020
    goto :goto_c

    .line 2022
    :cond_16
    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2023
    add-int/lit8 v13, v13, -0x1

    goto :goto_d

    .line 2032
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v11    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v20    # "i":I
    .end local v28    # "r0":Landroid/content/pm/ResolveInfo;
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # invokes: Lcom/android/internal/app/ResolverActivity;->isForKnoxNFC()Z
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$1300(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2034
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v13

    .line 2037
    :cond_18
    const/4 v3, 0x1

    if-le v13, v3, :cond_19

    .line 2039
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$1000(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverComparator;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/android/internal/app/ResolverComparator;->compute(Ljava/util/List;)V

    .line 2040
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$1000(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverComparator;

    move-result-object v3

    invoke-static {v15, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2046
    :cond_19
    :goto_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    if-eqz v3, :cond_1e

    .line 2047
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    array-length v3, v3

    move/from16 v0, v20

    if-ge v0, v3, :cond_1e

    .line 2048
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    aget-object v5, v3, v20

    .line 2049
    .local v5, "ii":Landroid/content/Intent;
    if-nez v5, :cond_1a

    .line 2047
    :goto_10
    add-int/lit8 v20, v20, 0x1

    goto :goto_f

    .line 2041
    .end local v5    # "ii":Landroid/content/Intent;
    .end local v20    # "i":I
    :catch_2
    move-exception v17

    .line 2042
    .restart local v17    # "e":Ljava/lang/Exception;
    const-string v3, "ResolverActivity"

    const-string v4, "Exception occures during sorting app list !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 2052
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v5    # "ii":Landroid/content/Intent;
    .restart local v20    # "i":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v14

    .line 2054
    .restart local v14    # "ai":Landroid/content/pm/ActivityInfo;
    if-nez v14, :cond_1b

    .line 2055
    const-string v3, "ResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No activity found for "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 2059
    :cond_1b
    new-instance v6, Landroid/content/pm/ResolveInfo;

    invoke-direct {v6}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 2060
    .restart local v6    # "ri":Landroid/content/pm/ResolveInfo;
    iput-object v14, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2061
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    const-string/jumbo v4, "user"

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/os/UserManager;

    .line 2063
    .local v39, "userManager":Landroid/os/UserManager;
    instance-of v3, v5, Landroid/content/pm/LabeledIntent;

    if-eqz v3, :cond_1c

    move-object/from16 v26, v5

    .line 2064
    check-cast v26, Landroid/content/pm/LabeledIntent;

    .line 2065
    .local v26, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 2066
    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v3

    iput v3, v6, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 2067
    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v6, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2068
    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v3

    iput v3, v6, Landroid/content/pm/ResolveInfo;->icon:I

    .line 2069
    iget v3, v6, Landroid/content/pm/ResolveInfo;->icon:I

    iput v3, v6, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 2071
    .end local v26    # "li":Landroid/content/pm/LabeledIntent;
    :cond_1c
    invoke-virtual/range {v39 .. v39}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2072
    const/4 v3, 0x1

    iput-boolean v3, v6, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    .line 2073
    const/4 v3, 0x0

    iput v3, v6, Landroid/content/pm/ResolveInfo;->icon:I

    .line 2075
    :cond_1d
    new-instance v3, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v7}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v8, 0x0

    move-object v9, v5

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    goto/16 :goto_10

    .line 2082
    .end local v5    # "ii":Landroid/content/Intent;
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v14    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v20    # "i":I
    .end local v39    # "userManager":Landroid/os/UserManager;
    :cond_1e
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 2083
    .restart local v11    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v28

    .line 2084
    .restart local v28    # "r0":Landroid/content/pm/ResolveInfo;
    const/4 v9, 0x0

    .line 2085
    .local v9, "start":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$300(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 2086
    .local v12, "r0Label":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mHasExtendedInfo:Z

    .line 2087
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    const/4 v4, 0x0

    # setter for: Lcom/android/internal/app/ResolverActivity;->mShowExtended:Z
    invoke-static {v3, v4}, Lcom/android/internal/app/ResolverActivity;->access$1502(Lcom/android/internal/app/ResolverActivity;Z)Z

    .line 2088
    const/16 v20, 0x1

    .restart local v20    # "i":I
    :goto_11
    move/from16 v0, v20

    if-ge v0, v13, :cond_23

    .line 2089
    if-nez v12, :cond_1f

    .line 2090
    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2092
    :cond_1f
    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 2093
    .local v29, "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 2094
    .restart local v6    # "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$300(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v31

    .line 2095
    .local v31, "riLabel":Ljava/lang/CharSequence;
    if-nez v31, :cond_20

    .line 2096
    iget-object v3, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 2098
    :cond_20
    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2100
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # invokes: Lcom/android/internal/app/ResolverActivity;->isForKnoxNFC()Z
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$1300(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 2101
    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v37

    .line 2102
    .local v37, "u0":I
    iget-object v3, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v38

    .line 2103
    .local v38, "ui":I
    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_22

    .line 2104
    const-string v3, "ResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking uid for NFC "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " and "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    .end local v37    # "u0":I
    .end local v38    # "ui":I
    :cond_21
    :goto_12
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_11

    .line 2112
    :cond_22
    add-int/lit8 v10, v20, -0x1

    move-object/from16 v7, p0

    move-object v8, v15

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;)V

    .line 2113
    move-object/from16 v11, v29

    .line 2114
    move-object/from16 v28, v6

    .line 2115
    move-object/from16 v12, v31

    .line 2116
    move/from16 v9, v20

    goto :goto_12

    .line 2119
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v29    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v31    # "riLabel":Ljava/lang/CharSequence;
    :cond_23
    add-int/lit8 v10, v13, -0x1

    move-object/from16 v7, p0

    move-object v8, v15

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;)V

    .line 2124
    .end local v9    # "start":I
    .end local v11    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v12    # "r0Label":Ljava/lang/CharSequence;
    .end local v13    # "N":I
    .end local v18    # "from":I
    .end local v20    # "i":I
    .end local v23    # "j":I
    .end local v25    # "lastUserId":I
    .end local v28    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v32    # "riToGetUser":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v35    # "size":I
    .end local v36    # "to":I
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v3, :cond_25

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v3, :cond_25

    .line 2125
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    .line 2126
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    .line 2129
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->onListRebuilt()V

    .line 2130
    return-void
.end method

.method private updateLastChosenPosition(Landroid/content/pm/ResolveInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 2241
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2246
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # invokes: Lcom/android/internal/app/ResolverActivity;->isForKnoxNFC()Z
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$1300(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2247
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2249
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    .line 2250
    const-string v0, "ResolverActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processGroup set last chosen to NFC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    :cond_0
    :goto_0
    return-void

    .line 2254
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    goto :goto_0
.end method


# virtual methods
.method public final bindView(ILandroid/view/View;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 2376
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->onBindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 2377
    return-void
.end method

.method public final createView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 2354
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2355
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2356
    .local v0, "holder":Lcom/android/internal/app/ResolverActivity$ViewHolder;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2357
    return-object v1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 2292
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 2293
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mSupportGridResolver:Z
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$700(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v1, :cond_0

    .line 2294
    add-int/lit8 v0, v0, -0x1

    .line 2296
    :cond_0
    return v0
.end method

.method public getDisplayInfoAt(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2308
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0
.end method

.method public getDisplayInfoCount()I
    .locals 1

    .prologue
    .line 2304
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getDisplayResolveInfo(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2341
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0
.end method

.method protected getDisplayResolveInfoCount()I
    .locals 1

    .prologue
    .line 2336
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 2

    .prologue
    .line 1821
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    .line 1823
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    iget v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 1825
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilteredPosition()I
    .locals 1

    .prologue
    .line 1833
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    .line 1834
    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    .line 1836
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2312
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mSupportGridResolver:Z
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$700(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-lt p1, v0, :cond_0

    .line 2313
    add-int/lit8 p1, p1, 0x1

    .line 2315
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 1738
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 2319
    int-to-long v0, p1

    return-wide v0
.end method

.method public getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1

    .prologue
    .line 1829
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0
.end method

.method public getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F
    .locals 2
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$1000(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverComparator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverComparator;->getScore(Landroid/content/ComponentName;)F

    move-result v0

    return v0
.end method

.method public getUnfilteredCount()I
    .locals 1

    .prologue
    .line 2300
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 2345
    move-object v0, p2

    .line 2346
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 2347
    invoke-virtual {p0, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2349
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->onBindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 2350
    return-object v0
.end method

.method public handlePackagesChanged()V
    .locals 7

    .prologue
    .line 1790
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v2

    .line 1791
    .local v2, "oldItemCount":I
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "current_sec_appicon_theme_package"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/ResolverActivity;->mAppIconTheme:Ljava/lang/String;

    .line 1793
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->rebuildList()V

    .line 1796
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mSquicleUX:Z
    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->access$400(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v3

    .line 1797
    .local v3, "oldSquicleState":Z
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v1

    .line 1798
    .local v1, "newItemCount":I
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity;->checkSquicleUXRequired()Z

    move-result v5

    # setter for: Lcom/android/internal/app/ResolverActivity;->mSquicleUX:Z
    invoke-static {v4, v5}, Lcom/android/internal/app/ResolverActivity;->access$402(Lcom/android/internal/app/ResolverActivity;Z)Z

    .line 1799
    if-ne v2, v1, :cond_0

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mSquicleUX:Z
    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->access$400(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1800
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->notifyDataSetChanged()V

    .line 1801
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mSupportPageMode:Z
    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->access$500(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mViewPager:Lcom/android/internal/widget/ViewPager;
    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->access$600(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/widget/ViewPager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1802
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/app/ResolverActivity;->updatePagerAdapter(I)V

    .line 1807
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 1809
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1812
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mSupportGridResolver:Z
    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->access$700(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1813
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;
    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->access$800(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/AbsListView;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/GridView;

    if-eqz v4, :cond_3

    .line 1814
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->access$000(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    .line 1815
    .local v0, "itemCount":I
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;
    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->access$800(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/AbsListView;

    move-result-object v4

    check-cast v4, Landroid/widget/GridView;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I
    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->access$900(Lcom/android/internal/app/ResolverActivity;)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 1818
    .end local v0    # "itemCount":I
    :cond_3
    return-void
.end method

.method public hasExtendedInfo()Z
    .locals 1

    .prologue
    .line 2323
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mHasExtendedInfo:Z

    return v0
.end method

.method public hasFilteredItem()Z
    .locals 1

    .prologue
    .line 1840
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResolvedTarget(Landroid/content/pm/ResolveInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 2327
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2328
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/internal/app/ResolverActivity;->resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2329
    const/4 v2, 0x1

    .line 2332
    :goto_1
    return v2

    .line 2327
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2332
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 2362
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$1400(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2363
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x109014b

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2366
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x10900e1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onListRebuilt()V
    .locals 0

    .prologue
    .line 2164
    return-void
.end method

.method public resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .prologue
    .line 2279
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mSupportGridResolver:Z
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$700(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2280
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 2282
    :goto_0
    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    goto :goto_1
.end method

.method public shouldGetResolvedFilter()Z
    .locals 1

    .prologue
    .line 2167
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    return v0
.end method

.method public showsExtendedInfo(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    .line 2372
    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 1
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .prologue
    .line 2288
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    goto :goto_0
.end method

.class public Lcom/android/internal/app/ChooserActivity;
.super Lcom/android/internal/app/ResolverActivity;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserActivity$SplitPanelItemClickListener;,
        Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;,
        Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;,
        Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;,
        Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;,
        Lcom/android/internal/app/ChooserActivity$RowViewHolder;,
        Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;,
        Lcom/android/internal/app/ChooserActivity$RowScale;,
        Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;,
        Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;,
        Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
    }
.end annotation


# static fields
.field private static final CHOOSER_TARGET_SERVICE_RESULT:I = 0x1

.field private static final CHOOSER_TARGET_SERVICE_WATCHDOG_TIMEOUT:I = 0x2

.field private static final DEBUG:Z = false

.field private static final EXTRA_CHOOSER_DROPLIST:Ljava/lang/String; = "extra_chooser_droplist"

.field private static final OTHER_TARGET_PANEL_INDEX:I = 0x1

.field private static final PANEL_KEY:Ljava/lang/String; = "panelkey_%1$d_%2$d"

.field private static final QUERY_TARGET_SERVICE_LIMIT:I = 0x5

.field private static final SERVICE_TARGET_PANEL_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ChooserActivity"

.field private static final WATCHDOG_TIMEOUT_MILLIS:I = 0x1388


# instance fields
.field private final mChooserHandler:Landroid/os/Handler;

.field private mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

.field private mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

.field private mChosenComponentSender:Landroid/content/IntentSender;

.field private mOtherTargetListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOtherTargetView:Landroid/widget/AbsListView;

.field private mReferrerFillInIntent:Landroid/content/Intent;

.field private mRefinementIntentSender:Landroid/content/IntentSender;

.field private mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

.field private mReplacementExtras:Landroid/os/Bundle;

.field private mSShareChooserAdapterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceTargetListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceTargetView:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;-><init>()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mServiceTargetListMap:Ljava/util/Map;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mOtherTargetListMap:Ljava/util/Map;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mSShareChooserAdapterList:Ljava/util/List;

    .line 123
    new-instance v0, Lcom/android/internal/app/ChooserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ChooserActivity$1;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Landroid/os/Handler;

    .line 1868
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ChooserActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ChooserActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ChooserActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/app/ChooserActivity;Landroid/widget/AdapterView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ChooserActivity;
    .param p1, "x1"    # Landroid/widget/AdapterView;
    .param p2, "x2"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity;->convertSplitPanelPosition(Landroid/widget/AdapterView;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/ChooserActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ChooserActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/ChooserActivity;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ChooserActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mReferrerFillInIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/ChooserActivity;)Landroid/widget/AbsListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ChooserActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mServiceTargetView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method private convertServiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 554
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    const/4 v0, 0x0

    .line 568
    :goto_0
    return-object v0

    .line 559
    :cond_0
    const-string v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "fullName":Ljava/lang/String;
    goto :goto_0

    .line 562
    .end local v0    # "fullName":Ljava/lang/String;
    :cond_1
    const/16 v1, 0x2e

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 564
    move-object v0, p2

    .restart local v0    # "fullName":Ljava/lang/String;
    goto :goto_0

    .line 566
    .end local v0    # "fullName":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "fullName":Ljava/lang/String;
    goto :goto_0
.end method

.method private convertSplitPanelPosition(Landroid/widget/AdapterView;I)I
    .locals 7
    .param p1, "view"    # Landroid/widget/AdapterView;
    .param p2, "pos"    # I

    .prologue
    .line 1845
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mSShareChooserAdapterList:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 1846
    const-string v0, ""

    .line 1850
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mServiceTargetView:Landroid/widget/AbsListView;

    if-ne p1, v3, :cond_1

    .line 1851
    const/4 v1, 0x0

    .line 1852
    .local v1, "panelIndex":I
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mServiceTargetListMap:Ljava/util/Map;

    .line 1858
    .local v2, "targetListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    const-string/jumbo v3, "panelkey_%1$d_%2$d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1859
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1860
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1865
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "panelIndex":I
    .end local v2    # "targetListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    return p2

    .line 1854
    .restart local v0    # "key":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    .line 1855
    .restart local v1    # "panelIndex":I
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mOtherTargetListMap:Ljava/util/Map;

    .restart local v2    # "targetListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_0
.end method

.method private modifyTargetIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "in"    # Landroid/content/Intent;

    .prologue
    .line 406
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 409
    :cond_0
    const/high16 v1, 0x8080000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 412
    :cond_1
    return-void
.end method


# virtual methods
.method buildUpOtherTargetAdapter()V
    .locals 15

    .prologue
    .line 1624
    iget-object v11, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v11}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v8

    .line 1625
    .local v8, "serviceTargetCount":I
    iget-object v11, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v11}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    .line 1626
    .local v0, "callerTargetCount":I
    iget-object v11, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v11}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getStandardTargetCount()I

    move-result v9

    .line 1630
    .local v9, "standardTargetCount":I
    iget-object v11, p0, Lcom/android/internal/app/ChooserActivity;->mSShareChooserAdapterList:Ljava/util/List;

    const/4 v12, 0x1

    new-instance v13, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;

    invoke-direct {v13, p0, p0}, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;)V

    invoke-interface {v11, v12, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1631
    add-int v4, v0, v9

    .line 1632
    .local v4, "nCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 1633
    const/4 v5, 0x0

    .line 1634
    .local v5, "offset":I
    move v2, v1

    .line 1637
    .local v2, "itemIndex":I
    const-string/jumbo v11, "panelkey_%1$d_%2$d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1639
    .local v3, "key":Ljava/lang/String;
    if-ge v1, v0, :cond_1

    .line 1640
    const/4 v5, 0x0

    .line 1645
    :goto_1
    add-int v6, v1, v5

    .line 1646
    .local v6, "origPosition":I
    iget-object v11, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v11, v6}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v10

    .line 1648
    .local v10, "targetInfo":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    iget-object v11, p0, Lcom/android/internal/app/ChooserActivity;->mSShareChooserAdapterList:Ljava/util/List;

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;

    .line 1649
    .local v7, "pageAdapter":Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;
    if-eqz v7, :cond_0

    .line 1650
    iget-object v11, v7, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mList:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1651
    iget-object v11, v7, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mKey:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1654
    :cond_0
    iget-object v11, p0, Lcom/android/internal/app/ChooserActivity;->mOtherTargetListMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1632
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1642
    .end local v6    # "origPosition":I
    .end local v7    # "pageAdapter":Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;
    .end local v10    # "targetInfo":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    :cond_1
    move v5, v8

    goto :goto_1

    .line 1656
    .end local v2    # "itemIndex":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "offset":I
    :cond_2
    return-void
.end method

.method buildUpPagerAdapter()V
    .locals 18

    .prologue
    .line 1801
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v14}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCount()I

    move-result v3

    .line 1802
    .local v3, "dataCnt":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v14}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v11

    .line 1803
    .local v11, "serviceTargetCount":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v14}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v2

    .line 1804
    .local v2, "callerTargetCount":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v14}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getStandardTargetCount()I

    move-result v12

    .line 1808
    .local v12, "standardTargetCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_4

    .line 1809
    const/4 v7, 0x0

    .line 1810
    .local v7, "offset":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getPageItemNum()I

    move-result v14

    div-int v10, v4, v14

    .line 1811
    .local v10, "pageIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getPageItemNum()I

    move-result v14

    rem-int v5, v4, v14

    .line 1813
    .local v5, "itemIndex":I
    if-nez v5, :cond_0

    .line 1814
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getPageResolverList()Ljava/util/List;

    move-result-object v14

    new-instance v15, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v15, v0, v1}, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1818
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getPagerKey()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1823
    .local v6, "key":Ljava/lang/String;
    if-ge v4, v11, :cond_2

    .line 1824
    move v7, v2

    .line 1831
    :goto_1
    add-int v8, v4, v7

    .line 1832
    .local v8, "origPosition":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v14, v8}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v13

    .line 1834
    .local v13, "targetInfo":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getPageResolverList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;

    .line 1835
    .local v9, "pageAdapter":Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;
    if-eqz v9, :cond_1

    .line 1836
    iget-object v14, v9, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mList:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1837
    iget-object v14, v9, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mKey:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1840
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getResolverListMap()Ljava/util/Map;

    move-result-object v14

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1808
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1825
    .end local v8    # "origPosition":I
    .end local v9    # "pageAdapter":Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;
    .end local v13    # "targetInfo":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    :cond_2
    add-int v14, v11, v2

    if-ge v4, v14, :cond_3

    .line 1826
    sub-int/2addr v7, v11

    goto :goto_1

    .line 1828
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 1842
    .end local v5    # "itemIndex":I
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "offset":I
    .end local v10    # "pageIndex":I
    :cond_4
    return-void
.end method

.method buildUpServiceTargetAdapter()V
    .locals 15

    .prologue
    .line 1584
    iget-object v11, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v11}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v7

    .line 1585
    .local v7, "serviceTargetCount":I
    iget-object v11, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v11}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    .line 1587
    .local v0, "callerTargetCount":I
    iget-object v11, p0, Lcom/android/internal/app/ChooserActivity;->mServiceTargetView:Landroid/widget/AbsListView;

    if-eqz v11, :cond_2

    if-lez v7, :cond_2

    .line 1588
    const v11, 0x102049c

    invoke-virtual {p0, v11}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 1589
    .local v10, "view":Landroid/view/View;
    if-eqz v10, :cond_1

    .line 1590
    const v11, 0x1020014

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1591
    .local v9, "text":Landroid/widget/TextView;
    if-eqz v9, :cond_0

    .line 1592
    const v11, 0x10408e5

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    .line 1594
    :cond_0
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1596
    .end local v9    # "text":Landroid/widget/TextView;
    :cond_1
    iget-object v11, p0, Lcom/android/internal/app/ChooserActivity;->mServiceTargetView:Landroid/widget/AbsListView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 1600
    .end local v10    # "view":Landroid/view/View;
    :cond_2
    iget-object v11, p0, Lcom/android/internal/app/ChooserActivity;->mSShareChooserAdapterList:Ljava/util/List;

    const/4 v12, 0x0

    new-instance v13, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;

    invoke-direct {v13, p0, p0}, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;)V

    invoke-interface {v11, v12, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1601
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_4

    .line 1602
    const/4 v4, 0x0

    .line 1603
    .local v4, "offset":I
    move v2, v1

    .line 1606
    .local v2, "itemIndex":I
    const-string/jumbo v11, "panelkey_%1$d_%2$d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1608
    .local v3, "key":Ljava/lang/String;
    move v4, v0

    .line 1610
    add-int v5, v1, v4

    .line 1611
    .local v5, "origPosition":I
    iget-object v11, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v11, v5}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v8

    .line 1613
    .local v8, "targetInfo":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    iget-object v11, p0, Lcom/android/internal/app/ChooserActivity;->mSShareChooserAdapterList:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;

    .line 1614
    .local v6, "pageAdapter":Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;
    if-eqz v6, :cond_3

    .line 1615
    iget-object v11, v6, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mList:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1616
    iget-object v11, v6, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mKey:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1619
    :cond_3
    iget-object v11, p0, Lcom/android/internal/app/ChooserActivity;->mServiceTargetListMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1601
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1621
    .end local v2    # "itemIndex":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "offset":I
    .end local v5    # "origPosition":I
    .end local v6    # "pageAdapter":Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;
    .end local v8    # "targetInfo":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    :cond_4
    return-void
.end method

.method buildUpSplitPagerAdapter()V
    .locals 18

    .prologue
    .line 1763
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v14}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v11

    .line 1764
    .local v11, "serviceTargetCount":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v14}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v2

    .line 1765
    .local v2, "callerTargetCount":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v14}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getStandardTargetCount()I

    move-result v12

    .line 1767
    .local v12, "standardTargetCount":I
    add-int v6, v2, v12

    .line 1769
    .local v6, "nCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_3

    .line 1770
    const/4 v7, 0x0

    .line 1771
    .local v7, "offset":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getPageItemNum()I

    move-result v14

    div-int v10, v3, v14

    .line 1772
    .local v10, "pageIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getPageItemNum()I

    move-result v14

    rem-int v4, v3, v14

    .line 1774
    .local v4, "itemIndex":I
    if-nez v4, :cond_0

    .line 1775
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getPageResolverList()Ljava/util/List;

    move-result-object v14

    new-instance v15, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v15, v0, v1}, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1779
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getPagerKey()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1781
    .local v5, "key":Ljava/lang/String;
    if-ge v3, v2, :cond_2

    .line 1782
    const/4 v7, 0x0

    .line 1787
    :goto_1
    add-int v8, v3, v7

    .line 1788
    .local v8, "origPosition":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v14, v8}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v13

    .line 1790
    .local v13, "targetInfo":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getPageResolverList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;

    .line 1791
    .local v9, "pageAdapter":Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;
    if-eqz v9, :cond_1

    .line 1792
    iget-object v14, v9, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mList:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1793
    iget-object v14, v9, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mKey:Ljava/util/List;

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1796
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getResolverListMap()Ljava/util/Map;

    move-result-object v14

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1769
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1784
    .end local v8    # "origPosition":I
    .end local v9    # "pageAdapter":Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;
    .end local v13    # "targetInfo":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    :cond_2
    move v7, v11

    goto :goto_1

    .line 1798
    .end local v4    # "itemIndex":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "offset":I
    .end local v10    # "pageIndex":I
    :cond_3
    return-void
.end method

.method checkTargetSourceIntent(Lcom/android/internal/app/ResolverActivity$TargetInfo;Landroid/content/Intent;)Z
    .locals 5
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "matchingIntent"    # Landroid/content/Intent;

    .prologue
    .line 616
    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v3

    .line 617
    .local v3, "targetIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 618
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 619
    .local v2, "targetIntent":Landroid/content/Intent;
    invoke-virtual {v2, p2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 620
    const/4 v4, 0x1

    .line 623
    .end local v2    # "targetIntent":Landroid/content/Intent;
    :goto_1
    return v4

    .line 617
    .restart local v2    # "targetIntent":Landroid/content/Intent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 623
    .end local v2    # "targetIntent":Landroid/content/Intent;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method createAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "initialIntents"    # [Landroid/content/Intent;
    .param p5, "launchedFromUid"    # I
    .param p6, "filterLastUsed"    # Z
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
            ">;IZ)",
            "Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;"
        }
    .end annotation

    .prologue
    .local p2, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p4, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v8, 0x1

    .line 660
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)V

    .line 665
    .local v0, "adapter":Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "direct_share"

    invoke-static {v1, v2, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v8, :cond_0

    .line 666
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->queryTargetServices(Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V

    .line 669
    :cond_0
    return-object v0
.end method

.method filterServiceTargets(Ljava/lang/String;Ljava/util/List;)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    const/4 v7, 0x0

    .line 627
    if-nez p2, :cond_1

    .line 654
    :cond_0
    return-void

    .line 631
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 632
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 633
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/chooser/ChooserTarget;

    .line 634
    .local v5, "target":Landroid/service/chooser/ChooserTarget;
    invoke-virtual {v5}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    .line 635
    .local v6, "targetName":Landroid/content/ComponentName;
    if-eqz p1, :cond_3

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 632
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 642
    :cond_3
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v3, v6, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 643
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-boolean v8, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v8, :cond_4

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_5

    :cond_4
    const/4 v4, 0x1

    .line 650
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .local v4, "remove":Z
    :goto_2
    if-eqz v4, :cond_2

    .line 651
    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .end local v4    # "remove":Z
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_5
    move v4, v7

    .line 643
    goto :goto_2

    .line 644
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 645
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "ChooserActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Target "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " returned by "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " component not found"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const/4 v4, 0x1

    .restart local v4    # "remove":Z
    goto :goto_2
.end method

.method getLayoutResource()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 366
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareCommon;->isDeviceDefaultTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 367
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareCommon;->getSupportPageMode()Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 368
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareCommon;->getSupportShareLinkLayout()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 369
    const v0, 0x1090101

    .line 378
    :goto_0
    return v0

    .line 371
    :cond_0
    const v0, 0x1090151

    goto :goto_0

    .line 374
    :cond_1
    const v0, 0x1090154

    goto :goto_0

    .line 378
    :cond_2
    const v0, 0x1090044

    goto :goto_0
.end method

.method public getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "defIntent"    # Landroid/content/Intent;

    .prologue
    .line 295
    move-object v1, p2

    .line 296
    .local v1, "result":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 298
    .local v0, "replExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 299
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "result":Landroid/content/Intent;
    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 300
    .restart local v1    # "result":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 303
    .end local v0    # "replExtras":Landroid/os/Bundle;
    :cond_0
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_USER_OWNER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 305
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 308
    :cond_2
    return-object v1
.end method

.method onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 8
    .param p1, "cti"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChosenComponentSender:Landroid/content/IntentSender;

    if-eqz v0, :cond_0

    .line 314
    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v7

    .line 315
    .local v7, "target":Landroid/content/ComponentName;
    if-eqz v7, :cond_0

    .line 316
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.extra.CHOSEN_COMPONENT"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v3

    .line 318
    .local v3, "fillIn":Landroid/content/Intent;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChosenComponentSender:Landroid/content/IntentSender;

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .end local v3    # "fillIn":Landroid/content/Intent;
    .end local v7    # "target":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    return-void

    .line 319
    .restart local v3    # "fillIn":Landroid/content/Intent;
    .restart local v7    # "target":Landroid/content/ComponentName;
    :catch_0
    move-exception v6

    .line 320
    .local v6, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v0, "ChooserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to launch supplied IntentSender to report the chosen component: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    .line 170
    .local v15, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v15, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    .line 171
    .local v18, "targetParcelable":Landroid/os/Parcelable;
    move-object/from16 v0, v18

    instance-of v1, v0, Landroid/content/Intent;

    if-nez v1, :cond_0

    .line 172
    const-string v1, "ChooserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Target is not an intent: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 174
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v1}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    .line 260
    :goto_0
    return-void

    :cond_0
    move-object/from16 v3, v18

    .line 177
    check-cast v3, Landroid/content/Intent;

    .line 178
    .local v3, "target":Landroid/content/Intent;
    if-eqz v3, :cond_1

    .line 179
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    .line 181
    :cond_1
    const-string v1, "android.intent.extra.ALTERNATE_INTENTS"

    invoke-virtual {v15, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v19

    .line 183
    .local v19, "targetsParcelable":[Landroid/os/Parcelable;
    if-eqz v19, :cond_8

    .line 184
    if-nez v3, :cond_2

    const/16 v16, 0x1

    .line 185
    .local v16, "offset":Z
    :goto_1
    if-eqz v16, :cond_3

    move-object/from16 v0, v19

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_2
    new-array v10, v1, [Landroid/content/Intent;

    .line 187
    .local v10, "additionalTargets":[Landroid/content/Intent;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    move-object/from16 v0, v19

    array-length v1, v0

    if-ge v13, v1, :cond_7

    .line 188
    aget-object v1, v19, v13

    instance-of v1, v1, Landroid/content/Intent;

    if-nez v1, :cond_4

    .line 189
    const-string v1, "ChooserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXTRA_ALTERNATE_INTENTS array entry #"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " is not an Intent: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v7, v19, v13

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 192
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v1}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0

    .line 184
    .end local v10    # "additionalTargets":[Landroid/content/Intent;
    .end local v13    # "i":I
    .end local v16    # "offset":Z
    :cond_2
    const/16 v16, 0x0

    goto :goto_1

    .line 185
    .restart local v16    # "offset":Z
    :cond_3
    move-object/from16 v0, v19

    array-length v1, v0

    goto :goto_2

    .line 195
    .restart local v10    # "additionalTargets":[Landroid/content/Intent;
    .restart local v13    # "i":I
    :cond_4
    aget-object v9, v19, v13

    check-cast v9, Landroid/content/Intent;

    .line 196
    .local v9, "additionalTarget":Landroid/content/Intent;
    if-nez v13, :cond_5

    if-nez v3, :cond_5

    .line 197
    move-object v3, v9

    .line 198
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    .line 187
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 200
    :cond_5
    if-eqz v16, :cond_6

    add-int/lit8 v1, v13, -0x1

    :goto_5
    aput-object v9, v10, v1

    .line 201
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    goto :goto_4

    :cond_6
    move v1, v13

    .line 200
    goto :goto_5

    .line 204
    .end local v9    # "additionalTarget":Landroid/content/Intent;
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/app/ChooserActivity;->setAdditionalTargets([Landroid/content/Intent;)V

    .line 207
    .end local v10    # "additionalTargets":[Landroid/content/Intent;
    .end local v13    # "i":I
    .end local v16    # "offset":Z
    :cond_8
    const-string v1, "android.intent.extra.REPLACEMENT_EXTRAS"

    invoke-virtual {v15, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/ChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    .line 208
    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v15, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 209
    .local v4, "title":Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 210
    .local v5, "defaultTitleRes":I
    if-nez v4, :cond_9

    .line 211
    const v5, 0x104036d

    .line 213
    :cond_9
    const-string v1, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v15, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v17

    .line 214
    .local v17, "pa":[Landroid/os/Parcelable;
    const/4 v6, 0x0

    .line 215
    .local v6, "initialIntents":[Landroid/content/Intent;
    if-eqz v17, :cond_b

    .line 216
    move-object/from16 v0, v17

    array-length v1, v0

    new-array v6, v1, [Landroid/content/Intent;

    .line 217
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_6
    move-object/from16 v0, v17

    array-length v1, v0

    if-ge v13, v1, :cond_b

    .line 218
    aget-object v1, v17, v13

    instance-of v1, v1, Landroid/content/Intent;

    if-nez v1, :cond_a

    .line 219
    const-string v1, "ChooserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Initial intent #"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " not an Intent: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v7, v17, v13

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 221
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v1}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 224
    :cond_a
    aget-object v14, v17, v13

    check-cast v14, Landroid/content/Intent;

    .line 225
    .local v14, "in":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    .line 226
    aput-object v14, v6, v13

    .line 217
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 231
    .end local v13    # "i":I
    .end local v14    # "in":Landroid/content/Intent;
    :cond_b
    const-string v1, "extra_chooser_droplist"

    invoke-virtual {v15, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 232
    .local v11, "dropComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    if-eqz v11, :cond_d

    .line 233
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_7
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v13, v1, :cond_d

    .line 234
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/content/ComponentName;

    if-nez v1, :cond_c

    .line 233
    :goto_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 238
    :cond_c
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->setDropComponent(Landroid/content/ComponentName;)V

    goto :goto_8

    .line 246
    .end local v13    # "i":I
    :cond_d
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.extra.REFERRER"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getReferrer()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/ChooserActivity;->mReferrerFillInIntent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_9
    const-string v1, "android.intent.extra.CHOSEN_COMPONENT_INTENT_SENDER"

    invoke-virtual {v15, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/ChooserActivity;->mChosenComponentSender:Landroid/content/IntentSender;

    .line 253
    const-string v1, "android.intent.extra.CHOOSER_REFINEMENT_INTENT_SENDER"

    invoke-virtual {v15, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/ChooserActivity;->mRefinementIntentSender:Landroid/content/IntentSender;

    .line 255
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->setSafeForwardingMode(Z)V

    .line 256
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-super/range {v1 .. v8}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 259
    const/16 v1, 0xd6

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 247
    :catch_0
    move-exception v12

    .line 248
    .local v12, "e":Ljava/lang/Exception;
    const-string v1, "ChooserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mReferrerFillInIntent is null!!!"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 282
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity;->onDestroy()V

    .line 283
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->unbindRemainingServices()V

    .line 290
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 291
    return-void
.end method

.method protected onPause()V
    .locals 7

    .prologue
    .line 265
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity;->onPause()V

    .line 266
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 267
    .local v2, "mContext":Landroid/content/Context;
    const-string/jumbo v5, "user"

    invoke-virtual {p0, v5}, Lcom/android/internal/app/ChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 269
    .local v4, "userManager":Landroid/os/UserManager;
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 270
    .local v1, "currUser":I
    invoke-virtual {v4, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 271
    .local v0, "currInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 272
    const-string/jumbo v5, "persona"

    invoke-virtual {p0, v5}, Lcom/android/internal/app/ChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    .line 273
    .local v3, "pm":Landroid/os/PersonaManager;
    if-eqz v3, :cond_0

    invoke-virtual {v3, v1}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v5

    sget-object v6, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v5, v6}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 277
    .end local v3    # "pm":Landroid/os/PersonaManager;
    :cond_0
    return-void
.end method

.method onPrepareAdapterView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;Z)V
    .locals 4
    .param p1, "adapterView"    # Landroid/widget/AbsListView;
    .param p2, "adapter"    # Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .param p3, "alwaysUseOption"    # Z

    .prologue
    const/4 v3, 0x1

    .line 330
    instance-of v1, p1, Landroid/widget/ListView;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/widget/ListView;

    move-object v0, v1

    .line 331
    .local v0, "listView":Landroid/widget/ListView;
    :goto_0
    check-cast p2, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .end local p2    # "adapter":Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .line 334
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v1}, Lcom/samsung/android/share/SShareCommon;->isDeviceDefaultTheme()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 335
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v1}, Lcom/samsung/android/share/SShareCommon;->getSupportPageMode()Z

    move-result v1

    if-ne v1, v3, :cond_3

    .line 336
    const v1, 0x102049d

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView;

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mServiceTargetView:Landroid/widget/AbsListView;

    .line 337
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mServiceTargetView:Landroid/widget/AbsListView;

    if-eqz v1, :cond_2

    .line 338
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->buildUpServiceTargetAdapter()V

    .line 339
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->buildUpSplitPagerAdapter()V

    .line 340
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->prepareServiceTargetPanelView()V

    .line 341
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getStandardTargetCount()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserActivity;->preparePageView(I)V

    .line 361
    :cond_0
    :goto_1
    return-void

    .line 330
    .end local v0    # "listView":Landroid/widget/ListView;
    .restart local p2    # "adapter":Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 343
    .end local p2    # "adapter":Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .restart local v0    # "listView":Landroid/widget/ListView;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->buildUpPagerAdapter()V

    .line 344
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCount()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserActivity;->preparePageView(I)V

    goto :goto_1

    .line 347
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->buildUpServiceTargetAdapter()V

    .line 348
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->buildUpOtherTargetAdapter()V

    .line 349
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->prepareServiceTargetPanelView()V

    .line 350
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity;->prepareOtherTargetPanelView(Landroid/widget/AbsListView;)V

    goto :goto_1

    .line 354
    :cond_4
    new-instance v1, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    .line 355
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    new-instance v2, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/widget/AbsListView;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 356
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 357
    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    goto :goto_1
.end method

.method onRefinementCanceled()V
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    .line 610
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    .line 612
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 613
    return-void
.end method

.method onRefinementResult(Lcom/android/internal/app/ResolverActivity$TargetInfo;Landroid/content/Intent;)V
    .locals 3
    .param p1, "selectedTarget"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "matchingIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 590
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    .line 592
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    .line 595
    :cond_0
    if-nez p1, :cond_2

    .line 596
    const-string v0, "ChooserActivity"

    const-string v1, "Refinement result intent did not match any known targets; canceling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->onRefinementCanceled()V

    .line 605
    :goto_1
    return-void

    .line 597
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity;->checkTargetSourceIntent(Lcom/android/internal/app/ResolverActivity$TargetInfo;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 598
    const-string v0, "ChooserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRefinementResult: Selected target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot match refined source intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 600
    :cond_3
    invoke-interface {p1, p2, v1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    invoke-super {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    goto :goto_1
.end method

.method onSetupVoiceInteraction()V
    .locals 0

    .prologue
    .line 587
    return-void
.end method

.method protected onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z
    .locals 12
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "alwaysCheck"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 416
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementIntentSender:Landroid/content/IntentSender;

    if-eqz v0, :cond_3

    .line 417
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 418
    .local v3, "fillIn":Landroid/content/Intent;
    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v10

    .line 419
    .local v10, "sourceIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 420
    const-string v1, "android.intent.extra.INTENT"

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 421
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 422
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    new-array v7, v0, [Landroid/content/Intent;

    .line 423
    .local v7, "alts":[Landroid/content/Intent;
    const/4 v9, 0x1

    .local v9, "i":I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "N":I
    :goto_0
    if-ge v9, v6, :cond_0

    .line 424
    add-int/lit8 v1, v9, -0x1

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    aput-object v0, v7, v1

    .line 423
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 426
    :cond_0
    const-string v0, "android.intent.extra.ALTERNATE_INTENTS"

    invoke-virtual {v3, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 428
    .end local v6    # "N":I
    .end local v7    # "alts":[Landroid/content/Intent;
    .end local v9    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    if-eqz v0, :cond_2

    .line 429
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    .line 431
    :cond_2
    new-instance v0, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    invoke-direct {v0, p0, p1, v2}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverActivity$TargetInfo;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    .line 432
    const-string v0, "android.intent.extra.RESULT_RECEIVER"

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementIntentSender:Landroid/content/IntentSender;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v11

    .line 442
    .end local v3    # "fillIn":Landroid/content/Intent;
    .end local v10    # "sourceIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :goto_1
    return v0

    .line 437
    .restart local v3    # "fillIn":Landroid/content/Intent;
    .restart local v10    # "sourceIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :catch_0
    move-exception v8

    .line 438
    .local v8, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v0, "ChooserActivity"

    const-string v1, "Refinement IntentSender failed to send"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 442
    .end local v3    # "fillIn":Landroid/content/Intent;
    .end local v8    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v10    # "sourceIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z

    move-result v0

    goto :goto_1
.end method

.method prepareOtherTargetPanelView(Landroid/widget/AbsListView;)V
    .locals 6
    .param p1, "adapterView"    # Landroid/widget/AbsListView;

    .prologue
    const/4 v5, 0x1

    .line 1745
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity;->mOtherTargetView:Landroid/widget/AbsListView;

    .line 1746
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity;->mOtherTargetView:Landroid/widget/AbsListView;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mSShareChooserAdapterList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListAdapter;

    invoke-virtual {v4, v3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1747
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0086

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1748
    .local v0, "itemCount":I
    new-instance v2, Lcom/android/internal/app/ChooserActivity$SplitPanelItemClickListener;

    invoke-direct {v2, p0}, Lcom/android/internal/app/ChooserActivity$SplitPanelItemClickListener;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    .line 1750
    .local v2, "otherTargetListener":Lcom/android/internal/app/ChooserActivity$SplitPanelItemClickListener;
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mOtherTargetView:Landroid/widget/AbsListView;

    invoke-virtual {v3, v2}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1751
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mOtherTargetView:Landroid/widget/AbsListView;

    invoke-virtual {v3, v2}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1752
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mOtherTargetView:Landroid/widget/AbsListView;

    instance-of v3, v3, Landroid/widget/GridView;

    if-eqz v3, :cond_0

    .line 1753
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mSShareChooserAdapterList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->getCount()I

    move-result v1

    .line 1754
    .local v1, "nCount":I
    if-gt v1, v0, :cond_1

    .line 1755
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mOtherTargetView:Landroid/widget/AbsListView;

    check-cast v3, Landroid/widget/GridView;

    invoke-virtual {v3, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 1760
    .end local v1    # "nCount":I
    :cond_0
    :goto_0
    return-void

    .line 1757
    .restart local v1    # "nCount":I
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mOtherTargetView:Landroid/widget/AbsListView;

    check-cast v3, Landroid/widget/GridView;

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0
.end method

.method prepareServiceTargetPanelView()V
    .locals 5

    .prologue
    .line 1732
    const v2, 0x102049d

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView;

    iput-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mServiceTargetView:Landroid/widget/AbsListView;

    .line 1733
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mServiceTargetView:Landroid/widget/AbsListView;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mSShareChooserAdapterList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-virtual {v3, v2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1734
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0086

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1735
    .local v0, "itemCount":I
    new-instance v1, Lcom/android/internal/app/ChooserActivity$SplitPanelItemClickListener;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserActivity$SplitPanelItemClickListener;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    .line 1737
    .local v1, "serviceTargetListener":Lcom/android/internal/app/ChooserActivity$SplitPanelItemClickListener;
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mServiceTargetView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1738
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mServiceTargetView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1739
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mServiceTargetView:Landroid/widget/AbsListView;

    instance-of v2, v2, Landroid/widget/GridView;

    if-eqz v2, :cond_0

    .line 1740
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mServiceTargetView:Landroid/widget/AbsListView;

    check-cast v2, Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 1742
    :cond_0
    return-void
.end method

.method queryTargetServices(Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V
    .locals 22
    .param p1, "adapter"    # Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .prologue
    .line 484
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 485
    .local v12, "pm":Landroid/content/pm/PackageManager;
    const/16 v16, 0x0

    .line 486
    .local v16, "targetsToQuery":I
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getDisplayResolveInfoCount()I

    move-result v4

    .local v4, "N":I
    :goto_0
    if-ge v9, v4, :cond_5

    .line 487
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getDisplayResolveInfo(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v7

    .line 488
    .local v7, "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F

    move-result v17

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-nez v17, :cond_1

    .line 486
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 493
    :cond_1
    invoke-virtual {v7}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 494
    .local v5, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v10, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 495
    .local v10, "md":Landroid/os/Bundle;
    if-eqz v10, :cond_2

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "android.service.chooser.chooser_target_service"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ChooserActivity;->convertServiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 497
    .local v15, "serviceName":Ljava/lang/String;
    :goto_2
    if-eqz v15, :cond_4

    .line 498
    new-instance v13, Landroid/content/ComponentName;

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v13, v0, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    .local v13, "serviceComponent":Landroid/content/ComponentName;
    new-instance v17, Landroid/content/Intent;

    const-string v18, "android.service.chooser.ChooserTargetService"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v14

    .line 508
    .local v14, "serviceIntent":Landroid/content/Intent;
    const/16 v17, 0x0

    :try_start_0
    move/from16 v0, v17

    invoke-virtual {v12, v13, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v11, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 509
    .local v11, "perm":Ljava/lang/String;
    const-string v17, "android.permission.BIND_CHOOSER_TARGET_SERVICE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 510
    const-string v17, "ChooserActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ChooserTargetService "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " does not require"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " permission "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "android.permission.BIND_CHOOSER_TARGET_SERVICE"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " - this service will not be queried for ChooserTargets."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " add android:permission=\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "android.permission.BIND_CHOOSER_TARGET_SERVICE"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to the <service> tag for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " in the manifest."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 519
    .end local v11    # "perm":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 520
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v17, "ChooserActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Could not look up service "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 495
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v13    # "serviceComponent":Landroid/content/ComponentName;
    .end local v14    # "serviceIntent":Landroid/content/Intent;
    .end local v15    # "serviceName":Ljava/lang/String;
    :cond_2
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 524
    .restart local v11    # "perm":Ljava/lang/String;
    .restart local v13    # "serviceComponent":Landroid/content/ComponentName;
    .restart local v14    # "serviceIntent":Landroid/content/Intent;
    .restart local v15    # "serviceName":Ljava/lang/String;
    :cond_3
    new-instance v6, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v7}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    .line 526
    .local v6, "conn":Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;
    const/16 v17, 0x5

    sget-object v18, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v14, v6, v1, v2}, Lcom/android/internal/app/ChooserActivity;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    add-int/lit8 v16, v16, 0x1

    .line 536
    .end local v6    # "conn":Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;
    .end local v11    # "perm":Ljava/lang/String;
    .end local v13    # "serviceComponent":Landroid/content/ComponentName;
    .end local v14    # "serviceIntent":Landroid/content/Intent;
    :cond_4
    const/16 v17, 0x5

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_0

    .line 543
    .end local v5    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v7    # "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .end local v10    # "md":Landroid/os/Bundle;
    .end local v15    # "serviceName":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_6

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    const-wide/16 v20, 0x1388

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 551
    :goto_3
    return-void

    .line 549
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->sendVoiceChoicesIfNeeded()V

    goto :goto_3
.end method

.method shouldAutoLaunchSingleChoice(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z
    .locals 4
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    .line 389
    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    .line 390
    .local v0, "intent":Landroid/content/Intent;
    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 395
    .local v1, "resolve":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget v2, v1, Landroid/content/pm/ResolveInfo;->priority:I

    if-lez v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    const-string v2, "com.android.documentsui"

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 399
    const/4 v2, 0x1

    .line 402
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method shouldGetActivityMetadata()Z
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x1

    return v0
.end method

.method startSelected(IZZ)V
    .locals 6
    .param p1, "which"    # I
    .param p2, "always"    # Z
    .param p3, "filtered"    # Z

    .prologue
    .line 447
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    .line 449
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    if-eqz v3, :cond_1

    .line 452
    const/4 v0, 0x0

    .line 453
    .local v0, "cat":I
    move v2, p1

    .line 454
    .local v2, "value":I
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v3, p1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 469
    :goto_0
    if-eqz v0, :cond_0

    .line 470
    invoke-static {p0, v0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 474
    :cond_0
    const/16 v3, 0xd8

    if-ne v0, v3, :cond_1

    .line 475
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v3}, Lcom/samsung/android/share/SShareCommon;->getSupportLogging()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 476
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v3, p1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 477
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mSShareLogging:Lcom/samsung/android/share/SShareLogging;

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity;->mSShareLogging:Lcom/samsung/android/share/SShareLogging;

    const-string v4, "DEEP"

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/share/SShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    .end local v0    # "cat":I
    .end local v1    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v2    # "value":I
    :cond_1
    return-void

    .line 456
    .restart local v0    # "cat":I
    .restart local v2    # "value":I
    :pswitch_0
    const/16 v0, 0xd7

    .line 457
    goto :goto_0

    .line 459
    :pswitch_1
    const/16 v0, 0xd8

    .line 460
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v3

    sub-int/2addr v2, v3

    .line 461
    goto :goto_0

    .line 463
    :pswitch_2
    const/16 v0, 0xd9

    .line 464
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    goto :goto_0

    .line 454
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method unbindRemainingServices()V
    .locals 5

    .prologue
    .line 575
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 576
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    .line 578
    .local v1, "conn":Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 579
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->destroy()V

    .line 575
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 581
    .end local v1    # "conn":Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 582
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 583
    return-void
.end method

.method updateOtherTargetListMap()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 1659
    iget-object v9, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v9}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v7

    .line 1660
    .local v7, "serviceTargetCount":I
    iget-object v9, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v9}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    .line 1661
    .local v0, "callerTargetCount":I
    iget-object v9, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v9}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getStandardTargetCount()I

    move-result v8

    .line 1665
    .local v8, "standardTargetCount":I
    iget-object v9, p0, Lcom/android/internal/app/ChooserActivity;->mOtherTargetListMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 1666
    add-int v4, v0, v8

    .line 1667
    .local v4, "nCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 1668
    const/4 v5, 0x0

    .line 1669
    .local v5, "offset":I
    move v2, v1

    .line 1672
    .local v2, "itemIndex":I
    const-string/jumbo v9, "panelkey_%1$d_%2$d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1674
    .local v3, "key":Ljava/lang/String;
    if-ge v1, v0, :cond_0

    .line 1675
    const/4 v5, 0x0

    .line 1680
    :goto_1
    add-int v6, v1, v5

    .line 1681
    .local v6, "origPosition":I
    iget-object v9, p0, Lcom/android/internal/app/ChooserActivity;->mOtherTargetListMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1667
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1677
    .end local v6    # "origPosition":I
    :cond_0
    move v5, v7

    goto :goto_1

    .line 1683
    .end local v2    # "itemIndex":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "offset":I
    :cond_1
    return-void
.end method

.method updateServiceTargetAdapter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1714
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mSShareChooserAdapterList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1715
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mSShareChooserAdapterList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1717
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mServiceTargetListMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1718
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->buildUpServiceTargetAdapter()V

    .line 1720
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPagerAdapter()Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1721
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->updateSplitPagerAdapterMap()V

    .line 1726
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mSShareChooserAdapterList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;

    .line 1727
    .local v0, "serviceTargetAdapter":Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mServiceTargetView:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1728
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->setIgnoreChildCountForAbsListView(Z)V

    .line 1729
    return-void

    .line 1723
    .end local v0    # "serviceTargetAdapter":Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->updateOtherTargetListMap()V

    goto :goto_0
.end method

.method updateSplitPagerAdapterMap()V
    .locals 14

    .prologue
    .line 1686
    iget-object v10, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v10}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v8

    .line 1687
    .local v8, "serviceTargetCount":I
    iget-object v10, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v10}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    .line 1688
    .local v0, "callerTargetCount":I
    iget-object v10, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v10}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getStandardTargetCount()I

    move-result v9

    .line 1692
    .local v9, "standardTargetCount":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResolverListMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->clear()V

    .line 1693
    add-int v4, v0, v9

    .line 1694
    .local v4, "nCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 1695
    const/4 v5, 0x0

    .line 1696
    .local v5, "offset":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPageItemNum()I

    move-result v10

    div-int v7, v1, v10

    .line 1697
    .local v7, "pageIndex":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPageItemNum()I

    move-result v10

    rem-int v2, v1, v10

    .line 1700
    .local v2, "itemIndex":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPagerKey()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1702
    .local v3, "key":Ljava/lang/String;
    if-ge v1, v0, :cond_0

    .line 1703
    const/4 v5, 0x0

    .line 1708
    :goto_1
    add-int v6, v1, v5

    .line 1709
    .local v6, "origPosition":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResolverListMap()Ljava/util/Map;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1694
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1705
    .end local v6    # "origPosition":I
    :cond_0
    move v5, v8

    goto :goto_1

    .line 1711
    .end local v2    # "itemIndex":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "offset":I
    .end local v7    # "pageIndex":I
    :cond_1
    return-void
.end method

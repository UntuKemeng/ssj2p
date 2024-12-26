.class Landroid/widget/AbsHorizontalListView$RecycleBin;
.super Ljava/lang/Object;
.source "AbsHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private mActiveViews:[Landroid/view/View;

.field private mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstActivePosition:I

.field private mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSkippedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViewsById:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .locals 1

    .prologue
    .line 7660
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7674
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method static synthetic access$4600(Landroid/widget/AbsHorizontalListView$RecycleBin;)Landroid/widget/AbsHorizontalListView$RecyclerListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView$RecycleBin;

    .prologue
    .line 7660
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;

    return-object v0
.end method

.method static synthetic access$4602(Landroid/widget/AbsHorizontalListView$RecycleBin;Landroid/widget/AbsHorizontalListView$RecyclerListener;)Landroid/widget/AbsHorizontalListView$RecyclerListener;
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView$RecycleBin;
    .param p1, "x1"    # Landroid/widget/AbsHorizontalListView$RecyclerListener;

    .prologue
    .line 7660
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;

    return-object p1
.end method

.method private pruneScrapViews()V
    .locals 13

    .prologue
    .line 8013
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v3, v10

    .line 8014
    .local v3, "maxViews":I
    iget v9, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    .line 8015
    .local v9, "viewTypeCount":I
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 8016
    .local v5, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v9, :cond_1

    .line 8017
    aget-object v4, v5, v1

    .line 8018
    .local v4, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 8019
    .local v6, "size":I
    sub-int v0, v6, v3

    .line 8020
    .local v0, "extras":I
    add-int/lit8 v6, v6, -0x1

    .line 8021
    const/4 v2, 0x0

    .local v2, "j":I
    move v7, v6

    .end local v6    # "size":I
    .local v7, "size":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 8022
    iget-object v11, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    add-int/lit8 v6, v7, -0x1

    .end local v7    # "size":I
    .restart local v6    # "size":I
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    const/4 v12, 0x0

    # invokes: Landroid/widget/AbsHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v11, v10, v12}, Landroid/widget/AbsHorizontalListView;->access$5300(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V

    .line 8021
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6    # "size":I
    .restart local v7    # "size":I
    goto :goto_1

    .line 8016
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8026
    .end local v0    # "extras":I
    .end local v2    # "j":I
    .end local v4    # "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "size":I
    :cond_1
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v10, :cond_3

    .line 8027
    const/4 v1, 0x0

    :goto_2
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v1, v10, :cond_3

    .line 8028
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v10, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 8029
    .local v8, "v":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->hasTransientState()Z

    move-result v10

    if-nez v10, :cond_2

    .line 8030
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v10, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 8031
    add-int/lit8 v1, v1, -0x1

    .line 8027
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 8035
    .end local v8    # "v":Landroid/view/View;
    :cond_3
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v10, :cond_5

    .line 8036
    const/4 v1, 0x0

    :goto_3
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v10}, Landroid/util/LongSparseArray;->size()I

    move-result v10

    if-ge v1, v10, :cond_5

    .line 8037
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 8038
    .restart local v8    # "v":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->hasTransientState()Z

    move-result v10

    if-nez v10, :cond_4

    .line 8039
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 8040
    add-int/lit8 v1, v1, -0x1

    .line 8036
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 8044
    .end local v8    # "v":Landroid/view/View;
    :cond_5
    return-void
.end method


# virtual methods
.method addScrapView(Landroid/view/View;I)V
    .locals 6
    .param p1, "scrap"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x1

    .line 7867
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 7868
    .local v0, "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    if-nez v0, :cond_1

    .line 7932
    :cond_0
    :goto_0
    return-void

    .line 7872
    :cond_1
    iput p2, v0, Landroid/widget/AbsHorizontalListView$LayoutParams;->scrappedFromPosition:I

    .line 7876
    iget v2, v0, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    .line 7877
    .local v2, "viewType":I
    invoke-virtual {p0, v2}, Landroid/widget/AbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7881
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 7887
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v3, v4}, Landroid/widget/AbsHorizontalListView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 7891
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v1

    .line 7892
    .local v1, "scrapHasTransientState":Z
    if-eqz v1, :cond_7

    .line 7893
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v3, v3, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v3, v3, Landroid/widget/AbsHorizontalListView;->mAdapterHasStableIds:Z

    if-eqz v3, :cond_3

    .line 7896
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v3, :cond_2

    .line 7897
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 7899
    :cond_2
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    iget-wide v4, v0, Landroid/widget/AbsHorizontalListView$LayoutParams;->itemId:J

    invoke-virtual {v3, v4, v5, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 7900
    :cond_3
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v3, v3, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    if-nez v3, :cond_5

    .line 7903
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v3, :cond_4

    .line 7904
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 7906
    :cond_4
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 7909
    :cond_5
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v3, :cond_6

    .line 7910
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    .line 7912
    :cond_6
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7915
    :cond_7
    iget v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    if-ne v3, v4, :cond_9

    .line 7916
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7922
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 7923
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 7926
    :cond_8
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 7928
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;

    if-eqz v3, :cond_0

    .line 7929
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;

    invoke-interface {v3, p1}, Landroid/widget/AbsHorizontalListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_0

    .line 7918
    :cond_9
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method clear()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 7743
    iget v5, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 7744
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 7745
    .local v2, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 7746
    .local v3, "scrapCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 7747
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    # invokes: Landroid/widget/AbsHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v6, v5, v7}, Landroid/widget/AbsHorizontalListView;->access$4900(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V

    .line 7746
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7750
    .end local v0    # "i":I
    .end local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "scrapCount":I
    :cond_0
    iget v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    .line 7751
    .local v4, "typeCount":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 7752
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v5, v0

    .line 7753
    .restart local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 7754
    .restart local v3    # "scrapCount":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-ge v1, v3, :cond_1

    .line 7755
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    # invokes: Landroid/widget/AbsHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v6, v5, v7}, Landroid/widget/AbsHorizontalListView;->access$5000(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V

    .line 7754
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 7751
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7759
    .end local v1    # "j":I
    .end local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "scrapCount":I
    .end local v4    # "typeCount":I
    :cond_2
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v5, :cond_3

    .line 7760
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 7762
    :cond_3
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v5, :cond_4

    .line 7763
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->clear()V

    .line 7765
    :cond_4
    return-void
.end method

.method clearTransientStateViews()V
    .locals 1

    .prologue
    .line 7834
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 7835
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 7837
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 7838
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 7840
    :cond_1
    return-void
.end method

.method fillActiveViews(II)V
    .locals 6
    .param p1, "childCount"    # I
    .param p2, "firstActivePosition"    # I

    .prologue
    .line 7775
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v4, v4

    if-ge v4, p1, :cond_0

    .line 7776
    new-array v4, p1, [Landroid/view/View;

    iput-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7778
    :cond_0
    iput p2, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mFirstActivePosition:I

    .line 7781
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7782
    .local v0, "activeViews":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 7783
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v4, v2}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 7784
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 7786
    .local v3, "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    if-eqz v3, :cond_1

    iget v4, v3, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    .line 7789
    aput-object v1, v0, v2

    .line 7782
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7792
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    :cond_2
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 7802
    iget v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mFirstActivePosition:I

    sub-int v1, p1, v4

    .line 7803
    .local v1, "index":I
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7804
    .local v0, "activeViews":[Landroid/view/View;
    if-ltz v1, :cond_0

    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 7805
    aget-object v2, v0, v1

    .line 7806
    .local v2, "match":Landroid/view/View;
    aput-object v3, v0, v1

    .line 7809
    .end local v2    # "match":Landroid/view/View;
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v3

    goto :goto_0
.end method

.method getScrapView(I)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 7846
    iget v1, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 7847
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Landroid/widget/AbsHorizontalListView;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    .line 7854
    :goto_0
    return-object v1

    .line 7849
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v1, v1, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 7850
    .local v0, "whichScrap":I
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 7851
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Landroid/widget/AbsHorizontalListView;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 7854
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getTransientStateView(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 7813
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v4, v4, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v4, v4, Landroid/widget/AbsHorizontalListView;->mAdapterHasStableIds:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    .line 7814
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v4, v4, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 7815
    .local v0, "id":J
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 7816
    .local v3, "result":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 7827
    .end local v0    # "id":J
    .end local v3    # "result":Landroid/view/View;
    :goto_0
    return-object v3

    .line 7819
    :cond_0
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v4, :cond_1

    .line 7820
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 7821
    .local v2, "index":I
    if-ltz v2, :cond_1

    .line 7822
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 7823
    .restart local v3    # "result":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_0

    .line 7827
    .end local v2    # "index":I
    .end local v3    # "result":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public markChildrenDirty()V
    .locals 8

    .prologue
    .line 7705
    iget v6, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 7706
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 7707
    .local v3, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 7708
    .local v4, "scrapCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 7709
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 7708
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7712
    .end local v1    # "i":I
    .end local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "scrapCount":I
    :cond_0
    iget v5, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    .line 7713
    .local v5, "typeCount":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v5, :cond_2

    .line 7714
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v6, v1

    .line 7715
    .restart local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 7716
    .restart local v4    # "scrapCount":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v4, :cond_1

    .line 7717
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 7716
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 7713
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7721
    .end local v2    # "j":I
    .end local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "scrapCount":I
    .end local v5    # "typeCount":I
    :cond_2
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v6, :cond_3

    .line 7722
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 7723
    .local v0, "count":I
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_3

    .line 7724
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 7723
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 7727
    .end local v0    # "count":I
    :cond_3
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v6, :cond_4

    .line 7728
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 7729
    .restart local v0    # "count":I
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_4

    .line 7730
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 7729
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 7733
    .end local v0    # "count":I
    :cond_4
    return-void
.end method

.method reclaimScrapViews(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8050
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 8051
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8060
    :cond_0
    return-void

    .line 8053
    :cond_1
    iget v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    .line 8054
    .local v3, "viewTypeCount":I
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 8055
    .local v2, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 8056
    aget-object v1, v2, v0

    .line 8057
    .local v1, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8055
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method removeSkippedScrap()V
    .locals 5

    .prologue
    .line 7938
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 7946
    :goto_0
    return-void

    .line 7941
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7942
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 7943
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v4, 0x0

    # invokes: Landroid/widget/AbsHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v3, v2, v4}, Landroid/widget/AbsHorizontalListView;->access$5100(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V

    .line 7942
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7945
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method scrapActiveViews()V
    .locals 14

    .prologue
    .line 7952
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7953
    .local v0, "activeViews":[Landroid/view/View;
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;

    if-eqz v12, :cond_4

    const/4 v2, 0x1

    .line 7954
    .local v2, "hasListener":Z
    :goto_0
    iget v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    const/4 v13, 0x1

    if-le v12, v13, :cond_5

    const/4 v7, 0x1

    .line 7956
    .local v7, "multipleScraps":Z
    :goto_1
    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 7957
    .local v9, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v1, v0

    .line 7958
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_a

    .line 7959
    aget-object v10, v0, v3

    .line 7960
    .local v10, "victim":Landroid/view/View;
    if-eqz v10, :cond_3

    .line 7961
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 7963
    .local v6, "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    iget v11, v6, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    .line 7965
    .local v11, "whichScrap":I
    const/4 v12, 0x0

    aput-object v12, v0, v3

    .line 7967
    invoke-virtual {v10}, Landroid/view/View;->hasTransientState()Z

    move-result v8

    .line 7968
    .local v8, "scrapHasTransientState":Z
    invoke-virtual {p0, v11}, Landroid/widget/AbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v12

    if-eqz v12, :cond_0

    if-eqz v8, :cond_8

    .line 7970
    :cond_0
    const/4 v12, -0x2

    if-eq v11, v12, :cond_1

    if-eqz v8, :cond_1

    .line 7972
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v13, 0x0

    # invokes: Landroid/widget/AbsHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v12, v10, v13}, Landroid/widget/AbsHorizontalListView;->access$5200(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V

    .line 7974
    :cond_1
    if-eqz v8, :cond_3

    .line 7975
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v12, v12, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v12, :cond_6

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v12, v12, Landroid/widget/AbsHorizontalListView;->mAdapterHasStableIds:Z

    if-eqz v12, :cond_6

    .line 7976
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v12, :cond_2

    .line 7977
    new-instance v12, Landroid/util/LongSparseArray;

    invoke-direct {v12}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 7979
    :cond_2
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v12, v12, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v13, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v13, v3

    invoke-interface {v12, v13}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 7980
    .local v4, "id":J
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v4, v5, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 7958
    .end local v4    # "id":J
    .end local v6    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    .end local v8    # "scrapHasTransientState":Z
    .end local v11    # "whichScrap":I
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 7953
    .end local v1    # "count":I
    .end local v2    # "hasListener":Z
    .end local v3    # "i":I
    .end local v7    # "multipleScraps":Z
    .end local v9    # "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v10    # "victim":Landroid/view/View;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 7954
    .restart local v2    # "hasListener":Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 7982
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    .restart local v6    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    .restart local v7    # "multipleScraps":Z
    .restart local v8    # "scrapHasTransientState":Z
    .restart local v9    # "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v10    # "victim":Landroid/view/View;
    .restart local v11    # "whichScrap":I
    :cond_6
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v12, :cond_7

    .line 7983
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    iput-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 7985
    :cond_7
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    iget v13, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v13, v3

    invoke-virtual {v12, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 7991
    :cond_8
    if-eqz v7, :cond_9

    .line 7992
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v9, v12, v11

    .line 7994
    :cond_9
    invoke-virtual {v10}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 7995
    iget v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v12, v3

    iput v12, v6, Landroid/widget/AbsHorizontalListView$LayoutParams;->scrappedFromPosition:I

    .line 7996
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7998
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 7999
    if-eqz v2, :cond_3

    .line 8000
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;

    invoke-interface {v12, v10}, Landroid/widget/AbsHorizontalListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_3

    .line 8005
    .end local v6    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    .end local v8    # "scrapHasTransientState":Z
    .end local v10    # "victim":Landroid/view/View;
    .end local v11    # "whichScrap":I
    :cond_a
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView$RecycleBin;->pruneScrapViews()V

    .line 8006
    return-void
.end method

.method setCacheColorHint(I)V
    .locals 10
    .param p1, "color"    # I

    .prologue
    .line 8068
    iget v8, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 8069
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 8070
    .local v4, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 8071
    .local v5, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 8072
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 8071
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8075
    .end local v2    # "i":I
    .end local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "scrapCount":I
    :cond_0
    iget v6, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    .line 8076
    .local v6, "typeCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v6, :cond_2

    .line 8077
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v4, v8, v2

    .line 8078
    .restart local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 8079
    .restart local v5    # "scrapCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v5, :cond_1

    .line 8080
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 8079
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 8076
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8085
    .end local v3    # "j":I
    .end local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "scrapCount":I
    .end local v6    # "typeCount":I
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 8086
    .local v0, "activeViews":[Landroid/view/View;
    array-length v1, v0

    .line 8087
    .local v1, "count":I
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_4

    .line 8088
    aget-object v7, v0, v2

    .line 8089
    .local v7, "victim":Landroid/view/View;
    if-eqz v7, :cond_3

    .line 8090
    invoke-virtual {v7, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 8087
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 8093
    .end local v7    # "victim":Landroid/view/View;
    :cond_4
    return-void
.end method

.method public setViewTypeCount(I)V
    .locals 4
    .param p1, "viewTypeCount"    # I

    .prologue
    .line 7691
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 7692
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7695
    :cond_0
    new-array v1, p1, [Ljava/util/ArrayList;

    .line 7696
    .local v1, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 7697
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 7696
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7699
    :cond_1
    iput p1, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    .line 7700
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 7701
    iput-object v1, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 7702
    return-void
.end method

.method public shouldRecycleViewType(I)Z
    .locals 1
    .param p1, "viewType"    # I

    .prologue
    .line 7736
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
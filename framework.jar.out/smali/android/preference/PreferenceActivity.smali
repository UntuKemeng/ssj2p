.class public abstract Landroid/preference/PreferenceActivity;
.super Landroid/app/ListActivity;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceActivity$Header;,
        Landroid/preference/PreferenceActivity$HeaderAdapter;
    }
.end annotation


# static fields
.field private static final BACK_STACK_PREFS:Ljava/lang/String; = ":android:prefs"

.field private static final CUR_HEADER_TAG:Ljava/lang/String; = ":android:cur_header"

.field public static final EXTRA_NO_HEADERS:Ljava/lang/String; = ":android:no_headers"

.field private static final EXTRA_PREFS_SET_BACK_TEXT:Ljava/lang/String; = "extra_prefs_set_back_text"

.field private static final EXTRA_PREFS_SET_NEXT_TEXT:Ljava/lang/String; = "extra_prefs_set_next_text"

.field private static final EXTRA_PREFS_SHOW_BUTTON_BAR:Ljava/lang/String; = "extra_prefs_show_button_bar"

.field private static final EXTRA_PREFS_SHOW_SKIP:Ljava/lang/String; = "extra_prefs_show_skip"

.field public static final EXTRA_SHOW_FRAGMENT:Ljava/lang/String; = ":android:show_fragment"

.field public static final EXTRA_SHOW_FRAGMENT_ARGUMENTS:Ljava/lang/String; = ":android:show_fragment_args"

.field public static final EXTRA_SHOW_FRAGMENT_SHORT_TITLE:Ljava/lang/String; = ":android:show_fragment_short_title"

.field public static final EXTRA_SHOW_FRAGMENT_TITLE:Ljava/lang/String; = ":android:show_fragment_title"

.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final HEADERS_TAG:Ljava/lang/String; = ":android:headers"

.field public static final HEADER_ID_UNDEFINED:J = -0x1L

.field private static final L_MOCHA:Z

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final MSG_BUILD_HEADERS:I = 0x2

.field private static final PREFERENCES_TAG:Ljava/lang/String; = ":android:preferences"

.field private static final SPLIT_BAR_MOVEABLE_AREA_MAX:F = 0.66f

.field private static final SPLIT_BAR_MOVEABLE_AREA_MIN:F = 0.2f

.field private static final SPLIT_BAR_SPLIT_X_IN_FULLVIEW:F = 20.0f

.field private static final TAG:Ljava/lang/String; = "PreferenceActivity"

.field private static mSplitBarMovedLeftWeight:F

.field private static mUserUpdateSplit:Z


# instance fields
.field private final IS_ELASTIC_ENABLED:Z

.field private mCurHeader:Landroid/preference/PreferenceActivity$Header;

.field private mEnableSplitBar:Z

.field private mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderLayout:Landroid/widget/LinearLayout;

.field private final mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mInsideOnCreate:Z

.field private mIsDeviceDefault:Z

.field private mIsMultiPane:Z

.field private mIsRTL:Z

.field private mListFooter:Landroid/widget/FrameLayout;

.field private mNextButton:Landroid/widget/Button;

.field private mPreferenceHeaderItemResId:I

.field private mPreferenceHeaderRemoveEmptyIcon:Z

.field private mPreferenceManager:Landroid/preference/PreferenceManager;

.field private mPrefsContainer:Landroid/view/ViewGroup;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSinglePane:Z

.field private mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

.field private mSplitBarView:Landroid/view/View;

.field private mUpdateLayoutBySplitChange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 249
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Landroid/preference/PreferenceActivity;->mSplitBarMovedLeftWeight:F

    .line 252
    const/4 v0, 0x0

    sput-boolean v0, Landroid/preference/PreferenceActivity;->mUserUpdateSplit:Z

    .line 270
    const-string/jumbo v0, "mocha"

    const-string/jumbo v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/preference/PreferenceActivity;->L_MOCHA:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    .line 238
    iput v1, p0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    .line 239
    iput-boolean v1, p0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    .line 241
    iput-boolean v1, p0, Landroid/preference/PreferenceActivity;->mInsideOnCreate:Z

    .line 244
    iput-boolean v1, p0, Landroid/preference/PreferenceActivity;->mIsRTL:Z

    .line 247
    iput-object v2, p0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    .line 251
    iput-boolean v1, p0, Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z

    .line 254
    iput-object v2, p0, Landroid/preference/PreferenceActivity;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    .line 267
    iput-boolean v1, p0, Landroid/preference/PreferenceActivity;->IS_ELASTIC_ENABLED:Z

    .line 274
    new-instance v0, Landroid/preference/PreferenceActivity$1;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceActivity$1;-><init>(Landroid/preference/PreferenceActivity;)V

    iput-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    .line 1210
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/PreferenceActivity;->mEnableSplitBar:Z

    .line 1211
    iput-boolean v1, p0, Landroid/preference/PreferenceActivity;->mIsMultiPane:Z

    return-void
.end method

.method static synthetic access$000(Landroid/preference/PreferenceActivity;)V
    .locals 0
    .param p0, "x0"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 144
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->bindPreferences()V

    return-void
.end method

.method static synthetic access$100(Landroid/preference/PreferenceActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 144
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/preference/PreferenceActivity;)Z
    .locals 1
    .param p0, "x0"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 144
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z

    return v0
.end method

.method static synthetic access$1100(Landroid/preference/PreferenceActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 144
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/preference/PreferenceActivity;)Z
    .locals 1
    .param p0, "x0"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 144
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z

    return v0
.end method

.method static synthetic access$1202(Landroid/preference/PreferenceActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/preference/PreferenceActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z

    return p1
.end method

.method static synthetic access$1302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 144
    sput-boolean p0, Landroid/preference/PreferenceActivity;->mUserUpdateSplit:Z

    return p0
.end method

.method static synthetic access$1400()F
    .locals 1

    .prologue
    .line 144
    sget v0, Landroid/preference/PreferenceActivity;->mSplitBarMovedLeftWeight:F

    return v0
.end method

.method static synthetic access$1402(F)F
    .locals 0
    .param p0, "x0"    # F

    .prologue
    .line 144
    sput p0, Landroid/preference/PreferenceActivity;->mSplitBarMovedLeftWeight:F

    return p0
.end method

.method static synthetic access$200(Landroid/preference/PreferenceActivity;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 144
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Landroid/preference/PreferenceActivity;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 144
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Landroid/preference/PreferenceActivity;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .param p0, "x0"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 144
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$600(Landroid/preference/PreferenceActivity;)Z
    .locals 1
    .param p0, "x0"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 144
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mEnableSplitBar:Z

    return v0
.end method

.method static synthetic access$700(Landroid/preference/PreferenceActivity;)Z
    .locals 1
    .param p0, "x0"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 144
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mIsRTL:Z

    return v0
.end method

.method static synthetic access$800(Landroid/preference/PreferenceActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 144
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaderLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 144
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private bindPreferences()V
    .locals 2

    .prologue
    .line 1972
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1973
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 1974
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 1975
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 1976
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1977
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1980
    :cond_0
    return-void
.end method

.method private postBindPreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1967
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1969
    :goto_0
    return-void

    .line 1968
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private requirePreferenceManager()V
    .locals 2

    .prologue
    .line 1995
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_1

    .line 1996
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 1997
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1999
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Modern two-pane PreferenceActivity requires use of a PreferenceFragment"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2002
    :cond_1
    return-void
.end method

.method private switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1768
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, ":android:prefs"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1770
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1771
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid fragment for this activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1774
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1775
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1776
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    iget-boolean v2, p0, Landroid/preference/PreferenceActivity;->mInsideOnCreate:Z

    if-nez v2, :cond_1

    .line 1777
    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1779
    :cond_1
    const v2, 0x1020460

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1780
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1781
    return-void
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2053
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 2055
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/preference/PreferenceManager;->inflateFromIntent(Landroid/content/Intent;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 2056
    return-void
.end method

.method public addPreferencesFromResource(I)V
    .locals 2
    .param p1, "preferencesResId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2069
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 2071
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 2073
    return-void
.end method

.method findBestMatchingHeader(Landroid/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)Landroid/preference/PreferenceActivity$Header;
    .locals 9
    .param p1, "cur"    # Landroid/preference/PreferenceActivity$Header;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceActivity$Header;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)",
            "Landroid/preference/PreferenceActivity$Header;"
        }
    .end annotation

    .prologue
    .local p2, "from":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v8, 0x1

    .line 1824
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1825
    .local v2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1826
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    .line 1827
    .local v3, "oh":Landroid/preference/PreferenceActivity$Header;
    if-eq p1, v3, :cond_0

    iget-wide v4, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    iget-wide v4, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-wide v6, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 1829
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1830
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1847
    .end local v3    # "oh":Landroid/preference/PreferenceActivity$Header;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1848
    .local v0, "NM":I
    if-ne v0, v8, :cond_7

    .line 1849
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceActivity$Header;

    move-object v3, v4

    .line 1865
    :cond_2
    :goto_1
    return-object v3

    .line 1833
    .end local v0    # "NM":I
    .restart local v3    # "oh":Landroid/preference/PreferenceActivity$Header;
    :cond_3
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 1834
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1835
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1825
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1837
    :cond_5
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_6

    .line 1838
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1839
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1841
    :cond_6
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    .line 1842
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1843
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1850
    .end local v3    # "oh":Landroid/preference/PreferenceActivity$Header;
    .restart local v0    # "NM":I
    :cond_7
    if-le v0, v8, :cond_b

    .line 1851
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_b

    .line 1852
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    .line 1853
    .restart local v3    # "oh":Landroid/preference/PreferenceActivity$Header;
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    if-eqz v4, :cond_8

    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1857
    :cond_8
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_9

    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1860
    :cond_9
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_a

    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1851
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1865
    .end local v3    # "oh":Landroid/preference/PreferenceActivity$Header;
    :cond_b
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2099
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 2100
    const/4 v0, 0x0

    .line 2103
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 2
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 1938
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_1

    .line 1939
    invoke-virtual {p0, p2, p3}, Landroid/preference/PreferenceActivity;->setResult(ILandroid/content/Intent;)V

    .line 1940
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->finish()V

    .line 1951
    :cond_0
    :goto_0
    return-void

    .line 1943
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 1944
    if-eqz p1, :cond_0

    .line 1945
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1946
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetRequestCode()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1188
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 2120
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getPreferenceManager()Landroid/preference/PreferenceManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1991
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2037
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 2038
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 2040
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHeaders()Z
    .locals 1

    .prologue
    .line 1179
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasNextButton()Z
    .locals 1

    .prologue
    .line 2116
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateHeaders()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1293
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1294
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1296
    :cond_0
    return-void
.end method

.method public isMultiPane()Z
    .locals 1

    .prologue
    .line 1196
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->hasHeaders()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 1455
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1456
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subclasses of PreferenceActivity must override isValidFragment(String) to verify that the Fragment class is valid! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has not checked if fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is valid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1461
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public loadHeadersFromResource(ILjava/util/List;)V
    .locals 17
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1306
    .local p2, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v10, 0x0

    .line 1308
    .local v10, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    .line 1309
    invoke-static {v10}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 1313
    .local v2, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    .local v13, "type":I
    const/4 v14, 0x1

    if-eq v13, v14, :cond_1

    const/4 v14, 0x2

    if-ne v13, v14, :cond_0

    .line 1317
    :cond_1
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1318
    .local v8, "nodeName":Ljava/lang/String;
    const-string/jumbo v14, "preference-headers"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 1319
    new-instance v14, Ljava/lang/RuntimeException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "XML document must start with <preference-headers> tag; found"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " at "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1437
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v8    # "nodeName":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_0
    move-exception v4

    .line 1438
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "Error parsing headers"

    invoke-direct {v14, v15, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1442
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v14

    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v14

    .line 1324
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v8    # "nodeName":Ljava/lang/String;
    .restart local v13    # "type":I
    :cond_3
    const/4 v3, 0x0

    .line 1326
    .local v3, "curBundle":Landroid/os/Bundle;
    :try_start_2
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    .line 1328
    .local v9, "outerDepth":I
    :cond_4
    :goto_0
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_1a

    const/4 v14, 0x3

    if-ne v13, v14, :cond_5

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    if-le v14, v9, :cond_1a

    .line 1329
    :cond_5
    const/4 v14, 0x3

    if-eq v13, v14, :cond_4

    const/4 v14, 0x4

    if-eq v13, v14, :cond_4

    .line 1333
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1334
    const-string/jumbo v14, "header"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 1335
    new-instance v5, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v5}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 1337
    .local v5, "header":Landroid/preference/PreferenceActivity$Header;
    sget-object v14, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v14}, Landroid/preference/PreferenceActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 1339
    .local v11, "sa":Landroid/content/res/TypedArray;
    const/4 v14, 0x1

    const/4 v15, -0x1

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    int-to-long v14, v14

    iput-wide v14, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 1342
    const/4 v14, 0x2

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v12

    .line 1344
    .local v12, "tv":Landroid/util/TypedValue;
    if-eqz v12, :cond_6

    iget v14, v12, Landroid/util/TypedValue;->type:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_6

    .line 1345
    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    if-eqz v14, :cond_f

    .line 1346
    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    iput v14, v5, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 1351
    :cond_6
    :goto_1
    const/4 v14, 0x3

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v12

    .line 1353
    if-eqz v12, :cond_7

    iget v14, v12, Landroid/util/TypedValue;->type:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_7

    .line 1354
    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    if-eqz v14, :cond_10

    .line 1355
    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    iput v14, v5, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    .line 1360
    :cond_7
    :goto_2
    const/4 v14, 0x5

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v12

    .line 1362
    if-eqz v12, :cond_8

    iget v14, v12, Landroid/util/TypedValue;->type:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_8

    .line 1363
    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    if-eqz v14, :cond_11

    .line 1364
    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    iput v14, v5, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 1369
    :cond_8
    :goto_3
    const/4 v14, 0x6

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v12

    .line 1371
    if-eqz v12, :cond_9

    iget v14, v12, Landroid/util/TypedValue;->type:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_9

    .line 1372
    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    if-eqz v14, :cond_12

    .line 1373
    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    iput v14, v5, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 1378
    :cond_9
    :goto_4
    const/4 v14, 0x7

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v12

    .line 1380
    if-eqz v12, :cond_a

    iget v14, v12, Landroid/util/TypedValue;->type:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_a

    .line 1381
    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    if-eqz v14, :cond_13

    .line 1382
    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    iput v14, v5, Landroid/preference/PreferenceActivity$Header;->titleDescriptionRes:I

    .line 1387
    :cond_a
    :goto_5
    const/16 v14, 0x8

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v12

    .line 1389
    if-eqz v12, :cond_b

    iget v14, v12, Landroid/util/TypedValue;->type:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_b

    .line 1390
    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    if-eqz v14, :cond_14

    .line 1391
    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    iput v14, v5, Landroid/preference/PreferenceActivity$Header;->summaryDescriptionRes:I

    .line 1396
    :cond_b
    :goto_6
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    iput v14, v5, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 1398
    const/4 v14, 0x4

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1400
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 1402
    if-nez v3, :cond_c

    .line 1403
    new-instance v3, Landroid/os/Bundle;

    .end local v3    # "curBundle":Landroid/os/Bundle;
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1406
    .restart local v3    # "curBundle":Landroid/os/Bundle;
    :cond_c
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    .line 1408
    .local v6, "innerDepth":I
    :cond_d
    :goto_7
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_17

    const/4 v14, 0x3

    if-ne v13, v14, :cond_e

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    if-le v14, v6, :cond_17

    .line 1409
    :cond_e
    const/4 v14, 0x3

    if-eq v13, v14, :cond_d

    const/4 v14, 0x4

    if-eq v13, v14, :cond_d

    .line 1413
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1414
    .local v7, "innerNodeName":Ljava/lang/String;
    const-string v14, "extra"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 1415
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const-string v15, "extra"

    invoke-virtual {v14, v15, v2, v3}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1416
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    .line 1439
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "curBundle":Landroid/os/Bundle;
    .end local v5    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v6    # "innerDepth":I
    .end local v7    # "innerNodeName":Ljava/lang/String;
    .end local v8    # "nodeName":Ljava/lang/String;
    .end local v9    # "outerDepth":I
    .end local v11    # "sa":Landroid/content/res/TypedArray;
    .end local v12    # "tv":Landroid/util/TypedValue;
    .end local v13    # "type":I
    :catch_1
    move-exception v4

    .line 1440
    .local v4, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "Error parsing headers"

    invoke-direct {v14, v15, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1348
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v3    # "curBundle":Landroid/os/Bundle;
    .restart local v5    # "header":Landroid/preference/PreferenceActivity$Header;
    .restart local v8    # "nodeName":Ljava/lang/String;
    .restart local v9    # "outerDepth":I
    .restart local v11    # "sa":Landroid/content/res/TypedArray;
    .restart local v12    # "tv":Landroid/util/TypedValue;
    .restart local v13    # "type":I
    :cond_f
    :try_start_4
    iget-object v14, v12, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v14, v5, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 1357
    :cond_10
    iget-object v14, v12, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v14, v5, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 1366
    :cond_11
    iget-object v14, v12, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v14, v5, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    goto/16 :goto_3

    .line 1375
    :cond_12
    iget-object v14, v12, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v14, v5, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    goto/16 :goto_4

    .line 1384
    :cond_13
    iget-object v14, v12, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v14, v5, Landroid/preference/PreferenceActivity$Header;->titleDescription:Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 1393
    :cond_14
    iget-object v14, v12, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v14, v5, Landroid/preference/PreferenceActivity$Header;->summaryDescription:Ljava/lang/CharSequence;

    goto :goto_6

    .line 1418
    .restart local v6    # "innerDepth":I
    .restart local v7    # "innerNodeName":Ljava/lang/String;
    :cond_15
    const-string/jumbo v14, "intent"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 1419
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-static {v14, v10, v2}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v14

    iput-object v14, v5, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto :goto_7

    .line 1422
    :cond_16
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_7

    .line 1426
    .end local v7    # "innerNodeName":Ljava/lang/String;
    :cond_17
    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v14

    if-lez v14, :cond_18

    .line 1427
    iput-object v3, v5, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 1428
    const/4 v3, 0x0

    .line 1431
    :cond_18
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1433
    .end local v5    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v6    # "innerDepth":I
    .end local v11    # "sa":Landroid/content/res/TypedArray;
    .end local v12    # "tv":Landroid/util/TypedValue;
    :cond_19
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1442
    :cond_1a
    if-eqz v10, :cond_1b

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1444
    :cond_1b
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1571
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1573
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1574
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/preference/PreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    .line 1576
    :cond_0
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1286
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "shortTitleRes"    # I

    .prologue
    .line 1644
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1645
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1646
    const-string v1, ":android:show_fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1647
    const-string v1, ":android:show_fragment_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1648
    const-string v1, ":android:show_fragment_title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1649
    const-string v1, ":android:show_fragment_short_title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1650
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1651
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1534
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1536
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e00e3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1537
    .local v2, "mLeftPaneWt":I
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e00e4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1538
    .local v3, "mRightPaneWt":I
    iget-object v5, p0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-nez v5, :cond_0

    sget-boolean v5, Landroid/preference/PreferenceActivity;->mUserUpdateSplit:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    .line 1539
    const v5, 0x102045d

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1540
    .local v0, "headerLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1541
    .local v1, "llp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1542
    .local v4, "rlp":Landroid/widget/LinearLayout$LayoutParams;
    int-to-float v5, v2

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1543
    int-to-float v5, v3

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1544
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1545
    iget-object v5, p0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1547
    .end local v0    # "headerLayout":Landroid/widget/LinearLayout;
    .end local v1    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 1580
    invoke-super {p0}, Landroid/app/ListActivity;->onContentChanged()V

    .line 1582
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1583
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->postBindPreferences()V

    .line 1585
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 33
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 716
    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 717
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/preference/PreferenceActivity;->mInsideOnCreate:Z

    .line 720
    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->PreferenceActivity:[I

    const v5, 0x1160021

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/preference/PreferenceActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v30

    .line 725
    .local v30, "sa":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    const v4, 0x10900cf

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v24

    .line 729
    .local v24, "layoutResId":I
    const/4 v3, 0x1

    const v4, 0x10900c9

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    .line 732
    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    .line 736
    invoke-static/range {p0 .. p0}, Landroid/util/GeneralUtil;->isDeviceDefault(Landroid/content/Context;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z

    .line 738
    invoke-virtual/range {v30 .. v30}, Landroid/content/res/TypedArray;->recycle()V

    .line 740
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setContentView(I)V

    .line 742
    const v3, 0x102045d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/preference/PreferenceActivity;->mHeaderLayout:Landroid/widget/LinearLayout;

    .line 743
    const v3, 0x102045e

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 744
    const v3, 0x102045f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 745
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v16

    .line 746
    .local v16, "hidingHeaders":Z
    if-nez v16, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_9

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    .line 747
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, ":android:show_fragment"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 748
    .local v18, "initialFragment":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, ":android:show_fragment_args"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v17

    .line 749
    .local v17, "initialArguments":Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, ":android:show_fragment_title"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 750
    .local v21, "initialTitle":I
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, ":android:show_fragment_short_title"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 753
    .local v19, "initialShortTitle":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-nez v3, :cond_a

    .line 754
    const v3, 0x10204e1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    .line 755
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 756
    const v3, 0x102045d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 757
    .local v14, "headerLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout$LayoutParams;

    .line 759
    .local v26, "llp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout$LayoutParams;

    .line 761
    .local v29, "rlp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v25, v0

    .line 762
    .local v25, "leftPanelWeight":F
    move-object/from16 v0, v29

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v28, v0

    .line 763
    .local v28, "rightPanelWeight":F
    add-float v32, v25, v28

    .line 766
    .local v32, "weightSum":F
    sget v3, Landroid/preference/PreferenceActivity;->mSplitBarMovedLeftWeight:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 767
    sget v3, Landroid/preference/PreferenceActivity;->mSplitBarMovedLeftWeight:F

    move-object/from16 v0, v26

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 768
    sget v3, Landroid/preference/PreferenceActivity;->mSplitBarMovedLeftWeight:F

    sub-float v3, v32, v3

    move-object/from16 v0, v29

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 769
    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 770
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 782
    .end local v14    # "headerLayout":Landroid/widget/LinearLayout;
    .end local v25    # "leftPanelWeight":F
    .end local v26    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v28    # "rightPanelWeight":F
    .end local v29    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v32    # "weightSum":F
    :cond_1
    :goto_1
    if-eqz p1, :cond_b

    .line 785
    const-string v3, ":android:headers"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 786
    .local v15, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    if-eqz v15, :cond_2

    .line 787
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 788
    const-string v3, ":android:cur_header"

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 790
    .local v12, "curHeader":I
    if-ltz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v12, v3, :cond_2

    .line 791
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 834
    .end local v12    # "curHeader":I
    .end local v15    # "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    :cond_2
    :goto_2
    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v3, :cond_10

    .line 836
    const v3, 0x102045d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 837
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 839
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 840
    .local v11, "crumbsLayout":Landroid/view/ViewGroup;
    invoke-virtual {v11}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 841
    const/16 v3, 0x8

    invoke-virtual {v11, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 842
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    .line 844
    if-eqz v21, :cond_3

    .line 845
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    .line 846
    .local v22, "initialTitleStr":Ljava/lang/CharSequence;
    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .line 848
    .local v20, "initialShortTitleStr":Ljava/lang/CharSequence;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 875
    .end local v11    # "crumbsLayout":Landroid/view/ViewGroup;
    .end local v20    # "initialShortTitleStr":Ljava/lang/CharSequence;
    .end local v22    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_3
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v23

    .line 876
    .local v23, "intent":Landroid/content/Intent;
    const-string v3, "extra_prefs_show_button_bar"

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 878
    const v3, 0x1020461

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 880
    const v3, 0x1020462

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 881
    .local v9, "backButton":Landroid/widget/Button;
    new-instance v3, Landroid/preference/PreferenceActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/preference/PreferenceActivity$2;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-virtual {v9, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 887
    const v3, 0x1020463

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/Button;

    .line 888
    .local v31, "skipButton":Landroid/widget/Button;
    new-instance v3, Landroid/preference/PreferenceActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/preference/PreferenceActivity$3;-><init>(Landroid/preference/PreferenceActivity;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 894
    const v3, 0x1020464

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    .line 895
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    new-instance v4, Landroid/preference/PreferenceActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/preference/PreferenceActivity$4;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 903
    const-string v3, "extra_prefs_set_next_text"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 904
    const-string v3, "extra_prefs_set_next_text"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 905
    .local v10, "buttonText":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 906
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 912
    .end local v10    # "buttonText":Ljava/lang/String;
    :cond_4
    :goto_5
    const-string v3, "extra_prefs_set_back_text"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 913
    const-string v3, "extra_prefs_set_back_text"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 914
    .restart local v10    # "buttonText":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 915
    const/16 v3, 0x8

    invoke-virtual {v9, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 921
    .end local v10    # "buttonText":Ljava/lang/String;
    :cond_5
    :goto_6
    const-string v3, "extra_prefs_show_skip"

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 922
    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 927
    .end local v9    # "backButton":Landroid/widget/Button;
    .end local v31    # "skipButton":Landroid/widget/Button;
    :cond_6
    new-instance v27, Landroid/preference/Preference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 928
    .local v27, "preference":Landroid/preference/Preference;
    invoke-virtual/range {v27 .. v27}, Landroid/preference/Preference;->isRTL()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual/range {v27 .. v27}, Landroid/preference/Preference;->hasRTL()Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v3, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/preference/PreferenceActivity;->mIsRTL:Z

    .line 931
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    if-eqz v3, :cond_8

    .line 933
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/preference/PreferenceActivity;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    if-nez v3, :cond_7

    .line 934
    new-instance v3, Landroid/preference/PreferenceActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/preference/PreferenceActivity$5;-><init>(Landroid/preference/PreferenceActivity;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/preference/PreferenceActivity;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    .line 964
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/PreferenceActivity;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 967
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    new-instance v4, Landroid/preference/PreferenceActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/preference/PreferenceActivity$6;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 990
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    new-instance v4, Landroid/preference/PreferenceActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/preference/PreferenceActivity$7;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1172
    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/preference/PreferenceActivity;->mInsideOnCreate:Z

    .line 1173
    return-void

    .line 746
    .end local v17    # "initialArguments":Landroid/os/Bundle;
    .end local v18    # "initialFragment":Ljava/lang/String;
    .end local v19    # "initialShortTitle":I
    .end local v21    # "initialTitle":I
    .end local v23    # "intent":Landroid/content/Intent;
    .end local v27    # "preference":Landroid/preference/Preference;
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 775
    .restart local v17    # "initialArguments":Landroid/os/Bundle;
    .restart local v18    # "initialFragment":Ljava/lang/String;
    .restart local v19    # "initialShortTitle":I
    .restart local v21    # "initialTitle":I
    :cond_a
    const v3, 0x10204e1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    .line 776
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 777
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 778
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    goto/16 :goto_1

    .line 796
    :cond_b
    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v3, :cond_d

    .line 800
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 801
    if-eqz v21, :cond_2

    .line 802
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    .line 803
    .restart local v22    # "initialTitleStr":Ljava/lang/CharSequence;
    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .line 805
    .restart local v20    # "initialShortTitleStr":Ljava/lang/CharSequence;
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 803
    .end local v20    # "initialShortTitleStr":Ljava/lang/CharSequence;
    :cond_c
    const/16 v20, 0x0

    goto :goto_8

    .line 810
    .end local v22    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    .line 819
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 820
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-nez v3, :cond_2

    .line 821
    if-nez v18, :cond_e

    .line 822
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v13

    .line 823
    .local v13, "h":Landroid/preference/PreferenceActivity$Header;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto/16 :goto_2

    .line 825
    .end local v13    # "h":Landroid/preference/PreferenceActivity$Header;
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 846
    .restart local v11    # "crumbsLayout":Landroid/view/ViewGroup;
    .restart local v22    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_f
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 850
    .end local v11    # "crumbsLayout":Landroid/view/ViewGroup;
    .end local v22    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_13

    .line 851
    new-instance v3, Landroid/preference/PreferenceActivity$HeaderAdapter;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Landroid/preference/PreferenceActivity$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IZZ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 853
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-nez v3, :cond_3

    .line 855
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 856
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v3, :cond_11

    .line 857
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 859
    :cond_11
    sget-boolean v3, Landroid/preference/PreferenceActivity;->L_MOCHA:Z

    if-eqz v3, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 860
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 862
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_4

    .line 867
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z

    if-eqz v3, :cond_14

    const v3, 0x1090144

    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity;->setContentView(I)V

    .line 868
    const v3, 0x102045e

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 869
    const v3, 0x1020460

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 870
    new-instance v3, Landroid/preference/PreferenceManager;

    const/16 v4, 0x64

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Landroid/preference/PreferenceManager;-><init>(Landroid/app/Activity;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 871
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    goto/16 :goto_4

    .line 867
    :cond_14
    const v3, 0x10900d1

    goto :goto_9

    .line 909
    .restart local v9    # "backButton":Landroid/widget/Button;
    .restart local v10    # "buttonText":Ljava/lang/String;
    .restart local v23    # "intent":Landroid/content/Intent;
    .restart local v31    # "skipButton":Landroid/widget/Button;
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 918
    :cond_16
    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 928
    .end local v9    # "backButton":Landroid/widget/Button;
    .end local v10    # "buttonText":Ljava/lang/String;
    .end local v31    # "skipButton":Landroid/widget/Button;
    .restart local v27    # "preference":Landroid/preference/Preference;
    :cond_17
    const/4 v3, 0x0

    goto/16 :goto_7
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1488
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    .line 1490
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1491
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/PreferenceActivity;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    .line 1494
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1495
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1496
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 1498
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_1

    .line 1499
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityDestroy()V

    .line 1501
    :cond_1
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 4

    .prologue
    .line 1252
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1253
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 1254
    .local v0, "h":Landroid/preference/PreferenceActivity$Header;
    iget-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1255
    return-object v0

    .line 1252
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1258
    .end local v0    # "h":Landroid/preference/PreferenceActivity$Header;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Must have at least one header with a fragment"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onGetNewHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 1

    .prologue
    .line 1268
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 7
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    .prologue
    .line 1610
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1611
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_2

    .line 1612
    iget v5, p1, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 1613
    .local v5, "titleRes":I
    iget v6, p1, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 1614
    .local v6, "shortTitleRes":I
    if-nez v5, :cond_0

    .line 1615
    iget v5, p1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 1616
    const/4 v6, 0x0

    .line 1618
    :cond_0
    iget-object v1, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v2, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1626
    .end local v5    # "titleRes":I
    .end local v6    # "shortTitleRes":I
    :cond_1
    :goto_0
    return-void

    .line 1621
    :cond_2
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_0

    .line 1623
    :cond_3
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 1624
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onIsHidingHeaders()Z
    .locals 3

    .prologue
    .line 1241
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":android:no_headers"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onIsMultiPane()Z
    .locals 3

    .prologue
    .line 1205
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1207
    .local v0, "preferMultiPane":Z
    if-nez v0, :cond_0

    iget-boolean v1, p0, Landroid/preference/PreferenceActivity;->mIsMultiPane:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 1589
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1598
    :cond_0
    :goto_0
    return-void

    .line 1592
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 1594
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 1595
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1596
    .local v0, "item":Ljava/lang/Object;
    instance-of v1, v0, Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .end local v0    # "item":Ljava/lang/Object;
    invoke-virtual {p0, v0, p3}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2108
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 2109
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->dispatchNewIntent(Landroid/content/Intent;)V

    .line 2111
    :cond_0
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "caller"    # Landroid/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 1955
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1957
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2083
    const/4 v0, 0x0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 1552
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v2, :cond_0

    .line 1553
    const-string v2, ":android:preferences"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1554
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1555
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 1556
    .local v1, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 1557
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 1558
    iput-object p1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1567
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :goto_0
    return-void

    .line 1566
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1505
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1507
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1508
    const-string v3, ":android:headers"

    iget-object v4, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1509
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v3, :cond_0

    .line 1510
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1511
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 1512
    const-string v3, ":android:cur_header"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1517
    .end local v1    # "index":I
    :cond_0
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v3, :cond_1

    .line 1518
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 1519
    .local v2, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_1

    .line 1520
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1521
    .local v0, "container":Landroid/os/Bundle;
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 1522
    const-string v3, ":android:preferences"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1525
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v2    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1477
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 1479
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1480
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityStop()V

    .line 1482
    :cond_0
    return-void
.end method

.method protected setActionBarShadow(Z)V
    .locals 0
    .param p1, "use"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 712
    return-void
.end method

.method public setEnableSplitBar(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1230
    iput-boolean p1, p0, Landroid/preference/PreferenceActivity;->mEnableSplitBar:Z

    .line 1231
    return-void
.end method

.method public setListFooter(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1469
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1470
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1473
    return-void
.end method

.method protected setMultiPane(Z)V
    .locals 0
    .param p1, "isMultiPane"    # Z

    .prologue
    .line 1220
    iput-boolean p1, p0, Landroid/preference/PreferenceActivity;->mIsMultiPane:Z

    .line 1221
    return-void
.end method

.method public setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1739
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-eqz v0, :cond_0

    .line 1740
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 1742
    :cond_0
    return-void
.end method

.method public setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2014
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 2016
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceManager;->setPreferences(Landroid/preference/PreferenceScreen;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 2017
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->postBindPreferences()V

    .line 2018
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2020
    .local v0, "title":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 2021
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2024
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 3
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 1745
    iput-object p1, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1746
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1747
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 1748
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1749
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/preference/PreferenceActivity$HeaderAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/preference/PreferenceActivity$HeaderAdapter;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceActivity$HeaderAdapter;->setSelectedId(I)V

    .line 1753
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Landroid/preference/PreferenceActivity$Header;)V

    .line 1754
    return-void

    .line 1751
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    goto :goto_0
.end method

.method showBreadCrumbs(Landroid/preference/PreferenceActivity$Header;)V
    .locals 3
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 1757
    if-eqz p1, :cond_2

    .line 1758
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getBreadCrumbTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1759
    .local v0, "title":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1760
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1761
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getBreadCrumbShortTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1765
    .end local v0    # "title":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 1763
    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 1697
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v3, :cond_4

    .line 1698
    const v3, 0x1020016

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1701
    .local v1, "crumbs":Landroid/view/View;
    :try_start_0
    check-cast v1, Landroid/app/FragmentBreadCrumbs;

    .end local v1    # "crumbs":Landroid/view/View;
    iput-object v1, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1706
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v3, :cond_1

    .line 1707
    if-eqz p1, :cond_0

    .line 1708
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1728
    :cond_0
    :goto_0
    return-void

    .line 1702
    :catch_0
    move-exception v2

    .line 1703
    .local v2, "e":Ljava/lang/ClassCastException;
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1712
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :cond_1
    iget-boolean v3, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v3, :cond_3

    .line 1713
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3, v4}, Landroid/app/FragmentBreadCrumbs;->setVisibility(I)V

    .line 1715
    const v3, 0x102037c

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1716
    .local v0, "bcSection":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1717
    :cond_2
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1719
    .end local v0    # "bcSection":Landroid/view/View;
    :cond_3
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/FragmentBreadCrumbs;->setMaxVisible(I)V

    .line 1720
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3, p0}, Landroid/app/FragmentBreadCrumbs;->setActivity(Landroid/app/Activity;)V

    .line 1722
    :cond_4
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3}, Landroid/app/FragmentBreadCrumbs;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_5

    .line 1723
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1725
    :cond_5
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3, p1, p2}, Landroid/app/FragmentBreadCrumbs;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1726
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3, v5, v5, v5}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "push"    # Z

    .prologue
    .line 1876
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1877
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    const v1, 0x1020460

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1878
    if-eqz p2, :cond_0

    .line 1879
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1880
    const-string v1, ":android:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1884
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1885
    return-void

    .line 1882
    :cond_0
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 9
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "resultTo"    # Landroid/app/Fragment;
    .param p6, "resultRequestCode"    # I

    .prologue
    .line 1908
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_0

    .line 1909
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1926
    :goto_0
    return-void

    .line 1911
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v7

    .line 1912
    .local v7, "f":Landroid/app/Fragment;
    if-eqz p5, :cond_1

    .line 1913
    invoke-virtual {v7, p5, p6}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1915
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    .line 1916
    .local v8, "transaction":Landroid/app/FragmentTransaction;
    const v0, 0x1020460

    invoke-virtual {v8, v0, v7}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1917
    if-eqz p3, :cond_3

    .line 1918
    invoke-virtual {v8, p3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 1922
    :cond_2
    :goto_1
    const/16 v0, 0x1001

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1923
    const-string v0, ":android:prefs"

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1924
    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 1919
    :cond_3
    if-eqz p4, :cond_2

    .line 1920
    invoke-virtual {v8, p4}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;I)V
    .locals 7
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I

    .prologue
    const/4 v5, 0x0

    .line 1660
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1661
    return-void
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleRes"    # I
    .param p6, "shortTitleRes"    # I

    .prologue
    .line 1683
    invoke-virtual {p0, p1, p2, p5, p6}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 1684
    .local v0, "intent":Landroid/content/Intent;
    if-nez p3, :cond_0

    .line 1685
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 1689
    :goto_0
    return-void

    .line 1687
    :cond_0
    invoke-virtual {p3, v0, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 3
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 1809
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    if-ne v0, p1, :cond_0

    .line 1812
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":android:prefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1821
    :goto_0
    return-void

    .line 1815
    :cond_0
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1816
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t switch to header that has no fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1818
    :cond_1
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v1, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1}, Landroid/preference/PreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1819
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_0
.end method

.method public switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1791
    const/4 v1, 0x0

    .line 1792
    .local v1, "selectedHeader":Landroid/preference/PreferenceActivity$Header;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1793
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    iget-object v2, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1794
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "selectedHeader":Landroid/preference/PreferenceActivity$Header;
    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 1798
    .restart local v1    # "selectedHeader":Landroid/preference/PreferenceActivity$Header;
    :cond_0
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 1799
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1800
    return-void

    .line 1792
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

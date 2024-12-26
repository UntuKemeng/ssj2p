.class public Lcom/samsung/android/share/SShareShareLink;
.super Ljava/lang/Object;
.source "SShareShareLink.java"


# static fields
.field public static final ACTION_REQ_AUTH:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup.ACTION_REQ_AUTH"

.field private static final DEBUG:Z = false

.field private static final INTENT_ACTION_SHARELINK_SEND:Ljava/lang/String; = "com.samsung.android.app.simplesharing.action.REQUEST_LINK_SEND"

.field private static final INTENT_ACTION_SHARELINK_TIP:Ljava/lang/String; = "com.samsung.android.app.simplesharing.intent.ACTION_VIEW_TIP_VIEW"

.field public static final REQUEST_CODE_SIGNUP_REQ_AUTH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SShareShareLink"

.field private static mEasySignUpCertificated:Z

.field private static mSSharingRecentContactExisted:Z

.field private static mShareLinkEnabled:Z


# instance fields
.field private final REMOTE_SHARE_SERVICE_ID:I

.field private defaultTextSize:I

.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mExtraIntentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mFeature:Lcom/samsung/android/share/SShareCommon;

.field private mIntent:Landroid/content/Intent;

.field private mLogging:Lcom/samsung/android/share/SShareLogging;

.field private mOrigIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    sput-boolean v0, Lcom/samsung/android/share/SShareShareLink;->mEasySignUpCertificated:Z

    .line 39
    sput-boolean v0, Lcom/samsung/android/share/SShareShareLink;->mSSharingRecentContactExisted:Z

    .line 40
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/share/SShareShareLink;->mShareLinkEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lcom/samsung/android/share/SShareCommon;Landroid/content/Intent;Ljava/util/List;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "feature"    # Lcom/samsung/android/share/SShareCommon;
    .param p4, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Context;",
            "Lcom/samsung/android/share/SShareCommon;",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p5, "extraIntentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/share/SShareShareLink;->REMOTE_SHARE_SERVICE_ID:I

    .line 53
    iput-object p1, p0, Lcom/samsung/android/share/SShareShareLink;->mActivity:Landroid/app/Activity;

    .line 54
    iput-object p2, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    .line 55
    iput-object p3, p0, Lcom/samsung/android/share/SShareShareLink;->mFeature:Lcom/samsung/android/share/SShareCommon;

    .line 56
    iput-object p4, p0, Lcom/samsung/android/share/SShareShareLink;->mOrigIntent:Landroid/content/Intent;

    .line 57
    iput-object p5, p0, Lcom/samsung/android/share/SShareShareLink;->mExtraIntentList:Ljava/util/List;

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/share/SShareShareLink;->checkEasySignUpCertificated()V

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/share/SShareShareLink;->checkShareLinkEnabled()V

    .line 61
    iget-object v0, p0, Lcom/samsung/android/share/SShareShareLink;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareCommon;->getSupportLogging()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 62
    new-instance v0, Lcom/samsung/android/share/SShareLogging;

    iget-object v1, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/share/SShareShareLink;->mOrigIntent:Landroid/content/Intent;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/share/SShareLogging;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/samsung/android/share/SShareShareLink;->mLogging:Lcom/samsung/android/share/SShareLogging;

    .line 64
    :cond_0
    return-void
.end method

.method private checkEasySignUpCertificated()V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->isJoined(Landroid/content/Context;I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareShareLink;->mEasySignUpCertificated:Z

    .line 206
    const-string v0, "SShareShareLink"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isJoined="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/share/SShareShareLink;->mEasySignUpCertificated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method

.method private checkMaxFontScale(Landroid/widget/TextView;I)V
    .locals 5
    .param p1, "textview"    # Landroid/widget/TextView;
    .param p2, "baseSize"    # I

    .prologue
    .line 230
    const v1, 0x3f99999a    # 1.2f

    .line 231
    .local v1, "maxScale":F
    iget-object v3, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 233
    .local v0, "currentFontScale":F
    cmpl-float v3, v0, v1

    if-lez v3, :cond_0

    .line 234
    int-to-float v3, p2

    div-float v2, v3, v0

    .line 235
    .local v2, "scaleBase":F
    const/4 v3, 0x0

    mul-float v4, v2, v1

    invoke-virtual {p1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 237
    .end local v2    # "scaleBase":F
    :cond_0
    return-void
.end method

.method private checkSSharingRecentContactExisted()V
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/coreapps/sdk/easysignup/SimpleSharingManager;->isRecentContactExisted(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareShareLink;->mSSharingRecentContactExisted:Z

    .line 211
    const-string v0, "SShareShareLink"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRecentContactExisted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/share/SShareShareLink;->mSSharingRecentContactExisted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void
.end method

.method private checkShareLinkEnabled()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 215
    sget-boolean v1, Lcom/samsung/android/share/SShareShareLink;->mEasySignUpCertificated:Z

    if-eqz v1, :cond_1

    .line 217
    iget-object v1, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->getServiceStatus(Landroid/content/Context;I)I

    move-result v0

    .line 218
    .local v0, "retVal":I
    const-string v1, "SShareShareLink"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    if-eq v0, v4, :cond_0

    .line 220
    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/share/SShareShareLink;->mShareLinkEnabled:Z

    .line 227
    .end local v0    # "retVal":I
    :goto_0
    return-void

    .line 222
    .restart local v0    # "retVal":I
    :cond_0
    sput-boolean v4, Lcom/samsung/android/share/SShareShareLink;->mShareLinkEnabled:Z

    goto :goto_0

    .line 225
    .end local v0    # "retVal":I
    :cond_1
    sput-boolean v4, Lcom/samsung/android/share/SShareShareLink;->mShareLinkEnabled:Z

    goto :goto_0
.end method


# virtual methods
.method public getShareLinkIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 140
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mOrigIntent:Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 141
    .local v3, "targetIntent":Landroid/content/Intent;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 143
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.android.app.simplesharing.action.REQUEST_LINK_SEND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mIntent:Landroid/content/Intent;

    .line 144
    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mIntent:Landroid/content/Intent;

    const/high16 v5, 0x4000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 145
    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mIntent:Landroid/content/Intent;

    const-string v5, "android.intent.extra.INTENT"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 147
    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mExtraIntentList:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 149
    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 151
    .local v2, "nSize":I
    new-array v1, v2, [Landroid/content/Intent;

    .line 152
    .local v1, "initialIntents":[Landroid/content/Intent;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 153
    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    aput-object v4, v1, v0

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mIntent:Landroid/content/Intent;

    const-string v5, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 158
    .end local v0    # "i":I
    .end local v1    # "initialIntents":[Landroid/content/Intent;
    .end local v2    # "nSize":I
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mIntent:Landroid/content/Intent;

    return-object v4
.end method

.method public isEasySignUpCertificated()Z
    .locals 1

    .prologue
    .line 126
    sget-boolean v0, Lcom/samsung/android/share/SShareShareLink;->mEasySignUpCertificated:Z

    return v0
.end method

.method public isShareLinkEnabled()Z
    .locals 1

    .prologue
    .line 133
    sget-boolean v0, Lcom/samsung/android/share/SShareShareLink;->mShareLinkEnabled:Z

    return v0
.end method

.method public setShareLinkView()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 70
    iget-object v9, p0, Lcom/samsung/android/share/SShareShareLink;->mActivity:Landroid/app/Activity;

    const v10, 0x102049e

    invoke-virtual {v9, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 71
    .local v4, "mShareLinkView":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 72
    new-instance v9, Lcom/samsung/android/share/SShareShareLink$1;

    invoke-direct {v9, p0}, Lcom/samsung/android/share/SShareShareLink$1;-><init>(Lcom/samsung/android/share/SShareShareLink;)V

    invoke-virtual {v4, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    :cond_0
    new-instance v5, Lcom/samsung/android/share/SShareShareLink$2;

    invoke-direct {v5, p0}, Lcom/samsung/android/share/SShareShareLink$2;-><init>(Lcom/samsung/android/share/SShareShareLink;)V

    .line 87
    .local v5, "ocl":Landroid/view/View$OnClickListener;
    iget-object v9, p0, Lcom/samsung/android/share/SShareShareLink;->mActivity:Landroid/app/Activity;

    const v10, 0x10204a1

    invoke-virtual {v9, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 88
    .local v3, "mShareLinkTipBtnWrapper":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 89
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    :cond_1
    iget-object v9, p0, Lcom/samsung/android/share/SShareShareLink;->mActivity:Landroid/app/Activity;

    const v10, 0x10204a0

    invoke-virtual {v9, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 93
    .local v2, "mShareLinkTipBtn":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 94
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v9, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10408e8

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 97
    .local v7, "tipsDesc":Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10408e6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, "shareLinkName":Ljava/lang/String;
    new-array v9, v11, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v9, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.sec.feature.hovering_ui"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    .line 101
    .local v1, "hoverLevel":I
    const/4 v9, 0x2

    if-lt v1, v9, :cond_2

    .line 102
    invoke-virtual {v2, v11}, Landroid/view/View;->setHoverPopupType(I)V

    .line 103
    invoke-virtual {v2, v11}, Landroid/view/View;->setLongClickable(Z)V

    .line 107
    .end local v1    # "hoverLevel":I
    .end local v6    # "shareLinkName":Ljava/lang/String;
    .end local v7    # "tipsDesc":Ljava/lang/String;
    :cond_2
    if-eqz v4, :cond_4

    .line 108
    const v9, 0x1020014

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 109
    .local v8, "titleText":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050248

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/share/SShareShareLink;->defaultTextSize:I

    .line 110
    if-eqz v8, :cond_3

    .line 111
    iget v9, p0, Lcom/samsung/android/share/SShareShareLink;->defaultTextSize:I

    invoke-direct {p0, v8, v9}, Lcom/samsung/android/share/SShareShareLink;->checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 114
    :cond_3
    const v9, 0x1020015

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 115
    .local v0, "descText":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050249

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/share/SShareShareLink;->defaultTextSize:I

    .line 116
    if-eqz v0, :cond_4

    .line 117
    iget v9, p0, Lcom/samsung/android/share/SShareShareLink;->defaultTextSize:I

    invoke-direct {p0, v0, v9}, Lcom/samsung/android/share/SShareShareLink;->checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 120
    .end local v0    # "descText":Landroid/widget/TextView;
    .end local v8    # "titleText":Landroid/widget/TextView;
    :cond_4
    return-void
.end method

.method public shareLinkItemClick()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 166
    iget-object v3, p0, Lcom/samsung/android/share/SShareShareLink;->mLogging:Lcom/samsung/android/share/SShareLogging;

    if-eqz v3, :cond_0

    .line 167
    iget-object v3, p0, Lcom/samsung/android/share/SShareShareLink;->mLogging:Lcom/samsung/android/share/SShareLogging;

    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mLogging:Lcom/samsung/android/share/SShareLogging;

    const-string v4, "SLNK"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/share/SShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/share/SShareShareLink;->isEasySignUpCertificated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/share/SShareShareLink;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/samsung/android/share/SShareShareLink;->getShareLinkIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/share/SShareShareLink;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 189
    :goto_1
    return-void

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string v3, "SShareShareLink"

    const-string/jumbo v4, "shareLinkItemClick : startActivity failed!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    .end local v1    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.coreapps.easysignup.ACTION_REQ_AUTH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 180
    const-string v3, "fromOOBE"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    const-string v3, "agreeMarketing"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 182
    const-string v3, "AuthRequestFrom"

    const-string/jumbo v4, "shareVia"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/share/SShareShareLink;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 185
    :catch_1
    move-exception v0

    .line 186
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "SShareShareLink"

    const-string v4, "Easy signUp agent is not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public shareLinkTipClick()V
    .locals 4

    .prologue
    .line 195
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.app.simplesharing.intent.ACTION_VIEW_TIP_VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 198
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/share/SShareShareLink;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "SShareShareLink"

    const-string/jumbo v3, "shareLinkTipClick : startActivity failed!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

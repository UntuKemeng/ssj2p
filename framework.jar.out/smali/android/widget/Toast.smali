.class public Landroid/widget/Toast;
.super Ljava/lang/Object;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Toast$TN;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_LONG_DOUBLE:I = 0x3e8

.field public static final LENGTH_SHORT:I = 0x0

.field static final TAG:Ljava/lang/String; = "Toast"

.field static final localLOGV:Z

.field private static sService:Landroid/app/INotificationManager;


# instance fields
.field final mContext:Landroid/content/Context;

.field mDuration:I

.field mNextView:Landroid/view/View;

.field final mTN:Landroid/widget/Toast$TN;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 103
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/widget/Toast;->localLOGV:Z

    .line 104
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_1

    :goto_1
    sput-boolean v1, Landroid/widget/Toast;->DEBUG:Z

    return-void

    :cond_0
    move v0, v2

    .line 103
    goto :goto_0

    :cond_1
    move v1, v2

    .line 104
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    .line 146
    new-instance v4, Landroid/widget/Toast$TN;

    invoke-direct {v4}, Landroid/widget/Toast$TN;-><init>()V

    iput-object v4, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    .line 147
    iget-object v4, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050016

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/Toast$TN;->mY:I

    .line 149
    iget-object v4, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e008a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v4, Landroid/widget/Toast$TN;->mGravity:I

    .line 154
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getCustomDeviceManagerProxy()Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;

    move-result-object v1

    .line 155
    .local v1, "knoxCustomManager":Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;->getToastGravityEnabledState()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 156
    const-string v4, "Toast"

    const-string v5, "Knox Customization: Using custom gravity"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {v1}, Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;->getToastGravity()I

    move-result v0

    .line 158
    .local v0, "gravity":I
    if-eqz v0, :cond_0

    .line 159
    iget-object v4, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput v0, v4, Landroid/widget/Toast$TN;->mGravity:I

    .line 161
    :cond_0
    invoke-virtual {v1}, Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;->getToastGravityXOffset()I

    move-result v2

    .line 162
    .local v2, "x":I
    if-eqz v2, :cond_1

    .line 163
    iget-object v4, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput v2, v4, Landroid/widget/Toast$TN;->mX:I

    .line 165
    :cond_1
    invoke-virtual {v1}, Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;->getToastGravityYOffset()I

    move-result v3

    .line 166
    .local v3, "y":I
    if-eqz v3, :cond_2

    .line 167
    iget-object v4, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput v3, v4, Landroid/widget/Toast$TN;->mY:I

    .line 172
    .end local v0    # "gravity":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_2
    return-void
.end method

.method static synthetic access$000()Landroid/app/INotificationManager;
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Landroid/widget/Toast;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    return-object v0
.end method

.method private checkGameHomeWhiteList()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 577
    iget-object v4, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "game_no_interruption"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 579
    .local v0, "gameNoInterruption":I
    if-lez v0, :cond_0

    .line 581
    iget-object v4, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "game_no_interruption_white_list"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 583
    .local v2, "whitelist":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 584
    iget-object v4, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 586
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 587
    const-string v4, "Toast"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GameNoInterruption mode. Show game toast. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "whitelist":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 591
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "whitelist":Ljava/lang/String;
    :cond_1
    const-string v3, "Toast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GameNoInterruption mode. Block toast "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const/4 v3, 0x1

    goto :goto_0

    .line 596
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_2
    const-string v4, "Toast"

    const-string v5, "gameNoInterruption is on, but whitelist is null."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkMirrorLinkEnabled()Z
    .locals 4

    .prologue
    .line 527
    const/4 v0, 0x0

    .line 528
    .local v0, "mirrorLinkOn":Z
    const-string/jumbo v1, "net.mirrorlink.on"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    const/4 v0, 0x1

    .line 531
    :cond_0
    sget-boolean v1, Landroid/widget/Toast;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "Toast"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " checkMirrorLinkEnabled returns : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_1
    return v0
.end method

.method private checkShowingCondition()Z
    .locals 1

    .prologue
    .line 520
    invoke-direct {p0}, Landroid/widget/Toast;->checkMirrorLinkEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    const/4 v0, 0x1

    .line 523
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroid/widget/Toast;->checkWhiteList()Z

    move-result v0

    goto :goto_0
.end method

.method private checkWhiteList()Z
    .locals 13

    .prologue
    const/4 v5, 0x1

    const/4 v12, 0x0

    .line 536
    const-string v7, "com.samsung.mirrorlink.acms.pkgnames"

    .line 538
    .local v7, "PKGNAME_AUTHORITY":Ljava/lang/String;
    const-string/jumbo v6, "pkgname"

    .line 539
    .local v6, "BASE_PATH_PKGNAME":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 543
    .local v1, "CONTENT_URI_PKGNAMES":Landroid/net/Uri;
    const-string v10, "com.mirrorlink.android.service.ACCESS_PERMISSION"

    .line 544
    .local v10, "permission":Ljava/lang/String;
    iget-object v0, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v11

    .line 545
    .local v11, "res":I
    const-string v0, "Toast"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check Access Permission  : res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    if-eqz v11, :cond_0

    .line 573
    :goto_0
    return v12

    .line 552
    :cond_0
    iget-object v0, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 554
    .local v8, "currentPackageName":Ljava/lang/String;
    iget-object v0, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/String;

    aput-object v6, v2, v12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    aput-object v8, v4, v12

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 558
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_1

    .line 559
    const-string v0, "Toast"

    const-string v2, "Cursor is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const/4 v12, 0x0

    .local v12, "ret":Z
    goto :goto_0

    .line 562
    .end local v12    # "ret":Z
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 564
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 565
    const-string v0, "Toast"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentPackageName =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const-string v0, "Toast"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db column packagename ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v12, 0x1

    .line 571
    .restart local v12    # "ret":Z
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 569
    .end local v12    # "ret":Z
    :cond_2
    const/4 v12, 0x0

    .restart local v12    # "ret":Z
    goto :goto_1
.end method

.method private static getService()Landroid/app/INotificationManager;
    .locals 1

    .prologue
    .line 630
    sget-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    if-eqz v0, :cond_0

    .line 631
    sget-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    .line 634
    :goto_0
    return-object v0

    .line 633
    :cond_0
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    .line 634
    sget-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    goto :goto_0
.end method

.method public static makeText(Landroid/content/Context;II)Landroid/widget/Toast;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 493
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 410
    new-instance v4, Landroid/widget/Toast;

    invoke-direct {v4, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 412
    .local v4, "result":Landroid/widget/Toast;
    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 418
    .local v1, "inflate":Landroid/view/LayoutInflater;
    const/4 v6, 0x0

    .line 419
    .local v6, "v":Landroid/view/View;
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 420
    .local v3, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x11600bd

    invoke-virtual {v8, v9, v3, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, v3, Landroid/util/TypedValue;->data:I

    if-eqz v8, :cond_0

    move v2, v7

    .line 422
    .local v2, "isDeviceDefault":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 424
    const-string v8, "desktop"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktop/DesktopManager;

    .line 425
    .local v0, "desktopManager":Lcom/samsung/android/desktop/DesktopManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/desktop/DesktopManager;->isKnoxDesktopMode()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 426
    const v8, 0x1090167

    invoke-virtual {v1, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 427
    invoke-virtual {v4}, Landroid/widget/Toast;->getGravity()I

    move-result v8

    invoke-virtual {v4}, Landroid/widget/Toast;->getXOffset()I

    move-result v9

    const/high16 v10, 0x41900000    # 18.0f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v7, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4, v8, v9, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 436
    .end local v0    # "desktopManager":Lcom/samsung/android/desktop/DesktopManager;
    :goto_1
    new-instance v7, Landroid/widget/Toast$2;

    invoke-direct {v7, v4}, Landroid/widget/Toast$2;-><init>(Landroid/widget/Toast;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 443
    const v7, 0x102000b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 444
    .local v5, "tv":Landroid/widget/TextView;
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iput-object v6, v4, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    .line 447
    iput p2, v4, Landroid/widget/Toast;->mDuration:I

    .line 449
    return-object v4

    .line 420
    .end local v2    # "isDeviceDefault":Z
    .end local v5    # "tv":Landroid/widget/TextView;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 431
    .restart local v0    # "desktopManager":Lcom/samsung/android/desktop/DesktopManager;
    .restart local v2    # "isDeviceDefault":Z
    :cond_1
    const v7, 0x1090165

    invoke-virtual {v1, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    goto :goto_1

    .line 433
    .end local v0    # "desktopManager":Lcom/samsung/android/desktop/DesktopManager;
    :cond_2
    const v7, 0x109011e

    invoke-virtual {v1, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    goto :goto_1
.end method

.method public static twMakeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I

    .prologue
    .line 456
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 458
    .local v1, "result":Landroid/widget/Toast;
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 461
    .local v0, "inflate":Landroid/view/LayoutInflater;
    const/4 v3, 0x0

    .line 463
    .local v3, "v":Landroid/view/View;
    const v4, 0x1090166

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 464
    new-instance v4, Landroid/widget/Toast$3;

    invoke-direct {v4, v1}, Landroid/widget/Toast$3;-><init>(Landroid/widget/Toast;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 471
    const v4, 0x102000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 472
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iput-object v3, v1, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    .line 475
    iput p2, v1, Landroid/widget/Toast;->mDuration:I

    .line 477
    return-object v1
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 264
    sget-boolean v1, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "Toast"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    iget-object v1, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {v1}, Landroid/widget/Toast$TN;->hide()V

    .line 268
    :try_start_0
    sget-boolean v1, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v1, :cond_1

    const-string v1, "Toast"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelToast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_1
    invoke-static {}, Landroid/widget/Toast;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-interface {v1, v2, v3}, Landroid/app/INotificationManager;->cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :cond_2
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v1, :cond_2

    const-string v1, "Toast"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Landroid/widget/Toast;->mDuration:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mGravity:I

    return v0
.end method

.method public getHorizontalMargin()F
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    return v0
.end method

.method public getVerticalMargin()F
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    return-object v0
.end method

.method public getWindowParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    # getter for: Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Landroid/widget/Toast$TN;->access$100(Landroid/widget/Toast$TN;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getXOffset()I
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mX:I

    return v0
.end method

.method public getYOffset()I
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mY:I

    return v0
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 316
    iput p1, p0, Landroid/widget/Toast;->mDuration:I

    .line 317
    return-void
.end method

.method public setGravity(III)V
    .locals 1
    .param p1, "gravity"    # I
    .param p2, "xOffset"    # I
    .param p3, "yOffset"    # I

    .prologue
    .line 363
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p1, v0, Landroid/widget/Toast$TN;->mGravity:I

    .line 364
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p2, v0, Landroid/widget/Toast$TN;->mX:I

    .line 365
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p3, v0, Landroid/widget/Toast$TN;->mY:I

    .line 366
    return-void
.end method

.method public setIgnoreMultiWindowLayout()V
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {v0}, Landroid/widget/Toast$TN;->setIgnoreMultiWindowLayout()V

    .line 619
    return-void
.end method

.method public setMargin(FF)V
    .locals 1
    .param p1, "horizontalMargin"    # F
    .param p2, "verticalMargin"    # F

    .prologue
    .line 339
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p1, v0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    .line 340
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p2, v0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    .line 341
    return-void
.end method

.method public setShowForAllUsers()V
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {v0}, Landroid/widget/Toast$TN;->setShowForAllUsers()V

    .line 611
    return-void
.end method

.method public setText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 501
    iget-object v0, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 502
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 509
    iget-object v1, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 510
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This Toast was not created with Toast.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 512
    :cond_0
    iget-object v1, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 513
    .local v0, "tv":Landroid/widget/TextView;
    if-nez v0, :cond_1

    .line 514
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This Toast was not created with Toast.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 516
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 281
    move-object v0, p1

    .line 282
    .local v0, "v":Landroid/view/View;
    new-instance v1, Landroid/widget/Toast$1;

    invoke-direct {v1, p0}, Landroid/widget/Toast$1;-><init>(Landroid/widget/Toast;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 299
    iput-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    .line 300
    return-void
.end method

.method public show()V
    .locals 15

    .prologue
    .line 179
    const/4 v5, 0x0

    .line 181
    .local v5, "knoxCustomManager":Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getCustomDeviceManagerProxy()Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;

    move-result-object v5

    .line 182
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;->getToastEnabledState()Z

    move-result v12

    if-nez v12, :cond_1

    .line 183
    const-string v12, "Toast"

    const-string v13, "Knox Customization: Not showing toast"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-direct {p0}, Landroid/widget/Toast;->checkShowingCondition()Z

    move-result v12

    if-nez v12, :cond_2

    .line 190
    sget-boolean v12, Landroid/widget/Toast;->DEBUG:Z

    if-eqz v12, :cond_0

    const-string v12, "Toast"

    const-string/jumbo v13, "showing not allowed"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    :cond_2
    sget-boolean v12, Landroid/widget/Toast;->DEBUG:Z

    if-eqz v12, :cond_3

    const-string v12, "Toast"

    const-string/jumbo v13, "showing allowed"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_3
    invoke-direct {p0}, Landroid/widget/Toast;->checkGameHomeWhiteList()Z

    move-result v12

    if-nez v12, :cond_0

    .line 200
    iget-object v12, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-nez v12, :cond_4

    .line 201
    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "setView must have been called"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 206
    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;->getToastShowPackageNameState()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 209
    iget-object v12, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-eqz v12, :cond_5

    .line 210
    iget-object v12, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 211
    .local v8, "pm":Landroid/content/pm/PackageManager;
    iget-object v12, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 212
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v8, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "appName":Ljava/lang/String;
    iget-object v12, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    const v13, 0x102000b

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 214
    .local v11, "tv":Landroid/widget/TextView;
    if-eqz v11, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 218
    :try_start_0
    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Landroid/text/Spanned;

    invoke-static {v12}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v6

    .line 220
    .local v6, "oldText":Ljava/lang/String;
    const/16 v12, 0x3e

    invoke-virtual {v6, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 221
    .local v2, "idx1":I
    const/16 v12, 0x3c

    invoke-virtual {v6, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 222
    .local v3, "idx2":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v2, 0x1

    invoke-virtual {v6, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v0    # "appName":Ljava/lang/String;
    .end local v2    # "idx1":I
    .end local v3    # "idx2":I
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "oldText":Ljava/lang/String;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local v11    # "tv":Landroid/widget/TextView;
    :cond_5
    :goto_1
    invoke-static {}, Landroid/widget/Toast;->getService()Landroid/app/INotificationManager;

    move-result-object v9

    .line 235
    .local v9, "service":Landroid/app/INotificationManager;
    iget-object v12, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 236
    .local v7, "pkg":Ljava/lang/String;
    iget-object v10, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    .line 237
    .local v10, "tn":Landroid/widget/Toast$TN;
    iget-object v12, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    iput-object v12, v10, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    .line 240
    :try_start_1
    iget v12, p0, Landroid/widget/Toast;->mDuration:I

    invoke-interface {v9, v7, v10, v12}, Landroid/app/INotificationManager;->enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 247
    :cond_6
    :goto_2
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 248
    iget-object v12, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-eqz v12, :cond_0

    .line 249
    iget-object v12, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    const v13, 0x102000b

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 250
    .restart local v11    # "tv":Landroid/widget/TextView;
    if-eqz v11, :cond_0

    .line 251
    const-string v12, "GATE"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "<GATE-M>Toast:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "</GATE-M>"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 223
    .end local v7    # "pkg":Ljava/lang/String;
    .end local v9    # "service":Landroid/app/INotificationManager;
    .end local v10    # "tn":Landroid/widget/Toast$TN;
    .restart local v0    # "appName":Ljava/lang/String;
    .restart local v4    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 225
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 226
    .restart local v6    # "oldText":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 241
    .end local v0    # "appName":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "oldText":Ljava/lang/String;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local v11    # "tv":Landroid/widget/TextView;
    .restart local v7    # "pkg":Ljava/lang/String;
    .restart local v9    # "service":Landroid/app/INotificationManager;
    .restart local v10    # "tn":Landroid/widget/Toast$TN;
    :catch_1
    move-exception v1

    .line 243
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v12, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v12, :cond_6

    const-string v12, "Toast"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "RemoteException: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

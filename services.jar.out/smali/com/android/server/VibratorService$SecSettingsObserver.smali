.class Lcom/android/server/VibratorService$SecSettingsObserver;
.super Landroid/database/ContentObserver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecSettingsObserver"
.end annotation


# instance fields
.field private mType:I

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;I)V
    .locals 4
    .param p2, "type"    # I

    .prologue
    .line 1720
    iput-object p1, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    .line 1721
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1722
    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$2700(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/VibratorService;->access$2600()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1723
    iput p2, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    .line 1724
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v6, -0x2

    .line 1733
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1735
    # getter for: Lcom/android/server/VibratorService;->mIsEnableIntensity:Z
    invoke-static {}, Lcom/android/server/VibratorService;->access$2800()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1736
    const-string v3, "VibratorService"

    const-string/jumbo v4, "mIsEnableIntensity is false (onChange)"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    :goto_0
    return-void

    .line 1739
    :cond_0
    # getter for: Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I
    invoke-static {}, Lcom/android/server/VibratorService;->access$2900()[I

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .line 1740
    .local v1, "magnitudeMaxLevel":I
    # getter for: Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I
    invoke-static {}, Lcom/android/server/VibratorService;->access$3000()[I

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v2, v3, -0x1

    .line 1741
    .local v2, "touchMagnitudeMaxLevel":I
    if-lt v1, v4, :cond_1

    if-ge v2, v4, :cond_2

    .line 1742
    :cond_1
    const-string v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "magnitudeMaxLevel(onChange) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", touchMagnitudeMaxLevel(onChange) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1747
    :cond_2
    iget v3, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1749
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/server/VibratorService;->access$2700(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v3

    # getter for: Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/VibratorService;->access$2600()[Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    aget-object v4, v4, v5

    invoke-static {v3, v4, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1750
    .local v0, "magnitudeLevel":I
    iget-object v3, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    if-le v0, v2, :cond_3

    .end local v0    # "magnitudeLevel":I
    :goto_1
    # setter for: Lcom/android/server/VibratorService;->mTouchMagnitude:I
    invoke-static {v3, v0}, Lcom/android/server/VibratorService;->access$3102(Lcom/android/server/VibratorService;I)I

    .line 1752
    const-string v3, "VibratorService"

    const-string v4, "Feedback magnitude has changed"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1750
    .restart local v0    # "magnitudeLevel":I
    :cond_3
    # getter for: Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I
    invoke-static {}, Lcom/android/server/VibratorService;->access$3000()[I

    move-result-object v4

    aget v0, v4, v0

    goto :goto_1

    .line 1757
    .end local v0    # "magnitudeLevel":I
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/server/VibratorService;->access$2700(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v3

    # getter for: Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/VibratorService;->access$2600()[Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    aget-object v4, v4, v5

    invoke-static {v3, v4, v1, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1758
    .restart local v0    # "magnitudeLevel":I
    iget-object v3, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    if-le v0, v1, :cond_4

    .end local v0    # "magnitudeLevel":I
    :goto_2
    # setter for: Lcom/android/server/VibratorService;->mCallMagnitude:I
    invoke-static {v3, v0}, Lcom/android/server/VibratorService;->access$3202(Lcom/android/server/VibratorService;I)I

    .line 1760
    const-string v3, "VibratorService"

    const-string v4, "Call magnitude has changed"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1758
    .restart local v0    # "magnitudeLevel":I
    :cond_4
    # getter for: Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I
    invoke-static {}, Lcom/android/server/VibratorService;->access$2900()[I

    move-result-object v4

    aget v0, v4, v0

    goto :goto_2

    .line 1765
    .end local v0    # "magnitudeLevel":I
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/server/VibratorService;->access$2700(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v3

    # getter for: Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/VibratorService;->access$2600()[Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    aget-object v4, v4, v5

    invoke-static {v3, v4, v1, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1766
    .restart local v0    # "magnitudeLevel":I
    iget-object v3, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    if-le v0, v1, :cond_6

    .end local v0    # "magnitudeLevel":I
    :goto_3
    # setter for: Lcom/android/server/VibratorService;->mNotiMagnitude:I
    invoke-static {v3, v0}, Lcom/android/server/VibratorService;->access$3302(Lcom/android/server/VibratorService;I)I

    .line 1768
    # getter for: Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z
    invoke-static {}, Lcom/android/server/VibratorService;->access$3400()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1769
    iget-object v3, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mNotiMagnitude:I
    invoke-static {v4}, Lcom/android/server/VibratorService;->access$3300(Lcom/android/server/VibratorService;)I

    move-result v4

    # setter for: Lcom/android/server/VibratorService;->mDefaultMagnitude:I
    invoke-static {v3, v4}, Lcom/android/server/VibratorService;->access$2102(Lcom/android/server/VibratorService;I)I

    .line 1772
    :cond_5
    const-string v3, "VibratorService"

    const-string v4, "Notification magnitude has changed"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1766
    .restart local v0    # "magnitudeLevel":I
    :cond_6
    # getter for: Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I
    invoke-static {}, Lcom/android/server/VibratorService;->access$2900()[I

    move-result-object v4

    aget v0, v4, v0

    goto :goto_3

    .line 1747
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method reload()V
    .locals 4

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$2700(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1728
    iget-object v0, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$2700(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/VibratorService;->access$2600()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1729
    return-void
.end method

.class public Lcom/samsung/android/app/CustomBootMsgDialog;
.super Landroid/app/Dialog;
.source "CustomBootMsgDialog.java"


# static fields
.field private static final RESET_BIG_GEAR_DEGREE:I = 0x384


# instance fields
.field final TAG:Ljava/lang/String;

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mAnimationRunning:Z

.field private mBigGear:Landroid/view/View;

.field mCurrent:I

.field private mHandler:Landroid/os/Handler;

.field mMax:I

.field private mPreviousTime:J

.field mProgressBar:Landroid/widget/ProgressBar;

.field private mSmallGear:Landroid/view/View;

.field mUpgradeProgressMsg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title_id"    # I

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 81
    const v8, 0x103000e

    invoke-direct {p0, p1, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 36
    const-string v8, "CustomBootMsgDialog"

    iput-object v8, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->TAG:Ljava/lang/String;

    .line 38
    iput-object v10, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mUpgradeProgressMsg:Landroid/widget/TextView;

    .line 40
    iput-object v10, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 42
    iput v9, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mMax:I

    iput v9, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mCurrent:I

    .line 45
    iput-boolean v9, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mAnimationRunning:Z

    .line 49
    new-instance v8, Lcom/samsung/android/app/CustomBootMsgDialog$1;

    invoke-direct {v8, p0}, Lcom/samsung/android/app/CustomBootMsgDialog$1;-><init>(Lcom/samsung/android/app/CustomBootMsgDialog;)V

    iput-object v8, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 82
    const-string/jumbo v8, "sys.config.fota_low_brightness"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 83
    const-string v0, "/sys/class/leds/lcd-backlight/brightness"

    .line 84
    .local v0, "LCD_BRIGHTNESS_CONTROL":Ljava/lang/String;
    const/4 v2, 0x0

    .line 86
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    const-string v8, "CustomBootMsgDialog"

    const-string v9, "/sys/class/leds/lcd-backlight/brightness is set at CustomBootMsgDialog"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v8, "/sys/class/leds/lcd-backlight/brightness"

    invoke-direct {v3, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    const-string v8, "110"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    if-eqz v3, :cond_0

    .line 96
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 103
    .end local v0    # "LCD_BRIGHTNESS_CONTROL":Ljava/lang/String;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/CustomBootMsgDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 105
    .local v5, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v8, 0x7e5

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 106
    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v8, v8, 0x580

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 109
    const/4 v8, 0x5

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 110
    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 111
    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/app/CustomBootMsgDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 114
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 115
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x1090168

    invoke-virtual {v4, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 116
    .local v7, "v":Landroid/view/View;
    const v8, 0x10204e9

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 117
    .local v6, "title":Landroid/widget/TextView;
    const v8, 0x10204ea

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mUpgradeProgressMsg:Landroid/widget/TextView;

    .line 119
    const v8, 0x10204eb

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    iput-object v8, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 122
    const v8, 0x10204e7

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mBigGear:Landroid/view/View;

    .line 123
    const v8, 0x10204e8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mSmallGear:Landroid/view/View;

    .line 124
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mHandler:Landroid/os/Handler;

    .line 126
    iget-object v8, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mBigGear:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/app/CustomBootMsgDialog$2;

    invoke-direct {v9, p0}, Lcom/samsung/android/app/CustomBootMsgDialog$2;-><init>(Lcom/samsung/android/app/CustomBootMsgDialog;)V

    invoke-virtual {v8, v9}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {p0, v7}, Lcom/samsung/android/app/CustomBootMsgDialog;->setContentView(Landroid/view/View;)V

    .line 147
    return-void

    .line 89
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "title":Landroid/widget/TextView;
    .end local v7    # "v":Landroid/view/View;
    .restart local v0    # "LCD_BRIGHTNESS_CONTROL":Ljava/lang/String;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v8, "CustomBootMsgDialog"

    const-string v9, "/sys/class/leds/lcd-backlight/brightness is not found"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    if-eqz v2, :cond_0

    .line 96
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 97
    :catch_1
    move-exception v8

    goto/16 :goto_0

    .line 91
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 92
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v8, "CustomBootMsgDialog"

    const-string v9, "/sys/class/leds/lcd-backlight/brightness read/write error"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 94
    if-eqz v2, :cond_0

    .line 96
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 97
    :catch_3
    move-exception v8

    goto/16 :goto_0

    .line 94
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v2, :cond_1

    .line 96
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 98
    :cond_1
    :goto_4
    throw v8

    .line 97
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v8

    goto/16 :goto_0

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v9

    goto :goto_4

    .line 94
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 91
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 89
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/samsung/android/app/CustomBootMsgDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/CustomBootMsgDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mBigGear:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/CustomBootMsgDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/CustomBootMsgDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mSmallGear:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/CustomBootMsgDialog;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/CustomBootMsgDialog;

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mPreviousTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/CustomBootMsgDialog;J)J
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/CustomBootMsgDialog;
    .param p1, "x1"    # J

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mPreviousTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/CustomBootMsgDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/CustomBootMsgDialog;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mAnimationRunning:Z

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/CustomBootMsgDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/CustomBootMsgDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mAnimationRunning:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/CustomBootMsgDialog;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/CustomBootMsgDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mAnimationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/CustomBootMsgDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/CustomBootMsgDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private parseDigit(Ljava/lang/String;)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "current_max_index":I
    const/4 v4, 0x0

    .line 192
    .local v4, "temp_digit":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v3, "min_max":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 195
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 196
    .local v1, "digit":C
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 197
    mul-int/lit8 v5, v4, 0xa

    invoke-static {v1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v6

    add-int v4, v5, v6

    .line 194
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    :cond_0
    if-eqz v4, :cond_1

    .line 200
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v0, v0, 0x1

    .line 203
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 207
    .end local v1    # "digit":C
    :cond_2
    const/4 v4, 0x0

    .line 208
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 209
    if-nez v4, :cond_3

    .line 210
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 208
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 212
    :cond_3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v4, v5, :cond_4

    move v5, v4

    :goto_4
    iput v5, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mMax:I

    .line 213
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gt v4, v5, :cond_5

    move v5, v4

    :goto_5
    iput v5, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mCurrent:I

    goto :goto_3

    .line 212
    :cond_4
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_4

    .line 213
    :cond_5
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_5

    .line 216
    :cond_6
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 152
    const-string v0, "CustomBootMsgDialog"

    const-string v1, "dismiss CustomBootMsg "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mAnimationRunning:Z

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mBigGear:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mBigGear:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mSmallGear:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mSmallGear:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 164
    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 165
    return-void
.end method

.method public setProgress(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x8

    .line 171
    const-string v0, "CustomBootMsgDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Booting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    if-nez p1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 187
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/CustomBootMsgDialog;->parseDigit(Ljava/lang/String;)V

    .line 178
    iget v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mMax:I

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mCurrent:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 186
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mUpgradeProgressMsg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1
.end method
